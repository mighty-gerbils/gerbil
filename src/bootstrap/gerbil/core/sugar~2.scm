(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21912_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21913_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21914_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21942_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21943_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21944_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21951_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21952_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21953_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21954_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21955_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21956_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5405%_)
        (letrec ((_%simple-lambda?5408%_
                  (lambda (_%hd8792%_)
                    (gx#stx-andmap gx#identifier? _%hd8792%_)))
                 (_%opt-lambda?5410%_
                  (lambda (_%hd8644%_)
                    (let _%lp8647%_ ((_%rest8650%_ _%hd8644%_)
                                     (_%opt?8652%_ '#f))
                      (let* ((_%__stx1976619767%_ _%rest8650%_)
                             (_%$%g86558667%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1976619767%_))))
                        (let ((_%__kont1976919770%_
                               (lambda (_%$%g86578699%_ _%$%g86588701%_)
                                 (let* ((_%__stx1974219743%_ _%$%g86588701%_)
                                        (_%$%g87178731%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1974219743%_))))
                                   (let ((_%__kont1974519746%_
                                          (lambda (_%$%g87198769%_)
                                            (_%lp8647%_ _%$%g86578699%_ '#t)))
                                         (_%__kont1974719748%_
                                          (lambda ()
                                            (if (gx#identifier?
                                                 _%$%g86588701%_)
                                                (if (not _%opt?8652%_)
                                                    (_%lp8647%_
                                                     _%$%g86578699%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1976319764%_
                                            (lambda (_%$%e87208749%_
                                                     _%$%hd87218753%_
                                                     _%$%tl87228756%_
                                                     _%$%e87238759%_
                                                     _%$%hd87248763%_
                                                     _%$%tl87258766%_)
                                              (let ((_%$%g87198769%_
                                                     _%$%hd87218753%_))
                                                (if (gx#identifier?
                                                     _%$%g87198769%_)
                                                    (_%__kont1974519746%_
                                                     _%$%g87198769%_)
                                                    (_%__kont1974719748%_))))))
                                       (if (gx#stx-pair? _%__stx1974219743%_)
                                           (let ((_%$%e87208749%_
                                                  (gx#syntax-e
                                                   _%__stx1974219743%_)))
                                             (let ((_%$%tl87228756%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e87208749%_)))
                                                   (_%$%hd87218753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e87208749%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl87228756%_)
                                                   (let ((_%$%e87238759%_
                                                          (gx#syntax-e
                                                           _%$%tl87228756%_)))
                                                     (let ((_%$%tl87258766%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e87238759%_)))
                                                           (_%$%hd87248763%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e87238759%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl87258766%_)
                                                           (_%__match1976319764%_
                                                            _%$%e87208749%_
                                                            _%$%hd87218753%_
                                                            _%$%tl87228756%_
                                                            _%$%e87238759%_
                                                            _%$%hd87248763%_
                                                            _%$%tl87258766%_)
                                                           (_%__kont1974719748%_))))
                                                   (_%__kont1974719748%_))))
                                           (_%__kont1974719748%_)))))))
                              (_%__kont1977119772%_
                               (lambda ()
                                 (if _%opt?8652%_
                                     (let ((_%$e8678%_
                                            (gx#stx-null? _%rest8650%_)))
                                       (if _%$e8678%_
                                           _%$e8678%_
                                           (gx#identifier? _%rest8650%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1976619767%_)
                              (let ((_%$%e86598689%_
                                     (gx#syntax-e _%__stx1976619767%_)))
                                (let ((_%$%tl86618696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e86598689%_)))
                                      (_%$%hd86608693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e86598689%_))))
                                  (_%__kont1976919770%_
                                   _%$%tl86618696%_
                                   _%$%hd86608693%_)))
                              (_%__kont1977119772%_)))))))
                 (_%opt-lambda-split5411%_
                  (lambda (_%hd8496%_)
                    (let _%lp8499%_ ((_%rest8502%_ _%hd8496%_)
                                     (_%pre8504%_ '())
                                     (_%opt8505%_ '()))
                      (let* ((_%__stx1980619807%_ _%rest8502%_)
                             (_%$%g85088520%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1980619807%_))))
                        (let ((_%__kont1980919810%_
                               (lambda (_%$%g85108548%_ _%$%g85118550%_)
                                 (let* ((_%__stx1978219783%_ _%$%g85118550%_)
                                        (_%$%g85668581%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1978219783%_))))
                                   (let ((_%__kont1978519786%_
                                          (lambda (_%$%g85688619%_
                                                   _%$%g85698621%_)
                                            (_%lp8499%_
                                             _%$%g85108548%_
                                             _%pre8504%_
                                             (cons (cons _%$%g85698621%_
                                                         _%$%g85688619%_)
                                                   _%opt8505%_))))
                                         (_%__kont1978719788%_
                                          (lambda ()
                                            (_%lp8499%_
                                             _%$%g85108548%_
                                             (cons _%$%g85118550%_ _%pre8504%_)
                                             _%opt8505%_))))
                                     (if (gx#stx-pair? _%__stx1978219783%_)
                                         (let ((_%$%e85708599%_
                                                (gx#syntax-e
                                                 _%__stx1978219783%_)))
                                           (let ((_%$%tl85728606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e85708599%_)))
                                                 (_%$%hd85718603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e85708599%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl85728606%_)
                                                 (let ((_%$%e85738609%_
                                                        (gx#syntax-e
                                                         _%$%tl85728606%_)))
                                                   (let ((_%$%tl85758616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e85738609%_)))
                                                         (_%$%hd85748613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e85738609%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl85758616%_)
                                                         (_%__kont1978519786%_
                                                          _%$%hd85748613%_
                                                          _%$%hd85718603%_)
                                                         (_%__kont1978719788%_))))
                                                 (_%__kont1978719788%_))))
                                         (_%__kont1978719788%_))))))
                              (_%__kont1981119812%_
                               (lambda ()
                                 (values (reverse _%pre8504%_)
                                         (reverse _%opt8505%_)
                                         _%rest8502%_))))
                          (if (gx#stx-pair? _%__stx1980619807%_)
                              (let ((_%$%e85128538%_
                                     (gx#syntax-e _%__stx1980619807%_)))
                                (let ((_%$%tl85148545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e85128538%_)))
                                      (_%$%hd85138542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e85128538%_))))
                                  (_%__kont1980919810%_
                                   _%$%tl85148545%_
                                   _%$%hd85138542%_)))
                              (_%__kont1981119812%_)))))))
                 (_%kw-lambda?5412%_
                  (lambda (_%hd8164%_)
                    (let _%lp8167%_ ((_%rest8170%_ _%hd8164%_)
                                     (_%opt?8172%_ '#f)
                                     (_%key?8173%_ '#f))
                      (let* ((_%__stx1987019871%_ _%rest8170%_)
                             (_%$%g81788208%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1987019871%_))))
                        (let ((_%__kont1987319874%_
                               (lambda (_%$%g81808403%_
                                        _%$%g81818405%_
                                        _%$%g81828406%_)
                                 (let* ((_%__stx1984619847%_ _%$%g81818405%_)
                                        (_%$%g84218435%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1984619847%_))))
                                   (let ((_%__kont1984919850%_
                                          (lambda (_%$%g84238473%_)
                                            (if (gx#identifier?
                                                 _%$%g84238473%_)
                                                (_%lp8167%_
                                                 _%$%g81808403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1985119852%_
                                          (lambda ()
                                            (if (gx#identifier?
                                                 _%$%g81818405%_)
                                                (_%lp8167%_
                                                 _%$%g81808403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1984619847%_)
                                         (let ((_%$%e84248453%_
                                                (gx#syntax-e
                                                 _%__stx1984619847%_)))
                                           (let ((_%$%tl84268460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e84248453%_)))
                                                 (_%$%hd84258457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e84248453%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl84268460%_)
                                                 (let ((_%$%e84278463%_
                                                        (gx#syntax-e
                                                         _%$%tl84268460%_)))
                                                   (let ((_%$%tl84298470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e84278463%_)))
                                                         (_%$%hd84288467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e84278463%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl84298470%_)
                                                         (_%__kont1984919850%_
                                                          _%$%hd84258457%_)
                                                         (_%__kont1985119852%_))))
                                                 (_%__kont1985119852%_))))
                                         (_%__kont1985119852%_))))))
                              (_%__kont1987519876%_
                               (lambda (_%$%g81898360%_ _%$%g81908362%_)
                                 (if (gx#identifier? _%$%g81908362%_)
                                     (_%lp8167%_
                                      _%$%g81898360%_
                                      _%opt?8172%_
                                      '#t)
                                     '#f)))
                              (_%__kont1987719878%_
                               (lambda (_%$%g81988240%_ _%$%g81998242%_)
                                 (let* ((_%__stx1982219823%_ _%$%g81998242%_)
                                        (_%$%g82588272%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1982219823%_))))
                                   (let ((_%__kont1982519826%_
                                          (lambda (_%$%g82608310%_)
                                            (if (gx#identifier?
                                                 _%$%g82608310%_)
                                                (_%lp8167%_
                                                 _%$%g81988240%_
                                                 '#t
                                                 _%key?8173%_)
                                                '#f)))
                                         (_%__kont1982719828%_
                                          (lambda ()
                                            (if (gx#identifier?
                                                 _%$%g81998242%_)
                                                (if (not _%opt?8172%_)
                                                    (_%lp8167%_
                                                     _%$%g81988240%_
                                                     '#f
                                                     _%key?8173%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1982219823%_)
                                         (let ((_%$%e82618290%_
                                                (gx#syntax-e
                                                 _%__stx1982219823%_)))
                                           (let ((_%$%tl82638297%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e82618290%_)))
                                                 (_%$%hd82628294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e82618290%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl82638297%_)
                                                 (let ((_%$%e82648300%_
                                                        (gx#syntax-e
                                                         _%$%tl82638297%_)))
                                                   (let ((_%$%tl82668307%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e82648300%_)))
                                                         (_%$%hd82658304%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e82648300%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl82668307%_)
                                                         (_%__kont1982519826%_
                                                          _%$%hd82628294%_)
                                                         (_%__kont1982719828%_))))
                                                 (_%__kont1982719828%_))))
                                         (_%__kont1982719828%_))))))
                              (_%__kont1987919880%_
                               (lambda ()
                                 (if _%key?8173%_
                                     (let ((_%$e8219%_
                                            (gx#stx-null? _%rest8170%_)))
                                       (if _%$e8219%_
                                           _%$e8219%_
                                           (gx#identifier? _%rest8170%_)))
                                     '#f))))
                          (let ((_%__match1989319894%_
                                 (lambda (_%$%e81838383%_
                                          _%$%hd81848387%_
                                          _%$%tl81858390%_
                                          _%$%e81868393%_
                                          _%$%hd81878397%_
                                          _%$%tl81888400%_)
                                   (let ((_%$%g81808403%_ _%$%tl81888400%_)
                                         (_%$%g81818405%_ _%$%hd81878397%_)
                                         (_%$%g81828406%_ _%$%hd81848387%_))
                                     (if (gx#stx-keyword? _%$%g81828406%_)
                                         (_%__kont1987319874%_
                                          _%$%g81808403%_
                                          _%$%g81818405%_
                                          _%$%g81828406%_)
                                         (if (gx#stx-datum? _%$%hd81848387%_)
                                             (let ((_%$%e81948346%_
                                                    (gx#stx-e
                                                     _%$%hd81848387%_)))
                                               (if (equal? _%$%e81948346%_
                                                           '#!key)
                                                   (_%__kont1987519876%_
                                                    _%$%tl81888400%_
                                                    _%$%hd81878397%_)
                                                   (_%__kont1987719878%_
                                                    _%$%tl81858390%_
                                                    _%$%hd81848387%_)))
                                             (_%__kont1987719878%_
                                              _%$%tl81858390%_
                                              _%$%hd81848387%_)))))))
                            (if (gx#stx-pair? _%__stx1987019871%_)
                                (let ((_%$%e81838383%_
                                       (gx#syntax-e _%__stx1987019871%_)))
                                  (let ((_%$%tl81858390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e81838383%_)))
                                        (_%$%hd81848387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e81838383%_))))
                                    (if (gx#stx-pair? _%$%tl81858390%_)
                                        (let ((_%$%e81868393%_
                                               (gx#syntax-e _%$%tl81858390%_)))
                                          (let ((_%$%tl81888400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e81868393%_)))
                                                (_%$%hd81878397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e81868393%_))))
                                            (_%__match1989319894%_
                                             _%$%e81838383%_
                                             _%$%hd81848387%_
                                             _%$%tl81858390%_
                                             _%$%e81868393%_
                                             _%$%hd81878397%_
                                             _%$%tl81888400%_)))
                                        (if (gx#stx-datum? _%$%hd81848387%_)
                                            (let ((_%$%e81948346%_
                                                   (gx#stx-e
                                                    _%$%hd81848387%_)))
                                              (_%__kont1987719878%_
                                               _%$%tl81858390%_
                                               _%$%hd81848387%_))
                                            (_%__kont1987719878%_
                                             _%$%tl81858390%_
                                             _%$%hd81848387%_)))))
                                (_%__kont1987919880%_))))))))
                 (_%kw-lambda-split5413%_
                  (lambda (_%hd7897%_)
                    (let _%lp7900%_ ((_%rest7903%_ _%hd7897%_)
                                     (_%kwvar7905%_ '#f)
                                     (_%kwargs7906%_ '())
                                     (_%args7907%_ '()))
                      (let* ((_%__stx1994419945%_ _%rest7903%_)
                             (_%$%g79127942%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1994419945%_))))
                        (let ((_%__kont1994719948%_
                               (lambda (_%$%g79148061%_
                                        _%$%g79158063%_
                                        _%$%g79168064%_)
                                 (let ((_%key8078%_
                                        (gx#stx-e _%$%g79168064%_)))
                                   (if (find (lambda (_%kwarg8081%_)
                                               (eq? _%key8078%_
                                                    (car _%kwarg8081%_)))
                                             _%kwargs7906%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5405%_
                                        _%hd7897%_
                                        _%key8078%_)
                                       (let* ((_%__stx1992019921%_
                                               _%$%g79158063%_)
                                              (_%$%g80858100%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1992019921%_))))
                                         (let ((_%__kont1992319924%_
                                                (lambda (_%$%g80878138%_
                                                         _%$%g80888140%_)
                                                  (_%lp7900%_
                                                   _%$%g79148061%_
                                                   _%kwvar7905%_
                                                   (cons (list _%key8078%_
                                                               _%$%g80888140%_
                                                               _%$%g80878138%_)
                                                         _%kwargs7906%_)
                                                   _%args7907%_)))
                                               (_%__kont1992519926%_
                                                (lambda ()
                                                  (_%lp7900%_
                                                   _%$%g79148061%_
                                                   _%kwvar7905%_
                                                   (cons (list _%key8078%_
                                                               _%$%g79158063%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%$%g79168064%_ '()))))
                 _%kwargs7906%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7907%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1992019921%_)
                                               (let ((_%$%e80898118%_
                                                      (gx#syntax-e
                                                       _%__stx1992019921%_)))
                                                 (let ((_%$%tl80918125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e80898118%_)))
                                                       (_%$%hd80908122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e80898118%_))))
                                                   (if (gx#stx-pair?
                                                        _%$%tl80918125%_)
                                                       (let ((_%$%e80928128%_
                                                              (gx#syntax-e
                                                               _%$%tl80918125%_)))
                                                         (let ((_%$%tl80948135%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%e80928128%_)))
                       (_%$%hd80938132%_
                        (let () (declare (not safe)) (##car _%$%e80928128%_))))
                   (if (gx#stx-null? _%$%tl80948135%_)
                       (_%__kont1992319924%_ _%$%hd80938132%_ _%$%hd80908122%_)
                       (_%__kont1992519926%_))))
               (_%__kont1992519926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1992519926%_))))))))
                              (_%__kont1994919950%_
                               (lambda (_%$%g79238018%_ _%$%g79248020%_)
                                 (if _%kwvar7905%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5405%_
                                      _%hd7897%_
                                      _%$%g79248020%_)
                                     (_%lp7900%_
                                      _%$%g79238018%_
                                      _%$%g79248020%_
                                      _%kwargs7906%_
                                      _%args7907%_))))
                              (_%__kont1995119952%_
                               (lambda (_%$%g79327970%_ _%$%g79337972%_)
                                 (_%lp7900%_
                                  _%$%g79327970%_
                                  _%kwvar7905%_
                                  _%kwargs7906%_
                                  (cons _%$%g79337972%_ _%args7907%_))))
                              (_%__kont1995319954%_
                               (lambda ()
                                 (values _%kwvar7905%_
                                         (reverse _%kwargs7906%_)
                                         (foldl cons
                                                _%rest7903%_
                                                _%args7907%_)))))
                          (let ((_%__match1996719968%_
                                 (lambda (_%$%e79178041%_
                                          _%$%hd79188045%_
                                          _%$%tl79198048%_
                                          _%$%e79208051%_
                                          _%$%hd79218055%_
                                          _%$%tl79228058%_)
                                   (let ((_%$%g79148061%_ _%$%tl79228058%_)
                                         (_%$%g79158063%_ _%$%hd79218055%_)
                                         (_%$%g79168064%_ _%$%hd79188045%_))
                                     (if (gx#stx-keyword? _%$%g79168064%_)
                                         (_%__kont1994719948%_
                                          _%$%g79148061%_
                                          _%$%g79158063%_
                                          _%$%g79168064%_)
                                         (if (gx#stx-datum? _%$%hd79188045%_)
                                             (let ((_%$%e79288004%_
                                                    (gx#stx-e
                                                     _%$%hd79188045%_)))
                                               (if (equal? _%$%e79288004%_
                                                           '#!key)
                                                   (_%__kont1994919950%_
                                                    _%$%tl79228058%_
                                                    _%$%hd79218055%_)
                                                   (_%__kont1995119952%_
                                                    _%$%tl79198048%_
                                                    _%$%hd79188045%_)))
                                             (_%__kont1995119952%_
                                              _%$%tl79198048%_
                                              _%$%hd79188045%_)))))))
                            (if (gx#stx-pair? _%__stx1994419945%_)
                                (let ((_%$%e79178041%_
                                       (gx#syntax-e _%__stx1994419945%_)))
                                  (let ((_%$%tl79198048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e79178041%_)))
                                        (_%$%hd79188045%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e79178041%_))))
                                    (if (gx#stx-pair? _%$%tl79198048%_)
                                        (let ((_%$%e79208051%_
                                               (gx#syntax-e _%$%tl79198048%_)))
                                          (let ((_%$%tl79228058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e79208051%_)))
                                                (_%$%hd79218055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e79208051%_))))
                                            (_%__match1996719968%_
                                             _%$%e79178041%_
                                             _%$%hd79188045%_
                                             _%$%tl79198048%_
                                             _%$%e79208051%_
                                             _%$%hd79218055%_
                                             _%$%tl79228058%_)))
                                        (if (gx#stx-datum? _%$%hd79188045%_)
                                            (let ((_%$%e79288004%_
                                                   (gx#stx-e
                                                    _%$%hd79188045%_)))
                                              (_%__kont1995119952%_
                                               _%$%tl79198048%_
                                               _%$%hd79188045%_))
                                            (_%__kont1995119952%_
                                             _%$%tl79198048%_
                                             _%$%hd79188045%_)))))
                                (_%__kont1995319954%_))))))))
                 (_%check-duplicate-bindings5414%_
                  (lambda (_%hd7589%_)
                    (let _%lp7592%_ ((_%rest7595%_ _%hd7589%_)
                                     (_%ids7597%_ '()))
                      (let* ((_%__stx2001820019%_ _%rest7595%_)
                             (_%$%g76007612%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2001820019%_))))
                        (let ((_%__kont2002120022%_
                               (lambda (_%$%g76027640%_ _%$%g76037642%_)
                                 (if (gx#identifier? _%$%g76037642%_)
                                     (_%lp7592%_
                                      _%$%g76027640%_
                                      (cons _%$%g76037642%_ _%ids7597%_))
                                     (if (gx#stx-pair? _%$%g76037642%_)
                                         (let* ((_%$%g76617675%_
                                                 (lambda (_%$%g76627671%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g76627671%_)))
                                                (_%$%g76607717%_
                                                 (lambda (_%$%g76627679%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g76627679%_)
                                                       (let ((_%$%e76647682%_
                                                              (gx#syntax-e
                                                               _%$%g76627679%_)))
                                                         (let ((_%$%hd76657686%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e76647682%_)))
                       (_%$%tl76667689%_
                        (let () (declare (not safe)) (##cdr _%$%e76647682%_))))
                   (if (gx#stx-pair? _%$%tl76667689%_)
                       (let ((_%$%e76677692%_ (gx#syntax-e _%$%tl76667689%_)))
                         (let ((_%$%hd76687696%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e76677692%_)))
                               (_%$%tl76697699%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e76677692%_))))
                           (if (gx#stx-null? _%$%tl76697699%_)
                               (_%lp7592%_
                                _%$%g76027640%_
                                (cons _%$%hd76657686%_ _%ids7597%_))
                               (_%$%g76617675%_ _%$%g76627679%_))))
                       (_%$%g76617675%_ _%$%g76627679%_))))
               (_%$%g76617675%_ _%$%g76627679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g76607717%_ _%$%g76037642%_))
                                         (if (gx#stx-keyword? _%$%g76037642%_)
                                             (let* ((_%$%g77237735%_
                                                     (lambda (_%$%g77247731%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g77247731%_)))
                                                    (_%$%g77227838%_
                                                     (lambda (_%$%g77247739%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g77247739%_)
                                                           (let ((_%$%e77277742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g77247739%_)))
                     (let ((_%$%hd77287746%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e77277742%_)))
                           (_%$%tl77297749%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e77277742%_))))
                       (let* ((_%__stx1999419995%_ _%$%hd77287746%_)
                              (_%$%g77677781%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx1999419995%_))))
                         (let ((_%__kont1999719998%_
                                (lambda (_%$%g77697819%_)
                                  (_%lp7592%_
                                   _%$%tl77297749%_
                                   (cons _%$%g77697819%_ _%ids7597%_))))
                               (_%__kont1999920000%_
                                (lambda ()
                                  (_%lp7592%_
                                   _%$%tl77297749%_
                                   (cons _%$%hd77287746%_ _%ids7597%_)))))
                           (if (gx#stx-pair? _%__stx1999419995%_)
                               (let ((_%$%e77707799%_
                                      (gx#syntax-e _%__stx1999419995%_)))
                                 (let ((_%$%tl77727806%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e77707799%_)))
                                       (_%$%hd77717803%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e77707799%_))))
                                   (if (gx#stx-pair? _%$%tl77727806%_)
                                       (let ((_%$%e77737809%_
                                              (gx#syntax-e _%$%tl77727806%_)))
                                         (let ((_%$%tl77757816%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e77737809%_)))
                                               (_%$%hd77747813%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e77737809%_))))
                                           (if (gx#stx-null? _%$%tl77757816%_)
                                               (_%__kont1999719998%_
                                                _%$%hd77717803%_)
                                               (_%__kont1999920000%_))))
                                       (_%__kont1999920000%_))))
                               (_%__kont1999920000%_))))))
                   (_%$%g77237735%_ _%$%g77247739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g77227838%_
                                                _%$%g76027640%_))
                                             (if (eq? (gx#stx-e
                                                       _%$%g76037642%_)
                                                      '#!key)
                                                 (let* ((_%$%g78447856%_
                                                         (lambda (_%$%g78457852%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g78457852%_)))
                                                        (_%$%g78437887%_
                                                         (lambda (_%$%g78457860%_)
                                                           (if (gx#stx-pair?
                                                                _%$%g78457860%_)
                                                               (let ((_%$%e78487863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%$%g78457860%_)))
                         (let ((_%$%hd78497867%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e78487863%_)))
                               (_%$%tl78507870%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e78487863%_))))
                           (_%lp7592%_
                            _%$%tl78507870%_
                            (cons _%$%hd78497867%_ _%ids7597%_))))
                       (_%$%g78447856%_ _%$%g78457860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g78437887%_
                                                    _%$%g76027640%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5405%_
                                                        _%rest7595%_)))))))
                              (_%__kont2002320024%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7595%_)
                                      _%ids7597%_
                                      (cons _%rest7595%_ _%ids7597%_))
                                  _%stx5405%_))))
                          (if (gx#stx-pair? _%__stx2001820019%_)
                              (let ((_%$%e76047630%_
                                     (gx#syntax-e _%__stx2001820019%_)))
                                (let ((_%$%tl76067637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e76047630%_)))
                                      (_%$%hd76057634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e76047630%_))))
                                  (_%__kont2002120022%_
                                   _%$%tl76067637%_
                                   _%$%hd76057634%_)))
                              (_%__kont2002320024%_)))))))
                 (_%generate-opt-primary5415%_
                  (lambda (_%pre7385%_ _%opt7387%_ _%tail7388%_ _%body7389%_)
                    (let* ((_%$%g73917432%_
                            (lambda (_%$%g73927428%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g73927428%_)))
                           (_%$%g73907585%_
                            (lambda (_%$%g73927436%_)
                              (if (gx#stx-pair? _%$%g73927436%_)
                                  (let ((_%$%e73977439%_
                                         (gx#syntax-e _%$%g73927436%_)))
                                    (let ((_%$%hd73987443%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e73977439%_)))
                                          (_%$%tl73997446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e73977439%_))))
                                      (if (gx#stx-pair/null? _%$%hd73987443%_)
                                          (let ((_g21876_
                                                 (gx#syntax-split-splice
                                                  _%$%hd73987443%_
                                                  '0)))
                                            (begin
                                              (let ((_g21877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21876_)
                                                           (##values-length
                                                            _g21876_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21877_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21877_)))
                                              (let ((_%$%target74007449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21876_
                                                        0)))
                                                    (_%$%tl74027452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21876_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl74027452%_)
                                                    (letrec ((_%$%loop74037455%_
                                                              (lambda (_%$%hd74017459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%pre74077462%_)
                        (if (gx#stx-pair? _%$%hd74017459%_)
                            (let ((_%$%e74047464%_
                                   (gx#syntax-e _%$%hd74017459%_)))
                              (let ((_%$%lp-hd74057468%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e74047464%_)))
                                    (_%$%lp-tl74067471%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e74047464%_))))
                                (_%$%loop74037455%_
                                 _%$%lp-tl74067471%_
                                 (cons _%$%lp-hd74057468%_
                                       _%$%pre74077462%_))))
                            (let ((_%$%pre74087474%_
                                   (reverse _%$%pre74077462%_)))
                              (if (gx#stx-pair? _%$%tl73997446%_)
                                  (let ((_%$%e74097477%_
                                         (gx#syntax-e _%$%tl73997446%_)))
                                    (let ((_%$%hd74107481%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e74097477%_)))
                                          (_%$%tl74117484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e74097477%_))))
                                      (if (gx#stx-pair/null? _%$%hd74107481%_)
                                          (let ((_g21878_
                                                 (gx#syntax-split-splice
                                                  _%$%hd74107481%_
                                                  '0)))
                                            (begin
                                              (let ((_g21879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21878_)
                                                           (##values-length
                                                            _g21878_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21879_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21879_)))
                                              (let ((_%$%target74127487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21878_
                                                        0)))
                                                    (_%$%tl74147490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21878_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl74147490%_)
                                                    (letrec ((_%$%loop74157493%_
                                                              (lambda (_%$%hd74137497%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%opt74197500%_)
                        (if (gx#stx-pair? _%$%hd74137497%_)
                            (let ((_%$%e74167502%_
                                   (gx#syntax-e _%$%hd74137497%_)))
                              (let ((_%$%lp-hd74177506%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e74167502%_)))
                                    (_%$%lp-tl74187509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e74167502%_))))
                                (_%$%loop74157493%_
                                 _%$%lp-tl74187509%_
                                 (cons _%$%lp-hd74177506%_
                                       _%$%opt74197500%_))))
                            (let ((_%$%opt74207512%_
                                   (reverse _%$%opt74197500%_)))
                              (if (gx#stx-pair? _%$%tl74117484%_)
                                  (let ((_%$%e74217515%_
                                         (gx#syntax-e _%$%tl74117484%_)))
                                    (let ((_%$%hd74227519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e74217515%_)))
                                          (_%$%tl74237522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e74217515%_))))
                                      (if (gx#stx-pair? _%$%tl74237522%_)
                                          (let ((_%$%e74247525%_
                                                 (gx#syntax-e
                                                  _%$%tl74237522%_)))
                                            (let ((_%$%hd74257529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e74247525%_)))
                                                  (_%$%tl74267532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e74247525%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl74267532%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda%)
                                                        (cons (foldr (lambda (_%$%g75687573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g75697576%_)
                               (cons _%$%g75687573%_ _%$%g75697576%_))
                             (foldr (lambda (_%$%g75707579%_ _%$%g75717582%_)
                                      (cons _%$%g75707579%_ _%$%g75717582%_))
                                    _%$%hd74227519%_
                                    _%$%opt74207512%_)
                             _%$%pre74087474%_)
                      _%$%hd74257529%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g73917432%_
                                                   _%$%g73927436%_))))
                                          (_%$%g73917432%_ _%$%g73927436%_))))
                                  (_%$%g73917432%_ _%$%g73927436%_)))))))
              (_%$%loop74157493%_ _%$%target74127487%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g73917432%_
                                                     _%$%g73927436%_)))))
                                          (_%$%g73917432%_ _%$%g73927436%_))))
                                  (_%$%g73917432%_ _%$%g73927436%_)))))))
              (_%$%loop74037455%_ _%$%target74007449%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g73917432%_
                                                     _%$%g73927436%_)))))
                                          (_%$%g73917432%_ _%$%g73927436%_))))
                                  (_%$%g73917432%_ _%$%g73927436%_)))))
                      (_%$%g73907585%_
                       (list _%pre7385%_
                             (map car _%opt7387%_)
                             _%tail7388%_
                             _%body7389%_)))))
                 (_%generate-opt-dispatch5416%_
                  (lambda (_%primary7379%_
                           _%pre7381%_
                           _%opt7382%_
                           _%tail7383%_)
                    (cons (list _%pre7381%_
                                (_%generate-opt-clause5418%_
                                 _%primary7379%_
                                 _%pre7381%_
                                 _%opt7382%_))
                          (_%generate-opt-dispatch*5417%_
                           _%primary7379%_
                           _%pre7381%_
                           _%opt7382%_
                           _%tail7383%_))))
                 (_%generate-opt-dispatch*5417%_
                  (lambda (_%primary6936%_
                           _%pre6938%_
                           _%opt6939%_
                           _%tail6940%_)
                    (let _%recur6942%_ ((_%opt-rest6945%_ _%opt6939%_)
                                        (_%right6947%_ '()))
                      (if (pair? _%opt-rest6945%_)
                          (let* ((_%hd6951%_ (caar _%opt-rest6945%_))
                                 (_%rest6954%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6945%_)))
                                 (_%right*6957%_
                                  (cons _%hd6951%_ _%right6947%_))
                                 (_%$%g69606977%_
                                  (lambda (_%$%g69616973%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g69616973%_)))
                                 (_%$%g69597157%_
                                  (lambda (_%$%g69616981%_)
                                    (if (gx#stx-pair/null? _%$%g69616981%_)
                                        (let ((_g21880_
                                               (gx#syntax-split-splice
                                                _%$%g69616981%_
                                                '0)))
                                          (begin
                                            (let ((_g21881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21880_)
                                                         (##values-length
                                                          _g21880_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21881_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21881_)))
                                            (let ((_%$%target69636984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21880_
                                                      0)))
                                                  (_%$%tl69656987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21880_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl69656987%_)
                                                  (letrec ((_%$%loop69666990%_
                                                            (lambda (_%$%hd69646994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%pre-bind69706997%_)
                      (if (gx#stx-pair? _%$%hd69646994%_)
                          (let ((_%$%e69676999%_
                                 (gx#syntax-e _%$%hd69646994%_)))
                            (let ((_%$%lp-hd69687003%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e69676999%_)))
                                  (_%$%lp-tl69697006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e69676999%_))))
                              (_%$%loop69666990%_
                               _%$%lp-tl69697006%_
                               (cons _%$%lp-hd69687003%_
                                     _%$%pre-bind69706997%_))))
                          (let* ((_%$%pre-bind69717009%_
                                  (reverse _%$%pre-bind69706997%_))
                                 (_%$%g70347051%_
                                  (lambda (_%$%g70357047%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g70357047%_)))
                                 (_%$%g70337153%_
                                  (lambda (_%$%g70357055%_)
                                    (if (gx#stx-pair/null? _%$%g70357055%_)
                                        (let ((_g21882_
                                               (gx#syntax-split-splice
                                                _%$%g70357055%_
                                                '0)))
                                          (begin
                                            (let ((_g21883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21882_)
                                                         (##values-length
                                                          _g21882_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21883_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21883_)))
                                            (let ((_%$%target70377058%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21882_
                                                      0)))
                                                  (_%$%tl70397061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21882_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl70397061%_)
                                                  (letrec ((_%$%loop70407064%_
                                                            (lambda (_%$%hd70387068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%opt-bind70447071%_)
                      (if (gx#stx-pair? _%$%hd70387068%_)
                          (let ((_%$%e70417073%_
                                 (gx#syntax-e _%$%hd70387068%_)))
                            (let ((_%$%lp-hd70427077%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e70417073%_)))
                                  (_%$%lp-tl70437080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e70417073%_))))
                              (_%$%loop70407064%_
                               _%$%lp-tl70437080%_
                               (cons _%$%lp-hd70427077%_
                                     _%$%opt-bind70447071%_))))
                          (let* ((_%$%opt-bind70457083%_
                                  (reverse _%$%opt-bind70447071%_))
                                 (_%$%g71037111%_
                                  (lambda (_%$%g71047107%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g71047107%_)))
                                 (_%$%g71027149%_
                                  (lambda (_%$%g71047115%_)
                                    (cons (list (foldr (lambda (_%$%g71327137%_
                                                                _%$%g71337140%_)
                                                         (cons _%$%g71327137%_
                                                               _%$%g71337140%_))
                                                       (foldr (lambda (_%$%g71347143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g71357146%_)
                        (cons _%$%g71347143%_ _%$%g71357146%_))
                      (cons _%$%g71047115%_ '())
                      _%$%opt-bind70457083%_)
               _%$%pre-bind69717009%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%generate-opt-clause5418%_
                                                 _%primary6936%_
                                                 (let ((__tmp21884
                                                        (reverse _%right*6957%_)))
                                                   (declare (not safe))
                                                   (##append
                                                    _%pre6938%_
                                                    __tmp21884))
                                                 _%rest6954%_))
                                          (_%recur6942%_
                                           _%rest6954%_
                                           _%right*6957%_)))))
                            (_%$%g71027149%_ _%hd6951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop70407064%_
                                                     _%$%target70377058%_
                                                     '()))
                                                  (_%$%g70347051%_
                                                   _%$%g70357055%_)))))
                                        (_%$%g70347051%_ _%$%g70357055%_)))))
                            (_%$%g70337153%_ (reverse _%right6947%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop69666990%_
                                                     _%$%target69636984%_
                                                     '()))
                                                  (_%$%g69606977%_
                                                   _%$%g69616981%_)))))
                                        (_%$%g69606977%_ _%$%g69616981%_)))))
                            (_%$%g69597157%_ _%pre6938%_))
                          (if (gx#stx-null? _%tail6940%_)
                              '()
                              (let* ((_%$%g71657206%_
                                      (lambda (_%$%g71667202%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g71667202%_)))
                                     (_%$%g71647375%_
                                      (lambda (_%$%g71667210%_)
                                        (if (gx#stx-pair? _%$%g71667210%_)
                                            (let ((_%$%e71717213%_
                                                   (gx#syntax-e
                                                    _%$%g71667210%_)))
                                              (let ((_%$%hd71727217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e71717213%_)))
                                                    (_%$%tl71737220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e71717213%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd71727217%_)
                                                    (let ((_g21885_
                                                           (gx#syntax-split-splice
                                                            _%$%hd71727217%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21886_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21885_)
                             (##values-length _g21885_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21886_ 2)))
                      (error "Context expects 2 values" _g21886_)))
                (let ((_%$%target71747223%_
                       (let () (declare (not safe)) (##values-ref _g21885_ 0)))
                      (_%$%tl71767226%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21885_ 1))))
                  (if (gx#stx-null? _%$%tl71767226%_)
                      (letrec ((_%$%loop71777229%_
                                (lambda (_%$%hd71757233%_ _%$%pre71817236%_)
                                  (if (gx#stx-pair? _%$%hd71757233%_)
                                      (let ((_%$%e71787238%_
                                             (gx#syntax-e _%$%hd71757233%_)))
                                        (let ((_%$%lp-hd71797242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e71787238%_)))
                                              (_%$%lp-tl71807245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e71787238%_))))
                                          (_%$%loop71777229%_
                                           _%$%lp-tl71807245%_
                                           (cons _%$%lp-hd71797242%_
                                                 _%$%pre71817236%_))))
                                      (let ((_%$%pre71827248%_
                                             (reverse _%$%pre71817236%_)))
                                        (if (gx#stx-pair? _%$%tl71737220%_)
                                            (let ((_%$%e71837251%_
                                                   (gx#syntax-e
                                                    _%$%tl71737220%_)))
                                              (let ((_%$%hd71847255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e71837251%_)))
                                                    (_%$%tl71857258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e71837251%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%hd71847255%_)
                                                    (let ((_g21887_
                                                           (gx#syntax-split-splice
                                                            _%$%hd71847255%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21888_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21887_)
                             (##values-length _g21887_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21888_ 2)))
                      (error "Context expects 2 values" _g21888_)))
                (let ((_%$%target71867261%_
                       (let () (declare (not safe)) (##values-ref _g21887_ 0)))
                      (_%$%tl71887264%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21887_ 1))))
                  (if (gx#stx-null? _%$%tl71887264%_)
                      (letrec ((_%$%loop71897267%_
                                (lambda (_%$%hd71877271%_ _%$%opt71937274%_)
                                  (if (gx#stx-pair? _%$%hd71877271%_)
                                      (let ((_%$%e71907276%_
                                             (gx#syntax-e _%$%hd71877271%_)))
                                        (let ((_%$%lp-hd71917280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e71907276%_)))
                                              (_%$%lp-tl71927283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e71907276%_))))
                                          (_%$%loop71897267%_
                                           _%$%lp-tl71927283%_
                                           (cons _%$%lp-hd71917280%_
                                                 _%$%opt71937274%_))))
                                      (let ((_%$%opt71947286%_
                                             (reverse _%$%opt71937274%_)))
                                        (if (gx#stx-pair? _%$%tl71857258%_)
                                            (let ((_%$%e71957289%_
                                                   (gx#syntax-e
                                                    _%$%tl71857258%_)))
                                              (let ((_%$%hd71967293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e71957289%_)))
                                                    (_%$%tl71977296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e71957289%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl71977296%_)
                                                    (let ((_%$%e71987299%_
                                                           (gx#syntax-e
                                                            _%$%tl71977296%_)))
                                                      (let ((_%$%hd71997303%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e71987299%_)))
                    (_%$%tl72007306%_
                     (let () (declare (not safe)) (##cdr _%$%e71987299%_))))
                (if (gx#stx-null? _%$%tl72007306%_)
                    (list (list (foldr (lambda (_%$%g73427347%_
                                                _%$%g73437350%_)
                                         (cons _%$%g73427347%_
                                               _%$%g73437350%_))
                                       (foldr (lambda (_%$%g73447353%_
                                                       _%$%g73457356%_)
                                                (cons _%$%g73447353%_
                                                      _%$%g73457356%_))
                                              _%$%hd71967293%_
                                              _%$%opt71947286%_)
                                       _%$%pre71827248%_)
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'apply)
                                       (cons _%$%hd71997303%_
                                             (foldr (lambda (_%$%g73587363%_
                                                             _%$%g73597366%_)
                                                      (cons _%$%g73587363%_
                                                            _%$%g73597366%_))
                                                    (foldr (lambda (_%$%g73607369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g73617372%_)
                     (cons _%$%g73607369%_ _%$%g73617372%_))
                   (cons _%$%hd71967293%_ '())
                   _%$%opt71947286%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%pre71827248%_)))
                                 (gx#stx-source _%stx5405%_))))
                    (_%$%g71657206%_ _%$%g71667210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g71657206%_
                                                     _%$%g71667210%_))))
                                            (_%$%g71657206%_
                                             _%$%g71667210%_)))))))
                        (_%$%loop71897267%_ _%$%target71867261%_ '()))
                      (_%$%g71657206%_ _%$%g71667210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g71657206%_
                                                     _%$%g71667210%_))))
                                            (_%$%g71657206%_
                                             _%$%g71667210%_)))))))
                        (_%$%loop71777229%_ _%$%target71747223%_ '()))
                      (_%$%g71657206%_ _%$%g71667210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g71657206%_
                                                     _%$%g71667210%_))))
                                            (_%$%g71657206%_
                                             _%$%g71667210%_)))))
                                (_%$%g71647375%_
                                 (list _%pre6938%_
                                       (reverse _%right6947%_)
                                       _%tail6940%_
                                       _%primary6936%_))))))))
                 (_%generate-opt-clause5418%_
                  (lambda (_%primary6638%_ _%pre6640%_ _%opt6641%_)
                    (let _%recur6643%_ ((_%opt-rest6646%_ _%opt6641%_)
                                        (_%right6648%_ '()))
                      (if (pair? _%opt-rest6646%_)
                          (let* ((_%hd6650%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6646%_)))
                                 (_%rest6653%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6646%_)))
                                 (_%$%g66566664%_
                                  (lambda (_%$%g66576660%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g66576660%_)))
                                 (_%$%g66556753%_
                                  (lambda (_%$%g66576668%_)
                                    (let* ((_%$%g66876695%_
                                            (lambda (_%$%g66886691%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g66886691%_)))
                                           (_%$%g66866749%_
                                            (lambda (_%$%g66886699%_)
                                              (let* ((_%$%g67156723%_
                                                      (lambda (_%$%g67166719%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g67166719%_)))
                                                     (_%$%g67146745%_
                                                      (lambda (_%$%g67166727%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'let-values)
                                                              (cons (cons (cons (cons _%$%g66576668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%$%g66886699%_ '()))
                                  '())
                            (cons _%$%g67166727%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g67146745%_
                                                 (_%recur6643%_
                                                  _%rest6653%_
                                                  (cons _%$%g66576668%_
                                                        _%right6648%_)))))))
                                      (_%$%g66866749%_ (cdr _%hd6650%_))))))
                            (_%$%g66556753%_ (car _%hd6650%_)))
                          (let* ((_%$%g67576794%_
                                  (lambda (_%$%g67586790%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g67586790%_)))
                                 (_%$%g67566932%_
                                  (lambda (_%$%g67586798%_)
                                    (if (gx#stx-pair? _%$%g67586798%_)
                                        (let ((_%$%e67626801%_
                                               (gx#syntax-e _%$%g67586798%_)))
                                          (let ((_%$%hd67636805%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e67626801%_)))
                                                (_%$%tl67646808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e67626801%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%hd67636805%_)
                                                (let ((_g21889_
                                                       (gx#syntax-split-splice
                                                        _%$%hd67636805%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21889_)
                         (##values-length _g21889_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21890_ 2)))
                  (error "Context expects 2 values" _g21890_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target67656811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21889_
                                                              0)))
                                                          (_%$%tl67676814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21889_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl67676814%_)
                                                          (letrec ((_%$%loop67686817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd67666821%_ _%$%pre67726824%_)
                              (if (gx#stx-pair? _%$%hd67666821%_)
                                  (let ((_%$%e67696826%_
                                         (gx#syntax-e _%$%hd67666821%_)))
                                    (let ((_%$%lp-hd67706830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e67696826%_)))
                                          (_%$%lp-tl67716833%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e67696826%_))))
                                      (_%$%loop67686817%_
                                       _%$%lp-tl67716833%_
                                       (cons _%$%lp-hd67706830%_
                                             _%$%pre67726824%_))))
                                  (let ((_%$%pre67736836%_
                                         (reverse _%$%pre67726824%_)))
                                    (if (gx#stx-pair? _%$%tl67646808%_)
                                        (let ((_%$%e67746839%_
                                               (gx#syntax-e _%$%tl67646808%_)))
                                          (let ((_%$%hd67756843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e67746839%_)))
                                                (_%$%tl67766846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e67746839%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%hd67756843%_)
                                                (let ((_g21891_
                                                       (gx#syntax-split-splice
                                                        _%$%hd67756843%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21892_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21891_)
                         (##values-length _g21891_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21892_ 2)))
                  (error "Context expects 2 values" _g21892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target67776849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21891_
                                                              0)))
                                                          (_%$%tl67796852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21891_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl67796852%_)
                                                          (letrec ((_%$%loop67806855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd67786859%_ _%$%opt67846862%_)
                              (if (gx#stx-pair? _%$%hd67786859%_)
                                  (let ((_%$%e67816864%_
                                         (gx#syntax-e _%$%hd67786859%_)))
                                    (let ((_%$%lp-hd67826868%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e67816864%_)))
                                          (_%$%lp-tl67836871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e67816864%_))))
                                      (_%$%loop67806855%_
                                       _%$%lp-tl67836871%_
                                       (cons _%$%lp-hd67826868%_
                                             _%$%opt67846862%_))))
                                  (let ((_%$%opt67856874%_
                                         (reverse _%$%opt67846862%_)))
                                    (if (gx#stx-pair? _%$%tl67766846%_)
                                        (let ((_%$%e67866877%_
                                               (gx#syntax-e _%$%tl67766846%_)))
                                          (let ((_%$%hd67876881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e67866877%_)))
                                                (_%$%tl67886884%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e67866877%_))))
                                            (if (gx#stx-null? _%$%tl67886884%_)
                                                (gx#stx-wrap-source
                                                 (cons _%$%hd67876881%_
                                                       (foldr (lambda (_%$%g69156920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g69166923%_)
                        (cons _%$%g69156920%_ _%$%g69166923%_))
                      (foldr (lambda (_%$%g69176926%_ _%$%g69186929%_)
                               (cons _%$%g69176926%_ _%$%g69186929%_))
                             '()
                             _%$%opt67856874%_)
                      _%$%pre67736836%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source _%stx5405%_))
                                                (_%$%g67576794%_
                                                 _%$%g67586798%_))))
                                        (_%$%g67576794%_ _%$%g67586798%_)))))))
                    (_%$%loop67806855%_ _%$%target67776849%_ '()))
                  (_%$%g67576794%_ _%$%g67586798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g67576794%_
                                                 _%$%g67586798%_))))
                                        (_%$%g67576794%_ _%$%g67586798%_)))))))
                    (_%$%loop67686817%_ _%$%target67656811%_ '()))
                  (_%$%g67576794%_ _%$%g67586798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g67576794%_
                                                 _%$%g67586798%_))))
                                        (_%$%g67576794%_ _%$%g67586798%_)))))
                            (_%$%g67566932%_
                             (list _%pre6640%_
                                   (reverse _%right6648%_)
                                   _%primary6638%_)))))))
                 (_%generate-kw-primary5419%_
                  (lambda (_%key6018%_
                           _%kwargs6020%_
                           _%args6021%_
                           _%body6022%_)
                    (letrec ((_%make-body6024%_
                              (lambda (_%kwargs6507%_ _%kwvals6509%_)
                                (if (pair? _%kwargs6507%_)
                                    (let* ((_%kwarg6511%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6507%_)))
                                           (_%var6514%_ (cadr _%kwarg6511%_))
                                           (_%default6517%_
                                            (caddr _%kwarg6511%_))
                                           (_%kwval6520%_ (car _%kwvals6509%_))
                                           (_%rest-kwargs6523%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6507%_)))
                                           (_%rest-kwvals6526%_
                                            (cdr _%kwvals6509%_))
                                           (_%$%g65316554%_
                                            (lambda (_%$%g65326550%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g65326550%_)))
                                           (_%$%g65306634%_
                                            (lambda (_%$%g65326558%_)
                                              (if (gx#stx-pair?
                                                   _%$%g65326558%_)
                                                  (let ((_%$%e65376561%_
                                                         (gx#syntax-e
                                                          _%$%g65326558%_)))
                                                    (let ((_%$%hd65386565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e65376561%_)))
                                                          (_%$%tl65396568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e65376561%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl65396568%_)
                                                          (let ((_%$%e65406571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl65396568%_)))
                    (let ((_%$%hd65416575%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e65406571%_)))
                          (_%$%tl65426578%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e65406571%_))))
                      (if (gx#stx-pair? _%$%tl65426578%_)
                          (let ((_%$%e65436581%_
                                 (gx#syntax-e _%$%tl65426578%_)))
                            (let ((_%$%hd65446585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e65436581%_)))
                                  (_%$%tl65456588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e65436581%_))))
                              (if (gx#stx-pair? _%$%tl65456588%_)
                                  (let ((_%$%e65466591%_
                                         (gx#syntax-e _%$%tl65456588%_)))
                                    (let ((_%$%hd65476595%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e65466591%_)))
                                          (_%$%tl65486598%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e65466591%_))))
                                      (if (gx#stx-null? _%$%tl65486598%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (cons _%$%hd65386565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f 'eq?)
                                                  (cons _%$%hd65416575%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'absent-value)
                                                              '())))
                                            (cons _%$%hd65446585%_
                                                  (cons _%$%hd65416575%_
                                                        '()))))
                                '()))
                    '())
              (cons _%$%hd65476595%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g65316554%_ _%$%g65326558%_))))
                                  (_%$%g65316554%_ _%$%g65326558%_))))
                          (_%$%g65316554%_ _%$%g65326558%_))))
                  (_%$%g65316554%_ _%$%g65326558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g65316554%_
                                                   _%$%g65326558%_)))))
                                      (_%$%g65306634%_
                                       (list _%var6514%_
                                             _%kwval6520%_
                                             _%default6517%_
                                             (_%make-body6024%_
                                              _%rest-kwargs6523%_
                                              _%rest-kwvals6526%_))))
                                    (cons 'begin _%body6022%_))))
                             (_%make-main6026%_
                              (lambda ()
                                (let* ((_%$%g63176325%_
                                        (lambda (_%$%g63186321%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g63186321%_)))
                                       (_%$%g63166499%_
                                        (lambda (_%$%g63186329%_)
                                          (let* ((_%$%g63446361%_
                                                  (lambda (_%$%g63456357%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g63456357%_)))
                                                 (_%$%g63436495%_
                                                  (lambda (_%$%g63456365%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%g63456365%_)
                                                        (let ((_g21893_
                                                               (gx#syntax-split-splice
                                                                _%$%g63456365%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g21894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g21893_)
                                 (##values-length _g21893_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g21894_ 2)))
                          (error "Context expects 2 values" _g21894_)))
                    (let ((_%$%target63476368%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g21893_ 0)))
                          (_%$%tl63496371%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g21893_ 1))))
                      (if (gx#stx-null? _%$%tl63496371%_)
                          (letrec ((_%$%loop63506374%_
                                    (lambda (_%$%hd63486378%_
                                             _%$%kwval63546381%_)
                                      (if (gx#stx-pair? _%$%hd63486378%_)
                                          (let ((_%$%e63516383%_
                                                 (gx#syntax-e
                                                  _%$%hd63486378%_)))
                                            (let ((_%$%lp-hd63526387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e63516383%_)))
                                                  (_%$%lp-tl63536390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e63516383%_))))
                                              (_%$%loop63506374%_
                                               _%$%lp-tl63536390%_
                                               (cons _%$%lp-hd63526387%_
                                                     _%$%kwval63546381%_))))
                                          (let* ((_%$%kwval63556393%_
                                                  (reverse _%$%kwval63546381%_))
                                                 (_%$%g64136421%_
                                                  (lambda (_%$%g64146417%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g64146417%_)))
                                                 (_%$%g64126491%_
                                                  (lambda (_%$%g64146425%_)
                                                    (let* ((_%$%g64416449%_
                                                            (lambda (_%$%g64426445%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g64426445%_)))
                                                           (_%$%g64406479%_
                                                            (lambda (_%$%g64426453%_)
                                                              (gx#stx-wrap-source
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _%$%g63186329%_
                                         (foldr (lambda (_%$%g64706473%_
                                                         _%$%g64716476%_)
                                                  (cons _%$%g64706473%_
                                                        _%$%g64716476%_))
                                                _%$%g64146425%_
                                                _%$%kwval63556393%_))
                                   (cons _%$%g64426453%_ '())))
                       (gx#stx-source _%stx5405%_)))))
              (_%$%g64406479%_
               (_%make-body6024%_
                _%kwargs6020%_
                (foldr (lambda (_%$%g64826485%_ _%$%g64836488%_)
                         (cons _%$%g64826485%_ _%$%g64836488%_))
                       '()
                       _%$%kwval63556393%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g64126491%_ _%args6021%_))))))
                            (_%$%loop63506374%_ _%$%target63476368%_ '()))
                          (_%$%g63446361%_ _%$%g63456365%_)))))
                (_%$%g63446361%_ _%$%g63456365%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g63436495%_
                                             (gx#gentemps
                                              (map cadr _%kwargs6020%_)))))))
                                  (_%$%g63166499%_
                                   (let ((_%$e6503%_ _%key6018%_))
                                     (if _%$e6503%_
                                         _%$e6503%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6027%_
                              (lambda (_%main6127%_)
                                (let* ((_%$%g61306138%_
                                        (lambda (_%$%g61316134%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g61316134%_)))
                                       (_%$%g61296307%_
                                        (lambda (_%$%g61316142%_)
                                          (let* ((_%$%g61576174%_
                                                  (lambda (_%$%g61586170%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g61586170%_)))
                                                 (_%$%g61566268%_
                                                  (lambda (_%$%g61586178%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%g61586178%_)
                                                        (let ((_g21895_
                                                               (gx#syntax-split-splice
                                                                _%$%g61586178%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g21896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g21895_)
                                 (##values-length _g21895_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g21896_ 2)))
                          (error "Context expects 2 values" _g21896_)))
                    (let ((_%$%target61606181%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g21895_ 0)))
                          (_%$%tl61626184%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g21895_ 1))))
                      (if (gx#stx-null? _%$%tl61626184%_)
                          (letrec ((_%$%loop61636187%_
                                    (lambda (_%$%hd61616191%_
                                             _%$%get-kw61676194%_)
                                      (if (gx#stx-pair? _%$%hd61616191%_)
                                          (let ((_%$%e61646196%_
                                                 (gx#syntax-e
                                                  _%$%hd61616191%_)))
                                            (let ((_%$%lp-hd61656200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e61646196%_)))
                                                  (_%$%lp-tl61666203%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e61646196%_))))
                                              (_%$%loop61636187%_
                                               _%$%lp-tl61666203%_
                                               (cons _%$%lp-hd61656200%_
                                                     _%$%get-kw61676194%_))))
                                          (let* ((_%$%get-kw61686206%_
                                                  (reverse _%$%get-kw61676194%_))
                                                 (_%$%g62266234%_
                                                  (lambda (_%$%g62276230%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g62276230%_)))
                                                 (_%$%g62256264%_
                                                  (lambda (_%$%g62276238%_)
                                                    (gx#stx-wrap-source
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons (cons _%$%g61316142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'args))
                         (cons (cons (gx#datum->syntax '#f 'apply)
                                     (cons _%$%g62276238%_
                                           (cons _%$%g61316142%_
                                                 (foldr (lambda (_%$%g62556258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g62566261%_)
                  (cons _%$%g62556258%_ _%$%g62566261%_))
                (cons (gx#datum->syntax '#f 'args) '())
                _%$%get-kw61686206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _%stx5405%_)))))
                                            (_%$%g62256264%_ _%main6127%_))))))
                            (_%$%loop61636187%_ _%$%target61606181%_ '()))
                          (_%$%g61576174%_ _%$%g61586178%_)))))
                (_%$%g61576174%_ _%$%g61586178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g61566268%_
                                             (map (lambda (_%kwarg6272%_)
                                                    (let* ((_%$%g62756283%_
                                                            (lambda (_%$%g62766279%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g62766279%_)))
                                                           (_%$%g62746303%_
                                                            (lambda (_%$%g62766287%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'symbolic-table-ref)
                            (cons _%$%g61316142%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%g62766287%_ '()))
                                        (cons (gx#datum->syntax
                                               '#f
                                               'absent-value)
                                              '())))))))
              (_%$%g62746303%_ (car _%kwarg6272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%kwargs6020%_))))))
                                  (_%$%g61296307%_
                                   (let ((_%$e6311%_ _%key6018%_))
                                     (if _%$e6311%_
                                         _%$e6311%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%$%g60296037%_
                              (lambda (_%$%g60306033%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g60306033%_)))
                             (_%$%g60286123%_
                              (lambda (_%$%g60306041%_)
                                (let* ((_%$%g60576065%_
                                        (lambda (_%$%g60586061%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g60586061%_)))
                                       (_%$%g60566119%_
                                        (lambda (_%$%g60586069%_)
                                          (let* ((_%$%g60856093%_
                                                  (lambda (_%$%g60866089%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g60866089%_)))
                                                 (_%$%g60846115%_
                                                  (lambda (_%$%g60866097%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let-values)
                                                          (cons (cons (cons (cons _%$%g60306041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%$%g60866097%_ '()))
                              '())
                        (cons _%$%g60586069%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g60846115%_
                                             (_%make-main6026%_))))))
                                  (_%$%g60566119%_
                                   (_%make-dispatch6027%_ _%$%g60306041%_))))))
                        (_%$%g60286123%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5420%_
                  (lambda (_%primary5931%_ _%kwargs5933%_ _%strict?5934%_)
                    (let* ((_%$%g59365955%_
                            (lambda (_%$%g59375951%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g59375951%_)))
                           (_%$%g59356014%_
                            (lambda (_%$%g59375959%_)
                              (if (gx#stx-pair? _%$%g59375959%_)
                                  (let ((_%$%e59415962%_
                                         (gx#syntax-e _%$%g59375959%_)))
                                    (let ((_%$%hd59425966%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e59415962%_)))
                                          (_%$%tl59435969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e59415962%_))))
                                      (if (gx#stx-pair? _%$%tl59435969%_)
                                          (let ((_%$%e59445972%_
                                                 (gx#syntax-e
                                                  _%$%tl59435969%_)))
                                            (let ((_%$%hd59455976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e59445972%_)))
                                                  (_%$%tl59465979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e59445972%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl59465979%_)
                                                  (let ((_%$%e59475982%_
                                                         (gx#syntax-e
                                                          _%$%tl59465979%_)))
                                                    (let ((_%$%hd59485986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e59475982%_)))
                                                          (_%$%tl59495989%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e59475982%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl59495989%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda%)
                        (cons _%$%hd59485986%_
                              (cons (cons (gx#datum->syntax '#f 'apply)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'keyword-dispatch)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd59425966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%hd59455976%_ (cons _%$%hd59485986%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  (_%$%g59365955%_ _%$%g59375959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g59365955%_
                                                   _%$%g59375959%_))))
                                          (_%$%g59365955%_ _%$%g59375959%_))))
                                  (_%$%g59365955%_ _%$%g59375959%_)))))
                      (_%$%g59356014%_
                       (list (if _%strict?5934%_
                                 (_%generate-kw-table5421%_
                                  (map car _%kwargs5933%_))
                                 '#f)
                             _%primary5931%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5421%_
                  (lambda (_%kws5905%_)
                    (let _%rehash5908%_ ((_%pht5911%_
                                          (let ((__tmp21901
                                                 (length _%kws5905%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp21901 '#f))))
                      (let _%lp5914%_ ((_%rest5917%_ _%kws5905%_))
                        (if (pair? _%rest5917%_)
                            (let* ((_%key5920%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5917%_)))
                                   (_%rest5923%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5917%_)))
                                   (_%pos5926%_
                                    (let ((__tmp21898
                                           (keyword-hash _%key5920%_))
                                          (__tmp21897
                                           (vector-length _%pht5911%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp21898 __tmp21897))))
                              (if (vector-ref _%pht5911%_ _%pos5926%_)
                                  (if (let ((__tmp21899
                                             (vector-length _%pht5911%_)))
                                        (declare (not safe))
                                        (##fx< __tmp21899 '8192))
                                      (_%rehash5908%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp21900
                                                (vector-length _%pht5911%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp21900))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5905%_))
                                  (begin
                                    (vector-set!
                                     _%pht5911%_
                                     _%pos5926%_
                                     _%key5920%_)
                                    (_%lp5914%_ _%rest5923%_))))
                            _%pht5911%_))))))
          (let* ((_%__stx2003420035%_ _%stx5405%_)
                 (_%$%g54255456%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2003420035%_))))
            (let ((_%__kont2003720038%_
                   (lambda (_%$%g54275886%_ _%$%g54285888%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%$%g54285888%_ _%$%g54275886%_))))
                  (_%__kont2003920040%_
                   (lambda (_%$%g54355660%_ _%$%g54365662%_)
                     (let ((_g21902_
                            (_%opt-lambda-split5411%_ _%$%g54365662%_)))
                       (begin
                         (let ((_g21903_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21902_)
                                      (##values-length _g21902_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21903_ 3)))
                               (error "Context expects 3 values" _g21903_)))
                         (let ((_%pre5675%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21902_ 0)))
                               (_%opt5677%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21902_ 1)))
                               (_%tail5678%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21902_ 2))))
                           (let* ((_%$%g56805688%_
                                   (lambda (_%$%g56815684%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g56815684%_)))
                                  (_%$%g56795855%_
                                   (lambda (_%$%g56815692%_)
                                     (let* ((_%$%g57085716%_
                                             (lambda (_%$%g57095712%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g57095712%_)))
                                            (_%$%g57075851%_
                                             (lambda (_%$%g57095720%_)
                                               (let* ((_%$%g57365753%_
                                                       (lambda (_%$%g57375749%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g57375749%_)))
                                                      (_%$%g57355847%_
                                                       (lambda (_%$%g57375757%_)
                                                         (if (gx#stx-pair/null?
                                                              _%$%g57375757%_)
                                                             (let ((_g21904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%$%g57375757%_ '0)))
                       (begin
                         (let ((_g21905_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21904_)
                                      (##values-length _g21904_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21905_ 2)))
                               (error "Context expects 2 values" _g21905_)))
                         (let ((_%$%target57395760%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21904_ 0)))
                               (_%$%tl57415763%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21904_ 1))))
                           (if (gx#stx-null? _%$%tl57415763%_)
                               (letrec ((_%$%loop57425766%_
                                         (lambda (_%$%hd57405770%_
                                                  _%$%clause57465773%_)
                                           (if (gx#stx-pair? _%$%hd57405770%_)
                                               (let ((_%$%e57435775%_
                                                      (gx#syntax-e
                                                       _%$%hd57405770%_)))
                                                 (let ((_%$%lp-hd57445779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e57435775%_)))
                                                       (_%$%lp-tl57455782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e57435775%_))))
                                                   (_%$%loop57425766%_
                                                    _%$%lp-tl57455782%_
                                                    (cons _%$%lp-hd57445779%_
                                                          _%$%clause57465773%_))))
                                               (let* ((_%$%clause57475785%_
                                                       (reverse _%$%clause57465773%_))
                                                      (_%$%g58055813%_
                                                       (lambda (_%$%g58065809%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g58065809%_)))
                                                      (_%$%g58045835%_
                                                       (lambda (_%$%g58065817%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _%$%g56815692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons _%$%g57095720%_ '()))
                                   '())
                             (cons _%$%g58065817%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g58045835%_
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%$%g58385841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g58395844%_)
                          (cons _%$%g58385841%_ _%$%g58395844%_))
                        '()
                        _%$%clause57475785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx5405%_))))))))
                                 (_%$%loop57425766%_ _%$%target57395760%_ '()))
                               (_%$%g57365753%_ _%$%g57375757%_)))))
                     (_%$%g57365753%_ _%$%g57375757%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g57355847%_
                                                  (_%generate-opt-dispatch5416%_
                                                   _%$%g56815692%_
                                                   _%pre5675%_
                                                   _%opt5677%_
                                                   _%tail5678%_))))))
                                       (_%$%g57075851%_
                                        (gx#stx-wrap-source
                                         (_%generate-opt-primary5415%_
                                          _%pre5675%_
                                          _%opt5677%_
                                          _%tail5678%_
                                          _%$%g54355660%_)
                                         (gx#stx-source _%stx5405%_)))))))
                             (_%$%g56795855%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont2004120042%_
                   (lambda (_%$%g54435483%_ _%$%g54445485%_)
                     (let* ((_%$%g55015508%_
                             (lambda (_%$%g55025504%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g55025504%_)))
                            (_%$%g55005629%_
                             (lambda (_%$%g55025512%_)
                               (let ((_g21906_
                                      (_%kw-lambda-split5413%_
                                       _%$%g54445485%_)))
                                 (begin
                                   (let ((_g21907_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21906_)
                                                (##values-length _g21906_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21907_ 3)))
                                         (error "Context expects 3 values"
                                                _g21907_)))
                                   (let ((_%key5521%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21906_ 0)))
                                         (_%kwargs5523%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21906_ 1)))
                                         (_%args5524%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21906_ 2))))
                                     (let* ((_%$%g55265534%_
                                             (lambda (_%$%g55275530%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g55275530%_)))
                                            (_%$%g55255625%_
                                             (lambda (_%$%g55275538%_)
                                               (let* ((_%$%g55595567%_
                                                       (lambda (_%$%g55605563%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g55605563%_)))
                                                      (_%$%g55585621%_
                                                       (lambda (_%$%g55605571%_)
                                                         (let* ((_%$%g55875595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%g55885591%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g55885591%_)))
                        (_%$%g55865617%_
                         (lambda (_%$%g55885599%_)
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _%$%g55275538%_ '())
                                                   (cons _%$%g55605571%_ '()))
                                             '())
                                       (cons _%$%g55885599%_ '()))))))
                   (_%$%g55865617%_
                    (gx#stx-wrap-source
                     (_%generate-kw-dispatch5420%_
                      _%$%g55275538%_
                      _%kwargs5523%_
                      (not _%key5521%_))
                     (gx#stx-source _%stx5405%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g55585621%_
                                                  (gx#stx-wrap-source
                                                   (_%generate-kw-primary5419%_
                                                    _%key5521%_
                                                    _%kwargs5523%_
                                                    _%args5524%_
                                                    _%$%g54435483%_)
                                                   (gx#stx-source
                                                    _%stx5405%_)))))))
                                       (_%$%g55255625%_
                                        (gx#genident 'kw-lambda)))))))))
                       (_%$%g55005629%_
                        (_%check-duplicate-bindings5414%_ _%$%g54445485%_))))))
              (let* ((_%__match2007920080%_
                      (lambda (_%$%e54455463%_
                               _%$%hd54465467%_
                               _%$%tl54475470%_
                               _%$%e54485473%_
                               _%$%hd54495477%_
                               _%$%tl54505480%_)
                        (let ((_%$%g54435483%_ _%$%tl54505480%_)
                              (_%$%g54445485%_ _%$%hd54495477%_))
                          (if (_%kw-lambda?5412%_ _%$%g54445485%_)
                              (_%__kont2004120042%_
                               _%$%g54435483%_
                               _%$%g54445485%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g54255456%_))))))
                     (_%__match2006720068%_
                      (lambda (_%$%e54375640%_
                               _%$%hd54385644%_
                               _%$%tl54395647%_
                               _%$%e54405650%_
                               _%$%hd54415654%_
                               _%$%tl54425657%_)
                        (let ((_%$%g54355660%_ _%$%tl54425657%_)
                              (_%$%g54365662%_ _%$%hd54415654%_))
                          (if (_%opt-lambda?5410%_ _%$%g54365662%_)
                              (_%__kont2003920040%_
                               _%$%g54355660%_
                               _%$%g54365662%_)
                              (_%__match2007920080%_
                               _%$%e54375640%_
                               _%$%hd54385644%_
                               _%$%tl54395647%_
                               _%$%e54405650%_
                               _%$%hd54415654%_
                               _%$%tl54425657%_)))))
                     (_%__match2005520056%_
                      (lambda (_%$%e54295866%_
                               _%$%hd54305870%_
                               _%$%tl54315873%_
                               _%$%e54325876%_
                               _%$%hd54335880%_
                               _%$%tl54345883%_)
                        (let ((_%$%g54275886%_ _%$%tl54345883%_)
                              (_%$%g54285888%_ _%$%hd54335880%_))
                          (if (_%simple-lambda?5408%_ _%$%g54285888%_)
                              (_%__kont2003720038%_
                               _%$%g54275886%_
                               _%$%g54285888%_)
                              (_%__match2006720068%_
                               _%$%e54295866%_
                               _%$%hd54305870%_
                               _%$%tl54315873%_
                               _%$%e54325876%_
                               _%$%hd54335880%_
                               _%$%tl54345883%_))))))
                (if (gx#stx-pair? _%__stx2003420035%_)
                    (let ((_%$%e54295866%_ (gx#syntax-e _%__stx2003420035%_)))
                      (let ((_%$%tl54315873%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e54295866%_)))
                            (_%$%hd54305870%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e54295866%_))))
                        (if (gx#stx-pair? _%$%tl54315873%_)
                            (let ((_%$%e54325876%_
                                   (gx#syntax-e _%$%tl54315873%_)))
                              (let ((_%$%tl54345883%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e54325876%_)))
                                    (_%$%hd54335880%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e54325876%_))))
                                (_%__match2005520056%_
                                 _%$%e54295866%_
                                 _%$%hd54305870%_
                                 _%$%tl54315873%_
                                 _%$%e54325876%_
                                 _%$%hd54335880%_
                                 _%$%tl54345883%_)))
                            (let () (declare (not safe)) (_%$%g54255456%_)))))
                    (let () (declare (not safe)) (_%$%g54255456%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8808%_)
        (let* ((_%__stx2008220083%_ _%$stx8808%_)
               (_%$%g88168928%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2008220083%_))))
          (let ((_%__kont2008520086%_
                 (lambda (_%$%g88189366%_
                          _%$%g88199368%_
                          _%$%g88209369%_
                          _%$%g88219370%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%$%g88219370%_ _%$%g88209369%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%$%g88199368%_
                                                 (foldr (lambda (_%$%g93929395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g93939398%_)
                  (cons _%$%g93929395%_ _%$%g93939398%_))
                '()
                _%$%g88189366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2008920090%_
                 (lambda (_%$%g88439253%_
                          _%$%g88449255%_
                          _%$%g88459256%_
                          _%$%g88469257%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g88469257%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%$%g88459256%_
                                                 (foldr (lambda (_%$%g92829285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g92839288%_)
                  (cons _%$%g92829285%_ _%$%g92839288%_))
                '()
                _%$%g88439253%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'macro:
                                           (cons _%$%g88449255%_ '())))))))
                (_%__kont2009320094%_
                 (lambda (_%$%g88729133%_ _%$%g88739135%_ _%$%g88749136%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g88749136%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%$%g88739135%_
                                                 (foldr (lambda (_%$%g91559158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g91569161%_)
                  (cons _%$%g91559158%_ _%$%g91569161%_))
                '()
                _%$%g88729133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont2009720098%_
                 (lambda (_%$%g88939051%_ _%$%g88949053%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g88949053%_ '())
                               (cons _%$%g88939051%_ '())))))
                (_%__kont2009920100%_
                 (lambda (_%$%g89048989%_ _%$%g89058991%_ _%$%g89068992%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%$%g89068992%_ '())
                               (cons _%$%g89058991%_
                                     (cons 'macro:
                                           (cons _%$%g89048989%_ '()))))))))
            (let* ((_%__match2026120262%_
                    (lambda (_%$%e89078935%_
                             _%$%hd89088939%_
                             _%$%tl89098942%_
                             _%$%e89108945%_
                             _%$%hd89118949%_
                             _%$%tl89128952%_
                             _%$%e89138955%_
                             _%$%hd89148959%_
                             _%$%tl89158962%_
                             _%$%e89168965%_
                             _%$%hd89178969%_
                             _%$%tl89188972%_
                             _%$%e89198975%_
                             _%$%e89208979%_
                             _%$%hd89218983%_
                             _%$%tl89228986%_)
                      (let ((_%$%g89048989%_ _%$%hd89218983%_)
                            (_%$%g89058991%_ _%$%hd89148959%_)
                            (_%$%g89068992%_ _%$%hd89118949%_))
                        (if (and (gx#identifier? _%$%g89068992%_)
                                 (gx#identifier? _%$%g89048989%_))
                            (_%__kont2009920100%_
                             _%$%g89048989%_
                             _%$%g89058991%_
                             _%$%g89068992%_)
                            (let () (declare (not safe)) (_%$%g88168928%_))))))
                   (_%__match2022320224%_
                    (lambda (_%$%e88959021%_
                             _%$%hd88969025%_
                             _%$%tl88979028%_
                             _%$%e88989031%_
                             _%$%hd88999035%_
                             _%$%tl89009038%_
                             _%$%e89019041%_
                             _%$%hd89029045%_
                             _%$%tl89039048%_)
                      (let ((_%$%g88939051%_ _%$%hd89029045%_)
                            (_%$%g88949053%_ _%$%hd88999035%_))
                        (if (gx#identifier? _%$%g88949053%_)
                            (_%__kont2009720098%_
                             _%$%g88939051%_
                             _%$%g88949053%_)
                            (let () (declare (not safe)) (_%$%g88168928%_))))))
                   (_%__match2021520216%_
                    (lambda (_%$%e88959021%_
                             _%$%hd88969025%_
                             _%$%tl88979028%_
                             _%$%e88989031%_
                             _%$%hd88999035%_
                             _%$%tl89009038%_)
                      (if (gx#stx-pair? _%$%tl89009038%_)
                          (let ((_%$%e89019041%_
                                 (gx#syntax-e _%$%tl89009038%_)))
                            (let ((_%$%tl89039048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e89019041%_)))
                                  (_%$%hd89029045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e89019041%_))))
                              (if (gx#stx-null? _%$%tl89039048%_)
                                  (_%__match2022320224%_
                                   _%$%e88959021%_
                                   _%$%hd88969025%_
                                   _%$%tl88979028%_
                                   _%$%e88989031%_
                                   _%$%hd88999035%_
                                   _%$%tl89009038%_
                                   _%$%e89019041%_
                                   _%$%hd89029045%_
                                   _%$%tl89039048%_)
                                  (if (gx#stx-pair? _%$%tl89039048%_)
                                      (let ((_%$%e89168965%_
                                             (gx#syntax-e _%$%tl89039048%_)))
                                        (let ((_%$%tl89188972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e89168965%_)))
                                              (_%$%hd89178969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e89168965%_))))
                                          (if (gx#stx-datum? _%$%hd89178969%_)
                                              (let ((_%$%e89198975%_
                                                     (gx#stx-e
                                                      _%$%hd89178969%_)))
                                                (if (equal? _%$%e89198975%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl89188972%_)
                                                        (let ((_%$%e89208979%_
                                                               (gx#syntax-e
                                                                _%$%tl89188972%_)))
                                                          (let ((_%$%tl89228986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%$%e89208979%_)))
                        (_%$%hd89218983%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e89208979%_))))
                    (if (gx#stx-null? _%$%tl89228986%_)
                        (_%__match2026120262%_
                         _%$%e88959021%_
                         _%$%hd88969025%_
                         _%$%tl88979028%_
                         _%$%e88989031%_
                         _%$%hd88999035%_
                         _%$%tl89009038%_
                         _%$%e89019041%_
                         _%$%hd89029045%_
                         _%$%tl89039048%_
                         _%$%e89168965%_
                         _%$%hd89178969%_
                         _%$%tl89188972%_
                         _%$%e89198975%_
                         _%$%e89208979%_
                         _%$%hd89218983%_
                         _%$%tl89228986%_)
                        (let () (declare (not safe)) (_%$%g88168928%_)))))
                (let () (declare (not safe)) (_%$%g88168928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g88168928%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_))))))
                          (let () (declare (not safe)) (_%$%g88168928%_)))))
                   (_%__match2020320204%_
                    (lambda (_%$%e88759075%_
                             _%$%hd88769079%_
                             _%$%tl88779082%_
                             _%$%e88789085%_
                             _%$%hd88799089%_
                             _%$%tl88809092%_
                             _%$%e88819095%_
                             _%$%hd88829099%_
                             _%$%tl88839102%_
                             _%__splice2009520096%_
                             _%$%target88849105%_
                             _%$%tl88869108%_)
                      (letrec ((_%$%loop88879111%_
                                (lambda (_%$%hd88859115%_ _%$%body88919118%_)
                                  (if (gx#stx-pair? _%$%hd88859115%_)
                                      (let ((_%$%e88889120%_
                                             (gx#syntax-e _%$%hd88859115%_)))
                                        (let ((_%$%lp-tl88909127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e88889120%_)))
                                              (_%$%lp-hd88899124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e88889120%_))))
                                          (_%$%loop88879111%_
                                           _%$%lp-tl88909127%_
                                           (cons _%$%lp-hd88899124%_
                                                 _%$%body88919118%_))))
                                      (let ((_%$%body88929130%_
                                             (reverse _%$%body88919118%_)))
                                        (let ((_%$%g88729133%_
                                               _%$%body88929130%_)
                                              (_%$%g88739135%_
                                               _%$%tl88839102%_)
                                              (_%$%g88749136%_
                                               _%$%hd88829099%_))
                                          (if (gx#identifier? _%$%g88749136%_)
                                              (_%__kont2009320094%_
                                               _%$%g88729133%_
                                               _%$%g88739135%_
                                               _%$%g88749136%_)
                                              (_%__match2021520216%_
                                               _%$%e88759075%_
                                               _%$%hd88769079%_
                                               _%$%tl88779082%_
                                               _%$%e88789085%_
                                               _%$%hd88799089%_
                                               _%$%tl88809092%_))))))))
                        (_%$%loop88879111%_ _%$%target88849105%_ '()))))
                   (_%__match2019520196%_
                    (lambda (_%$%e88759075%_
                             _%$%hd88769079%_
                             _%$%tl88779082%_
                             _%$%e88789085%_
                             _%$%hd88799089%_
                             _%$%tl88809092%_
                             _%$%e88819095%_
                             _%$%hd88829099%_
                             _%$%tl88839102%_)
                      (if (gx#stx-pair/null? _%$%tl88809092%_)
                          (let ((_%__splice2009520096%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl88809092%_
                                  '0)))
                            (let ((_%$%tl88869108%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice2009520096%_ '1)))
                                  (_%$%target88849105%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice2009520096%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl88869108%_)
                                  (_%__match2020320204%_
                                   _%$%e88759075%_
                                   _%$%hd88769079%_
                                   _%$%tl88779082%_
                                   _%$%e88789085%_
                                   _%$%hd88799089%_
                                   _%$%tl88809092%_
                                   _%$%e88819095%_
                                   _%$%hd88829099%_
                                   _%$%tl88839102%_
                                   _%__splice2009520096%_
                                   _%$%target88849105%_
                                   _%$%tl88869108%_)
                                  (if (gx#stx-pair? _%$%tl88809092%_)
                                      (let ((_%$%e89019041%_
                                             (gx#syntax-e _%$%tl88809092%_)))
                                        (let ((_%$%tl89039048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e89019041%_)))
                                              (_%$%hd89029045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e89019041%_))))
                                          (if (gx#stx-null? _%$%tl89039048%_)
                                              (_%__match2022320224%_
                                               _%$%e88759075%_
                                               _%$%hd88769079%_
                                               _%$%tl88779082%_
                                               _%$%e88789085%_
                                               _%$%hd88799089%_
                                               _%$%tl88809092%_
                                               _%$%e89019041%_
                                               _%$%hd89029045%_
                                               _%$%tl89039048%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl89039048%_)
                                                  (let ((_%$%e89168965%_
                                                         (gx#syntax-e
                                                          _%$%tl89039048%_)))
                                                    (let ((_%$%tl89188972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e89168965%_)))
                                                          (_%$%hd89178969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e89168965%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd89178969%_)
                                                          (let ((_%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd89178969%_)))
                    (if (equal? _%$%e89198975%_ 'macro:)
                        (if (gx#stx-pair? _%$%tl89188972%_)
                            (let ((_%$%e89208979%_
                                   (gx#syntax-e _%$%tl89188972%_)))
                              (let ((_%$%tl89228986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e89208979%_)))
                                    (_%$%hd89218983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e89208979%_))))
                                (if (gx#stx-null? _%$%tl89228986%_)
                                    (_%__match2026120262%_
                                     _%$%e88759075%_
                                     _%$%hd88769079%_
                                     _%$%tl88779082%_
                                     _%$%e88789085%_
                                     _%$%hd88799089%_
                                     _%$%tl88809092%_
                                     _%$%e89019041%_
                                     _%$%hd89029045%_
                                     _%$%tl89039048%_
                                     _%$%e89168965%_
                                     _%$%hd89178969%_
                                     _%$%tl89188972%_
                                     _%$%e89198975%_
                                     _%$%e89208979%_
                                     _%$%hd89218983%_
                                     _%$%tl89228986%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g88168928%_)))))
                            (let () (declare (not safe)) (_%$%g88168928%_)))
                        (let () (declare (not safe)) (_%$%g88168928%_))))
                  (let () (declare (not safe)) (_%$%g88168928%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_))))))
                          (if (gx#stx-pair? _%$%tl88809092%_)
                              (let ((_%$%e89019041%_
                                     (gx#syntax-e _%$%tl88809092%_)))
                                (let ((_%$%tl89039048%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e89019041%_)))
                                      (_%$%hd89029045%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e89019041%_))))
                                  (if (gx#stx-null? _%$%tl89039048%_)
                                      (_%__match2022320224%_
                                       _%$%e88759075%_
                                       _%$%hd88769079%_
                                       _%$%tl88779082%_
                                       _%$%e88789085%_
                                       _%$%hd88799089%_
                                       _%$%tl88809092%_
                                       _%$%e89019041%_
                                       _%$%hd89029045%_
                                       _%$%tl89039048%_)
                                      (if (gx#stx-pair? _%$%tl89039048%_)
                                          (let ((_%$%e89168965%_
                                                 (gx#syntax-e
                                                  _%$%tl89039048%_)))
                                            (let ((_%$%tl89188972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e89168965%_)))
                                                  (_%$%hd89178969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e89168965%_))))
                                              (if (gx#stx-datum?
                                                   _%$%hd89178969%_)
                                                  (let ((_%$%e89198975%_
                                                         (gx#stx-e
                                                          _%$%hd89178969%_)))
                                                    (if (equal? _%$%e89198975%_
                                                                'macro:)
                                                        (if (gx#stx-pair?
                                                             _%$%tl89188972%_)
                                                            (let ((_%$%e89208979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl89188972%_)))
                      (let ((_%$%tl89228986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e89208979%_)))
                            (_%$%hd89218983%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e89208979%_))))
                        (if (gx#stx-null? _%$%tl89228986%_)
                            (_%__match2026120262%_
                             _%$%e88759075%_
                             _%$%hd88769079%_
                             _%$%tl88779082%_
                             _%$%e88789085%_
                             _%$%hd88799089%_
                             _%$%tl88809092%_
                             _%$%e89019041%_
                             _%$%hd89029045%_
                             _%$%tl89039048%_
                             _%$%e89168965%_
                             _%$%hd89178969%_
                             _%$%tl89188972%_
                             _%$%e89198975%_
                             _%$%e89208979%_
                             _%$%hd89218983%_
                             _%$%tl89228986%_)
                            (let () (declare (not safe)) (_%$%g88168928%_)))))
                    (let () (declare (not safe)) (_%$%g88168928%_)))
                (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g88168928%_))))))
                              (let ()
                                (declare (not safe))
                                (_%$%g88168928%_))))))
                   (_%__match2017720178%_
                    (lambda (_%$%e88479171%_
                             _%$%hd88489175%_
                             _%$%tl88499178%_
                             _%$%e88509181%_
                             _%$%hd88519185%_
                             _%$%tl88529188%_
                             _%$%e88539191%_
                             _%$%hd88549195%_
                             _%$%tl88559198%_
                             _%$%e88569201%_
                             _%$%hd88579205%_
                             _%$%tl88589208%_
                             _%$%e88599211%_
                             _%$%e88609215%_
                             _%$%hd88619219%_
                             _%$%tl88629222%_
                             _%__splice2009120092%_
                             _%$%target88639225%_
                             _%$%tl88659228%_)
                      (letrec ((_%$%loop88669231%_
                                (lambda (_%$%hd88649235%_ _%$%body88709238%_)
                                  (if (gx#stx-pair? _%$%hd88649235%_)
                                      (let ((_%$%e88679240%_
                                             (gx#syntax-e _%$%hd88649235%_)))
                                        (let ((_%$%lp-tl88699247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e88679240%_)))
                                              (_%$%lp-hd88689244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e88679240%_))))
                                          (_%$%loop88669231%_
                                           _%$%lp-tl88699247%_
                                           (cons _%$%lp-hd88689244%_
                                                 _%$%body88709238%_))))
                                      (let ((_%$%body88719250%_
                                             (reverse _%$%body88709238%_)))
                                        (let ((_%$%g88439253%_
                                               _%$%body88719250%_)
                                              (_%$%g88449255%_
                                               _%$%hd88619219%_)
                                              (_%$%g88459256%_
                                               _%$%tl88559198%_)
                                              (_%$%g88469257%_
                                               _%$%hd88549195%_))
                                          (if (and (gx#identifier?
                                                    _%$%g88469257%_)
                                                   (gx#identifier?
                                                    _%$%g88449255%_))
                                              (_%__kont2008920090%_
                                               _%$%g88439253%_
                                               _%$%g88449255%_
                                               _%$%g88459256%_
                                               _%$%g88469257%_)
                                              (_%__match2019520196%_
                                               _%$%e88479171%_
                                               _%$%hd88489175%_
                                               _%$%tl88499178%_
                                               _%$%e88509181%_
                                               _%$%hd88519185%_
                                               _%$%tl88529188%_
                                               _%$%e88539191%_
                                               _%$%hd88549195%_
                                               _%$%tl88559198%_))))))))
                        (_%$%loop88669231%_ _%$%target88639225%_ '()))))
                   (_%__match2013320134%_
                    (lambda (_%$%e88229298%_
                             _%$%hd88239302%_
                             _%$%tl88249305%_
                             _%$%e88259308%_
                             _%$%hd88269312%_
                             _%$%tl88279315%_
                             _%$%e88289318%_
                             _%$%hd88299322%_
                             _%$%tl88309325%_
                             _%$%e88319328%_
                             _%$%hd88329332%_
                             _%$%tl88339335%_
                             _%__splice2008720088%_
                             _%$%target88349338%_
                             _%$%tl88369341%_)
                      (letrec ((_%$%loop88379344%_
                                (lambda (_%$%hd88359348%_ _%$%body88419351%_)
                                  (if (gx#stx-pair? _%$%hd88359348%_)
                                      (let ((_%$%e88389353%_
                                             (gx#syntax-e _%$%hd88359348%_)))
                                        (let ((_%$%lp-tl88409360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e88389353%_)))
                                              (_%$%lp-hd88399357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e88389353%_))))
                                          (_%$%loop88379344%_
                                           _%$%lp-tl88409360%_
                                           (cons _%$%lp-hd88399357%_
                                                 _%$%body88419351%_))))
                                      (let ((_%$%body88429363%_
                                             (reverse _%$%body88419351%_)))
                                        (_%__kont2008520086%_
                                         _%$%body88429363%_
                                         _%$%tl88309325%_
                                         _%$%tl88339335%_
                                         _%$%hd88329332%_))))))
                        (_%$%loop88379344%_ _%$%target88349338%_ '())))))
              (if (gx#stx-pair? _%__stx2008220083%_)
                  (let ((_%$%e88229298%_ (gx#syntax-e _%__stx2008220083%_)))
                    (let ((_%$%tl88249305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e88229298%_)))
                          (_%$%hd88239302%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e88229298%_))))
                      (if (gx#stx-pair? _%$%tl88249305%_)
                          (let ((_%$%e88259308%_
                                 (gx#syntax-e _%$%tl88249305%_)))
                            (let ((_%$%tl88279315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e88259308%_)))
                                  (_%$%hd88269312%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e88259308%_))))
                              (if (gx#stx-pair? _%$%hd88269312%_)
                                  (let ((_%$%e88289318%_
                                         (gx#syntax-e _%$%hd88269312%_)))
                                    (let ((_%$%tl88309325%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e88289318%_)))
                                          (_%$%hd88299322%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e88289318%_))))
                                      (if (gx#stx-pair? _%$%hd88299322%_)
                                          (let ((_%$%e88319328%_
                                                 (gx#syntax-e
                                                  _%$%hd88299322%_)))
                                            (let ((_%$%tl88339335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e88319328%_)))
                                                  (_%$%hd88329332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e88319328%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl88279315%_)
                                                  (let ((_%__splice2008720088%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl88279315%_
                                                          '0)))
                                                    (let ((_%$%tl88369341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2008720088%_
                                                              '1)))
                                                          (_%$%target88349338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2008720088%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl88369341%_)
                                                          (_%__match2013320134%_
                                                           _%$%e88229298%_
                                                           _%$%hd88239302%_
                                                           _%$%tl88249305%_
                                                           _%$%e88259308%_
                                                           _%$%hd88269312%_
                                                           _%$%tl88279315%_
                                                           _%$%e88289318%_
                                                           _%$%hd88299322%_
                                                           _%$%tl88309325%_
                                                           _%$%e88319328%_
                                                           _%$%hd88329332%_
                                                           _%$%tl88339335%_
                                                           _%__splice2008720088%_
                                                           _%$%target88349338%_
                                                           _%$%tl88369341%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl88279315%_)
                                                              (let ((_%$%e88569201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl88279315%_)))
                        (let ((_%$%tl88589208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e88569201%_)))
                              (_%$%hd88579205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e88569201%_))))
                          (if (gx#stx-datum? _%$%hd88579205%_)
                              (let ((_%$%e88599211%_
                                     (gx#stx-e _%$%hd88579205%_)))
                                (if (equal? _%$%e88599211%_ 'macro:)
                                    (if (gx#stx-pair? _%$%tl88589208%_)
                                        (let ((_%$%e88609215%_
                                               (gx#syntax-e _%$%tl88589208%_)))
                                          (let ((_%$%tl88629222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e88609215%_)))
                                                (_%$%hd88619219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e88609215%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl88629222%_)
                                                (let ((_%__splice2009120092%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl88629222%_
                                                        '0)))
                                                  (let ((_%$%tl88659228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2009120092%_
                                                            '1)))
                                                        (_%$%target88639225%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2009120092%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl88659228%_)
                                                        (_%__match2017720178%_
                                                         _%$%e88229298%_
                                                         _%$%hd88239302%_
                                                         _%$%tl88249305%_
                                                         _%$%e88259308%_
                                                         _%$%hd88269312%_
                                                         _%$%tl88279315%_
                                                         _%$%e88289318%_
                                                         _%$%hd88299322%_
                                                         _%$%tl88309325%_
                                                         _%$%e88569201%_
                                                         _%$%hd88579205%_
                                                         _%$%tl88589208%_
                                                         _%$%e88599211%_
                                                         _%$%e88609215%_
                                                         _%$%hd88619219%_
                                                         _%$%tl88629222%_
                                                         _%__splice2009120092%_
                                                         _%$%target88639225%_
                                                         _%$%tl88659228%_)
                                                        (if (gx#stx-datum?
                                                             _%$%hd88619219%_)
                                                            (let ((_%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%$%hd88619219%_)))
                      (if (equal? _%$%e89198975%_ 'macro:)
                          (if (gx#stx-pair? _%$%tl88629222%_)
                              (let ((_%$%e89208979%_
                                     (gx#syntax-e _%$%tl88629222%_)))
                                (let ((_%$%tl89228986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e89208979%_)))
                                      (_%$%hd89218983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e89208979%_))))
                                  (if (gx#stx-null? _%$%tl89228986%_)
                                      (_%__match2026120262%_
                                       _%$%e88229298%_
                                       _%$%hd88239302%_
                                       _%$%tl88249305%_
                                       _%$%e88259308%_
                                       _%$%hd88269312%_
                                       _%$%tl88279315%_
                                       _%$%e88569201%_
                                       _%$%hd88579205%_
                                       _%$%tl88589208%_
                                       _%$%e88609215%_
                                       _%$%hd88619219%_
                                       _%$%tl88629222%_
                                       _%$%e89198975%_
                                       _%$%e89208979%_
                                       _%$%hd89218983%_
                                       _%$%tl89228986%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_)))))
                              (let () (declare (not safe)) (_%$%g88168928%_)))
                          (let () (declare (not safe)) (_%$%g88168928%_))))
                    (let () (declare (not safe)) (_%$%g88168928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-datum?
                                                     _%$%hd88619219%_)
                                                    (let ((_%$%e89198975%_
                                                           (gx#stx-e
                                                            _%$%hd88619219%_)))
                                                      (if (equal? _%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%$%tl88629222%_)
                      (let ((_%$%e89208979%_ (gx#syntax-e _%$%tl88629222%_)))
                        (let ((_%$%tl89228986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e89208979%_)))
                              (_%$%hd89218983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e89208979%_))))
                          (if (gx#stx-null? _%$%tl89228986%_)
                              (_%__match2026120262%_
                               _%$%e88229298%_
                               _%$%hd88239302%_
                               _%$%tl88249305%_
                               _%$%e88259308%_
                               _%$%hd88269312%_
                               _%$%tl88279315%_
                               _%$%e88569201%_
                               _%$%hd88579205%_
                               _%$%tl88589208%_
                               _%$%e88609215%_
                               _%$%hd88619219%_
                               _%$%tl88629222%_
                               _%$%e89198975%_
                               _%$%e89208979%_
                               _%$%hd89218983%_
                               _%$%tl89228986%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g88168928%_)))))
                      (let () (declare (not safe)) (_%$%g88168928%_)))
                  (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_))))))
                                        (if (gx#stx-null? _%$%tl88589208%_)
                                            (_%__match2022320224%_
                                             _%$%e88229298%_
                                             _%$%hd88239302%_
                                             _%$%tl88249305%_
                                             _%$%e88259308%_
                                             _%$%hd88269312%_
                                             _%$%tl88279315%_
                                             _%$%e88569201%_
                                             _%$%hd88579205%_
                                             _%$%tl88589208%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_))))
                                    (if (gx#stx-null? _%$%tl88589208%_)
                                        (_%__match2022320224%_
                                         _%$%e88229298%_
                                         _%$%hd88239302%_
                                         _%$%tl88249305%_
                                         _%$%e88259308%_
                                         _%$%hd88269312%_
                                         _%$%tl88279315%_
                                         _%$%e88569201%_
                                         _%$%hd88579205%_
                                         _%$%tl88589208%_)
                                        (if (gx#stx-pair? _%$%tl88589208%_)
                                            (let ((_%$%e89168965%_
                                                   (gx#syntax-e
                                                    _%$%tl88589208%_)))
                                              (let ((_%$%tl89188972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e89168965%_)))
                                                    (_%$%hd89178969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e89168965%_))))
                                                (if (gx#stx-datum?
                                                     _%$%hd89178969%_)
                                                    (let ((_%$%e89198975%_
                                                           (gx#stx-e
                                                            _%$%hd89178969%_)))
                                                      (if (equal? _%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%$%tl89188972%_)
                      (let ((_%$%e89208979%_ (gx#syntax-e _%$%tl89188972%_)))
                        (let ((_%$%tl89228986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e89208979%_)))
                              (_%$%hd89218983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e89208979%_))))
                          (if (gx#stx-null? _%$%tl89228986%_)
                              (_%__match2026120262%_
                               _%$%e88229298%_
                               _%$%hd88239302%_
                               _%$%tl88249305%_
                               _%$%e88259308%_
                               _%$%hd88269312%_
                               _%$%tl88279315%_
                               _%$%e88569201%_
                               _%$%hd88579205%_
                               _%$%tl88589208%_
                               _%$%e89168965%_
                               _%$%hd89178969%_
                               _%$%tl89188972%_
                               _%$%e89198975%_
                               _%$%e89208979%_
                               _%$%hd89218983%_
                               _%$%tl89228986%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g88168928%_)))))
                      (let () (declare (not safe)) (_%$%g88168928%_)))
                  (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_))))))
                              (if (gx#stx-null? _%$%tl88589208%_)
                                  (_%__match2022320224%_
                                   _%$%e88229298%_
                                   _%$%hd88239302%_
                                   _%$%tl88249305%_
                                   _%$%e88259308%_
                                   _%$%hd88269312%_
                                   _%$%tl88279315%_
                                   _%$%e88569201%_
                                   _%$%hd88579205%_
                                   _%$%tl88589208%_)
                                  (if (gx#stx-pair? _%$%tl88589208%_)
                                      (let ((_%$%e89168965%_
                                             (gx#syntax-e _%$%tl88589208%_)))
                                        (let ((_%$%tl89188972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e89168965%_)))
                                              (_%$%hd89178969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e89168965%_))))
                                          (if (gx#stx-datum? _%$%hd89178969%_)
                                              (let ((_%$%e89198975%_
                                                     (gx#stx-e
                                                      _%$%hd89178969%_)))
                                                (if (equal? _%$%e89198975%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl89188972%_)
                                                        (let ((_%$%e89208979%_
                                                               (gx#syntax-e
                                                                _%$%tl89188972%_)))
                                                          (let ((_%$%tl89228986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%$%e89208979%_)))
                        (_%$%hd89218983%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e89208979%_))))
                    (if (gx#stx-null? _%$%tl89228986%_)
                        (_%__match2026120262%_
                         _%$%e88229298%_
                         _%$%hd88239302%_
                         _%$%tl88249305%_
                         _%$%e88259308%_
                         _%$%hd88269312%_
                         _%$%tl88279315%_
                         _%$%e88569201%_
                         _%$%hd88579205%_
                         _%$%tl88589208%_
                         _%$%e89168965%_
                         _%$%hd89178969%_
                         _%$%tl89188972%_
                         _%$%e89198975%_
                         _%$%e89208979%_
                         _%$%hd89218983%_
                         _%$%tl89228986%_)
                        (let () (declare (not safe)) (_%$%g88168928%_)))))
                (let () (declare (not safe)) (_%$%g88168928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g88168928%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_)))))))
                      (let () (declare (not safe)) (_%$%g88168928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%tl88279315%_)
                                                      (let ((_%$%e88569201%_
                                                             (gx#syntax-e
                                                              _%$%tl88279315%_)))
                                                        (let ((_%$%tl88589208%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e88569201%_)))
                      (_%$%hd88579205%_
                       (let () (declare (not safe)) (##car _%$%e88569201%_))))
                  (if (gx#stx-datum? _%$%hd88579205%_)
                      (let ((_%$%e88599211%_ (gx#stx-e _%$%hd88579205%_)))
                        (if (equal? _%$%e88599211%_ 'macro:)
                            (if (gx#stx-pair? _%$%tl88589208%_)
                                (let ((_%$%e88609215%_
                                       (gx#syntax-e _%$%tl88589208%_)))
                                  (let ((_%$%tl88629222%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e88609215%_)))
                                        (_%$%hd88619219%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e88609215%_))))
                                    (if (gx#stx-pair/null? _%$%tl88629222%_)
                                        (let ((_%__splice2009120092%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl88629222%_
                                                '0)))
                                          (let ((_%$%tl88659228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2009120092%_
                                                    '1)))
                                                (_%$%target88639225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2009120092%_
                                                    '0))))
                                            (if (gx#stx-null? _%$%tl88659228%_)
                                                (_%__match2017720178%_
                                                 _%$%e88229298%_
                                                 _%$%hd88239302%_
                                                 _%$%tl88249305%_
                                                 _%$%e88259308%_
                                                 _%$%hd88269312%_
                                                 _%$%tl88279315%_
                                                 _%$%e88289318%_
                                                 _%$%hd88299322%_
                                                 _%$%tl88309325%_
                                                 _%$%e88569201%_
                                                 _%$%hd88579205%_
                                                 _%$%tl88589208%_
                                                 _%$%e88599211%_
                                                 _%$%e88609215%_
                                                 _%$%hd88619219%_
                                                 _%$%tl88629222%_
                                                 _%__splice2009120092%_
                                                 _%$%target88639225%_
                                                 _%$%tl88659228%_)
                                                (if (gx#stx-datum?
                                                     _%$%hd88619219%_)
                                                    (let ((_%$%e89198975%_
                                                           (gx#stx-e
                                                            _%$%hd88619219%_)))
                                                      (if (equal? _%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%$%tl88629222%_)
                      (let ((_%$%e89208979%_ (gx#syntax-e _%$%tl88629222%_)))
                        (let ((_%$%tl89228986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e89208979%_)))
                              (_%$%hd89218983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e89208979%_))))
                          (if (gx#stx-null? _%$%tl89228986%_)
                              (_%__match2026120262%_
                               _%$%e88229298%_
                               _%$%hd88239302%_
                               _%$%tl88249305%_
                               _%$%e88259308%_
                               _%$%hd88269312%_
                               _%$%tl88279315%_
                               _%$%e88569201%_
                               _%$%hd88579205%_
                               _%$%tl88589208%_
                               _%$%e88609215%_
                               _%$%hd88619219%_
                               _%$%tl88629222%_
                               _%$%e89198975%_
                               _%$%e89208979%_
                               _%$%hd89218983%_
                               _%$%tl89228986%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g88168928%_)))))
                      (let () (declare (not safe)) (_%$%g88168928%_)))
                  (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_))))))
                                        (if (gx#stx-datum? _%$%hd88619219%_)
                                            (let ((_%$%e89198975%_
                                                   (gx#stx-e
                                                    _%$%hd88619219%_)))
                                              (if (equal? _%$%e89198975%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%$%tl88629222%_)
                                                      (let ((_%$%e89208979%_
                                                             (gx#syntax-e
                                                              _%$%tl88629222%_)))
                                                        (let ((_%$%tl89228986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e89208979%_)))
                      (_%$%hd89218983%_
                       (let () (declare (not safe)) (##car _%$%e89208979%_))))
                  (if (gx#stx-null? _%$%tl89228986%_)
                      (_%__match2026120262%_
                       _%$%e88229298%_
                       _%$%hd88239302%_
                       _%$%tl88249305%_
                       _%$%e88259308%_
                       _%$%hd88269312%_
                       _%$%tl88279315%_
                       _%$%e88569201%_
                       _%$%hd88579205%_
                       _%$%tl88589208%_
                       _%$%e88609215%_
                       _%$%hd88619219%_
                       _%$%tl88629222%_
                       _%$%e89198975%_
                       _%$%e89208979%_
                       _%$%hd89218983%_
                       _%$%tl89228986%_)
                      (let () (declare (not safe)) (_%$%g88168928%_)))))
              (let () (declare (not safe)) (_%$%g88168928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_))))))
                                (if (gx#stx-null? _%$%tl88589208%_)
                                    (_%__match2022320224%_
                                     _%$%e88229298%_
                                     _%$%hd88239302%_
                                     _%$%tl88249305%_
                                     _%$%e88259308%_
                                     _%$%hd88269312%_
                                     _%$%tl88279315%_
                                     _%$%e88569201%_
                                     _%$%hd88579205%_
                                     _%$%tl88589208%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g88168928%_))))
                            (if (gx#stx-null? _%$%tl88589208%_)
                                (_%__match2022320224%_
                                 _%$%e88229298%_
                                 _%$%hd88239302%_
                                 _%$%tl88249305%_
                                 _%$%e88259308%_
                                 _%$%hd88269312%_
                                 _%$%tl88279315%_
                                 _%$%e88569201%_
                                 _%$%hd88579205%_
                                 _%$%tl88589208%_)
                                (if (gx#stx-pair? _%$%tl88589208%_)
                                    (let ((_%$%e89168965%_
                                           (gx#syntax-e _%$%tl88589208%_)))
                                      (let ((_%$%tl89188972%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e89168965%_)))
                                            (_%$%hd89178969%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e89168965%_))))
                                        (if (gx#stx-datum? _%$%hd89178969%_)
                                            (let ((_%$%e89198975%_
                                                   (gx#stx-e
                                                    _%$%hd89178969%_)))
                                              (if (equal? _%$%e89198975%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%$%tl89188972%_)
                                                      (let ((_%$%e89208979%_
                                                             (gx#syntax-e
                                                              _%$%tl89188972%_)))
                                                        (let ((_%$%tl89228986%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e89208979%_)))
                      (_%$%hd89218983%_
                       (let () (declare (not safe)) (##car _%$%e89208979%_))))
                  (if (gx#stx-null? _%$%tl89228986%_)
                      (_%__match2026120262%_
                       _%$%e88229298%_
                       _%$%hd88239302%_
                       _%$%tl88249305%_
                       _%$%e88259308%_
                       _%$%hd88269312%_
                       _%$%tl88279315%_
                       _%$%e88569201%_
                       _%$%hd88579205%_
                       _%$%tl88589208%_
                       _%$%e89168965%_
                       _%$%hd89178969%_
                       _%$%tl89188972%_
                       _%$%e89198975%_
                       _%$%e89208979%_
                       _%$%hd89218983%_
                       _%$%tl89228986%_)
                      (let () (declare (not safe)) (_%$%g88168928%_)))))
              (let () (declare (not safe)) (_%$%g88168928%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g88168928%_))))))
                      (if (gx#stx-null? _%$%tl88589208%_)
                          (_%__match2022320224%_
                           _%$%e88229298%_
                           _%$%hd88239302%_
                           _%$%tl88249305%_
                           _%$%e88259308%_
                           _%$%hd88269312%_
                           _%$%tl88279315%_
                           _%$%e88569201%_
                           _%$%hd88579205%_
                           _%$%tl88589208%_)
                          (if (gx#stx-pair? _%$%tl88589208%_)
                              (let ((_%$%e89168965%_
                                     (gx#syntax-e _%$%tl88589208%_)))
                                (let ((_%$%tl89188972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e89168965%_)))
                                      (_%$%hd89178969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e89168965%_))))
                                  (if (gx#stx-datum? _%$%hd89178969%_)
                                      (let ((_%$%e89198975%_
                                             (gx#stx-e _%$%hd89178969%_)))
                                        (if (equal? _%$%e89198975%_ 'macro:)
                                            (if (gx#stx-pair? _%$%tl89188972%_)
                                                (let ((_%$%e89208979%_
                                                       (gx#syntax-e
                                                        _%$%tl89188972%_)))
                                                  (let ((_%$%tl89228986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e89208979%_)))
                                                        (_%$%hd89218983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e89208979%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl89228986%_)
                                                        (_%__match2026120262%_
                                                         _%$%e88229298%_
                                                         _%$%hd88239302%_
                                                         _%$%tl88249305%_
                                                         _%$%e88259308%_
                                                         _%$%hd88269312%_
                                                         _%$%tl88279315%_
                                                         _%$%e88569201%_
                                                         _%$%hd88579205%_
                                                         _%$%tl88589208%_
                                                         _%$%e89168965%_
                                                         _%$%hd89178969%_
                                                         _%$%tl89188972%_
                                                         _%$%e89198975%_
                                                         _%$%e89208979%_
                                                         _%$%hd89218983%_
                                                         _%$%tl89228986%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g88168928%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g88168928%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g88168928%_)))))))
              (let () (declare (not safe)) (_%$%g88168928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%tl88279315%_)
                                              (let ((_%$%e88569201%_
                                                     (gx#syntax-e
                                                      _%$%tl88279315%_)))
                                                (let ((_%$%tl88589208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e88569201%_)))
                                                      (_%$%hd88579205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e88569201%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd88579205%_)
                                                      (let ((_%$%e88599211%_
                                                             (gx#stx-e
                                                              _%$%hd88579205%_)))
                                                        (if (equal? _%$%e88599211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%$%tl88589208%_)
                        (let ((_%$%e88609215%_ (gx#syntax-e _%$%tl88589208%_)))
                          (let ((_%$%tl88629222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e88609215%_)))
                                (_%$%hd88619219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e88609215%_))))
                            (if (gx#stx-pair/null? _%$%tl88629222%_)
                                (let ((_%__splice2009120092%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl88629222%_
                                        '0)))
                                  (let ((_%$%tl88659228%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2009120092%_
                                            '1)))
                                        (_%$%target88639225%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2009120092%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl88659228%_)
                                        (_%__match2017720178%_
                                         _%$%e88229298%_
                                         _%$%hd88239302%_
                                         _%$%tl88249305%_
                                         _%$%e88259308%_
                                         _%$%hd88269312%_
                                         _%$%tl88279315%_
                                         _%$%e88289318%_
                                         _%$%hd88299322%_
                                         _%$%tl88309325%_
                                         _%$%e88569201%_
                                         _%$%hd88579205%_
                                         _%$%tl88589208%_
                                         _%$%e88599211%_
                                         _%$%e88609215%_
                                         _%$%hd88619219%_
                                         _%$%tl88629222%_
                                         _%__splice2009120092%_
                                         _%$%target88639225%_
                                         _%$%tl88659228%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl88279315%_)
                                            (let ((_%__splice2009520096%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl88279315%_
                                                    '0)))
                                              (let ((_%$%tl88869108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2009520096%_
                                                        '1)))
                                                    (_%$%target88849105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2009520096%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl88869108%_)
                                                    (_%__match2020320204%_
                                                     _%$%e88229298%_
                                                     _%$%hd88239302%_
                                                     _%$%tl88249305%_
                                                     _%$%e88259308%_
                                                     _%$%hd88269312%_
                                                     _%$%tl88279315%_
                                                     _%$%e88289318%_
                                                     _%$%hd88299322%_
                                                     _%$%tl88309325%_
                                                     _%__splice2009520096%_
                                                     _%$%target88849105%_
                                                     _%$%tl88869108%_)
                                                    (if (gx#stx-datum?
                                                         _%$%hd88619219%_)
                                                        (let ((_%$%e89198975%_
                                                               (gx#stx-e
                                                                _%$%hd88619219%_)))
                                                          (if (equal? _%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'macro:)
                      (if (gx#stx-pair? _%$%tl88629222%_)
                          (let ((_%$%e89208979%_
                                 (gx#syntax-e _%$%tl88629222%_)))
                            (let ((_%$%tl89228986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e89208979%_)))
                                  (_%$%hd89218983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e89208979%_))))
                              (if (gx#stx-null? _%$%tl89228986%_)
                                  (_%__match2026120262%_
                                   _%$%e88229298%_
                                   _%$%hd88239302%_
                                   _%$%tl88249305%_
                                   _%$%e88259308%_
                                   _%$%hd88269312%_
                                   _%$%tl88279315%_
                                   _%$%e88569201%_
                                   _%$%hd88579205%_
                                   _%$%tl88589208%_
                                   _%$%e88609215%_
                                   _%$%hd88619219%_
                                   _%$%tl88629222%_
                                   _%$%e89198975%_
                                   _%$%e89208979%_
                                   _%$%hd89218983%_
                                   _%$%tl89228986%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g88168928%_)))))
                          (let () (declare (not safe)) (_%$%g88168928%_)))
                      (let () (declare (not safe)) (_%$%g88168928%_))))
                (let () (declare (not safe)) (_%$%g88168928%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-datum?
                                                 _%$%hd88619219%_)
                                                (let ((_%$%e89198975%_
                                                       (gx#stx-e
                                                        _%$%hd88619219%_)))
                                                  (if (equal? _%$%e89198975%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl88629222%_)
                                                          (let ((_%$%e89208979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl88629222%_)))
                    (let ((_%$%tl89228986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e89208979%_)))
                          (_%$%hd89218983%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e89208979%_))))
                      (if (gx#stx-null? _%$%tl89228986%_)
                          (_%__match2026120262%_
                           _%$%e88229298%_
                           _%$%hd88239302%_
                           _%$%tl88249305%_
                           _%$%e88259308%_
                           _%$%hd88269312%_
                           _%$%tl88279315%_
                           _%$%e88569201%_
                           _%$%hd88579205%_
                           _%$%tl88589208%_
                           _%$%e88609215%_
                           _%$%hd88619219%_
                           _%$%tl88629222%_
                           _%$%e89198975%_
                           _%$%e89208979%_
                           _%$%hd89218983%_
                           _%$%tl89228986%_)
                          (let () (declare (not safe)) (_%$%g88168928%_)))))
                  (let () (declare (not safe)) (_%$%g88168928%_)))
              (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g88168928%_)))))))
                                (if (gx#stx-pair/null? _%$%tl88279315%_)
                                    (let ((_%__splice2009520096%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl88279315%_
                                            '0)))
                                      (let ((_%$%tl88869108%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2009520096%_
                                                '1)))
                                            (_%$%target88849105%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2009520096%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl88869108%_)
                                            (_%__match2020320204%_
                                             _%$%e88229298%_
                                             _%$%hd88239302%_
                                             _%$%tl88249305%_
                                             _%$%e88259308%_
                                             _%$%hd88269312%_
                                             _%$%tl88279315%_
                                             _%$%e88289318%_
                                             _%$%hd88299322%_
                                             _%$%tl88309325%_
                                             _%__splice2009520096%_
                                             _%$%target88849105%_
                                             _%$%tl88869108%_)
                                            (if (gx#stx-datum?
                                                 _%$%hd88619219%_)
                                                (let ((_%$%e89198975%_
                                                       (gx#stx-e
                                                        _%$%hd88619219%_)))
                                                  (if (equal? _%$%e89198975%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl88629222%_)
                                                          (let ((_%$%e89208979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl88629222%_)))
                    (let ((_%$%tl89228986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e89208979%_)))
                          (_%$%hd89218983%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e89208979%_))))
                      (if (gx#stx-null? _%$%tl89228986%_)
                          (_%__match2026120262%_
                           _%$%e88229298%_
                           _%$%hd88239302%_
                           _%$%tl88249305%_
                           _%$%e88259308%_
                           _%$%hd88269312%_
                           _%$%tl88279315%_
                           _%$%e88569201%_
                           _%$%hd88579205%_
                           _%$%tl88589208%_
                           _%$%e88609215%_
                           _%$%hd88619219%_
                           _%$%tl88629222%_
                           _%$%e89198975%_
                           _%$%e89208979%_
                           _%$%hd89218983%_
                           _%$%tl89228986%_)
                          (let () (declare (not safe)) (_%$%g88168928%_)))))
                  (let () (declare (not safe)) (_%$%g88168928%_)))
              (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g88168928%_))))))
                                    (if (gx#stx-datum? _%$%hd88619219%_)
                                        (let ((_%$%e89198975%_
                                               (gx#stx-e _%$%hd88619219%_)))
                                          (if (equal? _%$%e89198975%_ 'macro:)
                                              (if (gx#stx-pair?
                                                   _%$%tl88629222%_)
                                                  (let ((_%$%e89208979%_
                                                         (gx#syntax-e
                                                          _%$%tl88629222%_)))
                                                    (let ((_%$%tl89228986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e89208979%_)))
                                                          (_%$%hd89218983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e89208979%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl89228986%_)
                                                          (_%__match2026120262%_
                                                           _%$%e88229298%_
                                                           _%$%hd88239302%_
                                                           _%$%tl88249305%_
                                                           _%$%e88259308%_
                                                           _%$%hd88269312%_
                                                           _%$%tl88279315%_
                                                           _%$%e88569201%_
                                                           _%$%hd88579205%_
                                                           _%$%tl88589208%_
                                                           _%$%e88609215%_
                                                           _%$%hd88619219%_
                                                           _%$%tl88629222%_
                                                           _%$%e89198975%_
                                                           _%$%e89208979%_
                                                           _%$%hd89218983%_
                                                           _%$%tl89228986%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g88168928%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g88168928%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g88168928%_)))))))
                        (if (gx#stx-pair/null? _%$%tl88279315%_)
                            (let ((_%__splice2009520096%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl88279315%_
                                    '0)))
                              (let ((_%$%tl88869108%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2009520096%_
                                        '1)))
                                    (_%$%target88849105%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2009520096%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl88869108%_)
                                    (_%__match2020320204%_
                                     _%$%e88229298%_
                                     _%$%hd88239302%_
                                     _%$%tl88249305%_
                                     _%$%e88259308%_
                                     _%$%hd88269312%_
                                     _%$%tl88279315%_
                                     _%$%e88289318%_
                                     _%$%hd88299322%_
                                     _%$%tl88309325%_
                                     _%__splice2009520096%_
                                     _%$%target88849105%_
                                     _%$%tl88869108%_)
                                    (if (gx#stx-null? _%$%tl88589208%_)
                                        (_%__match2022320224%_
                                         _%$%e88229298%_
                                         _%$%hd88239302%_
                                         _%$%tl88249305%_
                                         _%$%e88259308%_
                                         _%$%hd88269312%_
                                         _%$%tl88279315%_
                                         _%$%e88569201%_
                                         _%$%hd88579205%_
                                         _%$%tl88589208%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g88168928%_))))))
                            (if (gx#stx-null? _%$%tl88589208%_)
                                (_%__match2022320224%_
                                 _%$%e88229298%_
                                 _%$%hd88239302%_
                                 _%$%tl88249305%_
                                 _%$%e88259308%_
                                 _%$%hd88269312%_
                                 _%$%tl88279315%_
                                 _%$%e88569201%_
                                 _%$%hd88579205%_
                                 _%$%tl88589208%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g88168928%_)))))
                    (if (gx#stx-pair/null? _%$%tl88279315%_)
                        (let ((_%__splice2009520096%_
                               (gx#syntax-split-splice->vector
                                _%$%tl88279315%_
                                '0)))
                          (let ((_%$%tl88869108%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2009520096%_ '1)))
                                (_%$%target88849105%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2009520096%_ '0))))
                            (if (gx#stx-null? _%$%tl88869108%_)
                                (_%__match2020320204%_
                                 _%$%e88229298%_
                                 _%$%hd88239302%_
                                 _%$%tl88249305%_
                                 _%$%e88259308%_
                                 _%$%hd88269312%_
                                 _%$%tl88279315%_
                                 _%$%e88289318%_
                                 _%$%hd88299322%_
                                 _%$%tl88309325%_
                                 _%__splice2009520096%_
                                 _%$%target88849105%_
                                 _%$%tl88869108%_)
                                (if (gx#stx-null? _%$%tl88589208%_)
                                    (_%__match2022320224%_
                                     _%$%e88229298%_
                                     _%$%hd88239302%_
                                     _%$%tl88249305%_
                                     _%$%e88259308%_
                                     _%$%hd88269312%_
                                     _%$%tl88279315%_
                                     _%$%e88569201%_
                                     _%$%hd88579205%_
                                     _%$%tl88589208%_)
                                    (if (gx#stx-pair? _%$%tl88589208%_)
                                        (let ((_%$%e89168965%_
                                               (gx#syntax-e _%$%tl88589208%_)))
                                          (let ((_%$%tl89188972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e89168965%_)))
                                                (_%$%hd89178969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e89168965%_))))
                                            (if (gx#stx-datum?
                                                 _%$%hd89178969%_)
                                                (let ((_%$%e89198975%_
                                                       (gx#stx-e
                                                        _%$%hd89178969%_)))
                                                  (if (equal? _%$%e89198975%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%$%tl89188972%_)
                                                          (let ((_%$%e89208979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl89188972%_)))
                    (let ((_%$%tl89228986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e89208979%_)))
                          (_%$%hd89218983%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e89208979%_))))
                      (if (gx#stx-null? _%$%tl89228986%_)
                          (_%__match2026120262%_
                           _%$%e88229298%_
                           _%$%hd88239302%_
                           _%$%tl88249305%_
                           _%$%e88259308%_
                           _%$%hd88269312%_
                           _%$%tl88279315%_
                           _%$%e88569201%_
                           _%$%hd88579205%_
                           _%$%tl88589208%_
                           _%$%e89168965%_
                           _%$%hd89178969%_
                           _%$%tl89188972%_
                           _%$%e89198975%_
                           _%$%e89208979%_
                           _%$%hd89218983%_
                           _%$%tl89228986%_)
                          (let () (declare (not safe)) (_%$%g88168928%_)))))
                  (let () (declare (not safe)) (_%$%g88168928%_)))
              (let () (declare (not safe)) (_%$%g88168928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g88168928%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g88168928%_)))))))
                        (if (gx#stx-null? _%$%tl88589208%_)
                            (_%__match2022320224%_
                             _%$%e88229298%_
                             _%$%hd88239302%_
                             _%$%tl88249305%_
                             _%$%e88259308%_
                             _%$%hd88269312%_
                             _%$%tl88279315%_
                             _%$%e88569201%_
                             _%$%hd88579205%_
                             _%$%tl88589208%_)
                            (if (gx#stx-pair? _%$%tl88589208%_)
                                (let ((_%$%e89168965%_
                                       (gx#syntax-e _%$%tl88589208%_)))
                                  (let ((_%$%tl89188972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e89168965%_)))
                                        (_%$%hd89178969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e89168965%_))))
                                    (if (gx#stx-datum? _%$%hd89178969%_)
                                        (let ((_%$%e89198975%_
                                               (gx#stx-e _%$%hd89178969%_)))
                                          (if (equal? _%$%e89198975%_ 'macro:)
                                              (if (gx#stx-pair?
                                                   _%$%tl89188972%_)
                                                  (let ((_%$%e89208979%_
                                                         (gx#syntax-e
                                                          _%$%tl89188972%_)))
                                                    (let ((_%$%tl89228986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e89208979%_)))
                                                          (_%$%hd89218983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e89208979%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl89228986%_)
                                                          (_%__match2026120262%_
                                                           _%$%e88229298%_
                                                           _%$%hd88239302%_
                                                           _%$%tl88249305%_
                                                           _%$%e88259308%_
                                                           _%$%hd88269312%_
                                                           _%$%tl88279315%_
                                                           _%$%e88569201%_
                                                           _%$%hd88579205%_
                                                           _%$%tl88589208%_
                                                           _%$%e89168965%_
                                                           _%$%hd89178969%_
                                                           _%$%tl89188972%_
                                                           _%$%e89198975%_
                                                           _%$%e89208979%_
                                                           _%$%hd89218983%_
                                                           _%$%tl89228986%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g88168928%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g88168928%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g88168928%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g88168928%_)))))))
              (if (gx#stx-pair/null? _%$%tl88279315%_)
                  (let ((_%__splice2009520096%_
                         (gx#syntax-split-splice->vector _%$%tl88279315%_ '0)))
                    (let ((_%$%tl88869108%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2009520096%_ '1)))
                          (_%$%target88849105%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2009520096%_ '0))))
                      (if (gx#stx-null? _%$%tl88869108%_)
                          (_%__match2020320204%_
                           _%$%e88229298%_
                           _%$%hd88239302%_
                           _%$%tl88249305%_
                           _%$%e88259308%_
                           _%$%hd88269312%_
                           _%$%tl88279315%_
                           _%$%e88289318%_
                           _%$%hd88299322%_
                           _%$%tl88309325%_
                           _%__splice2009520096%_
                           _%$%target88849105%_
                           _%$%tl88869108%_)
                          (if (gx#stx-null? _%$%tl88589208%_)
                              (_%__match2022320224%_
                               _%$%e88229298%_
                               _%$%hd88239302%_
                               _%$%tl88249305%_
                               _%$%e88259308%_
                               _%$%hd88269312%_
                               _%$%tl88279315%_
                               _%$%e88569201%_
                               _%$%hd88579205%_
                               _%$%tl88589208%_)
                              (if (gx#stx-pair? _%$%tl88589208%_)
                                  (let ((_%$%e89168965%_
                                         (gx#syntax-e _%$%tl88589208%_)))
                                    (let ((_%$%tl89188972%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e89168965%_)))
                                          (_%$%hd89178969%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e89168965%_))))
                                      (if (gx#stx-datum? _%$%hd89178969%_)
                                          (let ((_%$%e89198975%_
                                                 (gx#stx-e _%$%hd89178969%_)))
                                            (if (equal? _%$%e89198975%_
                                                        'macro:)
                                                (if (gx#stx-pair?
                                                     _%$%tl89188972%_)
                                                    (let ((_%$%e89208979%_
                                                           (gx#syntax-e
                                                            _%$%tl89188972%_)))
                                                      (let ((_%$%tl89228986%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e89208979%_)))
                    (_%$%hd89218983%_
                     (let () (declare (not safe)) (##car _%$%e89208979%_))))
                (if (gx#stx-null? _%$%tl89228986%_)
                    (_%__match2026120262%_
                     _%$%e88229298%_
                     _%$%hd88239302%_
                     _%$%tl88249305%_
                     _%$%e88259308%_
                     _%$%hd88269312%_
                     _%$%tl88279315%_
                     _%$%e88569201%_
                     _%$%hd88579205%_
                     _%$%tl88589208%_
                     _%$%e89168965%_
                     _%$%hd89178969%_
                     _%$%tl89188972%_
                     _%$%e89198975%_
                     _%$%e89208979%_
                     _%$%hd89218983%_
                     _%$%tl89228986%_)
                    (let () (declare (not safe)) (_%$%g88168928%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g88168928%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g88168928%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g88168928%_)))))))
                  (if (gx#stx-null? _%$%tl88589208%_)
                      (_%__match2022320224%_
                       _%$%e88229298%_
                       _%$%hd88239302%_
                       _%$%tl88249305%_
                       _%$%e88259308%_
                       _%$%hd88269312%_
                       _%$%tl88279315%_
                       _%$%e88569201%_
                       _%$%hd88579205%_
                       _%$%tl88589208%_)
                      (if (gx#stx-pair? _%$%tl88589208%_)
                          (let ((_%$%e89168965%_
                                 (gx#syntax-e _%$%tl88589208%_)))
                            (let ((_%$%tl89188972%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e89168965%_)))
                                  (_%$%hd89178969%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e89168965%_))))
                              (if (gx#stx-datum? _%$%hd89178969%_)
                                  (let ((_%$%e89198975%_
                                         (gx#stx-e _%$%hd89178969%_)))
                                    (if (equal? _%$%e89198975%_ 'macro:)
                                        (if (gx#stx-pair? _%$%tl89188972%_)
                                            (let ((_%$%e89208979%_
                                                   (gx#syntax-e
                                                    _%$%tl89188972%_)))
                                              (let ((_%$%tl89228986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e89208979%_)))
                                                    (_%$%hd89218983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e89208979%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl89228986%_)
                                                    (_%__match2026120262%_
                                                     _%$%e88229298%_
                                                     _%$%hd88239302%_
                                                     _%$%tl88249305%_
                                                     _%$%e88259308%_
                                                     _%$%hd88269312%_
                                                     _%$%tl88279315%_
                                                     _%$%e88569201%_
                                                     _%$%hd88579205%_
                                                     _%$%tl88589208%_
                                                     _%$%e89168965%_
                                                     _%$%hd89178969%_
                                                     _%$%tl89188972%_
                                                     _%$%e89198975%_
                                                     _%$%e89208979%_
                                                     _%$%hd89218983%_
                                                     _%$%tl89228986%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g88168928%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g88168928%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g88168928%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g88168928%_)))))
                          (let () (declare (not safe)) (_%$%g88168928%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl88279315%_)
                                                  (let ((_%__splice2009520096%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl88279315%_
                                                          '0)))
                                                    (let ((_%$%tl88869108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2009520096%_
                                                              '1)))
                                                          (_%$%target88849105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2009520096%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl88869108%_)
                                                          (_%__match2020320204%_
                                                           _%$%e88229298%_
                                                           _%$%hd88239302%_
                                                           _%$%tl88249305%_
                                                           _%$%e88259308%_
                                                           _%$%hd88269312%_
                                                           _%$%tl88279315%_
                                                           _%$%e88289318%_
                                                           _%$%hd88299322%_
                                                           _%$%tl88309325%_
                                                           _%__splice2009520096%_
                                                           _%$%target88849105%_
                                                           _%$%tl88869108%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g88168928%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_)))))))
                                  (if (gx#stx-pair? _%$%tl88279315%_)
                                      (let ((_%$%e89019041%_
                                             (gx#syntax-e _%$%tl88279315%_)))
                                        (let ((_%$%tl89039048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e89019041%_)))
                                              (_%$%hd89029045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e89019041%_))))
                                          (if (gx#stx-null? _%$%tl89039048%_)
                                              (_%__match2022320224%_
                                               _%$%e88229298%_
                                               _%$%hd88239302%_
                                               _%$%tl88249305%_
                                               _%$%e88259308%_
                                               _%$%hd88269312%_
                                               _%$%tl88279315%_
                                               _%$%e89019041%_
                                               _%$%hd89029045%_
                                               _%$%tl89039048%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl89039048%_)
                                                  (let ((_%$%e89168965%_
                                                         (gx#syntax-e
                                                          _%$%tl89039048%_)))
                                                    (let ((_%$%tl89188972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e89168965%_)))
                                                          (_%$%hd89178969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e89168965%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd89178969%_)
                                                          (let ((_%$%e89198975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd89178969%_)))
                    (if (equal? _%$%e89198975%_ 'macro:)
                        (if (gx#stx-pair? _%$%tl89188972%_)
                            (let ((_%$%e89208979%_
                                   (gx#syntax-e _%$%tl89188972%_)))
                              (let ((_%$%tl89228986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e89208979%_)))
                                    (_%$%hd89218983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e89208979%_))))
                                (if (gx#stx-null? _%$%tl89228986%_)
                                    (_%__match2026120262%_
                                     _%$%e88229298%_
                                     _%$%hd88239302%_
                                     _%$%tl88249305%_
                                     _%$%e88259308%_
                                     _%$%hd88269312%_
                                     _%$%tl88279315%_
                                     _%$%e89019041%_
                                     _%$%hd89029045%_
                                     _%$%tl89039048%_
                                     _%$%e89168965%_
                                     _%$%hd89178969%_
                                     _%$%tl89188972%_
                                     _%$%e89198975%_
                                     _%$%e89208979%_
                                     _%$%hd89218983%_
                                     _%$%tl89228986%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g88168928%_)))))
                            (let () (declare (not safe)) (_%$%g88168928%_)))
                        (let () (declare (not safe)) (_%$%g88168928%_))))
                  (let () (declare (not safe)) (_%$%g88168928%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g88168928%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g88168928%_))))))
                          (let () (declare (not safe)) (_%$%g88168928%_)))))
                  (let () (declare (not safe)) (_%$%g88168928%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9408%_)
        (let* ((_%$%g94129436%_
                (lambda (_%$%g94139432%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g94139432%_)))
               (_%$%g94119519%_
                (lambda (_%$%g94139440%_)
                  (if (gx#stx-pair? _%$%g94139440%_)
                      (let ((_%$%e94169443%_ (gx#syntax-e _%$%g94139440%_)))
                        (let ((_%$%hd94179447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e94169443%_)))
                              (_%$%tl94189450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e94169443%_))))
                          (if (gx#stx-pair? _%$%tl94189450%_)
                              (let ((_%$%e94199453%_
                                     (gx#syntax-e _%$%tl94189450%_)))
                                (let ((_%$%hd94209457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e94199453%_)))
                                      (_%$%tl94219460%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e94199453%_))))
                                  (if (gx#stx-pair/null? _%$%tl94219460%_)
                                      (let ((_g21908_
                                             (gx#syntax-split-splice
                                              _%$%tl94219460%_
                                              '0)))
                                        (begin
                                          (let ((_g21909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21908_)
                                                       (##values-length
                                                        _g21908_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21909_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21909_)))
                                          (let ((_%$%target94229463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21908_ 0)))
                                                (_%$%tl94249466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21908_ 1))))
                                            (if (gx#stx-null? _%$%tl94249466%_)
                                                (letrec ((_%$%loop94259469%_
                                                          (lambda (_%$%hd94239473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clauses94299476%_)
                    (if (gx#stx-pair? _%$%hd94239473%_)
                        (let ((_%$%e94269478%_ (gx#syntax-e _%$%hd94239473%_)))
                          (let ((_%$%lp-hd94279482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e94269478%_)))
                                (_%$%lp-tl94289485%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e94269478%_))))
                            (_%$%loop94259469%_
                             _%$%lp-tl94289485%_
                             (cons _%$%lp-hd94279482%_
                                   _%$%clauses94299476%_))))
                        (let ((_%$%clauses94309488%_
                               (reverse _%$%clauses94299476%_)))
                          (if (gx#identifier? _%$%hd94209457%_)
                              (cons (gx#datum->syntax '#f 'define-values)
                                    (cons (cons _%$%hd94209457%_ '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (foldr (lambda (_%$%g95109513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g95119516%_)
                       (cons _%$%g95109513%_ _%$%g95119516%_))
                     '()
                     _%$%clauses94309488%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (_%$%g94129436%_ _%$%g94139440%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop94259469%_
                                                   _%$%target94229463%_
                                                   '()))
                                                (_%$%g94129436%_
                                                 _%$%g94139440%_)))))
                                      (_%$%g94129436%_ _%$%g94139440%_))))
                              (_%$%g94129436%_ _%$%g94139440%_))))
                      (_%$%g94129436%_ _%$%g94139440%_)))))
          (_%$%g94119519%_ _%$stx9408%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9524%_)
        (let* ((_%$%g95289546%_
                (lambda (_%$%g95299542%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g95299542%_)))
               (_%$%g95279601%_
                (lambda (_%$%g95299550%_)
                  (if (gx#stx-pair? _%$%g95299550%_)
                      (let ((_%$%e95329553%_ (gx#syntax-e _%$%g95299550%_)))
                        (let ((_%$%hd95339557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e95329553%_)))
                              (_%$%tl95349560%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e95329553%_))))
                          (if (gx#stx-pair? _%$%tl95349560%_)
                              (let ((_%$%e95359563%_
                                     (gx#syntax-e _%$%tl95349560%_)))
                                (let ((_%$%hd95369567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e95359563%_)))
                                      (_%$%tl95379570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e95359563%_))))
                                  (if (gx#stx-pair? _%$%tl95379570%_)
                                      (let ((_%$%e95389573%_
                                             (gx#syntax-e _%$%tl95379570%_)))
                                        (let ((_%$%hd95399577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e95389573%_)))
                                              (_%$%tl95409580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e95389573%_))))
                                          (if (gx#stx-null? _%$%tl95409580%_)
                                              (if (gx#identifier-list?
                                                   _%$%hd95369567%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-values)
                                                        (cons _%$%hd95369567%_
                                                              (cons _%$%hd95399577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g95289546%_
                                                   _%$%g95299550%_))
                                              (_%$%g95289546%_
                                               _%$%g95299550%_))))
                                      (_%$%g95289546%_ _%$%g95299550%_))))
                              (_%$%g95289546%_ _%$%g95299550%_))))
                      (_%$%g95289546%_ _%$%g95299550%_)))))
          (_%$%g95279601%_ _%$stx9524%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9605%_)
        (let* ((_%$%g96099633%_
                (lambda (_%$%g96109629%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g96109629%_)))
               (_%$%g96089716%_
                (lambda (_%$%g96109637%_)
                  (if (gx#stx-pair? _%$%g96109637%_)
                      (let ((_%$%e96139640%_ (gx#syntax-e _%$%g96109637%_)))
                        (let ((_%$%hd96149644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e96139640%_)))
                              (_%$%tl96159647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e96139640%_))))
                          (if (gx#stx-pair? _%$%tl96159647%_)
                              (let ((_%$%e96169650%_
                                     (gx#syntax-e _%$%tl96159647%_)))
                                (let ((_%$%hd96179654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e96169650%_)))
                                      (_%$%tl96189657%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e96169650%_))))
                                  (if (gx#stx-pair/null? _%$%tl96189657%_)
                                      (let ((_g21910_
                                             (gx#syntax-split-splice
                                              _%$%tl96189657%_
                                              '0)))
                                        (begin
                                          (let ((_g21911_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21910_)
                                                       (##values-length
                                                        _g21910_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21911_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21911_)))
                                          (let ((_%$%target96199660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21910_ 0)))
                                                (_%$%tl96219663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21910_ 1))))
                                            (if (gx#stx-null? _%$%tl96219663%_)
                                                (letrec ((_%$%loop96229666%_
                                                          (lambda (_%$%hd96209670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause96269673%_)
                    (if (gx#stx-pair? _%$%hd96209670%_)
                        (let ((_%$%e96239675%_ (gx#syntax-e _%$%hd96209670%_)))
                          (let ((_%$%lp-hd96249679%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e96239675%_)))
                                (_%$%lp-tl96259682%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e96239675%_))))
                            (_%$%loop96229666%_
                             _%$%lp-tl96259682%_
                             (cons _%$%lp-hd96249679%_ _%$%clause96269673%_))))
                        (let ((_%$%clause96279685%_
                               (reverse _%$%clause96269673%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (gx#datum->syntax '#f '$e)
                                            (cons _%$%hd96179654%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '~case)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (foldr (lambda (_%$%g97079710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g97089713%_)
                         (cons _%$%g97079710%_ _%$%g97089713%_))
                       '()
                       _%$%clause96279685%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop96229666%_
                                                   _%$%target96199660%_
                                                   '()))
                                                (_%$%g96099633%_
                                                 _%$%g96109637%_)))))
                                      (_%$%g96099633%_ _%$%g96109637%_))))
                              (_%$%g96099633%_ _%$%g96109637%_))))
                      (_%$%g96099633%_ _%$%g96109637%_)))))
          (_%$%g96089716%_ _%$stx9605%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9721%_)
        (letrec ((_%parse-clauses9724%_
                  (lambda (_%e12181%_ _%clauses12183%_)
                    (let _%lp12185%_ ((_%rest12188%_ _%clauses12183%_)
                                      (_%datums12190%_ '())
                                      (_%dispatch12191%_ '())
                                      (_%default12192%_ '#f))
                      (let* ((_%__stx2036020361%_ _%rest12188%_)
                             (_%$%g1219512207%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2036020361%_))))
                        (let ((_%__kont2036320364%_
                               (lambda (_%$%g1219712239%_ _%$%g1219812241%_)
                                 (let* ((_%__stx2026420265%_ _%$%g1219812241%_)
                                        (_%$%g1225912332%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2026420265%_))))
                                   (let ((_%__kont2026720268%_
                                          (lambda (_%$%g1226112689%_)
                                            (if (gx#stx-null?
                                                 _%$%g1219712239%_)
                                                (let* ((_%$%g1270412712%_
                                                        (lambda (_%$%g1270512708%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g1270512708%_)))
                                                       (_%$%g1270312731%_
                                                        (lambda (_%$%g1270512716%_)
                                                          (_%lp12185%_
                                                           '()
                                                           _%datums12190%_
                                                           _%dispatch12191%_
                                                           (cons _%$%g1226112689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g1270512716%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1270312731%_
                                                   _%e12181%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9721%_
                                                 _%$%g1219812241%_))))
                                         (_%__kont2026920270%_
                                          (lambda (_%$%g1227112629%_)
                                            (if (gx#stx-null?
                                                 _%$%g1219712239%_)
                                                (_%lp12185%_
                                                 '()
                                                 _%datums12190%_
                                                 _%dispatch12191%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%$%g1264312646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1264412649%_)
                        (cons _%$%g1264312646%_ _%$%g1264412649%_))
                      '()
                      _%$%g1227112629%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9721%_
                                                 _%$%g1219812241%_))))
                                         (_%__kont2027320274%_
                                          (lambda (_%$%g1228412516%_
                                                   _%$%g1228512518%_)
                                            (if (null? (foldr (lambda (_%$%g1253612539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1253712542%_)
                        (cons _%$%g1253612539%_ _%$%g1253712542%_))
                      '()
                      _%$%g1228512518%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12185%_
                                                 _%$%g1219712239%_
                                                 _%datums12190%_
                                                 _%dispatch12191%_
                                                 _%default12192%_)
                                                (let* ((_%$%g1254512553%_
                                                        (lambda (_%$%g1254612549%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g1254612549%_)))
                                                       (_%$%g1254412580%_
                                                        (lambda (_%$%g1254612557%_)
                                                          (_%lp12185%_
                                                           _%$%g1219712239%_
                                                           (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g1257112574%_
                                              _%$%g1257212577%_)
                                       (cons _%$%g1257112574%_
                                             _%$%g1257212577%_))
                                     '()
                                     _%$%g1228512518%_))
                         _%datums12190%_)
                   (cons (cons _%$%g1228412516%_ (cons _%$%g1254612557%_ '()))
                         _%dispatch12191%_)
                   _%default12192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1254412580%_
                                                   _%e12181%_)))))
                                         (_%__kont2027720278%_
                                          (lambda (_%$%g1230412405%_
                                                   _%$%g1230512407%_)
                                            (if (null? (foldr (lambda (_%$%g1242612429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1242712432%_)
                        (cons _%$%g1242612429%_ _%$%g1242712432%_))
                      '()
                      _%$%g1230512407%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12185%_
                                                 _%$%g1219712239%_
                                                 _%datums12190%_
                                                 _%dispatch12191%_
                                                 _%default12192%_)
                                                (_%lp12185%_
                                                 _%$%g1219712239%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%$%g1243412437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g1243512440%_)
                             (cons _%$%g1243412437%_ _%$%g1243512440%_))
                           '()
                           _%$%g1230512407%_))
               _%datums12190%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%$%g1244212445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g1244312448%_)
                              (cons _%$%g1244212445%_ _%$%g1244312448%_))
                            '()
                            _%$%g1230412405%_))
               _%dispatch12191%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default12192%_)))))
                                     (let* ((_%__match2035720358%_
                                             (lambda (_%$%e1230612339%_
                                                      _%$%hd1230712343%_
                                                      _%$%tl1230812346%_
                                                      _%__splice2027920280%_
                                                      _%$%target1230912349%_
                                                      _%$%tl1231112352%_)
                                               (letrec ((_%$%loop1231212355%_
                                                         (lambda (_%$%hd1231012359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%datum1231612362%_)
                   (if (gx#stx-pair? _%$%hd1231012359%_)
                       (let ((_%$%e1231312364%_
                              (gx#syntax-e _%$%hd1231012359%_)))
                         (let ((_%$%lp-tl1231512371%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1231312364%_)))
                               (_%$%lp-hd1231412368%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1231312364%_))))
                           (_%$%loop1231212355%_
                            _%$%lp-tl1231512371%_
                            (cons _%$%lp-hd1231412368%_
                                  _%$%datum1231612362%_))))
                       (let ((_%$%datum1231712374%_
                              (reverse _%$%datum1231612362%_)))
                         (if (gx#stx-pair/null? _%$%tl1230812346%_)
                             (let ((_%__splice2028120282%_
                                    (gx#syntax-split-splice->vector
                                     _%$%tl1230812346%_
                                     '0)))
                               (let ((_%$%tl1232012380%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice2028120282%_
                                         '1)))
                                     (_%$%target1231812377%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice2028120282%_
                                         '0))))
                                 (if (gx#stx-null? _%$%tl1232012380%_)
                                     (letrec ((_%$%loop1232112383%_
                                               (lambda (_%$%hd1231912387%_
                                                        _%$%body1232512390%_)
                                                 (if (gx#stx-pair?
                                                      _%$%hd1231912387%_)
                                                     (let ((_%$%e1232212392%_
                                                            (gx#syntax-e
                                                             _%$%hd1231912387%_)))
                                                       (let ((_%$%lp-tl1232412399%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e1232212392%_)))
                     (_%$%lp-hd1232312396%_
                      (let () (declare (not safe)) (##car _%$%e1232212392%_))))
                 (_%$%loop1232112383%_
                  _%$%lp-tl1232412399%_
                  (cons _%$%lp-hd1232312396%_ _%$%body1232512390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$%body1232612402%_
                                                            (reverse _%$%body1232512390%_)))
                                                       (_%__kont2027720278%_
                                                        _%$%body1232612402%_
                                                        _%$%datum1231712374%_))))))
                                       (_%$%loop1232112383%_
                                        _%$%target1231812377%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g1225912332%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g1225912332%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop1231212355%_
                                                  _%$%target1230912349%_
                                                  '()))))
                                            (_%__match2034320344%_
                                             (lambda (_%$%e1228612458%_
                                                      _%$%hd1228712462%_
                                                      _%$%tl1228812465%_
                                                      _%__splice2027520276%_
                                                      _%$%target1228912468%_
                                                      _%$%tl1229112471%_)
                                               (letrec ((_%$%loop1229212474%_
                                                         (lambda (_%$%hd1229012478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%datum1229612481%_)
                   (if (gx#stx-pair? _%$%hd1229012478%_)
                       (let ((_%$%e1229312483%_
                              (gx#syntax-e _%$%hd1229012478%_)))
                         (let ((_%$%lp-tl1229512490%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1229312483%_)))
                               (_%$%lp-hd1229412487%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1229312483%_))))
                           (_%$%loop1229212474%_
                            _%$%lp-tl1229512490%_
                            (cons _%$%lp-hd1229412487%_
                                  _%$%datum1229612481%_))))
                       (let ((_%$%datum1229712493%_
                              (reverse _%$%datum1229612481%_)))
                         (if (gx#stx-pair? _%$%tl1228812465%_)
                             (let ((_%$%e1229812496%_
                                    (gx#syntax-e _%$%tl1228812465%_)))
                               (let ((_%$%tl1230012503%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e1229812496%_)))
                                     (_%$%hd1229912500%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e1229812496%_))))
                                 (if (gx#identifier? _%$%hd1229912500%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21912_|
                                          _%$%hd1229912500%_)
                                         (if (gx#stx-pair? _%$%tl1230012503%_)
                                             (let ((_%$%e1230112506%_
                                                    (gx#syntax-e
                                                     _%$%tl1230012503%_)))
                                               (let ((_%$%tl1230312513%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e1230112506%_)))
                                                     (_%$%hd1230212510%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e1230112506%_))))
                                                 (if (gx#stx-null?
                                                      _%$%tl1230312513%_)
                                                     (_%__kont2027320274%_
                                                      _%$%hd1230212510%_
                                                      _%$%datum1229712493%_)
                                                     (_%__match2035720358%_
                                                      _%$%e1228612458%_
                                                      _%$%hd1228712462%_
                                                      _%$%tl1228812465%_
                                                      _%__splice2027520276%_
                                                      _%$%target1228912468%_
                                                      _%$%tl1229112471%_))))
                                             (_%__match2035720358%_
                                              _%$%e1228612458%_
                                              _%$%hd1228712462%_
                                              _%$%tl1228812465%_
                                              _%__splice2027520276%_
                                              _%$%target1228912468%_
                                              _%$%tl1229112471%_))
                                         (_%__match2035720358%_
                                          _%$%e1228612458%_
                                          _%$%hd1228712462%_
                                          _%$%tl1228812465%_
                                          _%__splice2027520276%_
                                          _%$%target1228912468%_
                                          _%$%tl1229112471%_))
                                     (_%__match2035720358%_
                                      _%$%e1228612458%_
                                      _%$%hd1228712462%_
                                      _%$%tl1228812465%_
                                      _%__splice2027520276%_
                                      _%$%target1228912468%_
                                      _%$%tl1229112471%_))))
                             (_%__match2035720358%_
                              _%$%e1228612458%_
                              _%$%hd1228712462%_
                              _%$%tl1228812465%_
                              _%__splice2027520276%_
                              _%$%target1228912468%_
                              _%$%tl1229112471%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop1229212474%_
                                                  _%$%target1228912468%_
                                                  '()))))
                                            (_%__match2032920330%_
                                             (lambda (_%$%e1227212591%_
                                                      _%$%hd1227312595%_
                                                      _%$%tl1227412598%_
                                                      _%__splice2027120272%_
                                                      _%$%target1227512601%_
                                                      _%$%tl1227712604%_)
                                               (letrec ((_%$%loop1227812607%_
                                                         (lambda (_%$%hd1227612611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%body1228212614%_)
                   (if (gx#stx-pair? _%$%hd1227612611%_)
                       (let ((_%$%e1227912616%_
                              (gx#syntax-e _%$%hd1227612611%_)))
                         (let ((_%$%lp-tl1228112623%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1227912616%_)))
                               (_%$%lp-hd1228012620%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1227912616%_))))
                           (_%$%loop1227812607%_
                            _%$%lp-tl1228112623%_
                            (cons _%$%lp-hd1228012620%_
                                  _%$%body1228212614%_))))
                       (let ((_%$%body1228312626%_
                              (reverse _%$%body1228212614%_)))
                         (_%__kont2026920270%_ _%$%body1228312626%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop1227812607%_
                                                  _%$%target1227512601%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx2026420265%_)
                                           (let ((_%$%e1226212659%_
                                                  (gx#syntax-e
                                                   _%__stx2026420265%_)))
                                             (let ((_%$%tl1226412666%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e1226212659%_)))
                                                   (_%$%hd1226312663%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e1226212659%_))))
                                               (if (gx#identifier?
                                                    _%$%hd1226312663%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21913_|
                                                        _%$%hd1226312663%_)
                                                       (if (gx#stx-pair?
                                                            _%$%tl1226412666%_)
                                                           (let ((_%$%e1226512669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl1226412666%_)))
                     (let ((_%$%tl1226712676%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e1226512669%_)))
                           (_%$%hd1226612673%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e1226512669%_))))
                       (if (gx#identifier? _%$%hd1226612673%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21914_|
                                _%$%hd1226612673%_)
                               (if (gx#stx-pair? _%$%tl1226712676%_)
                                   (let ((_%$%e1226812679%_
                                          (gx#syntax-e _%$%tl1226712676%_)))
                                     (let ((_%$%tl1227012686%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e1226812679%_)))
                                           (_%$%hd1226912683%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e1226812679%_))))
                                       (if (gx#stx-null? _%$%tl1227012686%_)
                                           (_%__kont2026720268%_
                                            _%$%hd1226912683%_)
                                           (if (gx#stx-pair/null?
                                                _%$%tl1226412666%_)
                                               (let ((_%__splice2027120272%_
                                                      (gx#syntax-split-splice->vector
                                                       _%$%tl1226412666%_
                                                       '0)))
                                                 (let ((_%$%tl1227712604%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice2027120272%_
                                                           '1)))
                                                       (_%$%target1227512601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice2027120272%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1227712604%_)
                                                       (_%__match2032920330%_
                                                        _%$%e1226212659%_
                                                        _%$%hd1226312663%_
                                                        _%$%tl1226412666%_
                                                        _%__splice2027120272%_
                                                        _%$%target1227512601%_
                                                        _%$%tl1227712604%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%hd1226312663%_)
                                                           (let ((_%__splice2027520276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%hd1226312663%_
                           '0)))
                     (let ((_%$%tl1229112471%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice2027520276%_ '1)))
                           (_%$%target1228912468%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice2027520276%_ '0))))
                       (if (gx#stx-null? _%$%tl1229112471%_)
                           (_%__match2034320344%_
                            _%$%e1226212659%_
                            _%$%hd1226312663%_
                            _%$%tl1226412666%_
                            _%__splice2027520276%_
                            _%$%target1228912468%_
                            _%$%tl1229112471%_)
                           (let () (declare (not safe)) (_%$%g1225912332%_)))))
                   (let () (declare (not safe)) (_%$%g1225912332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%$%hd1226312663%_)
                                                   (let ((_%__splice2027520276%_
                                                          (gx#syntax-split-splice->vector
                                                           _%$%hd1226312663%_
                                                           '0)))
                                                     (let ((_%$%tl1229112471%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice2027520276%_
                                                               '1)))
                                                           (_%$%target1228912468%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice2027520276%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%$%tl1229112471%_)
                                                           (_%__match2034320344%_
                                                            _%$%e1226212659%_
                                                            _%$%hd1226312663%_
                                                            _%$%tl1226412666%_
                                                            _%__splice2027520276%_
                                                            _%$%target1228912468%_
                                                            _%$%tl1229112471%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g1225912332%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g1225912332%_)))))))
                                   (if (gx#stx-pair/null? _%$%tl1226412666%_)
                                       (let ((_%__splice2027120272%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl1226412666%_
                                               '0)))
                                         (let ((_%$%tl1227712604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice2027120272%_
                                                   '1)))
                                               (_%$%target1227512601%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice2027120272%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl1227712604%_)
                                               (_%__match2032920330%_
                                                _%$%e1226212659%_
                                                _%$%hd1226312663%_
                                                _%$%tl1226412666%_
                                                _%__splice2027120272%_
                                                _%$%target1227512601%_
                                                _%$%tl1227712604%_)
                                               (if (gx#stx-pair/null?
                                                    _%$%hd1226312663%_)
                                                   (let ((_%__splice2027520276%_
                                                          (gx#syntax-split-splice->vector
                                                           _%$%hd1226312663%_
                                                           '0)))
                                                     (let ((_%$%tl1229112471%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice2027520276%_
                                                               '1)))
                                                           (_%$%target1228912468%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice2027520276%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%$%tl1229112471%_)
                                                           (_%__match2034320344%_
                                                            _%$%e1226212659%_
                                                            _%$%hd1226312663%_
                                                            _%$%tl1226412666%_
                                                            _%__splice2027520276%_
                                                            _%$%target1228912468%_
                                                            _%$%tl1229112471%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%$%g1225912332%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g1225912332%_))))))
                                       (if (gx#stx-pair/null?
                                            _%$%hd1226312663%_)
                                           (let ((_%__splice2027520276%_
                                                  (gx#syntax-split-splice->vector
                                                   _%$%hd1226312663%_
                                                   '0)))
                                             (let ((_%$%tl1229112471%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice2027520276%_
                                                       '1)))
                                                   (_%$%target1228912468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice2027520276%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%$%tl1229112471%_)
                                                   (_%__match2034320344%_
                                                    _%$%e1226212659%_
                                                    _%$%hd1226312663%_
                                                    _%$%tl1226412666%_
                                                    _%__splice2027520276%_
                                                    _%$%target1228912468%_
                                                    _%$%tl1229112471%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g1225912332%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g1225912332%_)))))
                               (if (gx#stx-pair/null? _%$%tl1226412666%_)
                                   (let ((_%__splice2027120272%_
                                          (gx#syntax-split-splice->vector
                                           _%$%tl1226412666%_
                                           '0)))
                                     (let ((_%$%tl1227712604%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027120272%_
                                               '1)))
                                           (_%$%target1227512601%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027120272%_
                                               '0))))
                                       (if (gx#stx-null? _%$%tl1227712604%_)
                                           (_%__match2032920330%_
                                            _%$%e1226212659%_
                                            _%$%hd1226312663%_
                                            _%$%tl1226412666%_
                                            _%__splice2027120272%_
                                            _%$%target1227512601%_
                                            _%$%tl1227712604%_)
                                           (if (gx#stx-pair/null?
                                                _%$%hd1226312663%_)
                                               (let ((_%__splice2027520276%_
                                                      (gx#syntax-split-splice->vector
                                                       _%$%hd1226312663%_
                                                       '0)))
                                                 (let ((_%$%tl1229112471%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice2027520276%_
                                                           '1)))
                                                       (_%$%target1228912468%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice2027520276%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1229112471%_)
                                                       (_%__match2034320344%_
                                                        _%$%e1226212659%_
                                                        _%$%hd1226312663%_
                                                        _%$%tl1226412666%_
                                                        _%__splice2027520276%_
                                                        _%$%target1228912468%_
                                                        _%$%tl1229112471%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%$%g1225912332%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g1225912332%_))))))
                                   (if (gx#stx-pair/null? _%$%hd1226312663%_)
                                       (let ((_%__splice2027520276%_
                                              (gx#syntax-split-splice->vector
                                               _%$%hd1226312663%_
                                               '0)))
                                         (let ((_%$%tl1229112471%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice2027520276%_
                                                   '1)))
                                               (_%$%target1228912468%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice2027520276%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl1229112471%_)
                                               (_%__match2034320344%_
                                                _%$%e1226212659%_
                                                _%$%hd1226312663%_
                                                _%$%tl1226412666%_
                                                _%__splice2027520276%_
                                                _%$%target1228912468%_
                                                _%$%tl1229112471%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g1225912332%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g1225912332%_)))))
                           (if (gx#stx-pair/null? _%$%tl1226412666%_)
                               (let ((_%__splice2027120272%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl1226412666%_
                                       '0)))
                                 (let ((_%$%tl1227712604%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice2027120272%_
                                           '1)))
                                       (_%$%target1227512601%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice2027120272%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl1227712604%_)
                                       (_%__match2032920330%_
                                        _%$%e1226212659%_
                                        _%$%hd1226312663%_
                                        _%$%tl1226412666%_
                                        _%__splice2027120272%_
                                        _%$%target1227512601%_
                                        _%$%tl1227712604%_)
                                       (if (gx#stx-pair/null?
                                            _%$%hd1226312663%_)
                                           (let ((_%__splice2027520276%_
                                                  (gx#syntax-split-splice->vector
                                                   _%$%hd1226312663%_
                                                   '0)))
                                             (let ((_%$%tl1229112471%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice2027520276%_
                                                       '1)))
                                                   (_%$%target1228912468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice2027520276%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%$%tl1229112471%_)
                                                   (_%__match2034320344%_
                                                    _%$%e1226212659%_
                                                    _%$%hd1226312663%_
                                                    _%$%tl1226412666%_
                                                    _%__splice2027520276%_
                                                    _%$%target1228912468%_
                                                    _%$%tl1229112471%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%$%g1225912332%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g1225912332%_))))))
                               (if (gx#stx-pair/null? _%$%hd1226312663%_)
                                   (let ((_%__splice2027520276%_
                                          (gx#syntax-split-splice->vector
                                           _%$%hd1226312663%_
                                           '0)))
                                     (let ((_%$%tl1229112471%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027520276%_
                                               '1)))
                                           (_%$%target1228912468%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027520276%_
                                               '0))))
                                       (if (gx#stx-null? _%$%tl1229112471%_)
                                           (_%__match2034320344%_
                                            _%$%e1226212659%_
                                            _%$%hd1226312663%_
                                            _%$%tl1226412666%_
                                            _%__splice2027520276%_
                                            _%$%target1228912468%_
                                            _%$%tl1229112471%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g1225912332%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g1225912332%_)))))))
                   (if (gx#stx-pair/null? _%$%tl1226412666%_)
                       (let ((_%__splice2027120272%_
                              (gx#syntax-split-splice->vector
                               _%$%tl1226412666%_
                               '0)))
                         (let ((_%$%tl1227712604%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice2027120272%_ '1)))
                               (_%$%target1227512601%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice2027120272%_ '0))))
                           (if (gx#stx-null? _%$%tl1227712604%_)
                               (_%__match2032920330%_
                                _%$%e1226212659%_
                                _%$%hd1226312663%_
                                _%$%tl1226412666%_
                                _%__splice2027120272%_
                                _%$%target1227512601%_
                                _%$%tl1227712604%_)
                               (if (gx#stx-pair/null? _%$%hd1226312663%_)
                                   (let ((_%__splice2027520276%_
                                          (gx#syntax-split-splice->vector
                                           _%$%hd1226312663%_
                                           '0)))
                                     (let ((_%$%tl1229112471%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027520276%_
                                               '1)))
                                           (_%$%target1228912468%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice2027520276%_
                                               '0))))
                                       (if (gx#stx-null? _%$%tl1229112471%_)
                                           (_%__match2034320344%_
                                            _%$%e1226212659%_
                                            _%$%hd1226312663%_
                                            _%$%tl1226412666%_
                                            _%__splice2027520276%_
                                            _%$%target1228912468%_
                                            _%$%tl1229112471%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g1225912332%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g1225912332%_))))))
                       (if (gx#stx-pair/null? _%$%hd1226312663%_)
                           (let ((_%__splice2027520276%_
                                  (gx#syntax-split-splice->vector
                                   _%$%hd1226312663%_
                                   '0)))
                             (let ((_%$%tl1229112471%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice2027520276%_
                                       '1)))
                                   (_%$%target1228912468%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice2027520276%_
                                       '0))))
                               (if (gx#stx-null? _%$%tl1229112471%_)
                                   (_%__match2034320344%_
                                    _%$%e1226212659%_
                                    _%$%hd1226312663%_
                                    _%$%tl1226412666%_
                                    _%__splice2027520276%_
                                    _%$%target1228912468%_
                                    _%$%tl1229112471%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%$%g1225912332%_)))))
                           (let () (declare (not safe)) (_%$%g1225912332%_)))))
               (if (gx#stx-pair/null? _%$%hd1226312663%_)
                   (let ((_%__splice2027520276%_
                          (gx#syntax-split-splice->vector
                           _%$%hd1226312663%_
                           '0)))
                     (let ((_%$%tl1229112471%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice2027520276%_ '1)))
                           (_%$%target1228912468%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice2027520276%_ '0))))
                       (if (gx#stx-null? _%$%tl1229112471%_)
                           (_%__match2034320344%_
                            _%$%e1226212659%_
                            _%$%hd1226312663%_
                            _%$%tl1226412666%_
                            _%__splice2027520276%_
                            _%$%target1228912468%_
                            _%$%tl1229112471%_)
                           (let () (declare (not safe)) (_%$%g1225912332%_)))))
                   (let () (declare (not safe)) (_%$%g1225912332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%$%hd1226312663%_)
                                                       (let ((_%__splice2027520276%_
                                                              (gx#syntax-split-splice->vector
                                                               _%$%hd1226312663%_
                                                               '0)))
                                                         (let ((_%$%tl1229112471%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice2027520276%_ '1)))
                       (_%$%target1228912468%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice2027520276%_ '0))))
                   (if (gx#stx-null? _%$%tl1229112471%_)
                       (_%__match2034320344%_
                        _%$%e1226212659%_
                        _%$%hd1226312663%_
                        _%$%tl1226412666%_
                        _%__splice2027520276%_
                        _%$%target1228912468%_
                        _%$%tl1229112471%_)
                       (let () (declare (not safe)) (_%$%g1225912332%_)))))
               (let () (declare (not safe)) (_%$%g1225912332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%$%g1225912332%_))))))))
                              (_%__kont2036520366%_
                               (lambda ()
                                 (_%check-duplicate-datums9726%_
                                  _%datums12190%_)
                                 (values (reverse _%datums12190%_)
                                         (reverse _%dispatch12191%_)
                                         (let ((_%$e12218%_ _%default12192%_))
                                           (if _%$e12218%_
                                               _%$e12218%_
                                               '#!void))))))
                          (let ((_%$%g1219412222%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx2036020361%_)
                                       (_%__kont2036520366%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g1219512207%_))))))
                            (if (gx#stx-pair? _%__stx2036020361%_)
                                (let ((_%$%e1219912229%_
                                       (gx#syntax-e _%__stx2036020361%_)))
                                  (let ((_%$%tl1220112236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1219912229%_)))
                                        (_%$%hd1220012233%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1219912229%_))))
                                    (_%__kont2036320364%_
                                     _%$%tl1220112236%_
                                     _%$%hd1220012233%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g1219412222%_)))))))))
                 (_%check-duplicate-datums9726%_
                  (lambda (_%datums12169%_)
                    (let ((_%ht12172%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst12175%_)
                         (for-each
                          (lambda (_%datum12178%_)
                            (if (hash-get _%ht12172%_ _%datum12178%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9721%_
                                 _%datum12178%_)
                                (hash-put! _%ht12172%_ _%datum12178%_ '#t)))
                          _%lst12175%_))
                       _%datums12169%_))))
                 (_%count-datums9727%_
                  (lambda (_%datums12162%_)
                    (foldl (lambda (_%lst12165%_ _%r12167%_)
                             (+ (length _%lst12165%_) _%r12167%_))
                           '0
                           _%datums12162%_)))
                 (_%symbolic-datums?9728%_
                  (lambda (_%datums12156%_)
                    (andmap (lambda (_%lst12159%_)
                              (andmap symbol? _%lst12159%_))
                            _%datums12156%_)))
                 (_%char-datums?9729%_
                  (lambda (_%datums12150%_)
                    (andmap (lambda (_%lst12153%_) (andmap char? _%lst12153%_))
                            _%datums12150%_)))
                 (_%fixnum-datums?9730%_
                  (lambda (_%datums12144%_)
                    (andmap (lambda (_%lst12147%_)
                              (andmap fixnum? _%lst12147%_))
                            _%datums12144%_)))
                 (_%eq-datums?9731%_
                  (lambda (_%datums12127%_)
                    (andmap (lambda (_%lst12130%_)
                              (andmap (lambda (_%x12133%_)
                                        (let ((_%$e12136%_
                                               (symbol? _%x12133%_)))
                                          (if _%$e12136%_
                                              _%$e12136%_
                                              (let ((_%$e12140%_
                                                     (keyword? _%x12133%_)))
                                                (if _%$e12140%_
                                                    _%$e12140%_
                                                    (immediate?
                                                     _%x12133%_))))))
                                      _%lst12130%_))
                            _%datums12127%_)))
                 (_%generate-simple-case9732%_
                  (lambda (_%e11893%_
                           _%datums11895%_
                           _%dispatch11896%_
                           _%default11897%_)
                    (let* ((_%$%g1189911907%_
                            (lambda (_%$%g1190011903%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1190011903%_)))
                           (_%$%g1189812123%_
                            (lambda (_%$%g1190011911%_)
                              (let _%recur11926%_ ((_%datums11929%_
                                                    _%datums11895%_)
                                                   (_%dispatch11931%_
                                                    _%dispatch11896%_))
                                (let* ((_%__stx2037820379%_ _%datums11929%_)
                                       (_%$%g1193411955%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx2037820379%_))))
                                  (let ((_%__kont2038120382%_
                                         (lambda (_%$%g1193612011%_
                                                  _%$%g1193712013%_)
                                           (let* ((_%$%g1203312045%_
                                                   (lambda (_%$%g1203412041%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g1203412041%_)))
                                                  (_%$%g1203212115%_
                                                   (lambda (_%$%g1203412049%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g1203412049%_)
                                                         (let ((_%$%e1203712052%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1203412049%_)))
                   (let ((_%$%hd1203812056%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e1203712052%_)))
                         (_%$%tl1203912059%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e1203712052%_))))
                     (let* ((_%$%g1207612084%_
                             (lambda (_%$%g1207712080%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g1207712080%_)))
                            (_%$%g1207512111%_
                             (lambda (_%$%g1207712088%_)
                               (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'or)
                                                 (foldr (lambda (_%$%g1210212105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1210312108%_)
                  (cons (cons (gx#datum->syntax '#f '~case-test)
                              (cons _%$%g1210212105%_
                                    (cons _%$%g1190011911%_ '())))
                        _%$%g1210312108%_))
                '()
                _%$%g1193712013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%hd1203812056%_
                                                 (cons _%$%g1207712088%_
                                                       '())))))))
                       (_%$%g1207512111%_
                        (_%recur11926%_
                         _%$%g1193612011%_
                         _%$%tl1203912059%_)))))
                 (_%$%g1203312045%_ _%$%g1203412049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g1203212115%_
                                              _%dispatch11931%_))))
                                        (_%__kont2038520386%_
                                         (lambda () _%default11897%_)))
                                    (let ((_%__match2040120402%_
                                           (lambda (_%$%e1193811973%_
                                                    _%$%hd1193911977%_
                                                    _%$%tl1194011980%_
                                                    _%__splice2038320384%_
                                                    _%$%target1194111983%_
                                                    _%$%tl1194311986%_)
                                             (letrec ((_%$%loop1194411989%_
                                                       (lambda (_%$%hd1194211993%_
                                                                _%$%datum1194811996%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd1194211993%_)
                                                             (let ((_%$%e1194511998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd1194211993%_)))
                       (let ((_%$%lp-tl1194712005%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e1194511998%_)))
                             (_%$%lp-hd1194612002%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e1194511998%_))))
                         (_%$%loop1194411989%_
                          _%$%lp-tl1194712005%_
                          (cons _%$%lp-hd1194612002%_ _%$%datum1194811996%_))))
                     (let ((_%$%datum1194912008%_
                            (reverse _%$%datum1194811996%_)))
                       (_%__kont2038120382%_
                        _%$%tl1194011980%_
                        _%$%datum1194912008%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop1194411989%_
                                                _%$%target1194111983%_
                                                '())))))
                                      (if (gx#stx-pair? _%__stx2037820379%_)
                                          (let ((_%$%e1193811973%_
                                                 (gx#syntax-e
                                                  _%__stx2037820379%_)))
                                            (let ((_%$%tl1194011980%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1193811973%_)))
                                                  (_%$%hd1193911977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1193811973%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd1193911977%_)
                                                  (let ((_%__splice2038320384%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd1193911977%_
                                                          '0)))
                                                    (let ((_%$%tl1194311986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2038320384%_
                                                              '1)))
                                                          (_%$%target1194111983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2038320384%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1194311986%_)
                                                          (_%__match2040120402%_
                                                           _%$%e1193811973%_
                                                           _%$%hd1193911977%_
                                                           _%$%tl1194011980%_
                                                           _%__splice2038320384%_
                                                           _%$%target1194111983%_
                                                           _%$%tl1194311986%_)
                                                          (_%__kont2038520386%_))))
                                                  (_%__kont2038520386%_))))
                                          (_%__kont2038520386%_)))))))))
                      (_%$%g1189812123%_ _%e11893%_))))
                 (_%datum-dispatch-index9733%_
                  (lambda (_%datums11767%_)
                    (let _%lp11770%_ ((_%rest11773%_ _%datums11767%_)
                                      (_%ix11775%_ '0)
                                      (_%r11776%_ '()))
                      (let* ((_%__stx2040420405%_ _%rest11773%_)
                             (_%$%g1177911800%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2040420405%_))))
                        (let ((_%__kont2040720408%_
                               (lambda (_%$%g1178111856%_ _%$%g1178211858%_)
                                 (_%lp11770%_
                                  _%$%g1178111856%_
                                  (fx1+ _%ix11775%_)
                                  (foldl (lambda (_%x11877%_ _%r11879%_)
                                           (cons (cons _%x11877%_ _%ix11775%_)
                                                 _%r11879%_))
                                         _%r11776%_
                                         (foldr (lambda (_%$%g1188011883%_
                                                         _%$%g1188111886%_)
                                                  (cons _%$%g1188011883%_
                                                        _%$%g1188111886%_))
                                                '()
                                                _%$%g1178211858%_)))))
                              (_%__kont2041120412%_ (lambda () _%r11776%_)))
                          (let ((_%__match2042720428%_
                                 (lambda (_%$%e1178311818%_
                                          _%$%hd1178411822%_
                                          _%$%tl1178511825%_
                                          _%__splice2040920410%_
                                          _%$%target1178611828%_
                                          _%$%tl1178811831%_)
                                   (letrec ((_%$%loop1178911834%_
                                             (lambda (_%$%hd1178711838%_
                                                      _%$%datum1179311841%_)
                                               (if (gx#stx-pair?
                                                    _%$%hd1178711838%_)
                                                   (let ((_%$%e1179011843%_
                                                          (gx#syntax-e
                                                           _%$%hd1178711838%_)))
                                                     (let ((_%$%lp-tl1179211850%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e1179011843%_)))
                                                           (_%$%lp-hd1179111847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e1179011843%_))))
                                                       (_%$%loop1178911834%_
                                                        _%$%lp-tl1179211850%_
                                                        (cons _%$%lp-hd1179111847%_
                                                              _%$%datum1179311841%_))))
                                                   (let ((_%$%datum1179411853%_
                                                          (reverse _%$%datum1179311841%_)))
                                                     (_%__kont2040720408%_
                                                      _%$%tl1178511825%_
                                                      _%$%datum1179411853%_))))))
                                     (_%$%loop1178911834%_
                                      _%$%target1178611828%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx2040420405%_)
                                (let ((_%$%e1178311818%_
                                       (gx#syntax-e _%__stx2040420405%_)))
                                  (let ((_%$%tl1178511825%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1178311818%_)))
                                        (_%$%hd1178411822%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1178311818%_))))
                                    (if (gx#stx-pair/null? _%$%hd1178411822%_)
                                        (let ((_%__splice2040920410%_
                                               (gx#syntax-split-splice->vector
                                                _%$%hd1178411822%_
                                                '0)))
                                          (let ((_%$%tl1178811831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2040920410%_
                                                    '1)))
                                                (_%$%target1178611828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2040920410%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl1178811831%_)
                                                (_%__match2042720428%_
                                                 _%$%e1178311818%_
                                                 _%$%hd1178411822%_
                                                 _%$%tl1178511825%_
                                                 _%__splice2040920410%_
                                                 _%$%target1178611828%_
                                                 _%$%tl1178811831%_)
                                                (_%__kont2041120412%_))))
                                        (_%__kont2041120412%_))))
                                (_%__kont2041120412%_))))))))
                 (_%duplicate-indexes?9734%_
                  (lambda (_%xs11748%_)
                    (let ((_%ht11751%_ (make-hash-table-eq)))
                      (let _%lp11754%_ ((_%rest11757%_ _%xs11748%_))
                        (if (pair? _%rest11757%_)
                            (let* ((_%ix11760%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11757%_)))
                                   (_%$e11763%_
                                    (hash-get _%ht11751%_ _%ix11760%_)))
                              (if _%$e11763%_
                                  _%$e11763%_
                                  (begin
                                    (hash-put! _%ht11751%_ _%ix11760%_ '#t)
                                    (_%lp11754%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11757%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9735%_
                  (lambda (_%indexes11717%_ _%hash-e11719%_)
                    (let _%lp11721%_ ((_%len11724%_
                                       (* '2 (length _%indexes11717%_))))
                      (let* ((_%hs11730%_
                              (map (lambda (_%x11727%_)
                                     (_%hash-e11719%_ (car _%x11727%_)))
                                   _%indexes11717%_))
                             (_%xs11736%_
                              (map (lambda (_%h11733%_)
                                     (fxmodulo _%h11733%_ _%len11724%_))
                                   _%hs11730%_)))
                        (if (_%duplicate-indexes?9734%_ _%xs11736%_)
                            (if (< _%len11724%_ '131072)
                                (_%lp11721%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11724%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9721%_
                                 _%indexes11717%_))
                            (let ((_%tab11741%_
                                   (make-vector _%len11724%_ '#f)))
                              (for-each
                               (lambda (_%entry11744%_ _%x11746%_)
                                 (vector-set!
                                  _%tab11741%_
                                  _%x11746%_
                                  _%entry11744%_))
                               _%indexes11717%_
                               _%xs11736%_)
                              _%tab11741%_))))))
                 (_%generate-symbolic-dispatch9736%_
                  (lambda (_%e11322%_
                           _%datums11324%_
                           _%dispatch11325%_
                           _%default11326%_)
                    (let* ((_%indexes11328%_
                            (_%datum-dispatch-index9733%_ _%datums11324%_))
                           (_%tab11331%_
                            (_%generate-hash-dispatch-table9735%_
                             _%indexes11328%_
                             symbol-hash)))
                      (if (= (length _%dispatch11325%_) '1)
                          (let* ((_%tab11339%_
                                  (vector-map
                                   (lambda (_%x11336%_)
                                     (if _%x11336%_ (car _%x11336%_) '#f))
                                   _%tab11331%_))
                                 (_%$%g1134211380%_
                                  (lambda (_%$%g1134311376%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g1134311376%_)))
                                 (_%$%g1134111511%_
                                  (lambda (_%$%g1134311384%_)
                                    (if (gx#stx-pair? _%$%g1134311384%_)
                                        (let ((_%$%e1135111387%_
                                               (gx#syntax-e
                                                _%$%g1134311384%_)))
                                          (let ((_%$%hd1135211391%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1135111387%_)))
                                                (_%$%tl1135311394%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1135111387%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1135311394%_)
                                                (let ((_%$%e1135411397%_
                                                       (gx#syntax-e
                                                        _%$%tl1135311394%_)))
                                                  (let ((_%$%hd1135511401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1135411397%_)))
                                                        (_%$%tl1135611404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1135411397%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl1135611404%_)
                                                        (let ((_%$%e1135711407%_
                                                               (gx#syntax-e
                                                                _%$%tl1135611404%_)))
                                                          (let ((_%$%hd1135811411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1135711407%_)))
                        (_%$%tl1135911414%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1135711407%_))))
                    (if (gx#stx-pair? _%$%tl1135911414%_)
                        (let ((_%$%e1136011417%_
                               (gx#syntax-e _%$%tl1135911414%_)))
                          (let ((_%$%hd1136111421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1136011417%_)))
                                (_%$%tl1136211424%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1136011417%_))))
                            (if (gx#stx-pair? _%$%hd1136111421%_)
                                (let ((_%$%e1136311427%_
                                       (gx#syntax-e _%$%hd1136111421%_)))
                                  (let ((_%$%hd1136411431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1136311427%_)))
                                        (_%$%tl1136511434%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1136311427%_))))
                                    (if (gx#stx-null? _%$%tl1136511434%_)
                                        (if (gx#stx-pair? _%$%tl1136211424%_)
                                            (let ((_%$%e1136611437%_
                                                   (gx#syntax-e
                                                    _%$%tl1136211424%_)))
                                              (let ((_%$%hd1136711441%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1136611437%_)))
                                                    (_%$%tl1136811444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1136611437%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl1136811444%_)
                                                    (let ((_%$%e1136911447%_
                                                           (gx#syntax-e
                                                            _%$%tl1136811444%_)))
                                                      (let ((_%$%hd1137011451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1136911447%_)))
                    (_%$%tl1137111454%_
                     (let () (declare (not safe)) (##cdr _%$%e1136911447%_))))
                (if (gx#stx-pair? _%$%tl1137111454%_)
                    (let ((_%$%e1137211457%_ (gx#syntax-e _%$%tl1137111454%_)))
                      (let ((_%$%hd1137311461%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1137211457%_)))
                            (_%$%tl1137411464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1137211457%_))))
                        (if (gx#stx-null? _%$%tl1137411464%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%hd1135511401%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _%$%hd1136711441%_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _%$%hd1135811411%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%$%hd1137011451%_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'symbol?)
                        (cons _%$%hd1135211391%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'let*)
                              (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##symbol-hash)
                                                            (cons _%$%hd1135211391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ix)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##fxmodulo)
                          (cons (gx#datum->syntax '#f 'h)
                                (cons _%$%hd1137311461%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'q)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _%$%hd1135811411%_
                                      (cons (gx#datum->syntax '#f 'ix) '())))
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'eq?)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'q)
                          (cons _%$%hd1135211391%_ '())))
              (cons _%$%hd1136411431%_
                    (cons (cons _%$%hd1135511401%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (cons _%$%hd1135511401%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g1134211380%_ _%$%g1134311384%_))))
                    (_%$%g1134211380%_ _%$%g1134311384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1134211380%_
                                                     _%$%g1134311384%_))))
                                            (_%$%g1134211380%_
                                             _%$%g1134311384%_))
                                        (_%$%g1134211380%_
                                         _%$%g1134311384%_))))
                                (_%$%g1134211380%_ _%$%g1134311384%_))))
                        (_%$%g1134211380%_ _%$%g1134311384%_))))
                (_%$%g1134211380%_ _%$%g1134311384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1134211380%_
                                                 _%$%g1134311384%_))))
                                        (_%$%g1134211380%_
                                         _%$%g1134311384%_)))))
                            (_%$%g1134111511%_
                             (list _%e11322%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11325%_
                                   _%default11326%_
                                   _%tab11339%_
                                   (vector-length _%tab11339%_))))
                          (let* ((_%$%g1151511559%_
                                  (lambda (_%$%g1151611555%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g1151611555%_)))
                                 (_%$%g1151411713%_
                                  (lambda (_%$%g1151611563%_)
                                    (if (gx#stx-pair? _%$%g1151611563%_)
                                        (let ((_%$%e1152411566%_
                                               (gx#syntax-e
                                                _%$%g1151611563%_)))
                                          (let ((_%$%hd1152511570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1152411566%_)))
                                                (_%$%tl1152611573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1152411566%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl1152611573%_)
                                                (let ((_%$%e1152711576%_
                                                       (gx#syntax-e
                                                        _%$%tl1152611573%_)))
                                                  (let ((_%$%hd1152811580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1152711576%_)))
                                                        (_%$%tl1152911583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1152711576%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl1152911583%_)
                                                        (let ((_%$%e1153011586%_
                                                               (gx#syntax-e
                                                                _%$%tl1152911583%_)))
                                                          (let ((_%$%hd1153111590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1153011586%_)))
                        (_%$%tl1153211593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1153011586%_))))
                    (if (gx#stx-pair? _%$%tl1153211593%_)
                        (let ((_%$%e1153311596%_
                               (gx#syntax-e _%$%tl1153211593%_)))
                          (let ((_%$%hd1153411600%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1153311596%_)))
                                (_%$%tl1153511603%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1153311596%_))))
                            (if (gx#stx-pair/null? _%$%hd1153411600%_)
                                (let ((_g21915_
                                       (gx#syntax-split-splice
                                        _%$%hd1153411600%_
                                        '0)))
                                  (begin
                                    (let ((_g21916_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21915_)
                                                 (##values-length _g21915_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21916_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21916_)))
                                    (let ((_%$%target1153611606%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21915_ 0)))
                                          (_%$%tl1153811609%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21915_ 1))))
                                      (if (gx#stx-null? _%$%tl1153811609%_)
                                          (letrec ((_%$%loop1153911612%_
                                                    (lambda (_%$%hd1153711616%_
                                                             _%$%dispatch1154311619%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd1153711616%_)
                                                          (let ((_%$%e1154011621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd1153711616%_)))
                    (let ((_%$%lp-hd1154111625%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1154011621%_)))
                          (_%$%lp-tl1154211628%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1154011621%_))))
                      (_%$%loop1153911612%_
                       _%$%lp-tl1154211628%_
                       (cons _%$%lp-hd1154111625%_ _%$%dispatch1154311619%_))))
                  (let ((_%$%dispatch1154411631%_
                         (reverse _%$%dispatch1154311619%_)))
                    (if (gx#stx-pair? _%$%tl1153511603%_)
                        (let ((_%$%e1154511634%_
                               (gx#syntax-e _%$%tl1153511603%_)))
                          (let ((_%$%hd1154611638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1154511634%_)))
                                (_%$%tl1154711641%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1154511634%_))))
                            (if (gx#stx-pair? _%$%tl1154711641%_)
                                (let ((_%$%e1154811644%_
                                       (gx#syntax-e _%$%tl1154711641%_)))
                                  (let ((_%$%hd1154911648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1154811644%_)))
                                        (_%$%tl1155011651%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1154811644%_))))
                                    (if (gx#stx-pair? _%$%tl1155011651%_)
                                        (let ((_%$%e1155111654%_
                                               (gx#syntax-e
                                                _%$%tl1155011651%_)))
                                          (let ((_%$%hd1155211658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1155111654%_)))
                                                (_%$%tl1155311661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1155111654%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl1155311661%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _%$%hd1152811580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons '()
                                                  (cons _%$%hd1154611638%_
                                                        '())))
                                      '()))
                          (cons (cons _%$%hd1153111590%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%hd1154911648%_
                                                        '()))
                                            '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'symbol?)
                                            (cons _%$%hd1152511570%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (cons (gx#datum->syntax '#f '##symbol-hash)
                                        (cons _%$%hd1152511570%_ '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'ix)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##fxmodulo)
                                              (cons (gx#datum->syntax '#f 'h)
                                                    (cons _%$%hd1155211658%_
                                                          '())))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f 'q)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##vector-ref)
                                                    (cons _%$%hd1153111590%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'ix)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons (gx#datum->syntax '#f 'q)
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'eq?)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##car)
                              (cons (gx#datum->syntax '#f 'q) '()))
                        (cons _%$%hd1152511570%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax '#f '##cdr)
                                                (cons (gx#datum->syntax '#f 'q)
                                                      '()))
                                          '()))
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '~case-dispatch)
                                          (cons (gx#datum->syntax '#f 'x)
                                                (foldr (lambda (_%$%g1170411707%_
                                                                _%$%g1170511710%_)
                                                         (cons _%$%g1170411707%_
                                                               _%$%g1170511710%_))
                                                       '()
                                                       _%$%dispatch1154411631%_)))
                                    '())))
                  (cons (cons _%$%hd1152811580%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%$%hd1152811580%_ '())
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons _%$%hd1152811580%_ '())
                                                  '()))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1151511559%_
                                                 _%$%g1151611563%_))))
                                        (_%$%g1151511559%_
                                         _%$%g1151611563%_))))
                                (_%$%g1151511559%_ _%$%g1151611563%_))))
                        (_%$%g1151511559%_ _%$%g1151611563%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop1153911612%_
                                             _%$%target1153611606%_
                                             '()))
                                          (_%$%g1151511559%_
                                           _%$%g1151611563%_)))))
                                (_%$%g1151511559%_ _%$%g1151611563%_))))
                        (_%$%g1151511559%_ _%$%g1151611563%_))))
                (_%$%g1151511559%_ _%$%g1151611563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1151511559%_
                                                 _%$%g1151611563%_))))
                                        (_%$%g1151511559%_
                                         _%$%g1151611563%_)))))
                            (_%$%g1151411713%_
                             (list _%e11322%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11325%_
                                   _%default11326%_
                                   _%tab11331%_
                                   (vector-length _%tab11331%_))))))))
                 (_%max-char9737%_
                  (lambda (_%datums11311%_)
                    (foldl (lambda (_%lst11314%_ _%r11316%_)
                             (foldl (lambda (_%char11318%_ _%r11320%_)
                                      (max (char->integer _%char11318%_)
                                           _%r11320%_))
                                    _%r11316%_
                                    _%lst11314%_))
                           '0
                           _%datums11311%_)))
                 (_%generate-char-dispatch-table9738%_
                  (lambda (_%indexes11290%_)
                    (let* ((_%ixs11296%_
                            (map (lambda (_%x11293%_)
                                   (char->integer (car _%x11293%_)))
                                 _%indexes11290%_))
                           (_%len11299%_ (fx1+ (foldl max '0 _%ixs11296%_)))
                           (_%vec11302%_ (make-vector _%len11299%_ '#f)))
                      (for-each
                       (lambda (_%entry11307%_ _%x11309%_)
                         (vector-set!
                          _%vec11302%_
                          _%x11309%_
                          (cdr _%entry11307%_)))
                       _%indexes11290%_
                       _%ixs11296%_)
                      _%vec11302%_)))
                 (_%simple-char-range?9739%_
                  (lambda (_%tab11266%_)
                    (let ((_%end11269%_ (vector-length _%tab11266%_)))
                      (let _%lp11272%_ ((_%i11275%_ '0))
                        (let ((_%ix11278%_
                               (vector-ref _%tab11266%_ _%i11275%_)))
                          (if _%ix11278%_
                              (let _%lp211281%_ ((_%i11284%_
                                                  (fx1+ _%i11275%_)))
                                (if (fx< _%i11284%_ _%end11269%_)
                                    (let ((_%ix*11287%_
                                           (vector-ref
                                            _%tab11266%_
                                            _%i11284%_)))
                                      (if (eq? _%ix11278%_ _%ix*11287%_)
                                          (_%lp211281%_ (fx1+ _%i11284%_))
                                          '#f))
                                    '#t))
                              (_%lp11272%_ (fx1+ _%i11275%_))))))))
                 (_%char-range-start9740%_
                  (lambda (_%tab11257%_)
                    (let _%lp11260%_ ((_%i11263%_ '0))
                      (if (vector-ref _%tab11257%_ _%i11263%_)
                          _%i11263%_
                          (_%lp11260%_ (fx1+ _%i11263%_))))))
                 (_%generate-char-dispatch9741%_
                  (lambda (_%e10882%_
                           _%datums10884%_
                           _%dispatch10885%_
                           _%default10886%_)
                    (if (< (_%max-char9737%_ _%datums10884%_) '128)
                        (let* ((_%indexes10888%_
                                (_%datum-dispatch-index9733%_ _%datums10884%_))
                               (_%tab10891%_
                                (_%generate-char-dispatch-table9738%_
                                 _%indexes10888%_)))
                          (if (_%simple-char-range?9739%_ _%tab10891%_)
                              (let ((_%start10896%_
                                     (_%char-range-start9740%_ _%tab10891%_))
                                    (_%end10898%_
                                     (vector-length _%tab10891%_)))
                                (let* ((_%$%g1090010934%_
                                        (lambda (_%$%g1090110930%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g1090110930%_)))
                                       (_%$%g1089911051%_
                                        (lambda (_%$%g1090110938%_)
                                          (if (gx#stx-pair? _%$%g1090110938%_)
                                              (let ((_%$%e1090810941%_
                                                     (gx#syntax-e
                                                      _%$%g1090110938%_)))
                                                (let ((_%$%hd1090910945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1090810941%_)))
                                                      (_%$%tl1091010948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1090810941%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1091010948%_)
                                                      (let ((_%$%e1091110951%_
                                                             (gx#syntax-e
                                                              _%$%tl1091010948%_)))
                                                        (let ((_%$%hd1091210955%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1091110951%_)))
                      (_%$%tl1091310958%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1091110951%_))))
                  (if (gx#stx-pair? _%$%tl1091310958%_)
                      (let ((_%$%e1091410961%_
                             (gx#syntax-e _%$%tl1091310958%_)))
                        (let ((_%$%hd1091510965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1091410961%_)))
                              (_%$%tl1091610968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1091410961%_))))
                          (if (gx#stx-pair? _%$%hd1091510965%_)
                              (let ((_%$%e1091710971%_
                                     (gx#syntax-e _%$%hd1091510965%_)))
                                (let ((_%$%hd1091810975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1091710971%_)))
                                      (_%$%tl1091910978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1091710971%_))))
                                  (if (gx#stx-null? _%$%tl1091910978%_)
                                      (if (gx#stx-pair? _%$%tl1091610968%_)
                                          (let ((_%$%e1092010981%_
                                                 (gx#syntax-e
                                                  _%$%tl1091610968%_)))
                                            (let ((_%$%hd1092110985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1092010981%_)))
                                                  (_%$%tl1092210988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1092010981%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl1092210988%_)
                                                  (let ((_%$%e1092310991%_
                                                         (gx#syntax-e
                                                          _%$%tl1092210988%_)))
                                                    (let ((_%$%hd1092410995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1092310991%_)))
                                                          (_%$%tl1092510998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1092310991%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1092510998%_)
                                                          (let ((_%$%e1092611001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1092510998%_)))
                    (let ((_%$%hd1092711005%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1092611001%_)))
                          (_%$%tl1092811008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1092611001%_))))
                      (if (gx#stx-null? _%$%tl1092811008%_)
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons _%$%hd1091210955%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%$%hd1092110985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'char?)
                                                              (cons _%$%hd1090910945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (gx#datum->syntax '#f 'ix)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##char->integer)
                                                    (cons _%$%hd1090910945%_
                                                          '()))
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx>=)
                              (cons (gx#datum->syntax '#f 'ix)
                                    (cons _%$%hd1092410995%_ '())))
                        (cons (cons (gx#datum->syntax '#f '##fx<)
                                    (cons (gx#datum->syntax '#f 'ix)
                                          (cons _%$%hd1092711005%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%$%hd1091810975%_
                                                          (cons (cons _%$%hd1091210955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons _%$%hd1091210955%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (_%$%g1090010934%_ _%$%g1090110938%_))))
                  (_%$%g1090010934%_ _%$%g1090110938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1090010934%_
                                                   _%$%g1090110938%_))))
                                          (_%$%g1090010934%_
                                           _%$%g1090110938%_))
                                      (_%$%g1090010934%_ _%$%g1090110938%_))))
                              (_%$%g1090010934%_ _%$%g1090110938%_))))
                      (_%$%g1090010934%_ _%$%g1090110938%_))))
              (_%$%g1090010934%_ _%$%g1090110938%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1090010934%_
                                               _%$%g1090110938%_)))))
                                  (_%$%g1089911051%_
                                   (list _%e10882%_
                                         (gx#genident 'default)
                                         _%dispatch10885%_
                                         _%default10886%_
                                         _%start10896%_
                                         _%end10898%_))))
                              (let* ((_%$%g1105511099%_
                                      (lambda (_%$%g1105611095%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g1105611095%_)))
                                     (_%$%g1105411253%_
                                      (lambda (_%$%g1105611103%_)
                                        (if (gx#stx-pair? _%$%g1105611103%_)
                                            (let ((_%$%e1106411106%_
                                                   (gx#syntax-e
                                                    _%$%g1105611103%_)))
                                              (let ((_%$%hd1106511110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1106411106%_)))
                                                    (_%$%tl1106611113%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1106411106%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl1106611113%_)
                                                    (let ((_%$%e1106711116%_
                                                           (gx#syntax-e
                                                            _%$%tl1106611113%_)))
                                                      (let ((_%$%hd1106811120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1106711116%_)))
                    (_%$%tl1106911123%_
                     (let () (declare (not safe)) (##cdr _%$%e1106711116%_))))
                (if (gx#stx-pair? _%$%tl1106911123%_)
                    (let ((_%$%e1107011126%_ (gx#syntax-e _%$%tl1106911123%_)))
                      (let ((_%$%hd1107111130%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1107011126%_)))
                            (_%$%tl1107211133%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1107011126%_))))
                        (if (gx#stx-pair? _%$%tl1107211133%_)
                            (let ((_%$%e1107311136%_
                                   (gx#syntax-e _%$%tl1107211133%_)))
                              (let ((_%$%hd1107411140%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1107311136%_)))
                                    (_%$%tl1107511143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1107311136%_))))
                                (if (gx#stx-pair/null? _%$%hd1107411140%_)
                                    (let ((_g21917_
                                           (gx#syntax-split-splice
                                            _%$%hd1107411140%_
                                            '0)))
                                      (begin
                                        (let ((_g21918_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21917_)
                                                     (##values-length _g21917_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21918_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21918_)))
                                        (let ((_%$%target1107611146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21917_ 0)))
                                              (_%$%tl1107811149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21917_ 1))))
                                          (if (gx#stx-null? _%$%tl1107811149%_)
                                              (letrec ((_%$%loop1107911152%_
                                                        (lambda (_%$%hd1107711156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%dispatch1108311159%_)
                  (if (gx#stx-pair? _%$%hd1107711156%_)
                      (let ((_%$%e1108011161%_
                             (gx#syntax-e _%$%hd1107711156%_)))
                        (let ((_%$%lp-hd1108111165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1108011161%_)))
                              (_%$%lp-tl1108211168%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1108011161%_))))
                          (_%$%loop1107911152%_
                           _%$%lp-tl1108211168%_
                           (cons _%$%lp-hd1108111165%_
                                 _%$%dispatch1108311159%_))))
                      (let ((_%$%dispatch1108411171%_
                             (reverse _%$%dispatch1108311159%_)))
                        (if (gx#stx-pair? _%$%tl1107511143%_)
                            (let ((_%$%e1108511174%_
                                   (gx#syntax-e _%$%tl1107511143%_)))
                              (let ((_%$%hd1108611178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1108511174%_)))
                                    (_%$%tl1108711181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1108511174%_))))
                                (if (gx#stx-pair? _%$%tl1108711181%_)
                                    (let ((_%$%e1108811184%_
                                           (gx#syntax-e _%$%tl1108711181%_)))
                                      (let ((_%$%hd1108911188%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1108811184%_)))
                                            (_%$%tl1109011191%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1108811184%_))))
                                        (if (gx#stx-pair? _%$%tl1109011191%_)
                                            (let ((_%$%e1109111194%_
                                                   (gx#syntax-e
                                                    _%$%tl1109011191%_)))
                                              (let ((_%$%hd1109211198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1109111194%_)))
                                                    (_%$%tl1109311201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1109111194%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1109311201%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (cons _%$%hd1106811120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons '()
                                                      (cons _%$%hd1108611178%_
                                                            '())))
                                          '()))
                              (cons (cons _%$%hd1107111130%_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%hd1108911188%_
                                                            '()))
                                                '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'char?)
                                                (cons _%$%hd1106511110%_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'ix)
                          (cons (cons (gx#datum->syntax '#f '##char->integer)
                                      (cons _%$%hd1106511110%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '##fx<)
                                            (cons (gx#datum->syntax '#f 'ix)
                                                  (cons _%$%hd1109211198%_
                                                        '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'x)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##vector-ref)
                                  (cons _%$%hd1107111130%_
                                        (cons (gx#datum->syntax '#f 'ix) '())))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons (gx#datum->syntax '#f 'x)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '~case-dispatch)
                                              (cons (gx#datum->syntax '#f 'x)
                                                    (foldr (lambda (_%$%g1124411247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g1124511250%_)
                     (cons _%$%g1124411247%_ _%$%g1124511250%_))
                   '()
                   _%$%dispatch1108411171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%$%hd1106811120%_ '())
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons _%$%hd1106811120%_ '())
                                                  '()))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _%$%hd1106811120%_
                                                            '())
                                                      '()))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1105511099%_
                                                     _%$%g1105611103%_))))
                                            (_%$%g1105511099%_
                                             _%$%g1105611103%_))))
                                    (_%$%g1105511099%_ _%$%g1105611103%_))))
                            (_%$%g1105511099%_ _%$%g1105611103%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop1107911152%_
                                                 _%$%target1107611146%_
                                                 '()))
                                              (_%$%g1105511099%_
                                               _%$%g1105611103%_)))))
                                    (_%$%g1105511099%_ _%$%g1105611103%_))))
                            (_%$%g1105511099%_ _%$%g1105611103%_))))
                    (_%$%g1105511099%_ _%$%g1105611103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g1105511099%_
                                                     _%$%g1105611103%_))))
                                            (_%$%g1105511099%_
                                             _%$%g1105611103%_)))))
                                (_%$%g1105411253%_
                                 (list _%e10882%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10885%_
                                       _%default10886%_
                                       _%tab10891%_
                                       (vector-length _%tab10891%_))))))
                        (_%generate-char-dispatch/hash9742%_
                         _%e10882%_
                         _%datums10884%_
                         _%dispatch10885%_
                         _%default10886%_))))
                 (_%generate-char-dispatch/hash9742%_
                  (lambda (_%e10662%_
                           _%datums10664%_
                           _%dispatch10665%_
                           _%default10666%_)
                    (let* ((_%indexes10668%_
                            (_%datum-dispatch-index9733%_ _%datums10664%_))
                           (_%tab10671%_
                            (_%generate-hash-dispatch-table9735%_
                             _%indexes10668%_
                             char->integer))
                           (_%$%g1067610720%_
                            (lambda (_%$%g1067710716%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1067710716%_)))
                           (_%$%g1067510878%_
                            (lambda (_%$%g1067710724%_)
                              (if (gx#stx-pair? _%$%g1067710724%_)
                                  (let ((_%$%e1068510727%_
                                         (gx#syntax-e _%$%g1067710724%_)))
                                    (let ((_%$%hd1068610731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1068510727%_)))
                                          (_%$%tl1068710734%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1068510727%_))))
                                      (if (gx#stx-pair? _%$%tl1068710734%_)
                                          (let ((_%$%e1068810737%_
                                                 (gx#syntax-e
                                                  _%$%tl1068710734%_)))
                                            (let ((_%$%hd1068910741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1068810737%_)))
                                                  (_%$%tl1069010744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1068810737%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl1069010744%_)
                                                  (let ((_%$%e1069110747%_
                                                         (gx#syntax-e
                                                          _%$%tl1069010744%_)))
                                                    (let ((_%$%hd1069210751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1069110747%_)))
                                                          (_%$%tl1069310754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1069110747%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1069310754%_)
                                                          (let ((_%$%e1069410757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1069310754%_)))
                    (let ((_%$%hd1069510761%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1069410757%_)))
                          (_%$%tl1069610764%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1069410757%_))))
                      (if (gx#stx-pair/null? _%$%hd1069510761%_)
                          (let ((_g21919_
                                 (gx#syntax-split-splice
                                  _%$%hd1069510761%_
                                  '0)))
                            (begin
                              (let ((_g21920_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21919_)
                                           (##values-length _g21919_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21920_ 2)))
                                    (error "Context expects 2 values"
                                           _g21920_)))
                              (let ((_%$%target1069710767%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21919_ 0)))
                                    (_%$%tl1069910770%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21919_ 1))))
                                (if (gx#stx-null? _%$%tl1069910770%_)
                                    (letrec ((_%$%loop1070010773%_
                                              (lambda (_%$%hd1069810777%_
                                                       _%$%dispatch1070410780%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd1069810777%_)
                                                    (let ((_%$%e1070110782%_
                                                           (gx#syntax-e
                                                            _%$%hd1069810777%_)))
                                                      (let ((_%$%lp-hd1070210786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1070110782%_)))
                    (_%$%lp-tl1070310789%_
                     (let () (declare (not safe)) (##cdr _%$%e1070110782%_))))
                (_%$%loop1070010773%_
                 _%$%lp-tl1070310789%_
                 (cons _%$%lp-hd1070210786%_ _%$%dispatch1070410780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%dispatch1070510792%_
                                                           (reverse _%$%dispatch1070410780%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1069610764%_)
                                                          (let ((_%$%e1070610795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1069610764%_)))
                    (let ((_%$%hd1070710799%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1070610795%_)))
                          (_%$%tl1070810802%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1070610795%_))))
                      (if (gx#stx-pair? _%$%tl1070810802%_)
                          (let ((_%$%e1070910805%_
                                 (gx#syntax-e _%$%tl1070810802%_)))
                            (let ((_%$%hd1071010809%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1070910805%_)))
                                  (_%$%tl1071110812%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1070910805%_))))
                              (if (gx#stx-pair? _%$%tl1071110812%_)
                                  (let ((_%$%e1071210815%_
                                         (gx#syntax-e _%$%tl1071110812%_)))
                                    (let ((_%$%hd1071310819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1071210815%_)))
                                          (_%$%tl1071410822%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1071210815%_))))
                                      (if (gx#stx-null? _%$%tl1071410822%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _%$%hd1068910741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '() (cons _%$%hd1070710799%_ '())))
                                '()))
                    (cons (cons _%$%hd1069210751%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%hd1071010809%_ '()))
                                      '()))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'char?)
                                      (cons _%$%hd1068610731%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let*)
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'h)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##char->integer)
                                  (cons _%$%hd1068610731%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'ix)
                            (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                        (cons (gx#datum->syntax '#f 'h)
                                              (cons _%$%hd1071310819%_ '())))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'q)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##vector-ref)
                                              (cons _%$%hd1069210751%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'ix)
                                                          '())))
                                        '()))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'q)
                            (cons (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax '#f 'eq?)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##car)
                        (cons (gx#datum->syntax '#f 'q) '()))
                  (cons _%$%hd1068610731%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'x)
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons (gx#datum->syntax '#f 'q) '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                    (cons (gx#datum->syntax '#f 'x)
                                          (foldr (lambda (_%$%g1086910872%_
                                                          _%$%g1087010875%_)
                                                   (cons _%$%g1086910872%_
                                                         _%$%g1087010875%_))
                                                 '()
                                                 _%$%dispatch1070510792%_)))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd1068910741%_
                                                                '())
                                                          '()))))
                                  (cons (cons _%$%hd1068910741%_ '()) '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%$%hd1068910741%_ '())
                                            '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g1067610720%_
                                           _%$%g1067710724%_))))
                                  (_%$%g1067610720%_ _%$%g1067710724%_))))
                          (_%$%g1067610720%_ _%$%g1067710724%_))))
                  (_%$%g1067610720%_ _%$%g1067710724%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop1070010773%_
                                       _%$%target1069710767%_
                                       '()))
                                    (_%$%g1067610720%_ _%$%g1067710724%_)))))
                          (_%$%g1067610720%_ _%$%g1067710724%_))))
                  (_%$%g1067610720%_ _%$%g1067710724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1067610720%_
                                                   _%$%g1067710724%_))))
                                          (_%$%g1067610720%_
                                           _%$%g1067710724%_))))
                                  (_%$%g1067610720%_ _%$%g1067710724%_)))))
                      (_%$%g1067510878%_
                       (list _%e10662%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10665%_
                             _%default10666%_
                             _%tab10671%_
                             (vector-length _%tab10671%_))))))
                 (_%min-fixnum9743%_
                  (lambda (_%datums10655%_)
                    (foldl (lambda (_%lst10658%_ _%r10660%_)
                             (foldl min _%r10660%_ _%lst10658%_))
                           ##max-fixnum
                           _%datums10655%_)))
                 (_%max-fixnum9744%_
                  (lambda (_%datums10648%_)
                    (foldl (lambda (_%lst10651%_ _%r10653%_)
                             (foldl max _%r10653%_ _%lst10651%_))
                           ##min-fixnum
                           _%datums10648%_)))
                 (_%generate-fixnum-dispatch-table9745%_
                  (lambda (_%indexes10630%_)
                    (let* ((_%ixs10633%_ (map car _%indexes10630%_))
                           (_%len10636%_ (fx1+ (foldl max '0 _%ixs10633%_)))
                           (_%vec10639%_ (make-vector _%len10636%_ '#f)))
                      (for-each
                       (lambda (_%entry10644%_ _%x10646%_)
                         (vector-set!
                          _%vec10639%_
                          _%x10646%_
                          (cdr _%entry10644%_)))
                       _%indexes10630%_
                       _%ixs10633%_)
                      _%vec10639%_)))
                 (_%generate-fixnum-dispatch9746%_
                  (lambda (_%e10366%_
                           _%datums10368%_
                           _%dispatch10369%_
                           _%default10370%_)
                    (if (and (>= (_%min-fixnum9743%_ _%datums10368%_) '0)
                             (< (_%max-fixnum9744%_ _%datums10368%_) '1024))
                        (let* ((_%indexes10372%_
                                (_%datum-dispatch-index9733%_ _%datums10368%_))
                               (_%tab10375%_
                                (_%generate-fixnum-dispatch-table9745%_
                                 _%indexes10372%_))
                               (_%dense?10378%_
                                (andmap values (vector->list _%tab10375%_)))
                               (_%$%g1038310427%_
                                (lambda (_%$%g1038410423%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g1038410423%_)))
                               (_%$%g1038210626%_
                                (lambda (_%$%g1038410431%_)
                                  (if (gx#stx-pair? _%$%g1038410431%_)
                                      (let ((_%$%e1039210434%_
                                             (gx#syntax-e _%$%g1038410431%_)))
                                        (let ((_%$%hd1039310438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1039210434%_)))
                                              (_%$%tl1039410441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1039210434%_))))
                                          (if (gx#stx-pair? _%$%tl1039410441%_)
                                              (let ((_%$%e1039510444%_
                                                     (gx#syntax-e
                                                      _%$%tl1039410441%_)))
                                                (let ((_%$%hd1039610448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1039510444%_)))
                                                      (_%$%tl1039710451%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1039510444%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl1039710451%_)
                                                      (let ((_%$%e1039810454%_
                                                             (gx#syntax-e
                                                              _%$%tl1039710451%_)))
                                                        (let ((_%$%hd1039910458%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1039810454%_)))
                      (_%$%tl1040010461%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1039810454%_))))
                  (if (gx#stx-pair? _%$%tl1040010461%_)
                      (let ((_%$%e1040110464%_
                             (gx#syntax-e _%$%tl1040010461%_)))
                        (let ((_%$%hd1040210468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1040110464%_)))
                              (_%$%tl1040310471%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1040110464%_))))
                          (if (gx#stx-pair/null? _%$%hd1040210468%_)
                              (let ((_g21921_
                                     (gx#syntax-split-splice
                                      _%$%hd1040210468%_
                                      '0)))
                                (begin
                                  (let ((_g21922_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21921_)
                                               (##values-length _g21921_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21922_ 2)))
                                        (error "Context expects 2 values"
                                               _g21922_)))
                                  (let ((_%$%target1040410474%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21921_ 0)))
                                        (_%$%tl1040610477%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21921_ 1))))
                                    (if (gx#stx-null? _%$%tl1040610477%_)
                                        (letrec ((_%$%loop1040710480%_
                                                  (lambda (_%$%hd1040510484%_
                                                           _%$%dispatch1041110487%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1040510484%_)
                                                        (let ((_%$%e1040810489%_
                                                               (gx#syntax-e
                                                                _%$%hd1040510484%_)))
                                                          (let ((_%$%lp-hd1040910493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1040810489%_)))
                        (_%$%lp-tl1041010496%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1040810489%_))))
                    (_%$%loop1040710480%_
                     _%$%lp-tl1041010496%_
                     (cons _%$%lp-hd1040910493%_ _%$%dispatch1041110487%_))))
                (let ((_%$%dispatch1041210499%_
                       (reverse _%$%dispatch1041110487%_)))
                  (if (gx#stx-pair? _%$%tl1040310471%_)
                      (let ((_%$%e1041310502%_
                             (gx#syntax-e _%$%tl1040310471%_)))
                        (let ((_%$%hd1041410506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1041310502%_)))
                              (_%$%tl1041510509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1041310502%_))))
                          (if (gx#stx-pair? _%$%tl1041510509%_)
                              (let ((_%$%e1041610512%_
                                     (gx#syntax-e _%$%tl1041510509%_)))
                                (let ((_%$%hd1041710516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1041610512%_)))
                                      (_%$%tl1041810519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1041610512%_))))
                                  (if (gx#stx-pair? _%$%tl1041810519%_)
                                      (let ((_%$%e1041910522%_
                                             (gx#syntax-e _%$%tl1041810519%_)))
                                        (let ((_%$%hd1042010526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1041910522%_)))
                                              (_%$%tl1042110529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1041910522%_))))
                                          (if (gx#stx-null? _%$%tl1042110529%_)
                                              (let* ((_%$%g1057810586%_
                                                      (lambda (_%$%g1057910582%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g1057910582%_)))
                                                     (_%$%g1057710606%_
                                                      (lambda (_%$%g1057910590%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'let)
                                                              (cons (cons (cons _%$%hd1039610448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd1041410506%_
                                                                '())))
                                              '()))
                                  (cons (cons _%$%hd1039910458%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%hd1041710516%_
                                                                '()))
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'fixnum?)
                                                    (cons _%$%hd1039310438%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##fx>=)
                                          (cons _%$%hd1039310438%_
                                                (cons '0 '())))
                                    (cons (cons (gx#datum->syntax '#f '##fx<)
                                                (cons _%$%hd1039310438%_
                                                      (cons _%$%hd1042010526%_
                                                            '())))
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'let)
                                    (cons (cons (gx#datum->syntax '#f 'x)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref)
                                                            (cons _%$%hd1039910458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%hd1039310438%_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%$%g1057910590%_ '())))
                              (cons (cons _%$%hd1039610448%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd1039610448%_
                                                                '())
                                                          '()))))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1057710606%_
                                                 (if _%dense?10378%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '~case-dispatch)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (foldr (lambda (_%$%g1060910612%_ _%$%g1061010615%_)
                                  (cons _%$%g1060910612%_ _%$%g1061010615%_))
                                '()
                                _%$%dispatch1041210499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                     (cons (gx#datum->syntax '#f 'x)
                                           (foldr (lambda (_%$%g1061710620%_
                                                           _%$%g1061810623%_)
                                                    (cons _%$%g1061710620%_
                                                          _%$%g1061810623%_))
                                                  '()
                                                  _%$%dispatch1041210499%_)))
                               (cons (cons _%$%hd1039610448%_ '()) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1038310427%_
                                               _%$%g1038410431%_))))
                                      (_%$%g1038310427%_ _%$%g1038410431%_))))
                              (_%$%g1038310427%_ _%$%g1038410431%_))))
                      (_%$%g1038310427%_ _%$%g1038410431%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop1040710480%_
                                           _%$%target1040410474%_
                                           '()))
                                        (_%$%g1038310427%_
                                         _%$%g1038410431%_)))))
                              (_%$%g1038310427%_ _%$%g1038410431%_))))
                      (_%$%g1038310427%_ _%$%g1038410431%_))))
              (_%$%g1038310427%_ _%$%g1038410431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1038310427%_
                                               _%$%g1038410431%_))))
                                      (_%$%g1038310427%_ _%$%g1038410431%_)))))
                          (_%$%g1038210626%_
                           (list _%e10366%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10369%_
                                 _%default10370%_
                                 _%tab10375%_
                                 (vector-length _%tab10375%_))))
                        (_%generate-fixnum-dispatch/hash9747%_
                         _%e10366%_
                         _%datums10368%_
                         _%dispatch10369%_
                         _%default10370%_))))
                 (_%generate-fixnum-dispatch/hash9747%_
                  (lambda (_%e10146%_
                           _%datums10148%_
                           _%dispatch10149%_
                           _%default10150%_)
                    (let* ((_%indexes10152%_
                            (_%datum-dispatch-index9733%_ _%datums10148%_))
                           (_%tab10155%_
                            (_%generate-hash-dispatch-table9735%_
                             _%indexes10152%_
                             values))
                           (_%$%g1016010204%_
                            (lambda (_%$%g1016110200%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g1016110200%_)))
                           (_%$%g1015910362%_
                            (lambda (_%$%g1016110208%_)
                              (if (gx#stx-pair? _%$%g1016110208%_)
                                  (let ((_%$%e1016910211%_
                                         (gx#syntax-e _%$%g1016110208%_)))
                                    (let ((_%$%hd1017010215%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1016910211%_)))
                                          (_%$%tl1017110218%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1016910211%_))))
                                      (if (gx#stx-pair? _%$%tl1017110218%_)
                                          (let ((_%$%e1017210221%_
                                                 (gx#syntax-e
                                                  _%$%tl1017110218%_)))
                                            (let ((_%$%hd1017310225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e1017210221%_)))
                                                  (_%$%tl1017410228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e1017210221%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl1017410228%_)
                                                  (let ((_%$%e1017510231%_
                                                         (gx#syntax-e
                                                          _%$%tl1017410228%_)))
                                                    (let ((_%$%hd1017610235%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1017510231%_)))
                                                          (_%$%tl1017710238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1017510231%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1017710238%_)
                                                          (let ((_%$%e1017810241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1017710238%_)))
                    (let ((_%$%hd1017910245%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1017810241%_)))
                          (_%$%tl1018010248%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1017810241%_))))
                      (if (gx#stx-pair/null? _%$%hd1017910245%_)
                          (let ((_g21923_
                                 (gx#syntax-split-splice
                                  _%$%hd1017910245%_
                                  '0)))
                            (begin
                              (let ((_g21924_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21923_)
                                           (##values-length _g21923_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21924_ 2)))
                                    (error "Context expects 2 values"
                                           _g21924_)))
                              (let ((_%$%target1018110251%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21923_ 0)))
                                    (_%$%tl1018310254%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21923_ 1))))
                                (if (gx#stx-null? _%$%tl1018310254%_)
                                    (letrec ((_%$%loop1018410257%_
                                              (lambda (_%$%hd1018210261%_
                                                       _%$%dispatch1018810264%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd1018210261%_)
                                                    (let ((_%$%e1018510266%_
                                                           (gx#syntax-e
                                                            _%$%hd1018210261%_)))
                                                      (let ((_%$%lp-hd1018610270%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e1018510266%_)))
                    (_%$%lp-tl1018710273%_
                     (let () (declare (not safe)) (##cdr _%$%e1018510266%_))))
                (_%$%loop1018410257%_
                 _%$%lp-tl1018710273%_
                 (cons _%$%lp-hd1018610270%_ _%$%dispatch1018810264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%dispatch1018910276%_
                                                           (reverse _%$%dispatch1018810264%_)))
                                                      (if (gx#stx-pair?
                                                           _%$%tl1018010248%_)
                                                          (let ((_%$%e1019010279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1018010248%_)))
                    (let ((_%$%hd1019110283%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1019010279%_)))
                          (_%$%tl1019210286%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1019010279%_))))
                      (if (gx#stx-pair? _%$%tl1019210286%_)
                          (let ((_%$%e1019310289%_
                                 (gx#syntax-e _%$%tl1019210286%_)))
                            (let ((_%$%hd1019410293%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1019310289%_)))
                                  (_%$%tl1019510296%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1019310289%_))))
                              (if (gx#stx-pair? _%$%tl1019510296%_)
                                  (let ((_%$%e1019610299%_
                                         (gx#syntax-e _%$%tl1019510296%_)))
                                    (let ((_%$%hd1019710303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1019610299%_)))
                                          (_%$%tl1019810306%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1019610299%_))))
                                      (if (gx#stx-null? _%$%tl1019810306%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _%$%hd1017310225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '() (cons _%$%hd1019110283%_ '())))
                                '()))
                    (cons (cons _%$%hd1017610235%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%hd1019410293%_ '()))
                                      '()))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                      (cons _%$%hd1017010215%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let*)
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'ix)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##fxmodulo)
                                  (cons _%$%hd1017010215%_
                                        (cons _%$%hd1019710303%_ '())))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'q)
                            (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                        (cons _%$%hd1017610235%_
                                              (cons (gx#datum->syntax '#f 'ix)
                                                    '())))
                                  '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'q)
                            (cons (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax '#f 'eq?)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##car)
                        (cons (gx#datum->syntax '#f 'q) '()))
                  (cons _%$%hd1017010215%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'x)
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons (gx#datum->syntax '#f 'q) '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                    (cons (gx#datum->syntax '#f 'x)
                                          (foldr (lambda (_%$%g1035310356%_
                                                          _%$%g1035410359%_)
                                                   (cons _%$%g1035310356%_
                                                         _%$%g1035410359%_))
                                                 '()
                                                 _%$%dispatch1018910276%_)))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%$%hd1017310225%_
                                                                '())
                                                          '()))))
                                  (cons (cons _%$%hd1017310225%_ '()) '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%$%hd1017310225%_ '())
                                            '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g1016010204%_
                                           _%$%g1016110208%_))))
                                  (_%$%g1016010204%_ _%$%g1016110208%_))))
                          (_%$%g1016010204%_ _%$%g1016110208%_))))
                  (_%$%g1016010204%_ _%$%g1016110208%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop1018410257%_
                                       _%$%target1018110251%_
                                       '()))
                                    (_%$%g1016010204%_ _%$%g1016110208%_)))))
                          (_%$%g1016010204%_ _%$%g1016110208%_))))
                  (_%$%g1016010204%_ _%$%g1016110208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1016010204%_
                                                   _%$%g1016110208%_))))
                                          (_%$%g1016010204%_
                                           _%$%g1016110208%_))))
                                  (_%$%g1016010204%_ _%$%g1016110208%_)))))
                      (_%$%g1015910362%_
                       (list _%e10146%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10149%_
                             _%default10150%_
                             _%tab10155%_
                             (vector-length _%tab10155%_))))))
                 (_%generate-generic-dispatch9748%_
                  (lambda (_%e9884%_
                           _%datums9886%_
                           _%dispatch9887%_
                           _%default9888%_)
                    (let ((_g21925_
                           (if (_%eq-datums?9731%_ _%datums9886%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9890%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21925_ 0)))
                              (_%hashf9892%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21925_ 1)))
                              (_%eqf9893%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21925_ 2))))
                          (let* ((_%indexes9895%_
                                  (_%datum-dispatch-index9733%_
                                   _%datums9886%_))
                                 (_%tab9898%_
                                  (_%generate-hash-dispatch-table9735%_
                                   _%indexes9895%_
                                   _%hash-e9890%_))
                                 (_%$%g99039955%_
                                  (lambda (_%$%g99049951%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g99049951%_)))
                                 (_%$%g990210142%_
                                  (lambda (_%$%g99049959%_)
                                    (if (gx#stx-pair? _%$%g99049959%_)
                                        (let ((_%$%e99149962%_
                                               (gx#syntax-e _%$%g99049959%_)))
                                          (let ((_%$%hd99159966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e99149962%_)))
                                                (_%$%tl99169969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e99149962%_))))
                                            (if (gx#stx-pair? _%$%tl99169969%_)
                                                (let ((_%$%e99179972%_
                                                       (gx#syntax-e
                                                        _%$%tl99169969%_)))
                                                  (let ((_%$%hd99189976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e99179972%_)))
                                                        (_%$%tl99199979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e99179972%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl99199979%_)
                                                        (let ((_%$%e99209982%_
                                                               (gx#syntax-e
                                                                _%$%tl99199979%_)))
                                                          (let ((_%$%hd99219986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%$%e99209982%_)))
                        (_%$%tl99229989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e99209982%_))))
                    (if (gx#stx-pair? _%$%tl99229989%_)
                        (let ((_%$%e99239992%_ (gx#syntax-e _%$%tl99229989%_)))
                          (let ((_%$%hd99249996%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e99239992%_)))
                                (_%$%tl99259999%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e99239992%_))))
                            (if (gx#stx-pair/null? _%$%hd99249996%_)
                                (let ((_g21926_
                                       (gx#syntax-split-splice
                                        _%$%hd99249996%_
                                        '0)))
                                  (begin
                                    (let ((_g21927_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21926_)
                                                 (##values-length _g21926_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21927_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21927_)))
                                    (let ((_%$%target992610002%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21926_ 0)))
                                          (_%$%tl992810005%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21926_ 1))))
                                      (if (gx#stx-null? _%$%tl992810005%_)
                                          (letrec ((_%$%loop992910008%_
                                                    (lambda (_%$%hd992710012%_
                                                             _%$%dispatch993310015%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd992710012%_)
                                                          (let ((_%$%e993010017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd992710012%_)))
                    (let ((_%$%lp-hd993110021%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e993010017%_)))
                          (_%$%lp-tl993210024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e993010017%_))))
                      (_%$%loop992910008%_
                       _%$%lp-tl993210024%_
                       (cons _%$%lp-hd993110021%_ _%$%dispatch993310015%_))))
                  (let ((_%$%dispatch993410027%_
                         (reverse _%$%dispatch993310015%_)))
                    (if (gx#stx-pair? _%$%tl99259999%_)
                        (let ((_%$%e993510030%_
                               (gx#syntax-e _%$%tl99259999%_)))
                          (let ((_%$%hd993610034%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e993510030%_)))
                                (_%$%tl993710037%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e993510030%_))))
                            (if (gx#stx-pair? _%$%tl993710037%_)
                                (let ((_%$%e993810040%_
                                       (gx#syntax-e _%$%tl993710037%_)))
                                  (let ((_%$%hd993910044%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e993810040%_)))
                                        (_%$%tl994010047%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e993810040%_))))
                                    (if (gx#stx-pair? _%$%tl994010047%_)
                                        (let ((_%$%e994110050%_
                                               (gx#syntax-e
                                                _%$%tl994010047%_)))
                                          (let ((_%$%hd994210054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e994110050%_)))
                                                (_%$%tl994310057%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e994110050%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl994310057%_)
                                                (let ((_%$%e994410060%_
                                                       (gx#syntax-e
                                                        _%$%tl994310057%_)))
                                                  (let ((_%$%hd994510064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e994410060%_)))
                                                        (_%$%tl994610067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e994410060%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl994610067%_)
                                                        (let ((_%$%e994710070%_
                                                               (gx#syntax-e
                                                                _%$%tl994610067%_)))
                                                          (let ((_%$%hd994810074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e994710070%_)))
                        (_%$%tl994910077%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e994710070%_))))
                    (if (gx#stx-null? _%$%tl994910077%_)
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _%$%hd99189976%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%hd993610034%_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _%$%hd99219986%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%$%hd993910044%_ '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'let*)
                                                (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'h)
                          (cons (cons _%$%hd994510064%_
                                      (cons _%$%hd99159966%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'ix)
                                (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                            (cons (gx#datum->syntax '#f 'h)
                                                  (cons _%$%hd994210054%_
                                                        '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'q)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector-ref)
                                                  (cons _%$%hd99219986%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'ix)
                                                              '())))
                                            '()))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'q)
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _%$%hd994810074%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##car)
                            (cons (gx#datum->syntax '#f 'q) '()))
                      (cons _%$%hd99159966%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'let)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'x)
                                  (cons (cons (gx#datum->syntax '#f '##cdr)
                                              (cons (gx#datum->syntax '#f 'q)
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%$%g1013310136%_
                                                              _%$%g1013410139%_)
                                                       (cons _%$%g1013310136%_
                                                             _%$%g1013410139%_))
                                                     '()
                                                     _%$%dispatch993410027%_)))
                                  '())))
                (cons (cons _%$%hd99189976%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%$%hd99189976%_ '()) '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_%$%g99039955%_ _%$%g99049959%_))))
                (_%$%g99039955%_ _%$%g99049959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g99039955%_
                                                 _%$%g99049959%_))))
                                        (_%$%g99039955%_ _%$%g99049959%_))))
                                (_%$%g99039955%_ _%$%g99049959%_))))
                        (_%$%g99039955%_ _%$%g99049959%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop992910008%_
                                             _%$%target992610002%_
                                             '()))
                                          (_%$%g99039955%_ _%$%g99049959%_)))))
                                (_%$%g99039955%_ _%$%g99049959%_))))
                        (_%$%g99039955%_ _%$%g99049959%_))))
                (_%$%g99039955%_ _%$%g99049959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g99039955%_
                                                 _%$%g99049959%_))))
                                        (_%$%g99039955%_ _%$%g99049959%_)))))
                            (_%$%g990210142%_
                             (list _%e9884%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9887%_
                                   _%default9888%_
                                   _%tab9898%_
                                   (vector-length _%tab9898%_)
                                   _%hashf9892%_
                                   _%eqf9893%_)))))))))
          (let* ((_%$%g97509774%_
                  (lambda (_%$%g97519770%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g97519770%_)))
                 (_%$%g97499880%_
                  (lambda (_%$%g97519778%_)
                    (if (gx#stx-pair? _%$%g97519778%_)
                        (let ((_%$%e97549781%_ (gx#syntax-e _%$%g97519778%_)))
                          (let ((_%$%hd97559785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e97549781%_)))
                                (_%$%tl97569788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e97549781%_))))
                            (if (gx#stx-pair? _%$%tl97569788%_)
                                (let ((_%$%e97579791%_
                                       (gx#syntax-e _%$%tl97569788%_)))
                                  (let ((_%$%hd97589795%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e97579791%_)))
                                        (_%$%tl97599798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e97579791%_))))
                                    (if (gx#stx-pair/null? _%$%tl97599798%_)
                                        (let ((_g21928_
                                               (gx#syntax-split-splice
                                                _%$%tl97599798%_
                                                '0)))
                                          (begin
                                            (let ((_g21929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21928_)
                                                         (##values-length
                                                          _g21928_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21929_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21929_)))
                                            (let ((_%$%target97609801%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21928_
                                                      0)))
                                                  (_%$%tl97629804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21928_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl97629804%_)
                                                  (letrec ((_%$%loop97639807%_
                                                            (lambda (_%$%hd97619811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%clause97679814%_)
                      (if (gx#stx-pair? _%$%hd97619811%_)
                          (let ((_%$%e97649816%_
                                 (gx#syntax-e _%$%hd97619811%_)))
                            (let ((_%$%lp-hd97659820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e97649816%_)))
                                  (_%$%lp-tl97669823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e97649816%_))))
                              (_%$%loop97639807%_
                               _%$%lp-tl97669823%_
                               (cons _%$%lp-hd97659820%_
                                     _%$%clause97679814%_))))
                          (let* ((_%$%clause97689826%_
                                  (reverse _%$%clause97679814%_))
                                 (_g21930_
                                  (_%parse-clauses9724%_
                                   _%$%hd97589795%_
                                   (foldr (lambda (_%$%g98499852%_
                                                   _%$%g98509855%_)
                                            (cons _%$%g98499852%_
                                                  _%$%g98509855%_))
                                          '()
                                          _%$%clause97689826%_))))
                            (begin
                              (let ((_g21931_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21930_)
                                           (##values-length _g21930_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21931_ 3)))
                                    (error "Context expects 3 values"
                                           _g21931_)))
                              (let ((_%datums9858%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21930_ 0)))
                                    (_%dispatch9860%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21930_ 1)))
                                    (_%default9861%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21930_ 2))))
                                (let ((_%datum-count9863%_
                                       (_%count-datums9727%_ _%datums9858%_)))
                                  (if (< _%datum-count9863%_ '6)
                                      (_%generate-simple-case9732%_
                                       _%$%hd97589795%_
                                       _%datums9858%_
                                       _%dispatch9860%_
                                       _%default9861%_)
                                      (if (_%char-datums?9729%_ _%datums9858%_)
                                          (_%generate-char-dispatch9741%_
                                           _%$%hd97589795%_
                                           _%datums9858%_
                                           _%dispatch9860%_
                                           _%default9861%_)
                                          (if (_%fixnum-datums?9730%_
                                               _%datums9858%_)
                                              (_%generate-fixnum-dispatch9746%_
                                               _%$%hd97589795%_
                                               _%datums9858%_
                                               _%dispatch9860%_
                                               _%default9861%_)
                                              (if (< _%datum-count9863%_ '12)
                                                  (_%generate-simple-case9732%_
                                                   _%$%hd97589795%_
                                                   _%datums9858%_
                                                   _%dispatch9860%_
                                                   _%default9861%_)
                                                  (if (_%symbolic-datums?9728%_
                                                       _%datums9858%_)
                                                      (_%generate-symbolic-dispatch9736%_
                                                       _%$%hd97589795%_
                                                       _%datums9858%_
                                                       _%dispatch9860%_
                                                       _%default9861%_)
                                                      (_%generate-generic-dispatch9748%_
                                                       _%$%hd97589795%_
                                                       _%datums9858%_
                                                       _%dispatch9860%_
                                                       _%default9861%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop97639807%_
                                                     _%$%target97609801%_
                                                     '()))
                                                  (_%$%g97509774%_
                                                   _%$%g97519778%_)))))
                                        (_%$%g97509774%_ _%$%g97519778%_))))
                                (_%$%g97509774%_ _%$%g97519778%_))))
                        (_%$%g97509774%_ _%$%g97519778%_)))))
            (_%$%g97499880%_ _%stx9721%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12758%_)
        (let* ((_%$%g1276112779%_
                (lambda (_%$%g1276212775%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1276212775%_)))
               (_%$%g1276012851%_
                (lambda (_%$%g1276212783%_)
                  (if (gx#stx-pair? _%$%g1276212783%_)
                      (let ((_%$%e1276512786%_
                             (gx#syntax-e _%$%g1276212783%_)))
                        (let ((_%$%hd1276612790%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1276512786%_)))
                              (_%$%tl1276712793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1276512786%_))))
                          (if (gx#stx-pair? _%$%tl1276712793%_)
                              (let ((_%$%e1276812796%_
                                     (gx#syntax-e _%$%tl1276712793%_)))
                                (let ((_%$%hd1276912800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1276812796%_)))
                                      (_%$%tl1277012803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1276812796%_))))
                                  (if (gx#stx-pair? _%$%tl1277012803%_)
                                      (let ((_%$%e1277112806%_
                                             (gx#syntax-e _%$%tl1277012803%_)))
                                        (let ((_%$%hd1277212810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1277112806%_)))
                                              (_%$%tl1277312813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1277112806%_))))
                                          (if (gx#stx-null? _%$%tl1277312813%_)
                                              (let ((_%datum-e12834%_
                                                     (gx#stx-e
                                                      _%$%hd1276912800%_)))
                                                (if (or (symbol? _%datum-e12834%_)
                                                        (keyword?
                                                         _%datum-e12834%_)
                                                        (immediate?
                                                         _%datum-e12834%_))
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'eq?)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%$%hd1276912800%_ '()))
                        (cons _%$%hd1277212810%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (number? _%datum-e12834%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'eqv?)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%$%hd1276912800%_ '()))
                            (cons _%$%hd1277212810%_ '())))
                (cons (gx#datum->syntax '#f 'equal?)
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd1276912800%_ '()))
                            (cons _%$%hd1277212810%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g1276112779%_
                                               _%$%g1276212783%_))))
                                      (_%$%g1276112779%_ _%$%g1276212783%_))))
                              (_%$%g1276112779%_ _%$%g1276212783%_))))
                      (_%$%g1276112779%_ _%$%g1276212783%_)))))
          (_%$%g1276012851%_ _%stx12758%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12855%_)
        (let* ((_%$%g1285912883%_
                (lambda (_%$%g1286012879%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1286012879%_)))
               (_%$%g1285812966%_
                (lambda (_%$%g1286012887%_)
                  (if (gx#stx-pair? _%$%g1286012887%_)
                      (let ((_%$%e1286312890%_
                             (gx#syntax-e _%$%g1286012887%_)))
                        (let ((_%$%hd1286412894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1286312890%_)))
                              (_%$%tl1286512897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1286312890%_))))
                          (if (gx#stx-pair? _%$%tl1286512897%_)
                              (let ((_%$%e1286612900%_
                                     (gx#syntax-e _%$%tl1286512897%_)))
                                (let ((_%$%hd1286712904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1286612900%_)))
                                      (_%$%tl1286812907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1286612900%_))))
                                  (if (gx#stx-pair/null? _%$%tl1286812907%_)
                                      (let ((_g21932_
                                             (gx#syntax-split-splice
                                              _%$%tl1286812907%_
                                              '0)))
                                        (begin
                                          (let ((_g21933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21932_)
                                                       (##values-length
                                                        _g21932_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21933_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21933_)))
                                          (let ((_%$%target1286912910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21932_ 0)))
                                                (_%$%tl1287112913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21932_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl1287112913%_)
                                                (letrec ((_%$%loop1287212916%_
                                                          (lambda (_%$%hd1287012920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%K1287612923%_)
                    (if (gx#stx-pair? _%$%hd1287012920%_)
                        (let ((_%$%e1287312925%_
                               (gx#syntax-e _%$%hd1287012920%_)))
                          (let ((_%$%lp-hd1287412929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1287312925%_)))
                                (_%$%lp-tl1287512932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1287312925%_))))
                            (_%$%loop1287212916%_
                             _%$%lp-tl1287512932%_
                             (cons _%$%lp-hd1287412929%_ _%$%K1287612923%_))))
                        (let ((_%$%K1287712935%_ (reverse _%$%K1287612923%_)))
                          (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons '0
                                      (cons _%$%hd1286712904%_
                                            (foldr (lambda (_%$%g1295712960%_
                                                            _%$%g1295812963%_)
                                                     (cons _%$%g1295712960%_
                                                           _%$%g1295812963%_))
                                                   '()
                                                   _%$%K1287712935%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop1287212916%_
                                                   _%$%target1286912910%_
                                                   '()))
                                                (_%$%g1285912883%_
                                                 _%$%g1286012887%_)))))
                                      (_%$%g1285912883%_ _%$%g1286012887%_))))
                              (_%$%g1285912883%_ _%$%g1286012887%_))))
                      (_%$%g1285912883%_ _%$%g1286012887%_)))))
          (_%$%g1285812966%_ _%$stx12855%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12971%_)
        (let* ((_%__stx2043020431%_ _%stx12971%_)
               (_%$%g1297813074%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2043020431%_))))
          (let ((_%__kont2043320434%_
                 (lambda (_%$%g1298013549%_ _%$%g1298113551%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont2043520436%_
                 (lambda (_%$%g1299113491%_
                          _%$%g1299213493%_
                          _%$%g1299313494%_)
                   _%$%g1299113491%_))
                (_%__kont2043720438%_
                 (lambda (_%$%g1300613388%_
                          _%$%g1300713390%_
                          _%$%g1300813391%_
                          _%$%g1300913392%_)
                   (let* ((_%$%g1341313421%_
                           (lambda (_%$%g1341413417%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g1341413417%_)))
                          (_%$%g1341213440%_
                           (lambda (_%$%g1341413425%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx=)
                                               (cons _%$%g1300813391%_
                                                     (cons _%$%g1341413425%_
                                                           '())))
                                         (cons _%$%g1300713390%_
                                               (cons _%$%g1300613388%_
                                                     '())))))))
                     (_%$%g1341213440%_ (gx#stx-e _%$%g1300913392%_)))))
                (_%__kont2043920440%_
                 (lambda (_%$%g1302513238%_
                          _%$%g1302613240%_
                          _%$%g1302713241%_
                          _%$%g1302813242%_
                          _%$%g1302913243%_)
                   (let* ((_%$%g1326713282%_
                           (lambda (_%$%g1326813278%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g1326813278%_)))
                          (_%$%g1326613327%_
                           (lambda (_%$%g1326813286%_)
                             (if (gx#stx-pair? _%$%g1326813286%_)
                                 (let ((_%$%e1327113289%_
                                        (gx#syntax-e _%$%g1326813286%_)))
                                   (let ((_%$%hd1327213293%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e1327113289%_)))
                                         (_%$%tl1327313296%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e1327113289%_))))
                                     (if (gx#stx-pair? _%$%tl1327313296%_)
                                         (let ((_%$%e1327413299%_
                                                (gx#syntax-e
                                                 _%$%tl1327313296%_)))
                                           (let ((_%$%hd1327513303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e1327413299%_)))
                                                 (_%$%tl1327613306%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e1327413299%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl1327613306%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##fx=)
                           (cons _%$%g1302813242%_
                                 (cons _%$%hd1327213293%_ '())))
                     (cons _%$%g1302713241%_
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fx=)
                                                   (cons _%$%g1302813242%_
                                                         (cons _%$%hd1327513303%_
                                                               '())))
                                             (cons _%$%g1302613240%_
                                                   (cons _%$%g1302513238%_
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g1326713282%_
                                                  _%$%g1326813286%_))))
                                         (_%$%g1326713282%_
                                          _%$%g1326813286%_))))
                                 (_%$%g1326713282%_ _%$%g1326813286%_)))))
                     (_%$%g1326613327%_
                      (list (gx#stx-e _%$%g1302913243%_)
                            (fx1+ (gx#stx-e _%$%g1302913243%_)))))))
                (_%__kont2044120442%_
                 (lambda (_%$%g1304813139%_
                          _%$%g1304913141%_
                          _%$%g1305013142%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%$%g1305013142%_
                               (cons _%$%g1304913141%_
                                     (foldr (lambda (_%$%g1316213165%_
                                                     _%$%g1316313168%_)
                                              (cons _%$%g1316213165%_
                                                    _%$%g1316313168%_))
                                            '()
                                            _%$%g1304813139%_)))))))
            (let ((_%__match2058720588%_
                   (lambda (_%$%e1305113081%_
                            _%$%hd1305213085%_
                            _%$%tl1305313088%_
                            _%$%e1305413091%_
                            _%$%hd1305513095%_
                            _%$%tl1305613098%_
                            _%$%e1305713101%_
                            _%$%hd1305813105%_
                            _%$%tl1305913108%_
                            _%__splice2044320444%_
                            _%$%target1306013111%_
                            _%$%tl1306213114%_)
                     (letrec ((_%$%loop1306313117%_
                               (lambda (_%$%hd1306113121%_ _%$%K1306713124%_)
                                 (if (gx#stx-pair? _%$%hd1306113121%_)
                                     (let ((_%$%e1306413126%_
                                            (gx#syntax-e _%$%hd1306113121%_)))
                                       (let ((_%$%lp-tl1306613133%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e1306413126%_)))
                                             (_%$%lp-hd1306513130%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e1306413126%_))))
                                         (_%$%loop1306313117%_
                                          _%$%lp-tl1306613133%_
                                          (cons _%$%lp-hd1306513130%_
                                                _%$%K1306713124%_))))
                                     (let ((_%$%K1306813136%_
                                            (reverse _%$%K1306713124%_)))
                                       (_%__kont2044120442%_
                                        _%$%K1306813136%_
                                        _%$%hd1305813105%_
                                        _%$%hd1305513095%_))))))
                       (_%$%loop1306313117%_ _%$%target1306013111%_ '())))))
              (if (gx#stx-pair? _%__stx2043020431%_)
                  (let ((_%$%e1298213519%_ (gx#syntax-e _%__stx2043020431%_)))
                    (let ((_%$%tl1298413526%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1298213519%_)))
                          (_%$%hd1298313523%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1298213519%_))))
                      (if (gx#stx-pair? _%$%tl1298413526%_)
                          (let ((_%$%e1298513529%_
                                 (gx#syntax-e _%$%tl1298413526%_)))
                            (let ((_%$%tl1298713536%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1298513529%_)))
                                  (_%$%hd1298613533%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1298513529%_))))
                              (if (gx#stx-pair? _%$%tl1298713536%_)
                                  (let ((_%$%e1298813539%_
                                         (gx#syntax-e _%$%tl1298713536%_)))
                                    (let ((_%$%tl1299013546%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1298813539%_)))
                                          (_%$%hd1298913543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1298813539%_))))
                                      (if (gx#stx-null? _%$%tl1299013546%_)
                                          (_%__kont2043320434%_
                                           _%$%hd1298913543%_
                                           _%$%hd1298613533%_)
                                          (if (gx#stx-pair? _%$%tl1299013546%_)
                                              (let ((_%$%e1300313481%_
                                                     (gx#syntax-e
                                                      _%$%tl1299013546%_)))
                                                (let ((_%$%tl1300513488%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1300313481%_)))
                                                      (_%$%hd1300413485%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1300313481%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1300513488%_)
                                                      (_%__kont2043520436%_
                                                       _%$%hd1300413485%_
                                                       _%$%hd1298913543%_
                                                       _%$%hd1298613533%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl1300513488%_)
                                                          (let ((_%$%e1302213378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl1300513488%_)))
                    (let ((_%$%tl1302413385%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1302213378%_)))
                          (_%$%hd1302313382%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1302213378%_))))
                      (if (gx#stx-null? _%$%tl1302413385%_)
                          (_%__kont2043720438%_
                           _%$%hd1302313382%_
                           _%$%hd1300413485%_
                           _%$%hd1298913543%_
                           _%$%hd1298613533%_)
                          (if (gx#stx-pair? _%$%tl1302413385%_)
                              (let ((_%$%e1304513228%_
                                     (gx#syntax-e _%$%tl1302413385%_)))
                                (let ((_%$%tl1304713235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1304513228%_)))
                                      (_%$%hd1304613232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1304513228%_))))
                                  (if (gx#stx-null? _%$%tl1304713235%_)
                                      (_%__kont2043920440%_
                                       _%$%hd1304613232%_
                                       _%$%hd1302313382%_
                                       _%$%hd1300413485%_
                                       _%$%hd1298913543%_
                                       _%$%hd1298613533%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl1299013546%_)
                                          (let ((_%__splice2044320444%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl1299013546%_
                                                  '0)))
                                            (let ((_%$%tl1306213114%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2044320444%_
                                                      '1)))
                                                  (_%$%target1306013111%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2044320444%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl1306213114%_)
                                                  (_%__match2058720588%_
                                                   _%$%e1298213519%_
                                                   _%$%hd1298313523%_
                                                   _%$%tl1298413526%_
                                                   _%$%e1298513529%_
                                                   _%$%hd1298613533%_
                                                   _%$%tl1298713536%_
                                                   _%$%e1298813539%_
                                                   _%$%hd1298913543%_
                                                   _%$%tl1299013546%_
                                                   _%__splice2044320444%_
                                                   _%$%target1306013111%_
                                                   _%$%tl1306213114%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1297813074%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g1297813074%_))))))
                              (if (gx#stx-pair/null? _%$%tl1299013546%_)
                                  (let ((_%__splice2044320444%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl1299013546%_
                                          '0)))
                                    (let ((_%$%tl1306213114%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice2044320444%_
                                              '1)))
                                          (_%$%target1306013111%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice2044320444%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl1306213114%_)
                                          (_%__match2058720588%_
                                           _%$%e1298213519%_
                                           _%$%hd1298313523%_
                                           _%$%tl1298413526%_
                                           _%$%e1298513529%_
                                           _%$%hd1298613533%_
                                           _%$%tl1298713536%_
                                           _%$%e1298813539%_
                                           _%$%hd1298913543%_
                                           _%$%tl1299013546%_
                                           _%__splice2044320444%_
                                           _%$%target1306013111%_
                                           _%$%tl1306213114%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g1297813074%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g1297813074%_)))))))
                  (if (gx#stx-pair/null? _%$%tl1299013546%_)
                      (let ((_%__splice2044320444%_
                             (gx#syntax-split-splice->vector
                              _%$%tl1299013546%_
                              '0)))
                        (let ((_%$%tl1306213114%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice2044320444%_ '1)))
                              (_%$%target1306013111%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice2044320444%_ '0))))
                          (if (gx#stx-null? _%$%tl1306213114%_)
                              (_%__match2058720588%_
                               _%$%e1298213519%_
                               _%$%hd1298313523%_
                               _%$%tl1298413526%_
                               _%$%e1298513529%_
                               _%$%hd1298613533%_
                               _%$%tl1298713536%_
                               _%$%e1298813539%_
                               _%$%hd1298913543%_
                               _%$%tl1299013546%_
                               _%__splice2044320444%_
                               _%$%target1306013111%_
                               _%$%tl1306213114%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g1297813074%_)))))
                      (let () (declare (not safe)) (_%$%g1297813074%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl1299013546%_)
                                                  (let ((_%__splice2044320444%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl1299013546%_
                                                          '0)))
                                                    (let ((_%$%tl1306213114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2044320444%_
                                                              '1)))
                                                          (_%$%target1306013111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2044320444%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1306213114%_)
                                                          (_%__match2058720588%_
                                                           _%$%e1298213519%_
                                                           _%$%hd1298313523%_
                                                           _%$%tl1298413526%_
                                                           _%$%e1298513529%_
                                                           _%$%hd1298613533%_
                                                           _%$%tl1298713536%_
                                                           _%$%e1298813539%_
                                                           _%$%hd1298913543%_
                                                           _%$%tl1299013546%_
                                                           _%__splice2044320444%_
                                                           _%$%target1306013111%_
                                                           _%$%tl1306213114%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g1297813074%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1297813074%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g1297813074%_)))))
                          (let () (declare (not safe)) (_%$%g1297813074%_)))))
                  (let () (declare (not safe)) (_%$%g1297813074%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13571%_)
        (letrec ((_%split13574%_
                  (lambda (_%lst13929%_ _%mid13931%_)
                    (let _%lp13933%_ ((_%i13936%_ '0)
                                      (_%rest13938%_ _%lst13929%_)
                                      (_%left13939%_ '()))
                      (if (fx< _%i13936%_ _%mid13931%_)
                          (_%lp13933%_
                           (fx1+ _%i13936%_)
                           (cdr _%rest13938%_)
                           (cons (car _%rest13938%_) _%left13939%_))
                          (values (reverse _%left13939%_) _%rest13938%_))))))
          (let* ((_%$%g1357713605%_
                  (lambda (_%$%g1357813601%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1357813601%_)))
                 (_%$%g1357613925%_
                  (lambda (_%$%g1357813609%_)
                    (if (gx#stx-pair? _%$%g1357813609%_)
                        (let ((_%$%e1358213612%_
                               (gx#syntax-e _%$%g1357813609%_)))
                          (let ((_%$%hd1358313616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1358213612%_)))
                                (_%$%tl1358413619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1358213612%_))))
                            (if (gx#stx-pair? _%$%tl1358413619%_)
                                (let ((_%$%e1358513622%_
                                       (gx#syntax-e _%$%tl1358413619%_)))
                                  (let ((_%$%hd1358613626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1358513622%_)))
                                        (_%$%tl1358713629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1358513622%_))))
                                    (if (gx#stx-pair? _%$%tl1358713629%_)
                                        (let ((_%$%e1358813632%_
                                               (gx#syntax-e
                                                _%$%tl1358713629%_)))
                                          (let ((_%$%hd1358913636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1358813632%_)))
                                                (_%$%tl1359013639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1358813632%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl1359013639%_)
                                                (let ((_g21934_
                                                       (gx#syntax-split-splice
                                                        _%$%tl1359013639%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21934_)
                         (##values-length _g21934_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21935_ 2)))
                  (error "Context expects 2 values" _g21935_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target1359113642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21934_
                                                              0)))
                                                          (_%$%tl1359313645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21934_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1359313645%_)
                                                          (letrec ((_%$%loop1359413648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd1359213652%_ _%$%K1359813655%_)
                              (if (gx#stx-pair? _%$%hd1359213652%_)
                                  (let ((_%$%e1359513657%_
                                         (gx#syntax-e _%$%hd1359213652%_)))
                                    (let ((_%$%lp-hd1359613661%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1359513657%_)))
                                          (_%$%lp-tl1359713664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1359513657%_))))
                                      (_%$%loop1359413648%_
                                       _%$%lp-tl1359713664%_
                                       (cons _%$%lp-hd1359613661%_
                                             _%$%K1359813655%_))))
                                  (let* ((_%$%K1359913667%_
                                          (reverse _%$%K1359813655%_))
                                         (_%len13703%_
                                          (length (foldr (lambda (_%$%g1369413697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g1369513700%_)
                   (cons _%$%g1369413697%_ _%$%g1369513700%_))
                 '()
                 _%$%K1359913667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%mid13706%_
                                          (quotient _%len13703%_ '2))
                                         (_g21936_
                                          (_%split13574%_
                                           (foldr (lambda (_%$%g1370813711%_
                                                           _%$%g1370913714%_)
                                                    (cons _%$%g1370813711%_
                                                          _%$%g1370913714%_))
                                                  '()
                                                  _%$%K1359913667%_)
                                           _%mid13706%_)))
                                    (begin
                                      (let ((_g21937_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21936_)
                                                   (##values-length _g21936_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21937_ 2)))
                                            (error "Context expects 2 values"
                                                   _g21937_)))
                                      (let ((_%left13717%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21936_ 0)))
                                            (_%right13719%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21936_ 1))))
                                        (let* ((_%$%g1372313764%_
                                                (lambda (_%$%g1372413760%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g1372413760%_)))
                                               (_%$%g1372213921%_
                                                (lambda (_%$%g1372413768%_)
                                                  (if (gx#stx-pair?
                                                       _%$%g1372413768%_)
                                                      (let ((_%$%e1372913771%_
                                                             (gx#syntax-e
                                                              _%$%g1372413768%_)))
                                                        (let ((_%$%hd1373013775%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e1372913771%_)))
                      (_%$%tl1373113778%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e1372913771%_))))
                  (if (gx#stx-pair? _%$%tl1373113778%_)
                      (let ((_%$%e1373213781%_
                             (gx#syntax-e _%$%tl1373113778%_)))
                        (let ((_%$%hd1373313785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1373213781%_)))
                              (_%$%tl1373413788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1373213781%_))))
                          (if (gx#stx-pair/null? _%$%hd1373313785%_)
                              (let ((_g21938_
                                     (gx#syntax-split-splice
                                      _%$%hd1373313785%_
                                      '0)))
                                (begin
                                  (let ((_g21939_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21938_)
                                               (##values-length _g21938_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21939_ 2)))
                                        (error "Context expects 2 values"
                                               _g21939_)))
                                  (let ((_%$%target1373513791%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21938_ 0)))
                                        (_%$%tl1373713794%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21938_ 1))))
                                    (if (gx#stx-null? _%$%tl1373713794%_)
                                        (letrec ((_%$%loop1373813797%_
                                                  (lambda (_%$%hd1373613801%_
                                                           _%$%K-left1374213804%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1373613801%_)
                                                        (let ((_%$%e1373913806%_
                                                               (gx#syntax-e
                                                                _%$%hd1373613801%_)))
                                                          (let ((_%$%lp-hd1374013810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1373913806%_)))
                        (_%$%lp-tl1374113813%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1373913806%_))))
                    (_%$%loop1373813797%_
                     _%$%lp-tl1374113813%_
                     (cons _%$%lp-hd1374013810%_ _%$%K-left1374213804%_))))
                (let ((_%$%K-left1374313816%_
                       (reverse _%$%K-left1374213804%_)))
                  (if (gx#stx-pair? _%$%tl1373413788%_)
                      (let ((_%$%e1374413819%_
                             (gx#syntax-e _%$%tl1373413788%_)))
                        (let ((_%$%hd1374513823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1374413819%_)))
                              (_%$%tl1374613826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1374413819%_))))
                          (if (gx#stx-pair/null? _%$%hd1374513823%_)
                              (let ((_g21940_
                                     (gx#syntax-split-splice
                                      _%$%hd1374513823%_
                                      '0)))
                                (begin
                                  (let ((_g21941_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21940_)
                                               (##values-length _g21940_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21941_ 2)))
                                        (error "Context expects 2 values"
                                               _g21941_)))
                                  (let ((_%$%target1374713829%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21940_ 0)))
                                        (_%$%tl1374913832%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21940_ 1))))
                                    (if (gx#stx-null? _%$%tl1374913832%_)
                                        (letrec ((_%$%loop1375013835%_
                                                  (lambda (_%$%hd1374813839%_
                                                           _%$%K-right1375413842%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1374813839%_)
                                                        (let ((_%$%e1375113844%_
                                                               (gx#syntax-e
                                                                _%$%hd1374813839%_)))
                                                          (let ((_%$%lp-hd1375213848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1375113844%_)))
                        (_%$%lp-tl1375313851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1375113844%_))))
                    (_%$%loop1375013835%_
                     _%$%lp-tl1375313851%_
                     (cons _%$%lp-hd1375213848%_ _%$%K-right1375413842%_))))
                (let ((_%$%K-right1375513854%_
                       (reverse _%$%K-right1375413842%_)))
                  (if (gx#stx-pair? _%$%tl1374613826%_)
                      (let ((_%$%e1375613857%_
                             (gx#syntax-e _%$%tl1374613826%_)))
                        (let ((_%$%hd1375713861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1375613857%_)))
                              (_%$%tl1375813864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1375613857%_))))
                          (if (gx#stx-null? _%$%tl1375813864%_)
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx<)
                                                (cons _%$%hd1358913636%_
                                                      (cons _%$%hd1375713861%_
                                                            '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '~case-dispatch*)
                                                      (cons _%$%hd1358613626%_
                                                            (cons _%$%hd1358913636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%$%g1390413909%_ _%$%g1390513912%_)
                                   (cons _%$%g1390413909%_ _%$%g1390513912%_))
                                 '()
                                 _%$%K-left1374313816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '~case-dispatch*)
                                                            (cons _%$%hd1375713861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$%hd1358913636%_
                                (foldr (lambda (_%$%g1390613915%_
                                                _%$%g1390713918%_)
                                         (cons _%$%g1390613915%_
                                               _%$%g1390713918%_))
                                       '()
                                       _%$%K-right1375513854%_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g1372313764%_ _%$%g1372413768%_))))
                      (_%$%g1372313764%_ _%$%g1372413768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop1375013835%_
                                           _%$%target1374713829%_
                                           '()))
                                        (_%$%g1372313764%_
                                         _%$%g1372413768%_)))))
                              (_%$%g1372313764%_ _%$%g1372413768%_))))
                      (_%$%g1372313764%_ _%$%g1372413768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop1373813797%_
                                           _%$%target1373513791%_
                                           '()))
                                        (_%$%g1372313764%_
                                         _%$%g1372413768%_)))))
                              (_%$%g1372313764%_ _%$%g1372413768%_))))
                      (_%$%g1372313764%_ _%$%g1372413768%_))))
              (_%$%g1372313764%_ _%$%g1372413768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g1372213921%_
                                           (list _%mid13706%_
                                                 _%left13717%_
                                                 _%right13719%_
                                                 (fx+ _%mid13706%_
                                                      (gx#stx-e
                                                       _%$%hd1358613626%_))))))))))))
                    (_%$%loop1359413648%_ _%$%target1359113642%_ '()))
                  (_%$%g1357713605%_ _%$%g1357813609%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g1357713605%_
                                                 _%$%g1357813609%_))))
                                        (_%$%g1357713605%_
                                         _%$%g1357813609%_))))
                                (_%$%g1357713605%_ _%$%g1357813609%_))))
                        (_%$%g1357713605%_ _%$%g1357813609%_)))))
            (_%$%g1357613925%_ _%stx13571%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13945%_)
        (let* ((_%__stx2059020591%_ _%$stx13945%_)
               (_%$%g1395013981%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2059020591%_))))
          (let ((_%__kont2059320594%_
                 (lambda (_%$%g1395214091%_) _%$%g1395214091%_))
                (_%__kont2059520596%_
                 (lambda (_%$%g1395914036%_ _%$%g1396014038%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%$%g1396014038%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%$%g1405514058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g1405614061%_)
                        (cons _%$%g1405514058%_ _%$%g1405614061%_))
                      '()
                      _%$%g1395914036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match2063320634%_
                   (lambda (_%$%e1396113988%_
                            _%$%hd1396213992%_
                            _%$%tl1396313995%_
                            _%$%e1396413998%_
                            _%$%hd1396514002%_
                            _%$%tl1396614005%_
                            _%__splice2059720598%_
                            _%$%target1396714008%_
                            _%$%tl1396914011%_)
                     (letrec ((_%$%loop1397014014%_
                               (lambda (_%$%hd1396814018%_
                                        _%$%rest1397414021%_)
                                 (if (gx#stx-pair? _%$%hd1396814018%_)
                                     (let ((_%$%e1397114023%_
                                            (gx#syntax-e _%$%hd1396814018%_)))
                                       (let ((_%$%lp-tl1397314030%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e1397114023%_)))
                                             (_%$%lp-hd1397214027%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e1397114023%_))))
                                         (_%$%loop1397014014%_
                                          _%$%lp-tl1397314030%_
                                          (cons _%$%lp-hd1397214027%_
                                                _%$%rest1397414021%_))))
                                     (let ((_%$%rest1397514033%_
                                            (reverse _%$%rest1397414021%_)))
                                       (_%__kont2059520596%_
                                        _%$%rest1397514033%_
                                        _%$%hd1396514002%_))))))
                       (_%$%loop1397014014%_ _%$%target1396714008%_ '())))))
              (if (gx#stx-pair? _%__stx2059020591%_)
                  (let ((_%$%e1395314071%_ (gx#syntax-e _%__stx2059020591%_)))
                    (let ((_%$%tl1395514078%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1395314071%_)))
                          (_%$%hd1395414075%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1395314071%_))))
                      (if (gx#stx-pair? _%$%tl1395514078%_)
                          (let ((_%$%e1395614081%_
                                 (gx#syntax-e _%$%tl1395514078%_)))
                            (let ((_%$%tl1395814088%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1395614081%_)))
                                  (_%$%hd1395714085%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1395614081%_))))
                              (if (gx#stx-null? _%$%tl1395814088%_)
                                  (_%__kont2059320594%_ _%$%hd1395714085%_)
                                  (if (gx#stx-pair/null? _%$%tl1395814088%_)
                                      (let ((_%__splice2059720598%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl1395814088%_
                                              '0)))
                                        (let ((_%$%tl1396914011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2059720598%_
                                                  '1)))
                                              (_%$%target1396714008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2059720598%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl1396914011%_)
                                              (_%__match2063320634%_
                                               _%$%e1395314071%_
                                               _%$%hd1395414075%_
                                               _%$%tl1395514078%_
                                               _%$%e1395614081%_
                                               _%$%hd1395714085%_
                                               _%$%tl1395814088%_
                                               _%__splice2059720598%_
                                               _%$%target1396714008%_
                                               _%$%tl1396914011%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1395013981%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1395013981%_))))))
                          (let () (declare (not safe)) (_%$%g1395013981%_)))))
                  (let () (declare (not safe)) (_%$%g1395013981%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14109%_)
        (let* ((_%__stx2063620637%_ _%$stx14109%_)
               (_%$%g1411514168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2063620637%_))))
          (let ((_%__kont2063920640%_
                 (lambda (_%$%g1411714368%_ _%$%g1411814370%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%$%g1411814370%_
                                           (cons _%$%g1411714368%_ '()))
                                     '())
                               (cons _%$%g1411814370%_ '())))))
                (_%__kont2064120642%_
                 (lambda (_%$%g1412814312%_ _%$%g1412914314%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%$%g1412914314%_
                                           (cons _%$%g1412814312%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%$%g1412914314%_)
                                     '())))))
                (_%__kont2064320644%_
                 (lambda (_%$%g1414214233%_
                          _%$%g1414314235%_
                          _%$%g1414414236%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%$%g1414414236%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%$%g1414314235%_
                                                             (foldr (lambda (_%$%g1425614259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g1425714262%_)
                              (cons _%$%g1425614259%_ _%$%g1425714262%_))
                            '()
                            _%$%g1414214233%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%$%g1414414236%_ '()))))))
            (let* ((_%__match2072320724%_
                    (lambda (_%$%e1414514175%_
                             _%$%hd1414614179%_
                             _%$%tl1414714182%_
                             _%$%e1414814185%_
                             _%$%hd1414914189%_
                             _%$%tl1415014192%_
                             _%$%e1415114195%_
                             _%$%hd1415214199%_
                             _%$%tl1415314202%_
                             _%__splice2064520646%_
                             _%$%target1415414205%_
                             _%$%tl1415614208%_)
                      (letrec ((_%$%loop1415714211%_
                                (lambda (_%$%hd1415514215%_
                                         _%$%body1416114218%_)
                                  (if (gx#stx-pair? _%$%hd1415514215%_)
                                      (let ((_%$%e1415814220%_
                                             (gx#syntax-e _%$%hd1415514215%_)))
                                        (let ((_%$%lp-tl1416014227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1415814220%_)))
                                              (_%$%lp-hd1415914224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1415814220%_))))
                                          (_%$%loop1415714211%_
                                           _%$%lp-tl1416014227%_
                                           (cons _%$%lp-hd1415914224%_
                                                 _%$%body1416114218%_))))
                                      (let ((_%$%body1416214230%_
                                             (reverse _%$%body1416114218%_)))
                                        (let ((_%$%g1414214233%_
                                               _%$%body1416214230%_)
                                              (_%$%g1414314235%_
                                               _%$%tl1415314202%_)
                                              (_%$%g1414414236%_
                                               _%$%hd1415214199%_))
                                          (if (gx#identifier?
                                               _%$%g1414414236%_)
                                              (_%__kont2064320644%_
                                               _%$%g1414214233%_
                                               _%$%g1414314235%_
                                               _%$%g1414414236%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1411514168%_)))))))))
                        (_%$%loop1415714211%_ _%$%target1415414205%_ '()))))
                   (_%__match2069720698%_
                    (lambda (_%$%e1413014272%_
                             _%$%hd1413114276%_
                             _%$%tl1413214279%_
                             _%$%e1413314282%_
                             _%$%hd1413414286%_
                             _%$%tl1413514289%_
                             _%$%e1413614292%_
                             _%$%hd1413714296%_
                             _%$%tl1413814299%_
                             _%$%e1413914302%_
                             _%$%hd1414014306%_
                             _%$%tl1414114309%_)
                      (let ((_%$%g1412814312%_ _%$%hd1414014306%_)
                            (_%$%g1412914314%_ _%$%tl1413814299%_))
                        (if (gx#identifier-list? _%$%g1412914314%_)
                            (_%__kont2064120642%_
                             _%$%g1412814312%_
                             _%$%g1412914314%_)
                            (if (gx#stx-pair/null? _%$%tl1413514289%_)
                                (let ((_%__splice2064520646%_
                                       (gx#syntax-split-splice->vector
                                        _%$%tl1413514289%_
                                        '0)))
                                  (let ((_%$%tl1415614208%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2064520646%_
                                            '1)))
                                        (_%$%target1415414205%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2064520646%_
                                            '0))))
                                    (if (gx#stx-null? _%$%tl1415614208%_)
                                        (_%__match2072320724%_
                                         _%$%e1413014272%_
                                         _%$%hd1413114276%_
                                         _%$%tl1413214279%_
                                         _%$%e1413314282%_
                                         _%$%hd1413414286%_
                                         _%$%tl1413514289%_
                                         _%$%e1413614292%_
                                         _%$%hd1413714296%_
                                         _%$%tl1413814299%_
                                         _%__splice2064520646%_
                                         _%$%target1415414205%_
                                         _%$%tl1415614208%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g1411514168%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g1411514168%_)))))))
                   (_%__match2066720668%_
                    (lambda (_%$%e1411914338%_
                             _%$%hd1412014342%_
                             _%$%tl1412114345%_
                             _%$%e1412214348%_
                             _%$%hd1412314352%_
                             _%$%tl1412414355%_
                             _%$%e1412514358%_
                             _%$%hd1412614362%_
                             _%$%tl1412714365%_)
                      (let ((_%$%g1411714368%_ _%$%hd1412614362%_)
                            (_%$%g1411814370%_ _%$%hd1412314352%_))
                        (if (gx#identifier? _%$%g1411814370%_)
                            (_%__kont2063920640%_
                             _%$%g1411714368%_
                             _%$%g1411814370%_)
                            (if (gx#stx-pair? _%$%hd1412314352%_)
                                (let ((_%$%e1413614292%_
                                       (gx#syntax-e _%$%hd1412314352%_)))
                                  (let ((_%$%tl1413814299%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e1413614292%_)))
                                        (_%$%hd1413714296%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e1413614292%_))))
                                    (if (gx#identifier? _%$%hd1413714296%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21942_|
                                             _%$%hd1413714296%_)
                                            (_%__match2069720698%_
                                             _%$%e1411914338%_
                                             _%$%hd1412014342%_
                                             _%$%tl1412114345%_
                                             _%$%e1412214348%_
                                             _%$%hd1412314352%_
                                             _%$%tl1412414355%_
                                             _%$%e1413614292%_
                                             _%$%hd1413714296%_
                                             _%$%tl1413814299%_
                                             _%$%e1412514358%_
                                             _%$%hd1412614362%_
                                             _%$%tl1412714365%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl1412414355%_)
                                                (let ((_%__splice2064520646%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl1412414355%_
                                                        '0)))
                                                  (let ((_%$%tl1415614208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2064520646%_
                                                            '1)))
                                                        (_%$%target1415414205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2064520646%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1415614208%_)
                                                        (_%__match2072320724%_
                                                         _%$%e1411914338%_
                                                         _%$%hd1412014342%_
                                                         _%$%tl1412114345%_
                                                         _%$%e1412214348%_
                                                         _%$%hd1412314352%_
                                                         _%$%tl1412414355%_
                                                         _%$%e1413614292%_
                                                         _%$%hd1413714296%_
                                                         _%$%tl1413814299%_
                                                         _%__splice2064520646%_
                                                         _%$%target1415414205%_
                                                         _%$%tl1415614208%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g1411514168%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g1411514168%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl1412414355%_)
                                            (let ((_%__splice2064520646%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl1412414355%_
                                                    '0)))
                                              (let ((_%$%tl1415614208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2064520646%_
                                                        '1)))
                                                    (_%$%target1415414205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2064520646%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl1415614208%_)
                                                    (_%__match2072320724%_
                                                     _%$%e1411914338%_
                                                     _%$%hd1412014342%_
                                                     _%$%tl1412114345%_
                                                     _%$%e1412214348%_
                                                     _%$%hd1412314352%_
                                                     _%$%tl1412414355%_
                                                     _%$%e1413614292%_
                                                     _%$%hd1413714296%_
                                                     _%$%tl1413814299%_
                                                     _%__splice2064520646%_
                                                     _%$%target1415414205%_
                                                     _%$%tl1415614208%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g1411514168%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g1411514168%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g1411514168%_))))))))
              (if (gx#stx-pair? _%__stx2063620637%_)
                  (let ((_%$%e1411914338%_ (gx#syntax-e _%__stx2063620637%_)))
                    (let ((_%$%tl1412114345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1411914338%_)))
                          (_%$%hd1412014342%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1411914338%_))))
                      (if (gx#stx-pair? _%$%tl1412114345%_)
                          (let ((_%$%e1412214348%_
                                 (gx#syntax-e _%$%tl1412114345%_)))
                            (let ((_%$%tl1412414355%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1412214348%_)))
                                  (_%$%hd1412314352%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1412214348%_))))
                              (if (gx#stx-pair? _%$%tl1412414355%_)
                                  (let ((_%$%e1412514358%_
                                         (gx#syntax-e _%$%tl1412414355%_)))
                                    (let ((_%$%tl1412714365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1412514358%_)))
                                          (_%$%hd1412614362%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1412514358%_))))
                                      (if (gx#stx-null? _%$%tl1412714365%_)
                                          (_%__match2066720668%_
                                           _%$%e1411914338%_
                                           _%$%hd1412014342%_
                                           _%$%tl1412114345%_
                                           _%$%e1412214348%_
                                           _%$%hd1412314352%_
                                           _%$%tl1412414355%_
                                           _%$%e1412514358%_
                                           _%$%hd1412614362%_
                                           _%$%tl1412714365%_)
                                          (if (gx#stx-pair? _%$%hd1412314352%_)
                                              (let ((_%$%e1413614292%_
                                                     (gx#syntax-e
                                                      _%$%hd1412314352%_)))
                                                (let ((_%$%tl1413814299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1413614292%_)))
                                                      (_%$%hd1413714296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1413614292%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl1412414355%_)
                                                      (let ((_%__splice2064520646%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl1412414355%_
                                                              '0)))
                                                        (let ((_%$%tl1415614208%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice2064520646%_ '1)))
                      (_%$%target1415414205%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice2064520646%_ '0))))
                  (if (gx#stx-null? _%$%tl1415614208%_)
                      (_%__match2072320724%_
                       _%$%e1411914338%_
                       _%$%hd1412014342%_
                       _%$%tl1412114345%_
                       _%$%e1412214348%_
                       _%$%hd1412314352%_
                       _%$%tl1412414355%_
                       _%$%e1413614292%_
                       _%$%hd1413714296%_
                       _%$%tl1413814299%_
                       _%__splice2064520646%_
                       _%$%target1415414205%_
                       _%$%tl1415614208%_)
                      (let () (declare (not safe)) (_%$%g1411514168%_)))))
              (let () (declare (not safe)) (_%$%g1411514168%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1411514168%_))))))
                                  (if (gx#stx-pair? _%$%hd1412314352%_)
                                      (let ((_%$%e1413614292%_
                                             (gx#syntax-e _%$%hd1412314352%_)))
                                        (let ((_%$%tl1413814299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1413614292%_)))
                                              (_%$%hd1413714296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1413614292%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1412414355%_)
                                              (let ((_%__splice2064520646%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl1412414355%_
                                                      '0)))
                                                (let ((_%$%tl1415614208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2064520646%_
                                                          '1)))
                                                      (_%$%target1415414205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2064520646%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1415614208%_)
                                                      (_%__match2072320724%_
                                                       _%$%e1411914338%_
                                                       _%$%hd1412014342%_
                                                       _%$%tl1412114345%_
                                                       _%$%e1412214348%_
                                                       _%$%hd1412314352%_
                                                       _%$%tl1412414355%_
                                                       _%$%e1413614292%_
                                                       _%$%hd1413714296%_
                                                       _%$%tl1413814299%_
                                                       _%__splice2064520646%_
                                                       _%$%target1415414205%_
                                                       _%$%tl1415614208%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g1411514168%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1411514168%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1411514168%_))))))
                          (let () (declare (not safe)) (_%$%g1411514168%_)))))
                  (let () (declare (not safe)) (_%$%g1411514168%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14390%_)
        (letrec ((_%let-bind?14393%_
                  (lambda (_%x15302%_)
                    (let* ((_%__stx2072620727%_ _%x15302%_)
                           (_%$%g1530715326%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2072620727%_))))
                      (let ((_%__kont2072920730%_
                             (lambda (_%$%g1530915394%_ _%$%g1531015396%_)
                               (_%let-head?14396%_ _%$%g1531015396%_)))
                            (_%__kont2073120732%_
                             (lambda (_%$%g1531715354%_) '#t))
                            (_%__kont2073320734%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2072620727%_)
                            (let ((_%$%e1531115374%_
                                   (gx#syntax-e _%__stx2072620727%_)))
                              (let ((_%$%tl1531315381%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1531115374%_)))
                                    (_%$%hd1531215378%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1531115374%_))))
                                (if (gx#stx-pair? _%$%tl1531315381%_)
                                    (let ((_%$%e1531415384%_
                                           (gx#syntax-e _%$%tl1531315381%_)))
                                      (let ((_%$%tl1531615391%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1531415384%_)))
                                            (_%$%hd1531515388%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1531415384%_))))
                                        (if (gx#stx-null? _%$%tl1531615391%_)
                                            (_%__kont2072920730%_
                                             _%$%hd1531515388%_
                                             _%$%hd1531215378%_)
                                            (_%__kont2073320734%_))))
                                    (if (gx#stx-null? _%$%tl1531315381%_)
                                        (_%__kont2073120732%_
                                         _%$%hd1531215378%_)
                                        (_%__kont2073320734%_)))))
                            (_%__kont2073320734%_))))))
                 (_%let-bind14395%_
                  (lambda (_%x15204%_)
                    (let* ((_%__stx2076020761%_ _%x15204%_)
                           (_%$%g1520815227%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2076020761%_))))
                      (let ((_%__kont2076320764%_
                             (lambda (_%$%g1521015283%_ _%$%g1521115285%_)
                               _%x15204%_))
                            (_%__kont2076520766%_
                             (lambda (_%$%g1521815244%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%$%g1521815244%_ '())))))
                        (if (gx#stx-pair? _%__stx2076020761%_)
                            (let ((_%$%e1521215263%_
                                   (gx#syntax-e _%__stx2076020761%_)))
                              (let ((_%$%tl1521415270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1521215263%_)))
                                    (_%$%hd1521315267%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1521215263%_))))
                                (if (gx#stx-pair? _%$%tl1521415270%_)
                                    (let ((_%$%e1521515273%_
                                           (gx#syntax-e _%$%tl1521415270%_)))
                                      (let ((_%$%tl1521715280%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1521515273%_)))
                                            (_%$%hd1521615277%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1521515273%_))))
                                        (if (gx#stx-null? _%$%tl1521715280%_)
                                            (_%__kont2076320764%_
                                             _%$%hd1521615277%_
                                             _%$%hd1521315267%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g1520815227%_)))))
                                    (if (gx#stx-null? _%$%tl1521415270%_)
                                        (_%__kont2076520766%_
                                         _%$%hd1521315267%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g1520815227%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g1520815227%_)))))))
                 (_%let-head?14396%_
                  (lambda (_%x15144%_)
                    (let* ((_%__stx2079220793%_ _%x15144%_)
                           (_%$%g1514815159%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2079220793%_))))
                      (let ((_%__kont2079520796%_
                             (lambda (_%$%g1515015187%_)
                               (gx#stx-andmap
                                gx#identifier?
                                _%$%g1515015187%_)))
                            (_%__kont2079720798%_
                             (lambda () (gx#identifier? _%x15144%_))))
                        (if (gx#stx-pair? _%__stx2079220793%_)
                            (let ((_%$%e1515115177%_
                                   (gx#syntax-e _%__stx2079220793%_)))
                              (let ((_%$%tl1515315184%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1515115177%_)))
                                    (_%$%hd1515215181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1515115177%_))))
                                (if (gx#identifier? _%$%hd1515215181%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21943_|
                                         _%$%hd1515215181%_)
                                        (_%__kont2079520796%_
                                         _%$%tl1515315184%_)
                                        (_%__kont2079720798%_))
                                    (_%__kont2079720798%_))))
                            (_%__kont2079720798%_))))))
                 (_%let-head14397%_
                  (lambda (_%x15084%_)
                    (let* ((_%__stx2081220813%_ _%x15084%_)
                           (_%$%g1508815099%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2081220813%_))))
                      (let ((_%__kont2081520816%_
                             (lambda (_%$%g1509015127%_) _%$%g1509015127%_))
                            (_%__kont2081720818%_
                             (lambda () (list _%x15084%_))))
                        (if (gx#stx-pair? _%__stx2081220813%_)
                            (let ((_%$%e1509115117%_
                                   (gx#syntax-e _%__stx2081220813%_)))
                              (let ((_%$%tl1509315124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1509115117%_)))
                                    (_%$%hd1509215121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1509115117%_))))
                                (if (gx#identifier? _%$%hd1509215121%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21944_|
                                         _%$%hd1509215121%_)
                                        (_%__kont2081520816%_
                                         _%$%tl1509315124%_)
                                        (_%__kont2081720818%_))
                                    (_%__kont2081720818%_))))
                            (_%__kont2081720818%_)))))))
          (let* ((_%__stx2083220833%_ _%stx14390%_)
                 (_%$%g1440114473%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2083220833%_))))
            (let ((_%__kont2083520836%_
                   (lambda (_%$%g1440315057%_
                            _%$%g1440415059%_
                            _%$%g1440515060%_
                            _%$%g1440615061%_)
                     (cons _%$%g1440615061%_
                           (cons (cons (cons _%$%g1440515060%_
                                             (cons _%$%g1440415059%_ '()))
                                       '())
                                 _%$%g1440315057%_))))
                  (_%__kont2083720838%_
                   (lambda (_%$%g1441914979%_ _%$%g1442014981%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%$%g1442014981%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%$%g1500115004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g1500215007%_)
                    (cons _%$%g1500115004%_ _%$%g1500215007%_))
                  '()
                  _%$%g1441914979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2084120842%_
                   (lambda (_%$%g1444214556%_ _%$%g1444314558%_)
                     (let* ((_%$%g1458914615%_
                             (lambda (_%$%g1459014611%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g1459014611%_)))
                            (_%$%g1458814892%_
                             (lambda (_%$%g1459014619%_)
                               (if (gx#stx-pair/null? _%$%g1459014619%_)
                                   (let ((_g21945_
                                          (gx#syntax-split-splice
                                           _%$%g1459014619%_
                                           '0)))
                                     (begin
                                       (let ((_g21946_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21945_)
                                                    (##values-length _g21945_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21946_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21946_)))
                                       (let ((_%$%target1459314622%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21945_ 0)))
                                             (_%$%tl1459514625%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21945_ 1))))
                                         (if (gx#stx-null? _%$%tl1459514625%_)
                                             (letrec ((_%$%loop1459614628%_
                                                       (lambda (_%$%hd1459414632%_
                                                                _%$%e1460014635%_
                                                                _%$%hd1460114636%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd1459414632%_)
                                                             (let ((_%$%e1459714638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd1459414632%_)))
                       (let ((_%$%lp-hd1459814642%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e1459714638%_)))
                             (_%$%lp-tl1459914645%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e1459714638%_))))
                         (if (gx#stx-pair? _%$%lp-hd1459814642%_)
                             (let ((_%$%e1460414648%_
                                    (gx#syntax-e _%$%lp-hd1459814642%_)))
                               (let ((_%$%hd1460514652%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e1460414648%_)))
                                     (_%$%tl1460614655%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e1460414648%_))))
                                 (if (gx#stx-pair? _%$%tl1460614655%_)
                                     (let ((_%$%e1460714658%_
                                            (gx#syntax-e _%$%tl1460614655%_)))
                                       (let ((_%$%hd1460814662%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e1460714658%_)))
                                             (_%$%tl1460914665%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e1460714658%_))))
                                         (if (gx#stx-null? _%$%tl1460914665%_)
                                             (_%$%loop1459614628%_
                                              _%$%lp-tl1459914645%_
                                              (cons _%$%hd1460814662%_
                                                    _%$%e1460014635%_)
                                              (cons _%$%hd1460514652%_
                                                    _%$%hd1460114636%_))
                                             (_%$%g1458914615%_
                                              _%$%g1459014619%_))))
                                     (_%$%g1458914615%_ _%$%g1459014619%_))))
                             (_%$%g1458914615%_ _%$%g1459014619%_))))
                     (let ((_%$%e1460214668%_ (reverse _%$%e1460014635%_))
                           (_%$%hd1460314670%_ (reverse _%$%hd1460114636%_)))
                       (let* ((_%$%g1469014707%_
                               (lambda (_%$%g1469114703%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g1469114703%_)))
                              (_%$%g1468914880%_
                               (lambda (_%$%g1469114711%_)
                                 (if (gx#stx-pair/null? _%$%g1469114711%_)
                                     (let ((_g21947_
                                            (gx#syntax-split-splice
                                             _%$%g1469114711%_
                                             '0)))
                                       (begin
                                         (let ((_g21948_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g21947_)
                                                      (##values-length
                                                       _g21947_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g21948_ 2)))
                                               (error "Context expects 2 values"
                                                      _g21948_)))
                                         (let ((_%$%target1469314714%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21947_ 0)))
                                               (_%$%tl1469514717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21947_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl1469514717%_)
                                               (letrec ((_%$%loop1469614720%_
                                                         (lambda (_%$%hd1469414724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%$e1470014727%_)
                   (if (gx#stx-pair? _%$%hd1469414724%_)
                       (let ((_%$%e1469714729%_
                              (gx#syntax-e _%$%hd1469414724%_)))
                         (let ((_%$%lp-hd1469814733%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1469714729%_)))
                               (_%$%lp-tl1469914736%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1469714729%_))))
                           (_%$%loop1469614720%_
                            _%$%lp-tl1469914736%_
                            (cons _%$%lp-hd1469814733%_ _%$%$e1470014727%_))))
                       (let* ((_%$%$e1470114739%_ (reverse _%$%$e1470014727%_))
                              (_%$%g1475914776%_
                               (lambda (_%$%g1476014772%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g1476014772%_)))
                              (_%$%g1475814868%_
                               (lambda (_%$%g1476014780%_)
                                 (if (gx#stx-pair/null? _%$%g1476014780%_)
                                     (let ((_g21949_
                                            (gx#syntax-split-splice
                                             _%$%g1476014780%_
                                             '0)))
                                       (begin
                                         (let ((_g21950_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g21949_)
                                                      (##values-length
                                                       _g21949_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g21950_ 2)))
                                               (error "Context expects 2 values"
                                                      _g21950_)))
                                         (let ((_%$%target1476214783%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21949_ 0)))
                                               (_%$%tl1476414786%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21949_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl1476414786%_)
                                               (letrec ((_%$%loop1476514789%_
                                                         (lambda (_%$%hd1476314793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%hd-bind1476914796%_)
                   (if (gx#stx-pair? _%$%hd1476314793%_)
                       (let ((_%$%e1476614798%_
                              (gx#syntax-e _%$%hd1476314793%_)))
                         (let ((_%$%lp-hd1476714802%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e1476614798%_)))
                               (_%$%lp-tl1476814805%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e1476614798%_))))
                           (_%$%loop1476514789%_
                            _%$%lp-tl1476814805%_
                            (cons _%$%lp-hd1476714802%_
                                  _%$%hd-bind1476914796%_))))
                       (let ((_%$%hd-bind1477014808%_
                              (reverse _%$%hd-bind1476914796%_)))
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%$%e1460214668%_
                                        _%$%$e1470114739%_)
                                       (foldr (lambda (_%$%g1482914840%_
                                                       _%$%g1483014843%_
                                                       _%$%g1483114845%_)
                                                (cons (cons (cons _%$%g1483014843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%$%g1482914840%_ '()))
              _%$%g1483114845%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%$%e1460214668%_
                                              _%$%$e1470114739%_))
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (foldr (lambda (_%$%g1483214848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1483314851%_)
                  (cons _%$%g1483214848%_ _%$%g1483314851%_))
                (cons (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _%$%$e1470114739%_
                                     _%$%hd-bind1477014808%_)
                                    (foldr (lambda (_%$%g1483414854%_
                                                    _%$%g1483514857%_
                                                    _%$%g1483614859%_)
                                             (cons (cons _%$%g1483514857%_
                                                         (cons _%$%g1483414854%_
                                                               '()))
                                                   _%$%g1483614859%_))
                                           '()
                                           _%$%$e1470114739%_
                                           _%$%hd-bind1477014808%_))
                                  (foldr (lambda (_%$%g1483714862%_
                                                  _%$%g1483814865%_)
                                           (cons _%$%g1483714862%_
                                                 _%$%g1483814865%_))
                                         '()
                                         _%$%g1444214556%_)))
                      '())
                _%$%$e1470114739%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop1476514789%_
                                                  _%$%target1476214783%_
                                                  '()))
                                               (_%$%g1475914776%_
                                                _%$%g1476014780%_)))))
                                     (_%$%g1475914776%_ _%$%g1476014780%_)))))
                         (_%$%g1475814868%_
                          (gx#stx-map
                           _%let-head14397%_
                           (foldr (lambda (_%$%g1487114874%_ _%$%g1487214877%_)
                                    (cons _%$%g1487114874%_ _%$%g1487214877%_))
                                  '()
                                  _%$%hd1460314670%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop1469614720%_
                                                  _%$%target1469314714%_
                                                  '()))
                                               (_%$%g1469014707%_
                                                _%$%g1469114711%_)))))
                                     (_%$%g1469014707%_ _%$%g1469114711%_)))))
                         (_%$%g1468914880%_
                          (gx#gentemps
                           (foldr (lambda (_%$%g1488314886%_ _%$%g1488414889%_)
                                    (cons _%$%g1488314886%_ _%$%g1488414889%_))
                                  '()
                                  _%$%hd1460314670%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop1459614628%_
                                                _%$%target1459314622%_
                                                '()
                                                '()))
                                             (_%$%g1458914615%_
                                              _%$%g1459014619%_)))))
                                   (_%$%g1458914615%_ _%$%g1459014619%_)))))
                       (_%$%g1458814892%_
                        (gx#stx-map
                         _%let-bind14395%_
                         (foldr (lambda (_%$%g1489514898%_ _%$%g1489614901%_)
                                  (cons _%$%g1489514898%_ _%$%g1489614901%_))
                                '()
                                _%$%g1444314558%_)))))))
              (let* ((_%__match2092920930%_
                      (lambda (_%$%e1444414480%_
                               _%$%hd1444514484%_
                               _%$%tl1444614487%_
                               _%$%e1444714490%_
                               _%$%hd1444814494%_
                               _%$%tl1444914497%_
                               _%__splice2084320844%_
                               _%$%target1445014500%_
                               _%$%tl1445214503%_)
                        (letrec ((_%$%loop1445314506%_
                                  (lambda (_%$%hd1445114510%_
                                           _%$%bind1445714513%_)
                                    (if (gx#stx-pair? _%$%hd1445114510%_)
                                        (let ((_%$%e1445414515%_
                                               (gx#syntax-e
                                                _%$%hd1445114510%_)))
                                          (let ((_%$%lp-tl1445614522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1445414515%_)))
                                                (_%$%lp-hd1445514519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1445414515%_))))
                                            (_%$%loop1445314506%_
                                             _%$%lp-tl1445614522%_
                                             (cons _%$%lp-hd1445514519%_
                                                   _%$%bind1445714513%_))))
                                        (let ((_%$%bind1445814525%_
                                               (reverse _%$%bind1445714513%_)))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1444914497%_)
                                              (let ((_%__splice2084520846%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl1444914497%_
                                                      '0)))
                                                (let ((_%$%tl1446114531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2084520846%_
                                                          '1)))
                                                      (_%$%target1445914528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2084520846%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1446114531%_)
                                                      (letrec ((_%$%loop1446214534%_
                                                                (lambda (_%$%hd1446014538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%body1446614541%_)
                          (if (gx#stx-pair? _%$%hd1446014538%_)
                              (let ((_%$%e1446314543%_
                                     (gx#syntax-e _%$%hd1446014538%_)))
                                (let ((_%$%lp-tl1446514550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1446314543%_)))
                                      (_%$%lp-hd1446414547%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1446314543%_))))
                                  (_%$%loop1446214534%_
                                   _%$%lp-tl1446514550%_
                                   (cons _%$%lp-hd1446414547%_
                                         _%$%body1446614541%_))))
                              (let ((_%$%body1446714553%_
                                     (reverse _%$%body1446614541%_)))
                                (let ((_%$%g1444214556%_ _%$%body1446714553%_)
                                      (_%$%g1444314558%_ _%$%bind1445814525%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14393%_
                                       (foldr (lambda (_%$%g1458014583%_
                                                       _%$%g1458114586%_)
                                                (cons _%$%g1458014583%_
                                                      _%$%g1458114586%_))
                                              '()
                                              _%$%g1444314558%_))
                                      (_%__kont2084120842%_
                                       _%$%g1444214556%_
                                       _%$%g1444314558%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1440114473%_)))))))))
                (_%$%loop1446214534%_ _%$%target1445914528%_ '()))
              (let () (declare (not safe)) (_%$%g1440114473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1440114473%_))))))))
                          (_%$%loop1445314506%_ _%$%target1445014500%_ '()))))
                     (_%__match2090920910%_
                      (lambda (_%$%e1442114911%_
                               _%$%hd1442214915%_
                               _%$%tl1442314918%_
                               _%$%e1442414921%_
                               _%$%hd1442514925%_
                               _%$%tl1442614928%_
                               _%$%e1442714931%_
                               _%$%hd1442814935%_
                               _%$%tl1442914938%_
                               _%$%e1443014941%_
                               _%$%hd1443114945%_
                               _%$%tl1443214948%_
                               _%__splice2083920840%_
                               _%$%target1443314951%_
                               _%$%tl1443514954%_)
                        (letrec ((_%$%loop1443614957%_
                                  (lambda (_%$%hd1443414961%_
                                           _%$%body1444014964%_)
                                    (if (gx#stx-pair? _%$%hd1443414961%_)
                                        (let ((_%$%e1443714966%_
                                               (gx#syntax-e
                                                _%$%hd1443414961%_)))
                                          (let ((_%$%lp-tl1443914973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e1443714966%_)))
                                                (_%$%lp-hd1443814970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e1443714966%_))))
                                            (_%$%loop1443614957%_
                                             _%$%lp-tl1443914973%_
                                             (cons _%$%lp-hd1443814970%_
                                                   _%$%body1444014964%_))))
                                        (let ((_%$%body1444114976%_
                                               (reverse _%$%body1444014964%_)))
                                          (_%__kont2083720838%_
                                           _%$%body1444114976%_
                                           _%$%hd1443114945%_))))))
                          (_%$%loop1443614957%_ _%$%target1443314951%_ '()))))
                     (_%__match2087320874%_
                      (lambda (_%$%e1440715017%_
                               _%$%hd1440815021%_
                               _%$%tl1440915024%_
                               _%$%e1441015027%_
                               _%$%hd1441115031%_
                               _%$%tl1441215034%_
                               _%$%e1441315037%_
                               _%$%hd1441415041%_
                               _%$%tl1441515044%_
                               _%$%e1441615047%_
                               _%$%hd1441715051%_
                               _%$%tl1441815054%_)
                        (let ((_%$%g1440315057%_ _%$%tl1441215034%_)
                              (_%$%g1440415059%_ _%$%hd1441715051%_)
                              (_%$%g1440515060%_ _%$%hd1441415041%_)
                              (_%$%g1440615061%_ _%$%hd1440815021%_))
                          (if (_%let-head?14396%_ _%$%g1440515060%_)
                              (_%__kont2083520836%_
                               _%$%g1440315057%_
                               _%$%g1440415059%_
                               _%$%g1440515060%_
                               _%$%g1440615061%_)
                              (if (gx#stx-pair? _%$%hd1441415041%_)
                                  (let ((_%$%e1443014941%_
                                         (gx#syntax-e _%$%hd1441415041%_)))
                                    (let ((_%$%tl1443214948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e1443014941%_)))
                                          (_%$%hd1443114945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e1443014941%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%hd1441115031%_)
                                          (let ((_%__splice2084320844%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd1441115031%_
                                                  '0)))
                                            (let ((_%$%tl1445214503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084320844%_
                                                      '1)))
                                                  (_%$%target1445014500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2084320844%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl1445214503%_)
                                                  (_%__match2092920930%_
                                                   _%$%e1440715017%_
                                                   _%$%hd1440815021%_
                                                   _%$%tl1440915024%_
                                                   _%$%e1441015027%_
                                                   _%$%hd1441115031%_
                                                   _%$%tl1441215034%_
                                                   _%__splice2084320844%_
                                                   _%$%target1445014500%_
                                                   _%$%tl1445214503%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1440114473%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g1440114473%_)))))
                                  (if (gx#stx-pair/null? _%$%hd1441115031%_)
                                      (let ((_%__splice2084320844%_
                                             (gx#syntax-split-splice->vector
                                              _%$%hd1441115031%_
                                              '0)))
                                        (let ((_%$%tl1445214503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2084320844%_
                                                  '1)))
                                              (_%$%target1445014500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2084320844%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl1445214503%_)
                                              (_%__match2092920930%_
                                               _%$%e1440715017%_
                                               _%$%hd1440815021%_
                                               _%$%tl1440915024%_
                                               _%$%e1441015027%_
                                               _%$%hd1441115031%_
                                               _%$%tl1441215034%_
                                               _%__splice2084320844%_
                                               _%$%target1445014500%_
                                               _%$%tl1445214503%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1440114473%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1440114473%_)))))))))
                (if (gx#stx-pair? _%__stx2083220833%_)
                    (let ((_%$%e1440715017%_
                           (gx#syntax-e _%__stx2083220833%_)))
                      (let ((_%$%tl1440915024%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e1440715017%_)))
                            (_%$%hd1440815021%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e1440715017%_))))
                        (if (gx#stx-pair? _%$%tl1440915024%_)
                            (let ((_%$%e1441015027%_
                                   (gx#syntax-e _%$%tl1440915024%_)))
                              (let ((_%$%tl1441215034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e1441015027%_)))
                                    (_%$%hd1441115031%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e1441015027%_))))
                                (if (gx#stx-pair? _%$%hd1441115031%_)
                                    (let ((_%$%e1441315037%_
                                           (gx#syntax-e _%$%hd1441115031%_)))
                                      (let ((_%$%tl1441515044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e1441315037%_)))
                                            (_%$%hd1441415041%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e1441315037%_))))
                                        (if (gx#stx-pair? _%$%tl1441515044%_)
                                            (let ((_%$%e1441615047%_
                                                   (gx#syntax-e
                                                    _%$%tl1441515044%_)))
                                              (let ((_%$%tl1441815054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e1441615047%_)))
                                                    (_%$%hd1441715051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e1441615047%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl1441815054%_)
                                                    (_%__match2087320874%_
                                                     _%$%e1440715017%_
                                                     _%$%hd1440815021%_
                                                     _%$%tl1440915024%_
                                                     _%$%e1441015027%_
                                                     _%$%hd1441115031%_
                                                     _%$%tl1441215034%_
                                                     _%$%e1441315037%_
                                                     _%$%hd1441415041%_
                                                     _%$%tl1441515044%_
                                                     _%$%e1441615047%_
                                                     _%$%hd1441715051%_
                                                     _%$%tl1441815054%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1441415041%_)
                                                        (let ((_%$%e1443014941%_
                                                               (gx#syntax-e
                                                                _%$%hd1441415041%_)))
                                                          (let ((_%$%tl1443214948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1443014941%_)))
                        (_%$%hd1443114945%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1443014941%_))))
                    (if (gx#stx-pair/null? _%$%hd1441115031%_)
                        (let ((_%__splice2084320844%_
                               (gx#syntax-split-splice->vector
                                _%$%hd1441115031%_
                                '0)))
                          (let ((_%$%tl1445214503%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2084320844%_ '1)))
                                (_%$%target1445014500%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2084320844%_ '0))))
                            (if (gx#stx-null? _%$%tl1445214503%_)
                                (_%__match2092920930%_
                                 _%$%e1440715017%_
                                 _%$%hd1440815021%_
                                 _%$%tl1440915024%_
                                 _%$%e1441015027%_
                                 _%$%hd1441115031%_
                                 _%$%tl1441215034%_
                                 _%__splice2084320844%_
                                 _%$%target1445014500%_
                                 _%$%tl1445214503%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g1440114473%_)))))
                        (let () (declare (not safe)) (_%$%g1440114473%_)))))
                (if (gx#stx-pair/null? _%$%hd1441115031%_)
                    (let ((_%__splice2084320844%_
                           (gx#syntax-split-splice->vector
                            _%$%hd1441115031%_
                            '0)))
                      (let ((_%$%tl1445214503%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2084320844%_ '1)))
                            (_%$%target1445014500%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2084320844%_ '0))))
                        (if (gx#stx-null? _%$%tl1445214503%_)
                            (_%__match2092920930%_
                             _%$%e1440715017%_
                             _%$%hd1440815021%_
                             _%$%tl1440915024%_
                             _%$%e1441015027%_
                             _%$%hd1441115031%_
                             _%$%tl1441215034%_
                             _%__splice2084320844%_
                             _%$%target1445014500%_
                             _%$%tl1445214503%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g1440114473%_)))))
                    (let () (declare (not safe)) (_%$%g1440114473%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair?
                                                 _%$%hd1441415041%_)
                                                (let ((_%$%e1443014941%_
                                                       (gx#syntax-e
                                                        _%$%hd1441415041%_)))
                                                  (let ((_%$%tl1443214948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e1443014941%_)))
                                                        (_%$%hd1443114945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e1443014941%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl1443214948%_)
                                                        (if (gx#stx-null?
                                                             _%$%tl1441515044%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl1441215034%_)
                        (let ((_%__splice2083920840%_
                               (gx#syntax-split-splice->vector
                                _%$%tl1441215034%_
                                '0)))
                          (let ((_%$%tl1443514954%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2083920840%_ '1)))
                                (_%$%target1443314951%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2083920840%_ '0))))
                            (if (gx#stx-null? _%$%tl1443514954%_)
                                (_%__match2090920910%_
                                 _%$%e1440715017%_
                                 _%$%hd1440815021%_
                                 _%$%tl1440915024%_
                                 _%$%e1441015027%_
                                 _%$%hd1441115031%_
                                 _%$%tl1441215034%_
                                 _%$%e1441315037%_
                                 _%$%hd1441415041%_
                                 _%$%tl1441515044%_
                                 _%$%e1443014941%_
                                 _%$%hd1443114945%_
                                 _%$%tl1443214948%_
                                 _%__splice2083920840%_
                                 _%$%target1443314951%_
                                 _%$%tl1443514954%_)
                                (if (gx#stx-pair/null? _%$%hd1441115031%_)
                                    (let ((_%__splice2084320844%_
                                           (gx#syntax-split-splice->vector
                                            _%$%hd1441115031%_
                                            '0)))
                                      (let ((_%$%tl1445214503%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2084320844%_
                                                '1)))
                                            (_%$%target1445014500%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2084320844%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl1445214503%_)
                                            (_%__match2092920930%_
                                             _%$%e1440715017%_
                                             _%$%hd1440815021%_
                                             _%$%tl1440915024%_
                                             _%$%e1441015027%_
                                             _%$%hd1441115031%_
                                             _%$%tl1441215034%_
                                             _%__splice2084320844%_
                                             _%$%target1445014500%_
                                             _%$%tl1445214503%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g1440114473%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g1440114473%_))))))
                        (if (gx#stx-pair/null? _%$%hd1441115031%_)
                            (let ((_%__splice2084320844%_
                                   (gx#syntax-split-splice->vector
                                    _%$%hd1441115031%_
                                    '0)))
                              (let ((_%$%tl1445214503%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2084320844%_
                                        '1)))
                                    (_%$%target1445014500%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2084320844%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl1445214503%_)
                                    (_%__match2092920930%_
                                     _%$%e1440715017%_
                                     _%$%hd1440815021%_
                                     _%$%tl1440915024%_
                                     _%$%e1441015027%_
                                     _%$%hd1441115031%_
                                     _%$%tl1441215034%_
                                     _%__splice2084320844%_
                                     _%$%target1445014500%_
                                     _%$%tl1445214503%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g1440114473%_)))))
                            (let () (declare (not safe)) (_%$%g1440114473%_))))
                    (if (gx#stx-pair/null? _%$%hd1441115031%_)
                        (let ((_%__splice2084320844%_
                               (gx#syntax-split-splice->vector
                                _%$%hd1441115031%_
                                '0)))
                          (let ((_%$%tl1445214503%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2084320844%_ '1)))
                                (_%$%target1445014500%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2084320844%_ '0))))
                            (if (gx#stx-null? _%$%tl1445214503%_)
                                (_%__match2092920930%_
                                 _%$%e1440715017%_
                                 _%$%hd1440815021%_
                                 _%$%tl1440915024%_
                                 _%$%e1441015027%_
                                 _%$%hd1441115031%_
                                 _%$%tl1441215034%_
                                 _%__splice2084320844%_
                                 _%$%target1445014500%_
                                 _%$%tl1445214503%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g1440114473%_)))))
                        (let () (declare (not safe)) (_%$%g1440114473%_))))
                (if (gx#stx-pair/null? _%$%hd1441115031%_)
                    (let ((_%__splice2084320844%_
                           (gx#syntax-split-splice->vector
                            _%$%hd1441115031%_
                            '0)))
                      (let ((_%$%tl1445214503%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2084320844%_ '1)))
                            (_%$%target1445014500%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2084320844%_ '0))))
                        (if (gx#stx-null? _%$%tl1445214503%_)
                            (_%__match2092920930%_
                             _%$%e1440715017%_
                             _%$%hd1440815021%_
                             _%$%tl1440915024%_
                             _%$%e1441015027%_
                             _%$%hd1441115031%_
                             _%$%tl1441215034%_
                             _%__splice2084320844%_
                             _%$%target1445014500%_
                             _%$%tl1445214503%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g1440114473%_)))))
                    (let () (declare (not safe)) (_%$%g1440114473%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%hd1441115031%_)
                                                    (let ((_%__splice2084320844%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%hd1441115031%_
                                                            '0)))
                                                      (let ((_%$%tl1445214503%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2084320844%_ '1)))
                    (_%$%target1445014500%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2084320844%_ '0))))
                (if (gx#stx-null? _%$%tl1445214503%_)
                    (_%__match2092920930%_
                     _%$%e1440715017%_
                     _%$%hd1440815021%_
                     _%$%tl1440915024%_
                     _%$%e1441015027%_
                     _%$%hd1441115031%_
                     _%$%tl1441215034%_
                     _%__splice2084320844%_
                     _%$%target1445014500%_
                     _%$%tl1445214503%_)
                    (let () (declare (not safe)) (_%$%g1440114473%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g1440114473%_)))))))
                                    (if (gx#stx-pair/null? _%$%hd1441115031%_)
                                        (let ((_%__splice2084320844%_
                                               (gx#syntax-split-splice->vector
                                                _%$%hd1441115031%_
                                                '0)))
                                          (let ((_%$%tl1445214503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2084320844%_
                                                    '1)))
                                                (_%$%target1445014500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2084320844%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl1445214503%_)
                                                (_%__match2092920930%_
                                                 _%$%e1440715017%_
                                                 _%$%hd1440815021%_
                                                 _%$%tl1440915024%_
                                                 _%$%e1441015027%_
                                                 _%$%hd1441115031%_
                                                 _%$%tl1441215034%_
                                                 _%__splice2084320844%_
                                                 _%$%target1445014500%_
                                                 _%$%tl1445214503%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g1440114473%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g1440114473%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g1440114473%_)))))
                    (let () (declare (not safe)) (_%$%g1440114473%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15419%_)
        (let* ((_%__stx2093220933%_ _%$stx15419%_)
               (_%$%g1542515476%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2093220933%_))))
          (let ((_%__kont2093520936%_ (lambda () '#t))
                (_%__kont2093720938%_
                 (lambda (_%$%g1543315630%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g1564615649%_
                                               _%$%g1564715652%_)
                                        (cons _%$%g1564615649%_
                                              _%$%g1564715652%_))
                                      '()
                                      _%$%g1543315630%_)))))
                (_%__kont2094120942%_
                 (lambda (_%$%g1544915541%_
                          _%$%g1545015543%_
                          _%$%g1545115544%_
                          _%$%g1545215545%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%$%g1545115544%_ '())
                               (cons (cons _%$%g1545215545%_
                                           (cons _%$%g1545015543%_
                                                 (foldr (lambda (_%$%g1556615569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g1556715572%_)
                  (cons _%$%g1556615569%_ _%$%g1556715572%_))
                '()
                _%$%g1544915541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2100921010%_
                    (lambda (_%$%e1545315483%_
                             _%$%hd1545415487%_
                             _%$%tl1545515490%_
                             _%$%e1545615493%_
                             _%$%hd1545715497%_
                             _%$%tl1545815500%_
                             _%$%e1545915503%_
                             _%$%hd1546015507%_
                             _%$%tl1546115510%_
                             _%__splice2094320944%_
                             _%$%target1546215513%_
                             _%$%tl1546415516%_)
                      (letrec ((_%$%loop1546515519%_
                                (lambda (_%$%hd1546315523%_
                                         _%$%body1546915526%_)
                                  (if (gx#stx-pair? _%$%hd1546315523%_)
                                      (let ((_%$%e1546615528%_
                                             (gx#syntax-e _%$%hd1546315523%_)))
                                        (let ((_%$%lp-tl1546815535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1546615528%_)))
                                              (_%$%lp-hd1546715532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1546615528%_))))
                                          (_%$%loop1546515519%_
                                           _%$%lp-tl1546815535%_
                                           (cons _%$%lp-hd1546715532%_
                                                 _%$%body1546915526%_))))
                                      (let ((_%$%body1547015538%_
                                             (reverse _%$%body1546915526%_)))
                                        (_%__kont2094120942%_
                                         _%$%body1547015538%_
                                         _%$%tl1546115510%_
                                         _%$%hd1546015507%_
                                         _%$%hd1545415487%_))))))
                        (_%$%loop1546515519%_ _%$%target1546215513%_ '()))))
                   (_%__match2098320984%_
                    (lambda (_%$%e1543415582%_
                             _%$%hd1543515586%_
                             _%$%tl1543615589%_
                             _%$%e1543715592%_
                             _%$%hd1543815596%_
                             _%$%tl1543915599%_
                             _%__splice2093920940%_
                             _%$%target1544015602%_
                             _%$%tl1544215605%_)
                      (letrec ((_%$%loop1544315608%_
                                (lambda (_%$%hd1544115612%_
                                         _%$%body1544715615%_)
                                  (if (gx#stx-pair? _%$%hd1544115612%_)
                                      (let ((_%$%e1544415617%_
                                             (gx#syntax-e _%$%hd1544115612%_)))
                                        (let ((_%$%lp-tl1544615624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1544415617%_)))
                                              (_%$%lp-hd1544515621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1544415617%_))))
                                          (_%$%loop1544315608%_
                                           _%$%lp-tl1544615624%_
                                           (cons _%$%lp-hd1544515621%_
                                                 _%$%body1544715615%_))))
                                      (let ((_%$%body1544815627%_
                                             (reverse _%$%body1544715615%_)))
                                        (_%__kont2093720938%_
                                         _%$%body1544815627%_))))))
                        (_%$%loop1544315608%_ _%$%target1544015602%_ '())))))
              (if (gx#stx-pair? _%__stx2093220933%_)
                  (let ((_%$%e1542715662%_ (gx#syntax-e _%__stx2093220933%_)))
                    (let ((_%$%tl1542915669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1542715662%_)))
                          (_%$%hd1542815666%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1542715662%_))))
                      (if (gx#stx-pair? _%$%tl1542915669%_)
                          (let ((_%$%e1543015672%_
                                 (gx#syntax-e _%$%tl1542915669%_)))
                            (let ((_%$%tl1543215679%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1543015672%_)))
                                  (_%$%hd1543115676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1543015672%_))))
                              (if (gx#stx-null? _%$%hd1543115676%_)
                                  (if (gx#stx-null? _%$%tl1543215679%_)
                                      (_%__kont2093520936%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl1543215679%_)
                                          (let ((_%__splice2093920940%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl1543215679%_
                                                  '0)))
                                            (let ((_%$%tl1544215605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2093920940%_
                                                      '1)))
                                                  (_%$%target1544015602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2093920940%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl1544215605%_)
                                                  (_%__match2098320984%_
                                                   _%$%e1542715662%_
                                                   _%$%hd1542815666%_
                                                   _%$%tl1542915669%_
                                                   _%$%e1543015672%_
                                                   _%$%hd1543115676%_
                                                   _%$%tl1543215679%_
                                                   _%__splice2093920940%_
                                                   _%$%target1544015602%_
                                                   _%$%tl1544215605%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1542515476%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g1542515476%_))))
                                  (if (gx#stx-pair? _%$%hd1543115676%_)
                                      (let ((_%$%e1545915503%_
                                             (gx#syntax-e _%$%hd1543115676%_)))
                                        (let ((_%$%tl1546115510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1545915503%_)))
                                              (_%$%hd1546015507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1545915503%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl1543215679%_)
                                              (let ((_%__splice2094320944%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl1543215679%_
                                                      '0)))
                                                (let ((_%$%tl1546415516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2094320944%_
                                                          '1)))
                                                      (_%$%target1546215513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2094320944%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1546415516%_)
                                                      (_%__match2100921010%_
                                                       _%$%e1542715662%_
                                                       _%$%hd1542815666%_
                                                       _%$%tl1542915669%_
                                                       _%$%e1543015672%_
                                                       _%$%hd1543115676%_
                                                       _%$%tl1543215679%_
                                                       _%$%e1545915503%_
                                                       _%$%hd1546015507%_
                                                       _%$%tl1546115510%_
                                                       _%__splice2094320944%_
                                                       _%$%target1546215513%_
                                                       _%$%tl1546415516%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g1542515476%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1542515476%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1542515476%_))))))
                          (let () (declare (not safe)) (_%$%g1542515476%_)))))
                  (let () (declare (not safe)) (_%$%g1542515476%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15692%_)
        (let* ((_%__stx2101221013%_ _%$stx15692%_)
               (_%$%g1570315781%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2101221013%_))))
          (let ((_%__kont2101521016%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2101721018%_
                 (lambda (_%$%g1570816112%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%$%g1570816112%_ '()))))
                (_%__kont2101921020%_
                 (lambda (_%$%g1571816060%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%$%g1571816060%_ '()))))
                (_%__kont2102121022%_
                 (lambda (_%$%g1572816007%_) _%$%g1572816007%_))
                (_%__kont2102321024%_
                 (lambda (_%$%g1573915949%_ _%$%g1574015951%_)
                   _%$%g1574015951%_))
                (_%__kont2102521026%_
                 (lambda (_%$%g1575015891%_
                          _%$%g1575115893%_
                          _%$%g1575215894%_
                          _%$%g1575315895%_)
                   (cons (gx#datum->syntax '#f 'append)
                         (cons _%$%g1575215894%_
                               (cons (cons _%$%g1575315895%_ _%$%g1575015891%_)
                                     '())))))
                (_%__kont2102721028%_
                 (lambda (_%$%g1576315837%_
                          _%$%g1576415839%_
                          _%$%g1576515840%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%$%g1576415839%_
                               (cons (cons _%$%g1576515840%_ _%$%g1576315837%_)
                                     '())))))
                (_%__kont2102921030%_
                 (lambda (_%$%g1577215798%_) _%$%g1577215798%_)))
            (let* ((_%__match2115121152%_
                    (lambda (_%$%e1575415861%_
                             _%$%hd1575515865%_
                             _%$%tl1575615868%_
                             _%$%e1575715871%_
                             _%$%hd1575815875%_
                             _%$%tl1575915878%_
                             _%$%e1576015881%_
                             _%$%hd1576115885%_
                             _%$%tl1576215888%_)
                      (let ((_%$%g1575015891%_ _%$%tl1576215888%_)
                            (_%$%g1575115893%_ _%$%hd1576115885%_)
                            (_%$%g1575215894%_ _%$%hd1575815875%_)
                            (_%$%g1575315895%_ _%$%hd1575515865%_))
                        (if (gx#ellipsis? _%$%g1575115893%_)
                            (_%__kont2102521026%_
                             _%$%g1575015891%_
                             _%$%g1575115893%_
                             _%$%g1575215894%_
                             _%$%g1575315895%_)
                            (_%__kont2102721028%_
                             _%$%tl1575915878%_
                             _%$%hd1575815875%_
                             _%$%hd1575515865%_)))))
                   (_%__match2113321134%_
                    (lambda (_%$%e1574115919%_
                             _%$%hd1574215923%_
                             _%$%tl1574315926%_
                             _%$%e1574415929%_
                             _%$%hd1574515933%_
                             _%$%tl1574615936%_
                             _%$%e1574715939%_
                             _%$%hd1574815943%_
                             _%$%tl1574915946%_)
                      (let ((_%$%g1573915949%_ _%$%hd1574815943%_)
                            (_%$%g1574015951%_ _%$%hd1574515933%_))
                        (if (gx#ellipsis? _%$%g1573915949%_)
                            (_%__kont2102321024%_
                             _%$%g1573915949%_
                             _%$%g1574015951%_)
                            (_%__match2115121152%_
                             _%$%e1574115919%_
                             _%$%hd1574215923%_
                             _%$%tl1574315926%_
                             _%$%e1574415929%_
                             _%$%hd1574515933%_
                             _%$%tl1574615936%_
                             _%$%e1574715939%_
                             _%$%hd1574815943%_
                             _%$%tl1574915946%_))))))
              (if (gx#stx-pair? _%__stx2101221013%_)
                  (let ((_%$%e1570516134%_ (gx#syntax-e _%__stx2101221013%_)))
                    (let ((_%$%tl1570716141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1570516134%_)))
                          (_%$%hd1570616138%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1570516134%_))))
                      (if (gx#stx-null? _%$%tl1570716141%_)
                          (_%__kont2101521016%_)
                          (if (gx#stx-pair? _%$%tl1570716141%_)
                              (let ((_%$%e1571216092%_
                                     (gx#syntax-e _%$%tl1570716141%_)))
                                (let ((_%$%tl1571416099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1571216092%_)))
                                      (_%$%hd1571316096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1571216092%_))))
                                  (if (gx#identifier? _%$%hd1571316096%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21951_|
                                           _%$%hd1571316096%_)
                                          (if (gx#stx-pair? _%$%tl1571416099%_)
                                              (let ((_%$%e1571516102%_
                                                     (gx#syntax-e
                                                      _%$%tl1571416099%_)))
                                                (let ((_%$%tl1571716109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1571516102%_)))
                                                      (_%$%hd1571616106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1571516102%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1571716109%_)
                                                      (_%__kont2101721018%_
                                                       _%$%hd1571616106%_)
                                                      (_%__match2115121152%_
                                                       _%$%e1570516134%_
                                                       _%$%hd1570616138%_
                                                       _%$%tl1570716141%_
                                                       _%$%e1571216092%_
                                                       _%$%hd1571316096%_
                                                       _%$%tl1571416099%_
                                                       _%$%e1571516102%_
                                                       _%$%hd1571616106%_
                                                       _%$%tl1571716109%_))))
                                              (_%__kont2102721028%_
                                               _%$%tl1571416099%_
                                               _%$%hd1571316096%_
                                               _%$%hd1570616138%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21952_|
                                               _%$%hd1571316096%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl1571416099%_)
                                                  (let ((_%$%e1572516050%_
                                                         (gx#syntax-e
                                                          _%$%tl1571416099%_)))
                                                    (let ((_%$%tl1572716057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1572516050%_)))
                                                          (_%$%hd1572616054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1572516050%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1572716057%_)
                                                          (_%__kont2101921020%_
                                                           _%$%hd1572616054%_)
                                                          (_%__match2115121152%_
                                                           _%$%e1570516134%_
                                                           _%$%hd1570616138%_
                                                           _%$%tl1570716141%_
                                                           _%$%e1571216092%_
                                                           _%$%hd1571316096%_
                                                           _%$%tl1571416099%_
                                                           _%$%e1572516050%_
                                                           _%$%hd1572616054%_
                                                           _%$%tl1572716057%_))))
                                                  (_%__kont2102721028%_
                                                   _%$%tl1571416099%_
                                                   _%$%hd1571316096%_
                                                   _%$%hd1570616138%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl1571416099%_)
                                                  (let ((_%$%e1574715939%_
                                                         (gx#syntax-e
                                                          _%$%tl1571416099%_)))
                                                    (let ((_%$%tl1574915946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e1574715939%_)))
                                                          (_%$%hd1574815943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e1574715939%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl1574915946%_)
                                                          (_%__match2113321134%_
                                                           _%$%e1570516134%_
                                                           _%$%hd1570616138%_
                                                           _%$%tl1570716141%_
                                                           _%$%e1571216092%_
                                                           _%$%hd1571316096%_
                                                           _%$%tl1571416099%_
                                                           _%$%e1574715939%_
                                                           _%$%hd1574815943%_
                                                           _%$%tl1574915946%_)
                                                          (_%__match2115121152%_
                                                           _%$%e1570516134%_
                                                           _%$%hd1570616138%_
                                                           _%$%tl1570716141%_
                                                           _%$%e1571216092%_
                                                           _%$%hd1571316096%_
                                                           _%$%tl1571416099%_
                                                           _%$%e1574715939%_
                                                           _%$%hd1574815943%_
                                                           _%$%tl1574915946%_))))
                                                  (_%__kont2102721028%_
                                                   _%$%tl1571416099%_
                                                   _%$%hd1571316096%_
                                                   _%$%hd1570616138%_))))
                                      (if (gx#stx-datum? _%$%hd1571316096%_)
                                          (let ((_%$%e1573515993%_
                                                 (gx#stx-e
                                                  _%$%hd1571316096%_)))
                                            (if (equal? _%$%e1573515993%_ '::)
                                                (if (gx#stx-pair?
                                                     _%$%tl1571416099%_)
                                                    (let ((_%$%e1573615997%_
                                                           (gx#syntax-e
                                                            _%$%tl1571416099%_)))
                                                      (let ((_%$%tl1573816004%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e1573615997%_)))
                    (_%$%hd1573716001%_
                     (let () (declare (not safe)) (##car _%$%e1573615997%_))))
                (if (gx#stx-null? _%$%tl1573816004%_)
                    (_%__kont2102121022%_ _%$%hd1573716001%_)
                    (_%__match2115121152%_
                     _%$%e1570516134%_
                     _%$%hd1570616138%_
                     _%$%tl1570716141%_
                     _%$%e1571216092%_
                     _%$%hd1571316096%_
                     _%$%tl1571416099%_
                     _%$%e1573615997%_
                     _%$%hd1573716001%_
                     _%$%tl1573816004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2102721028%_
                                                     _%$%tl1571416099%_
                                                     _%$%hd1571316096%_
                                                     _%$%hd1570616138%_))
                                                (if (gx#stx-pair?
                                                     _%$%tl1571416099%_)
                                                    (let ((_%$%e1574715939%_
                                                           (gx#syntax-e
                                                            _%$%tl1571416099%_)))
                                                      (let ((_%$%tl1574915946%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e1574715939%_)))
                    (_%$%hd1574815943%_
                     (let () (declare (not safe)) (##car _%$%e1574715939%_))))
                (if (gx#stx-null? _%$%tl1574915946%_)
                    (_%__match2113321134%_
                     _%$%e1570516134%_
                     _%$%hd1570616138%_
                     _%$%tl1570716141%_
                     _%$%e1571216092%_
                     _%$%hd1571316096%_
                     _%$%tl1571416099%_
                     _%$%e1574715939%_
                     _%$%hd1574815943%_
                     _%$%tl1574915946%_)
                    (_%__match2115121152%_
                     _%$%e1570516134%_
                     _%$%hd1570616138%_
                     _%$%tl1570716141%_
                     _%$%e1571216092%_
                     _%$%hd1571316096%_
                     _%$%tl1571416099%_
                     _%$%e1574715939%_
                     _%$%hd1574815943%_
                     _%$%tl1574915946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2102721028%_
                                                     _%$%tl1571416099%_
                                                     _%$%hd1571316096%_
                                                     _%$%hd1570616138%_))))
                                          (if (gx#stx-pair? _%$%tl1571416099%_)
                                              (let ((_%$%e1574715939%_
                                                     (gx#syntax-e
                                                      _%$%tl1571416099%_)))
                                                (let ((_%$%tl1574915946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e1574715939%_)))
                                                      (_%$%hd1574815943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e1574715939%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl1574915946%_)
                                                      (_%__match2113321134%_
                                                       _%$%e1570516134%_
                                                       _%$%hd1570616138%_
                                                       _%$%tl1570716141%_
                                                       _%$%e1571216092%_
                                                       _%$%hd1571316096%_
                                                       _%$%tl1571416099%_
                                                       _%$%e1574715939%_
                                                       _%$%hd1574815943%_
                                                       _%$%tl1574915946%_)
                                                      (_%__match2115121152%_
                                                       _%$%e1570516134%_
                                                       _%$%hd1570616138%_
                                                       _%$%tl1570716141%_
                                                       _%$%e1571216092%_
                                                       _%$%hd1571316096%_
                                                       _%$%tl1571416099%_
                                                       _%$%e1574715939%_
                                                       _%$%hd1574815943%_
                                                       _%$%tl1574915946%_))))
                                              (_%__kont2102721028%_
                                               _%$%tl1571416099%_
                                               _%$%hd1571316096%_
                                               _%$%hd1570616138%_))))))
                              (_%__kont2102921030%_ _%$%tl1570716141%_)))))
                  (let () (declare (not safe)) (_%$%g1570315781%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16152%_)
        (let* ((_%__stx2117221173%_ _%$stx16152%_)
               (_%$%g1615816192%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2117221173%_))))
          (let ((_%__kont2117521176%_
                 (lambda (_%$%g1616016324%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%$%g1616016324%_ '()))))
                (_%__kont2117721178%_
                 (lambda (_%$%g1616716280%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%$%g1616716280%_ '()))))
                (_%__kont2117921180%_
                 (lambda (_%$%g1618016219%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%$%g1618016219%_ '())))
                               '())))))
            (let ((_%__match2119521196%_
                   (lambda (_%$%e1616116304%_
                            _%$%hd1616216308%_
                            _%$%tl1616316311%_
                            _%$%e1616416314%_
                            _%$%hd1616516318%_
                            _%$%tl1616616321%_)
                     (let ((_%$%g1616016324%_ _%$%hd1616516318%_))
                       (if (gx#stx-datum? _%$%g1616016324%_)
                           (_%__kont2117521176%_ _%$%g1616016324%_)
                           (if (gx#stx-pair? _%$%hd1616516318%_)
                               (let ((_%$%e1617416260%_
                                      (gx#syntax-e _%$%hd1616516318%_)))
                                 (let ((_%$%tl1617616267%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e1617416260%_)))
                                       (_%$%hd1617516264%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e1617416260%_))))
                                   (if (gx#identifier? _%$%hd1617516264%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21953_|
                                            _%$%hd1617516264%_)
                                           (if (gx#stx-pair?
                                                _%$%tl1617616267%_)
                                               (let ((_%$%e1617716270%_
                                                      (gx#syntax-e
                                                       _%$%tl1617616267%_)))
                                                 (let ((_%$%tl1617916277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e1617716270%_)))
                                                       (_%$%hd1617816274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e1617716270%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1617916277%_)
                                                       (_%__kont2117721178%_
                                                        _%$%hd1617816274%_)
                                                       (_%__kont2117921180%_
                                                        _%$%hd1616516318%_))))
                                               (_%__kont2117921180%_
                                                _%$%hd1616516318%_))
                                           (_%__kont2117921180%_
                                            _%$%hd1616516318%_))
                                       (_%__kont2117921180%_
                                        _%$%hd1616516318%_))))
                               (_%__kont2117921180%_ _%$%hd1616516318%_)))))))
              (if (gx#stx-pair? _%__stx2117221173%_)
                  (let ((_%$%e1616116304%_ (gx#syntax-e _%__stx2117221173%_)))
                    (let ((_%$%tl1616316311%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1616116304%_)))
                          (_%$%hd1616216308%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1616116304%_))))
                      (if (gx#stx-pair? _%$%tl1616316311%_)
                          (let ((_%$%e1616416314%_
                                 (gx#syntax-e _%$%tl1616316311%_)))
                            (let ((_%$%tl1616616321%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1616416314%_)))
                                  (_%$%hd1616516318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1616416314%_))))
                              (if (gx#stx-null? _%$%tl1616616321%_)
                                  (_%__match2119521196%_
                                   _%$%e1616116304%_
                                   _%$%hd1616216308%_
                                   _%$%tl1616316311%_
                                   _%$%e1616416314%_
                                   _%$%hd1616516318%_
                                   _%$%tl1616616321%_)
                                  (if (gx#stx-pair? _%$%hd1616516318%_)
                                      (let ((_%$%e1617416260%_
                                             (gx#syntax-e _%$%hd1616516318%_)))
                                        (let ((_%$%tl1617616267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1617416260%_)))
                                              (_%$%hd1617516264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1617416260%_))))
                                          (if (gx#identifier?
                                               _%$%hd1617516264%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21953_|
                                                   _%$%hd1617516264%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl1617616267%_)
                                                      (let ((_%$%e1617716270%_
                                                             (gx#syntax-e
                                                              _%$%tl1617616267%_)))
                                                        (let ((_%$%tl1617916277%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e1617716270%_)))
                      (_%$%hd1617816274%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e1617716270%_))))
                  (let () (declare (not safe)) (_%$%g1615816192%_))))
              (let () (declare (not safe)) (_%$%g1615816192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1615816192%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1615816192%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1615816192%_))))))
                          (let () (declare (not safe)) (_%$%g1615816192%_)))))
                  (let () (declare (not safe)) (_%$%g1615816192%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx16341%_)
        (let* ((_%__stx2124421245%_ _%$stx16341%_)
               (_%$%g1634716381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2124421245%_))))
          (let ((_%__kont2124721248%_
                 (lambda (_%$%g1634916513%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%$%g1634916513%_ '()))))
                (_%__kont2124921250%_
                 (lambda (_%$%g1635616469%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%$%g1635616469%_ '()))))
                (_%__kont2125121252%_
                 (lambda (_%$%g1636916408%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%$%g1636916408%_ '())))
                               '())))))
            (let ((_%__match2126721268%_
                   (lambda (_%$%e1635016493%_
                            _%$%hd1635116497%_
                            _%$%tl1635216500%_
                            _%$%e1635316503%_
                            _%$%hd1635416507%_
                            _%$%tl1635516510%_)
                     (let ((_%$%g1634916513%_ _%$%hd1635416507%_))
                       (if (gx#stx-datum? _%$%g1634916513%_)
                           (_%__kont2124721248%_ _%$%g1634916513%_)
                           (if (gx#stx-pair? _%$%hd1635416507%_)
                               (let ((_%$%e1636316449%_
                                      (gx#syntax-e _%$%hd1635416507%_)))
                                 (let ((_%$%tl1636516456%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e1636316449%_)))
                                       (_%$%hd1636416453%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e1636316449%_))))
                                   (if (gx#identifier? _%$%hd1636416453%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21954_|
                                            _%$%hd1636416453%_)
                                           (if (gx#stx-pair?
                                                _%$%tl1636516456%_)
                                               (let ((_%$%e1636616459%_
                                                      (gx#syntax-e
                                                       _%$%tl1636516456%_)))
                                                 (let ((_%$%tl1636816466%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e1636616459%_)))
                                                       (_%$%hd1636716463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e1636616459%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl1636816466%_)
                                                       (_%__kont2124921250%_
                                                        _%$%hd1636716463%_)
                                                       (_%__kont2125121252%_
                                                        _%$%hd1635416507%_))))
                                               (_%__kont2125121252%_
                                                _%$%hd1635416507%_))
                                           (_%__kont2125121252%_
                                            _%$%hd1635416507%_))
                                       (_%__kont2125121252%_
                                        _%$%hd1635416507%_))))
                               (_%__kont2125121252%_ _%$%hd1635416507%_)))))))
              (if (gx#stx-pair? _%__stx2124421245%_)
                  (let ((_%$%e1635016493%_ (gx#syntax-e _%__stx2124421245%_)))
                    (let ((_%$%tl1635216500%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e1635016493%_)))
                          (_%$%hd1635116497%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e1635016493%_))))
                      (if (gx#stx-pair? _%$%tl1635216500%_)
                          (let ((_%$%e1635316503%_
                                 (gx#syntax-e _%$%tl1635216500%_)))
                            (let ((_%$%tl1635516510%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e1635316503%_)))
                                  (_%$%hd1635416507%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e1635316503%_))))
                              (if (gx#stx-null? _%$%tl1635516510%_)
                                  (_%__match2126721268%_
                                   _%$%e1635016493%_
                                   _%$%hd1635116497%_
                                   _%$%tl1635216500%_
                                   _%$%e1635316503%_
                                   _%$%hd1635416507%_
                                   _%$%tl1635516510%_)
                                  (if (gx#stx-pair? _%$%hd1635416507%_)
                                      (let ((_%$%e1636316449%_
                                             (gx#syntax-e _%$%hd1635416507%_)))
                                        (let ((_%$%tl1636516456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e1636316449%_)))
                                              (_%$%hd1636416453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e1636316449%_))))
                                          (if (gx#identifier?
                                               _%$%hd1636416453%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21954_|
                                                   _%$%hd1636416453%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl1636516456%_)
                                                      (let ((_%$%e1636616459%_
                                                             (gx#syntax-e
                                                              _%$%tl1636516456%_)))
                                                        (let ((_%$%tl1636816466%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e1636616459%_)))
                      (_%$%hd1636716463%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e1636616459%_))))
                  (let () (declare (not safe)) (_%$%g1634716381%_))))
              (let () (declare (not safe)) (_%$%g1634716381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g1634716381%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g1634716381%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g1634716381%_))))))
                          (let () (declare (not safe)) (_%$%g1634716381%_)))))
                  (let () (declare (not safe)) (_%$%g1634716381%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx16530%_)
        (letrec ((_%generate16533%_
                  (lambda (_%rest16652%_)
                    (let _%lp16655%_ ((_%rest16658%_ _%rest16652%_)
                                      (_%hd16660%_ '())
                                      (_%body16661%_ '()))
                      (let* ((_%__stx2133621337%_ _%rest16658%_)
                             (_%$%g1666416676%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2133621337%_))))
                        (let ((_%__kont2133921340%_
                               (lambda (_%$%g1666616704%_ _%$%g1666716706%_)
                                 (let* ((_%__stx2131621317%_ _%$%g1666716706%_)
                                        (_%$%g1672316730%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2131621317%_))))
                                   (let ((_%__kont2131921320%_
                                          (lambda ()
                                            (let ((_%arg16766%_ (gx#genident)))
                                              (_%lp16655%_
                                               _%$%g1666616704%_
                                               (cons _%arg16766%_ _%hd16660%_)
                                               (cons _%arg16766%_
                                                     _%body16661%_)))))
                                         (_%__kont2132121322%_
                                          (lambda ()
                                            (if (gx#stx-null?
                                                 _%$%g1666616704%_)
                                                (let ((_%tail16752%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail16752%_
                         _%hd16660%_)
                  (foldl cons (list _%tail16752%_) _%body16661%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx16530%_
                                                 _%$%g1666716706%_))))
                                         (_%__kont2132321324%_
                                          (lambda ()
                                            (_%lp16655%_
                                             _%$%g1666616704%_
                                             _%hd16660%_
                                             (cons _%$%g1666716706%_
                                                   _%body16661%_)))))
                                     (if (gx#identifier? _%__stx2131621317%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21955_|
                                              _%__stx2131621317%_)
                                             (_%__kont2131921320%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21956_|
                                                  _%__stx2131621317%_)
                                                 (_%__kont2132121322%_)
                                                 (_%__kont2132321324%_)))
                                         (_%__kont2132321324%_))))))
                              (_%__kont2134121342%_
                               (lambda ()
                                 (values (reverse _%hd16660%_)
                                         (reverse _%body16661%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2133621337%_)
                              (let ((_%$%e1666816694%_
                                     (gx#syntax-e _%__stx2133621337%_)))
                                (let ((_%$%tl1667016701%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e1666816694%_)))
                                      (_%$%hd1666916698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e1666816694%_))))
                                  (_%__kont2133921340%_
                                   _%$%tl1667016701%_
                                   _%$%hd1666916698%_)))
                              (_%__kont2134121342%_))))))))
          (let* ((_%$%g1653616547%_
                  (lambda (_%$%g1653716543%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g1653716543%_)))
                 (_%$%g1653516648%_
                  (lambda (_%$%g1653716551%_)
                    (if (gx#stx-pair? _%$%g1653716551%_)
                        (let ((_%$%e1653916554%_
                               (gx#syntax-e _%$%g1653716551%_)))
                          (let ((_%$%hd1654016558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e1653916554%_)))
                                (_%$%tl1654116561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e1653916554%_))))
                            (if (and (gx#stx-list? _%$%tl1654116561%_)
                                     (not (gx#stx-null? _%$%tl1654116561%_)))
                                (let ((_g21957_
                                       (_%generate16533%_ _%$%tl1654116561%_)))
                                  (begin
                                    (let ((_g21958_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21957_)
                                                 (##values-length _g21957_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21958_ 3)))
                                          (error "Context expects 3 values"
                                                 _g21958_)))
                                    (let ((_%hd16577%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21957_ 0)))
                                          (_%body16579%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21957_ 1)))
                                          (_%tail?16580%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21957_ 2))))
                                      (let* ((_%$%g1658216590%_
                                              (lambda (_%$%g1658316586%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g1658316586%_)))
                                             (_%$%g1658116644%_
                                              (lambda (_%$%g1658316594%_)
                                                (let* ((_%$%g1661016618%_
                                                        (lambda (_%$%g1661116614%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g1661116614%_)))
                                                       (_%$%g1660916640%_
                                                        (lambda (_%$%g1661116622%_)
                                                          (if _%tail?16580%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda%)
                            (cons _%$%g1658316594%_
                                  (cons (cons (gx#datum->syntax '#f 'apply)
                                              _%$%g1661116622%_)
                                        '())))
                      (cons (gx#datum->syntax '#f 'lambda%)
                            (cons _%$%g1658316594%_
                                  (cons _%$%g1661116622%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g1660916640%_
                                                   _%body16579%_)))))
                                        (_%$%g1658116644%_ _%hd16577%_)))))
                                (_%$%g1653616547%_ _%$%g1653716551%_))))
                        (_%$%g1653616547%_ _%$%g1653716551%_)))))
            (_%$%g1653516648%_ _%stx16530%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx16778%_)
        (let ((_%$%g1678116788%_
               (lambda (_%$%g1678216784%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g1678216784%_))))
          (_%$%g1678116788%_ _%$stx16778%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx16792%_)
        (let ((_%$%g1679516802%_
               (lambda (_%$%g1679616798%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g1679616798%_))))
          (_%$%g1679516802%_ _%$stx16792%_))))))

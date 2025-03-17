(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21017_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21018_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21019_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21055_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21056_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21057_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21064_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21065_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21066_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21067_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21068_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21069_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21070_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21071_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21072_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21073_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5383%_)
        (letrec ((_%simple-lambda?5386%_
                  (lambda (_%hd8792%_)
                    (gx#stx-andmap gx#identifier? _%hd8792%_)))
                 (_%opt-lambda?5388%_
                  (lambda (_%hd8644%_)
                    (let _%lp8647%_ ((_%rest8650%_ _%hd8644%_)
                                     (_%opt?8652%_ '#f))
                      (let* ((_%__stx1924119242%_ _%rest8650%_)
                             (_%g86558667%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1924119242%_))))
                        (let ((_%__kont1924419245%_
                               (lambda (_%L8699%_ _%L8701%_)
                                 (let* ((_%__stx1921719218%_ _%L8701%_)
                                        (_%g87178731%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1921719218%_))))
                                   (let ((_%__kont1922019221%_
                                          (lambda (_%L8769%_)
                                            (_%lp8647%_ _%L8699%_ '#t)))
                                         (_%__kont1922219223%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8701%_)
                                                (if (not _%opt?8652%_)
                                                    (_%lp8647%_ _%L8699%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1923819239%_
                                            (lambda (_%e87208749%_
                                                     _%hd87218753%_
                                                     _%tl87228756%_
                                                     _%e87238759%_
                                                     _%hd87248763%_
                                                     _%tl87258766%_)
                                              (let ((_%L8769%_ _%hd87218753%_))
                                                (if (gx#identifier? _%L8769%_)
                                                    (_%__kont1922019221%_
                                                     _%L8769%_)
                                                    (_%__kont1922219223%_))))))
                                       (if (gx#stx-pair? _%__stx1921719218%_)
                                           (let ((_%e87208749%_
                                                  (gx#syntax-e
                                                   _%__stx1921719218%_)))
                                             (let ((_%tl87228756%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87208749%_)))
                                                   (_%hd87218753%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87208749%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87228756%_)
                                                   (let ((_%e87238759%_
                                                          (gx#syntax-e
                                                           _%tl87228756%_)))
                                                     (let ((_%tl87258766%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87238759%_)))
                                                           (_%hd87248763%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87238759%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87258766%_)
                                                           (_%__match1923819239%_
                                                            _%e87208749%_
                                                            _%hd87218753%_
                                                            _%tl87228756%_
                                                            _%e87238759%_
                                                            _%hd87248763%_
                                                            _%tl87258766%_)
                                                           (_%__kont1922219223%_))))
                                                   (_%__kont1922219223%_))))
                                           (_%__kont1922219223%_)))))))
                              (_%__kont1924619247%_
                               (lambda ()
                                 (if _%opt?8652%_
                                     (let ((_%$e8678%_
                                            (gx#stx-null? _%rest8650%_)))
                                       (if _%$e8678%_
                                           _%$e8678%_
                                           (gx#identifier? _%rest8650%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1924119242%_)
                              (let ((_%e86598689%_
                                     (gx#syntax-e _%__stx1924119242%_)))
                                (let ((_%tl86618696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86598689%_)))
                                      (_%hd86608693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86598689%_))))
                                  (_%__kont1924419245%_
                                   _%tl86618696%_
                                   _%hd86608693%_)))
                              (_%__kont1924619247%_)))))))
                 (_%opt-lambda-split5389%_
                  (lambda (_%hd8496%_)
                    (let _%lp8499%_ ((_%rest8502%_ _%hd8496%_)
                                     (_%pre8504%_ '())
                                     (_%opt8505%_ '()))
                      (let* ((_%__stx1928119282%_ _%rest8502%_)
                             (_%g85088520%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1928119282%_))))
                        (let ((_%__kont1928419285%_
                               (lambda (_%L8548%_ _%L8550%_)
                                 (let* ((_%__stx1925719258%_ _%L8550%_)
                                        (_%g85668581%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1925719258%_))))
                                   (let ((_%__kont1926019261%_
                                          (lambda (_%L8619%_ _%L8621%_)
                                            (_%lp8499%_
                                             _%L8548%_
                                             _%pre8504%_
                                             (cons (cons _%L8621%_ _%L8619%_)
                                                   _%opt8505%_))))
                                         (_%__kont1926219263%_
                                          (lambda ()
                                            (_%lp8499%_
                                             _%L8548%_
                                             (cons _%L8550%_ _%pre8504%_)
                                             _%opt8505%_))))
                                     (if (gx#stx-pair? _%__stx1925719258%_)
                                         (let ((_%e85708599%_
                                                (gx#syntax-e
                                                 _%__stx1925719258%_)))
                                           (let ((_%tl85728606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85708599%_)))
                                                 (_%hd85718603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85708599%_))))
                                             (if (gx#stx-pair? _%tl85728606%_)
                                                 (let ((_%e85738609%_
                                                        (gx#syntax-e
                                                         _%tl85728606%_)))
                                                   (let ((_%tl85758616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85738609%_)))
                                                         (_%hd85748613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85738609%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85758616%_)
                                                         (_%__kont1926019261%_
                                                          _%hd85748613%_
                                                          _%hd85718603%_)
                                                         (_%__kont1926219263%_))))
                                                 (_%__kont1926219263%_))))
                                         (_%__kont1926219263%_))))))
                              (_%__kont1928619287%_
                               (lambda ()
                                 (values (reverse _%pre8504%_)
                                         (reverse _%opt8505%_)
                                         _%rest8502%_))))
                          (if (gx#stx-pair? _%__stx1928119282%_)
                              (let ((_%e85128538%_
                                     (gx#syntax-e _%__stx1928119282%_)))
                                (let ((_%tl85148545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85128538%_)))
                                      (_%hd85138542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85128538%_))))
                                  (_%__kont1928419285%_
                                   _%tl85148545%_
                                   _%hd85138542%_)))
                              (_%__kont1928619287%_)))))))
                 (_%kw-lambda?5390%_
                  (lambda (_%hd8164%_)
                    (let _%lp8167%_ ((_%rest8170%_ _%hd8164%_)
                                     (_%opt?8172%_ '#f)
                                     (_%key?8173%_ '#f))
                      (let* ((_%__stx1934519346%_ _%rest8170%_)
                             (_%g81788208%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1934519346%_))))
                        (let ((_%__kont1934819349%_
                               (lambda (_%L8403%_ _%L8405%_ _%L8406%_)
                                 (let* ((_%__stx1932119322%_ _%L8405%_)
                                        (_%g84218435%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1932119322%_))))
                                   (let ((_%__kont1932419325%_
                                          (lambda (_%L8473%_)
                                            (if (gx#identifier? _%L8473%_)
                                                (_%lp8167%_
                                                 _%L8403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1932619327%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8405%_)
                                                (_%lp8167%_
                                                 _%L8403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1932119322%_)
                                         (let ((_%e84248453%_
                                                (gx#syntax-e
                                                 _%__stx1932119322%_)))
                                           (let ((_%tl84268460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84248453%_)))
                                                 (_%hd84258457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84248453%_))))
                                             (if (gx#stx-pair? _%tl84268460%_)
                                                 (let ((_%e84278463%_
                                                        (gx#syntax-e
                                                         _%tl84268460%_)))
                                                   (let ((_%tl84298470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84278463%_)))
                                                         (_%hd84288467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84278463%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84298470%_)
                                                         (_%__kont1932419325%_
                                                          _%hd84258457%_)
                                                         (_%__kont1932619327%_))))
                                                 (_%__kont1932619327%_))))
                                         (_%__kont1932619327%_))))))
                              (_%__kont1935019351%_
                               (lambda (_%L8360%_ _%L8362%_)
                                 (if (gx#identifier? _%L8362%_)
                                     (_%lp8167%_ _%L8360%_ _%opt?8172%_ '#t)
                                     '#f)))
                              (_%__kont1935219353%_
                               (lambda (_%L8240%_ _%L8242%_)
                                 (let* ((_%__stx1929719298%_ _%L8242%_)
                                        (_%g82588272%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1929719298%_))))
                                   (let ((_%__kont1930019301%_
                                          (lambda (_%L8310%_)
                                            (if (gx#identifier? _%L8310%_)
                                                (_%lp8167%_
                                                 _%L8240%_
                                                 '#t
                                                 _%key?8173%_)
                                                '#f)))
                                         (_%__kont1930219303%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8242%_)
                                                (if (not _%opt?8172%_)
                                                    (_%lp8167%_
                                                     _%L8240%_
                                                     '#f
                                                     _%key?8173%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1929719298%_)
                                         (let ((_%e82618290%_
                                                (gx#syntax-e
                                                 _%__stx1929719298%_)))
                                           (let ((_%tl82638297%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82618290%_)))
                                                 (_%hd82628294%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82618290%_))))
                                             (if (gx#stx-pair? _%tl82638297%_)
                                                 (let ((_%e82648300%_
                                                        (gx#syntax-e
                                                         _%tl82638297%_)))
                                                   (let ((_%tl82668307%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82648300%_)))
                                                         (_%hd82658304%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82648300%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82668307%_)
                                                         (_%__kont1930019301%_
                                                          _%hd82628294%_)
                                                         (_%__kont1930219303%_))))
                                                 (_%__kont1930219303%_))))
                                         (_%__kont1930219303%_))))))
                              (_%__kont1935419355%_
                               (lambda ()
                                 (if _%key?8173%_
                                     (let ((_%$e8219%_
                                            (gx#stx-null? _%rest8170%_)))
                                       (if _%$e8219%_
                                           _%$e8219%_
                                           (gx#identifier? _%rest8170%_)))
                                     '#f))))
                          (let ((_%__match1936819369%_
                                 (lambda (_%e81838383%_
                                          _%hd81848387%_
                                          _%tl81858390%_
                                          _%e81868393%_
                                          _%hd81878397%_
                                          _%tl81888400%_)
                                   (let ((_%L8403%_ _%tl81888400%_)
                                         (_%L8405%_ _%hd81878397%_)
                                         (_%L8406%_ _%hd81848387%_))
                                     (if (gx#stx-keyword? _%L8406%_)
                                         (_%__kont1934819349%_
                                          _%L8403%_
                                          _%L8405%_
                                          _%L8406%_)
                                         (if (gx#stx-datum? _%hd81848387%_)
                                             (let ((_%e81948346%_
                                                    (gx#stx-e _%hd81848387%_)))
                                               (if (equal? _%e81948346%_
                                                           '#!key)
                                                   (_%__kont1935019351%_
                                                    _%tl81888400%_
                                                    _%hd81878397%_)
                                                   (_%__kont1935219353%_
                                                    _%tl81858390%_
                                                    _%hd81848387%_)))
                                             (_%__kont1935219353%_
                                              _%tl81858390%_
                                              _%hd81848387%_)))))))
                            (if (gx#stx-pair? _%__stx1934519346%_)
                                (let ((_%e81838383%_
                                       (gx#syntax-e _%__stx1934519346%_)))
                                  (let ((_%tl81858390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81838383%_)))
                                        (_%hd81848387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81838383%_))))
                                    (if (gx#stx-pair? _%tl81858390%_)
                                        (let ((_%e81868393%_
                                               (gx#syntax-e _%tl81858390%_)))
                                          (let ((_%tl81888400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81868393%_)))
                                                (_%hd81878397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81868393%_))))
                                            (_%__match1936819369%_
                                             _%e81838383%_
                                             _%hd81848387%_
                                             _%tl81858390%_
                                             _%e81868393%_
                                             _%hd81878397%_
                                             _%tl81888400%_)))
                                        (if (gx#stx-datum? _%hd81848387%_)
                                            (let ((_%e81948346%_
                                                   (gx#stx-e _%hd81848387%_)))
                                              (_%__kont1935219353%_
                                               _%tl81858390%_
                                               _%hd81848387%_))
                                            (_%__kont1935219353%_
                                             _%tl81858390%_
                                             _%hd81848387%_)))))
                                (_%__kont1935419355%_))))))))
                 (_%kw-lambda-split5391%_
                  (lambda (_%hd7897%_)
                    (let _%lp7900%_ ((_%rest7903%_ _%hd7897%_)
                                     (_%kwvar7905%_ '#f)
                                     (_%kwargs7906%_ '())
                                     (_%args7907%_ '()))
                      (let* ((_%__stx1941919420%_ _%rest7903%_)
                             (_%g79127942%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1941919420%_))))
                        (let ((_%__kont1942219423%_
                               (lambda (_%L8061%_ _%L8063%_ _%L8064%_)
                                 (let ((_%key8078%_ (gx#stx-e _%L8064%_)))
                                   (if (find (lambda (_%kwarg8081%_)
                                               (eq? _%key8078%_
                                                    (car _%kwarg8081%_)))
                                             _%kwargs7906%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5383%_
                                        _%hd7897%_
                                        _%key8078%_)
                                       (let* ((_%__stx1939519396%_ _%L8063%_)
                                              (_%g80858100%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1939519396%_))))
                                         (let ((_%__kont1939819399%_
                                                (lambda (_%L8138%_ _%L8140%_)
                                                  (_%lp7900%_
                                                   _%L8061%_
                                                   _%kwvar7905%_
                                                   (cons (list _%key8078%_
                                                               _%L8140%_
                                                               _%L8138%_)
                                                         _%kwargs7906%_)
                                                   _%args7907%_)))
                                               (_%__kont1940019401%_
                                                (lambda ()
                                                  (_%lp7900%_
                                                   _%L8061%_
                                                   _%kwvar7905%_
                                                   (cons (list _%key8078%_
                                                               _%L8063%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8064%_ '()))))
                 _%kwargs7906%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7907%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1939519396%_)
                                               (let ((_%e80898118%_
                                                      (gx#syntax-e
                                                       _%__stx1939519396%_)))
                                                 (let ((_%tl80918125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80898118%_)))
                                                       (_%hd80908122%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80898118%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80918125%_)
                                                       (let ((_%e80928128%_
                                                              (gx#syntax-e
                                                               _%tl80918125%_)))
                                                         (let ((_%tl80948135%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80928128%_)))
                       (_%hd80938132%_
                        (let () (declare (not safe)) (##car _%e80928128%_))))
                   (if (gx#stx-null? _%tl80948135%_)
                       (_%__kont1939819399%_ _%hd80938132%_ _%hd80908122%_)
                       (_%__kont1940019401%_))))
               (_%__kont1940019401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1940019401%_))))))))
                              (_%__kont1942419425%_
                               (lambda (_%L8018%_ _%L8020%_)
                                 (if _%kwvar7905%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5383%_
                                      _%hd7897%_
                                      _%L8020%_)
                                     (_%lp7900%_
                                      _%L8018%_
                                      _%L8020%_
                                      _%kwargs7906%_
                                      _%args7907%_))))
                              (_%__kont1942619427%_
                               (lambda (_%L7970%_ _%L7972%_)
                                 (_%lp7900%_
                                  _%L7970%_
                                  _%kwvar7905%_
                                  _%kwargs7906%_
                                  (cons _%L7972%_ _%args7907%_))))
                              (_%__kont1942819429%_
                               (lambda ()
                                 (values _%kwvar7905%_
                                         (reverse _%kwargs7906%_)
                                         (foldl cons
                                                _%rest7903%_
                                                _%args7907%_)))))
                          (let ((_%__match1944219443%_
                                 (lambda (_%e79178041%_
                                          _%hd79188045%_
                                          _%tl79198048%_
                                          _%e79208051%_
                                          _%hd79218055%_
                                          _%tl79228058%_)
                                   (let ((_%L8061%_ _%tl79228058%_)
                                         (_%L8063%_ _%hd79218055%_)
                                         (_%L8064%_ _%hd79188045%_))
                                     (if (gx#stx-keyword? _%L8064%_)
                                         (_%__kont1942219423%_
                                          _%L8061%_
                                          _%L8063%_
                                          _%L8064%_)
                                         (if (gx#stx-datum? _%hd79188045%_)
                                             (let ((_%e79288004%_
                                                    (gx#stx-e _%hd79188045%_)))
                                               (if (equal? _%e79288004%_
                                                           '#!key)
                                                   (_%__kont1942419425%_
                                                    _%tl79228058%_
                                                    _%hd79218055%_)
                                                   (_%__kont1942619427%_
                                                    _%tl79198048%_
                                                    _%hd79188045%_)))
                                             (_%__kont1942619427%_
                                              _%tl79198048%_
                                              _%hd79188045%_)))))))
                            (if (gx#stx-pair? _%__stx1941919420%_)
                                (let ((_%e79178041%_
                                       (gx#syntax-e _%__stx1941919420%_)))
                                  (let ((_%tl79198048%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79178041%_)))
                                        (_%hd79188045%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79178041%_))))
                                    (if (gx#stx-pair? _%tl79198048%_)
                                        (let ((_%e79208051%_
                                               (gx#syntax-e _%tl79198048%_)))
                                          (let ((_%tl79228058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79208051%_)))
                                                (_%hd79218055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79208051%_))))
                                            (_%__match1944219443%_
                                             _%e79178041%_
                                             _%hd79188045%_
                                             _%tl79198048%_
                                             _%e79208051%_
                                             _%hd79218055%_
                                             _%tl79228058%_)))
                                        (if (gx#stx-datum? _%hd79188045%_)
                                            (let ((_%e79288004%_
                                                   (gx#stx-e _%hd79188045%_)))
                                              (_%__kont1942619427%_
                                               _%tl79198048%_
                                               _%hd79188045%_))
                                            (_%__kont1942619427%_
                                             _%tl79198048%_
                                             _%hd79188045%_)))))
                                (_%__kont1942819429%_))))))))
                 (_%check-duplicate-bindings5392%_
                  (lambda (_%hd7589%_)
                    (let _%lp7592%_ ((_%rest7595%_ _%hd7589%_)
                                     (_%ids7597%_ '()))
                      (let* ((_%__stx1949319494%_ _%rest7595%_)
                             (_%g76007612%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1949319494%_))))
                        (let ((_%__kont1949619497%_
                               (lambda (_%L7640%_ _%L7642%_)
                                 (if (gx#identifier? _%L7642%_)
                                     (_%lp7592%_
                                      _%L7640%_
                                      (cons _%L7642%_ _%ids7597%_))
                                     (if (gx#stx-pair? _%L7642%_)
                                         (let* ((_%g76617675%_
                                                 (lambda (_%g76627671%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76627671%_)))
                                                (_%g76607717%_
                                                 (lambda (_%g76627679%_)
                                                   (if (gx#stx-pair?
                                                        _%g76627679%_)
                                                       (let ((_%e76647682%_
                                                              (gx#syntax-e
                                                               _%g76627679%_)))
                                                         (let ((_%hd76657686%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76647682%_)))
                       (_%tl76667689%_
                        (let () (declare (not safe)) (##cdr _%e76647682%_))))
                   (if (gx#stx-pair? _%tl76667689%_)
                       (let ((_%e76677692%_ (gx#syntax-e _%tl76667689%_)))
                         (let ((_%hd76687696%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76677692%_)))
                               (_%tl76697699%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76677692%_))))
                           (if (gx#stx-null? _%tl76697699%_)
                               ((lambda (_%L7702%_)
                                  (_%lp7592%_
                                   _%L7640%_
                                   (cons _%L7702%_ _%ids7597%_)))
                                _%hd76657686%_)
                               (_%g76617675%_ _%g76627679%_))))
                       (_%g76617675%_ _%g76627679%_))))
               (_%g76617675%_ _%g76627679%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76607717%_ _%L7642%_))
                                         (if (gx#stx-keyword? _%L7642%_)
                                             (let* ((_%g77237735%_
                                                     (lambda (_%g77247731%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77247731%_)))
                                                    (_%g77227838%_
                                                     (lambda (_%g77247739%_)
                                                       (if (gx#stx-pair?
                                                            _%g77247739%_)
                                                           (let ((_%e77277742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77247739%_)))
                     (let ((_%hd77287746%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77277742%_)))
                           (_%tl77297749%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77277742%_))))
                       ((lambda (_%L7752%_ _%L7754%_)
                          (let* ((_%__stx1946919470%_ _%L7754%_)
                                 (_%g77677781%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1946919470%_))))
                            (let ((_%__kont1947219473%_
                                   (lambda (_%L7819%_)
                                     (_%lp7592%_
                                      _%L7752%_
                                      (cons _%L7819%_ _%ids7597%_))))
                                  (_%__kont1947419475%_
                                   (lambda ()
                                     (_%lp7592%_
                                      _%L7752%_
                                      (cons _%L7754%_ _%ids7597%_)))))
                              (if (gx#stx-pair? _%__stx1946919470%_)
                                  (let ((_%e77707799%_
                                         (gx#syntax-e _%__stx1946919470%_)))
                                    (let ((_%tl77727806%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77707799%_)))
                                          (_%hd77717803%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77707799%_))))
                                      (if (gx#stx-pair? _%tl77727806%_)
                                          (let ((_%e77737809%_
                                                 (gx#syntax-e _%tl77727806%_)))
                                            (let ((_%tl77757816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77737809%_)))
                                                  (_%hd77747813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77737809%_))))
                                              (if (gx#stx-null? _%tl77757816%_)
                                                  (_%__kont1947219473%_
                                                   _%hd77717803%_)
                                                  (_%__kont1947419475%_))))
                                          (_%__kont1947419475%_))))
                                  (_%__kont1947419475%_)))))
                        _%tl77297749%_
                        _%hd77287746%_)))
                   (_%g77237735%_ _%g77247739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77227838%_ _%L7640%_))
                                             (if (eq? (gx#stx-e _%L7642%_)
                                                      '#!key)
                                                 (let* ((_%g78447856%_
                                                         (lambda (_%g78457852%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78457852%_)))
                                                        (_%g78437887%_
                                                         (lambda (_%g78457860%_)
                                                           (if (gx#stx-pair?
                                                                _%g78457860%_)
                                                               (let ((_%e78487863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78457860%_)))
                         (let ((_%hd78497867%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78487863%_)))
                               (_%tl78507870%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78487863%_))))
                           ((lambda (_%L7873%_ _%L7875%_)
                              (_%lp7592%_
                               _%L7873%_
                               (cons _%L7875%_ _%ids7597%_)))
                            _%tl78507870%_
                            _%hd78497867%_)))
                       (_%g78447856%_ _%g78457860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78437887%_ _%L7640%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5383%_
                                                        _%rest7595%_)))))))
                              (_%__kont1949819499%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7595%_)
                                      _%ids7597%_
                                      (cons _%rest7595%_ _%ids7597%_))
                                  _%stx5383%_))))
                          (if (gx#stx-pair? _%__stx1949319494%_)
                              (let ((_%e76047630%_
                                     (gx#syntax-e _%__stx1949319494%_)))
                                (let ((_%tl76067637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e76047630%_)))
                                      (_%hd76057634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e76047630%_))))
                                  (_%__kont1949619497%_
                                   _%tl76067637%_
                                   _%hd76057634%_)))
                              (_%__kont1949819499%_)))))))
                 (_%generate-opt-primary5393%_
                  (lambda (_%pre7381%_ _%opt7383%_ _%tail7384%_ _%body7385%_)
                    (let* ((_%g73877428%_
                            (lambda (_%g73887424%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73887424%_)))
                           (_%g73867585%_
                            (lambda (_%g73887432%_)
                              (if (gx#stx-pair? _%g73887432%_)
                                  (let ((_%e73937435%_
                                         (gx#syntax-e _%g73887432%_)))
                                    (let ((_%hd73947439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73937435%_)))
                                          (_%tl73957442%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73937435%_))))
                                      (if (gx#stx-pair/null? _%hd73947439%_)
                                          (let ((_g20982_
                                                 (gx#syntax-split-splice
                                                  _%hd73947439%_
                                                  '0)))
                                            (begin
                                              (let ((_g20983_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20982_)
                                                           (##values-length
                                                            _g20982_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20983_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20983_)))
                                              (let ((_%target73967445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20982_
                                                        0)))
                                                    (_%tl73987448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20982_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73987448%_)
                                                    (letrec ((_%loop73997451%_
                                                              (lambda (_%hd73977455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre74037458%_)
                        (if (gx#stx-pair? _%hd73977455%_)
                            (let ((_%e74007461%_ (gx#syntax-e _%hd73977455%_)))
                              (let ((_%lp-hd74017465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74007461%_)))
                                    (_%lp-tl74027468%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74007461%_))))
                                (_%loop73997451%_
                                 _%lp-tl74027468%_
                                 (cons _%lp-hd74017465%_ _%pre74037458%_))))
                            (let ((_%pre74047471%_ (reverse _%pre74037458%_)))
                              (if (gx#stx-pair? _%tl73957442%_)
                                  (let ((_%e74057475%_
                                         (gx#syntax-e _%tl73957442%_)))
                                    (let ((_%hd74067479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74057475%_)))
                                          (_%tl74077482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74057475%_))))
                                      (if (gx#stx-pair/null? _%hd74067479%_)
                                          (let ((_g20984_
                                                 (gx#syntax-split-splice
                                                  _%hd74067479%_
                                                  '0)))
                                            (begin
                                              (let ((_g20985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20984_)
                                                           (##values-length
                                                            _g20984_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20985_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20985_)))
                                              (let ((_%target74087485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20984_
                                                        0)))
                                                    (_%tl74107488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20984_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74107488%_)
                                                    (letrec ((_%loop74117491%_
                                                              (lambda (_%hd74097495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74157498%_)
                        (if (gx#stx-pair? _%hd74097495%_)
                            (let ((_%e74127501%_ (gx#syntax-e _%hd74097495%_)))
                              (let ((_%lp-hd74137505%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74127501%_)))
                                    (_%lp-tl74147508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74127501%_))))
                                (_%loop74117491%_
                                 _%lp-tl74147508%_
                                 (cons _%lp-hd74137505%_ _%opt74157498%_))))
                            (let ((_%opt74167511%_ (reverse _%opt74157498%_)))
                              (if (gx#stx-pair? _%tl74077482%_)
                                  (let ((_%e74177515%_
                                         (gx#syntax-e _%tl74077482%_)))
                                    (let ((_%hd74187519%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74177515%_)))
                                          (_%tl74197522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74177515%_))))
                                      (if (gx#stx-pair? _%tl74197522%_)
                                          (let ((_%e74207525%_
                                                 (gx#syntax-e _%tl74197522%_)))
                                            (let ((_%hd74217529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74207525%_)))
                                                  (_%tl74227532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74207525%_))))
                                              (if (gx#stx-null? _%tl74227532%_)
                                                  ((lambda (_%L7535%_
                                                            _%L7537%_
                                                            _%L7538%_
                                                            _%L7539%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75687573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75697576%_)
                                  (cons _%g75687573%_ _%g75697576%_))
                                (foldr (lambda (_%g75707579%_ _%g75717582%_)
                                         (cons _%g75707579%_ _%g75717582%_))
                                       _%L7537%_
                                       _%L7538%_)
                                _%L7539%_)
                         _%L7535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74217529%_
                                                   _%hd74187519%_
                                                   _%opt74167511%_
                                                   _%pre74047471%_)
                                                  (_%g73877428%_
                                                   _%g73887432%_))))
                                          (_%g73877428%_ _%g73887432%_))))
                                  (_%g73877428%_ _%g73887432%_)))))))
              (_%loop74117491%_ _%target74087485%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73877428%_
                                                     _%g73887432%_)))))
                                          (_%g73877428%_ _%g73887432%_))))
                                  (_%g73877428%_ _%g73887432%_)))))))
              (_%loop73997451%_ _%target73967445%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73877428%_
                                                     _%g73887432%_)))))
                                          (_%g73877428%_ _%g73887432%_))))
                                  (_%g73877428%_ _%g73887432%_)))))
                      (_%g73867585%_
                       (list _%pre7381%_
                             (map car _%opt7383%_)
                             _%tail7384%_
                             _%body7385%_)))))
                 (_%generate-opt-dispatch5394%_
                  (lambda (_%primary7375%_
                           _%pre7377%_
                           _%opt7378%_
                           _%tail7379%_)
                    (cons (list _%pre7377%_
                                (_%generate-opt-clause5396%_
                                 _%primary7375%_
                                 _%pre7377%_
                                 _%opt7378%_))
                          (_%generate-opt-dispatch*5395%_
                           _%primary7375%_
                           _%pre7377%_
                           _%opt7378%_
                           _%tail7379%_))))
                 (_%generate-opt-dispatch*5395%_
                  (lambda (_%primary6924%_
                           _%pre6926%_
                           _%opt6927%_
                           _%tail6928%_)
                    (let _%recur6930%_ ((_%opt-rest6933%_ _%opt6927%_)
                                        (_%right6935%_ '()))
                      (if (pair? _%opt-rest6933%_)
                          (let* ((_%hd6939%_ (caar _%opt-rest6933%_))
                                 (_%rest6942%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6933%_)))
                                 (_%right*6945%_
                                  (cons _%hd6939%_ _%right6935%_))
                                 (_%g69486965%_
                                  (lambda (_%g69496961%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69496961%_)))
                                 (_%g69477149%_
                                  (lambda (_%g69496969%_)
                                    (if (gx#stx-pair/null? _%g69496969%_)
                                        (let ((_g20986_
                                               (gx#syntax-split-splice
                                                _%g69496969%_
                                                '0)))
                                          (begin
                                            (let ((_g20987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20986_)
                                                         (##values-length
                                                          _g20986_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20987_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20987_)))
                                            (let ((_%target69516972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20986_
                                                      0)))
                                                  (_%tl69536975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20986_
                                                      1))))
                                              (if (gx#stx-null? _%tl69536975%_)
                                                  (letrec ((_%loop69546978%_
                                                            (lambda (_%hd69526982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69586985%_)
                      (if (gx#stx-pair? _%hd69526982%_)
                          (let ((_%e69556988%_ (gx#syntax-e _%hd69526982%_)))
                            (let ((_%lp-hd69566992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69556988%_)))
                                  (_%lp-tl69576995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69556988%_))))
                              (_%loop69546978%_
                               _%lp-tl69576995%_
                               (cons _%lp-hd69566992%_ _%pre-bind69586985%_))))
                          (let ((_%pre-bind69596998%_
                                 (reverse _%pre-bind69586985%_)))
                            ((lambda (_%L7002%_)
                               (let* ((_%g70247041%_
                                       (lambda (_%g70257037%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70257037%_)))
                                      (_%g70237145%_
                                       (lambda (_%g70257045%_)
                                         (if (gx#stx-pair/null? _%g70257045%_)
                                             (let ((_g20988_
                                                    (gx#syntax-split-splice
                                                     _%g70257045%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20989_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20988_)
                                                              (##values-length
                                                               _g20988_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70277048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20988_
                                                           0)))
                                                       (_%tl70297051%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20988_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70297051%_)
                                                       (letrec ((_%loop70307054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70287058%_ _%opt-bind70347061%_)
                           (if (gx#stx-pair? _%hd70287058%_)
                               (let ((_%e70317064%_
                                      (gx#syntax-e _%hd70287058%_)))
                                 (let ((_%lp-hd70327068%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70317064%_)))
                                       (_%lp-tl70337071%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70317064%_))))
                                   (_%loop70307054%_
                                    _%lp-tl70337071%_
                                    (cons _%lp-hd70327068%_
                                          _%opt-bind70347061%_))))
                               (let ((_%opt-bind70357074%_
                                      (reverse _%opt-bind70347061%_)))
                                 ((lambda (_%L7078%_)
                                    (let* ((_%g70957103%_
                                            (lambda (_%g70967099%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70967099%_)))
                                           (_%g70947141%_
                                            (lambda (_%g70967107%_)
                                              ((lambda (_%L7110%_)
                                                 (cons (list (foldr (lambda (_%g71247129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71257132%_)
                              (cons _%g71247129%_ _%g71257132%_))
                            (foldr (lambda (_%g71267135%_ _%g71277138%_)
                                     (cons _%g71267135%_ _%g71277138%_))
                                   (cons _%L7110%_ '())
                                   _%L7078%_)
                            _%L7002%_)
                     (_%generate-opt-clause5396%_
                      _%primary6924%_
                      (foldr cons (reverse _%right*6945%_) _%pre6926%_)
                      _%rest6942%_))
               (_%recur6930%_ _%rest6942%_ _%right*6945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70967107%_))))
                                      (_%g70947141%_ _%hd6939%_)))
                                  _%opt-bind70357074%_))))))
                 (_%loop70307054%_ _%target70277048%_ '()))
               (_%g70247041%_ _%g70257045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70247041%_ _%g70257045%_)))))
                                 (_%g70237145%_ (reverse _%right6935%_))))
                             _%pre-bind69596998%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69546978%_
                                                     _%target69516972%_
                                                     '()))
                                                  (_%g69486965%_
                                                   _%g69496969%_)))))
                                        (_%g69486965%_ _%g69496969%_)))))
                            (_%g69477149%_ _%pre6926%_))
                          (if (gx#stx-null? _%tail6928%_)
                              '()
                              (let* ((_%g71577198%_
                                      (lambda (_%g71587194%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71587194%_)))
                                     (_%g71567371%_
                                      (lambda (_%g71587202%_)
                                        (if (gx#stx-pair? _%g71587202%_)
                                            (let ((_%e71637205%_
                                                   (gx#syntax-e
                                                    _%g71587202%_)))
                                              (let ((_%hd71647209%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71637205%_)))
                                                    (_%tl71657212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71637205%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71647209%_)
                                                    (let ((_g20990_
                                                           (gx#syntax-split-splice
                                                            _%hd71647209%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20991_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20990_)
                             (##values-length _g20990_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20991_ 2)))
                      (error "Context expects 2 values" _g20991_)))
                (let ((_%target71667215%_
                       (let () (declare (not safe)) (##values-ref _g20990_ 0)))
                      (_%tl71687218%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20990_ 1))))
                  (if (gx#stx-null? _%tl71687218%_)
                      (letrec ((_%loop71697221%_
                                (lambda (_%hd71677225%_ _%pre71737228%_)
                                  (if (gx#stx-pair? _%hd71677225%_)
                                      (let ((_%e71707231%_
                                             (gx#syntax-e _%hd71677225%_)))
                                        (let ((_%lp-hd71717235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71707231%_)))
                                              (_%lp-tl71727238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71707231%_))))
                                          (_%loop71697221%_
                                           _%lp-tl71727238%_
                                           (cons _%lp-hd71717235%_
                                                 _%pre71737228%_))))
                                      (let ((_%pre71747241%_
                                             (reverse _%pre71737228%_)))
                                        (if (gx#stx-pair? _%tl71657212%_)
                                            (let ((_%e71757245%_
                                                   (gx#syntax-e
                                                    _%tl71657212%_)))
                                              (let ((_%hd71767249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71757245%_)))
                                                    (_%tl71777252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71757245%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71767249%_)
                                                    (let ((_g20992_
                                                           (gx#syntax-split-splice
                                                            _%hd71767249%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20993_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20992_)
                             (##values-length _g20992_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20993_ 2)))
                      (error "Context expects 2 values" _g20993_)))
                (let ((_%target71787255%_
                       (let () (declare (not safe)) (##values-ref _g20992_ 0)))
                      (_%tl71807258%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20992_ 1))))
                  (if (gx#stx-null? _%tl71807258%_)
                      (letrec ((_%loop71817261%_
                                (lambda (_%hd71797265%_ _%opt71857268%_)
                                  (if (gx#stx-pair? _%hd71797265%_)
                                      (let ((_%e71827271%_
                                             (gx#syntax-e _%hd71797265%_)))
                                        (let ((_%lp-hd71837275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71827271%_)))
                                              (_%lp-tl71847278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71827271%_))))
                                          (_%loop71817261%_
                                           _%lp-tl71847278%_
                                           (cons _%lp-hd71837275%_
                                                 _%opt71857268%_))))
                                      (let ((_%opt71867281%_
                                             (reverse _%opt71857268%_)))
                                        (if (gx#stx-pair? _%tl71777252%_)
                                            (let ((_%e71877285%_
                                                   (gx#syntax-e
                                                    _%tl71777252%_)))
                                              (let ((_%hd71887289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71877285%_)))
                                                    (_%tl71897292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71877285%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71897292%_)
                                                    (let ((_%e71907295%_
                                                           (gx#syntax-e
                                                            _%tl71897292%_)))
                                                      (let ((_%hd71917299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71907295%_)))
                    (_%tl71927302%_
                     (let () (declare (not safe)) (##cdr _%e71907295%_))))
                (if (gx#stx-null? _%tl71927302%_)
                    ((lambda (_%L7305%_ _%L7307%_ _%L7308%_ _%L7309%_)
                       (list (list (foldr (lambda (_%g73387343%_ _%g73397346%_)
                                            (cons _%g73387343%_ _%g73397346%_))
                                          (foldr (lambda (_%g73407349%_
                                                          _%g73417352%_)
                                                   (cons _%g73407349%_
                                                         _%g73417352%_))
                                                 _%L7307%_
                                                 _%L7308%_)
                                          _%L7309%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7305%_
                                                (foldr (lambda (_%g73547359%_
                                                                _%g73557362%_)
                                                         (cons _%g73547359%_
                                                               _%g73557362%_))
                                                       (foldr (lambda (_%g73567365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73577368%_)
                        (cons _%g73567365%_ _%g73577368%_))
                      (cons _%L7307%_ '())
                      _%L7308%_)
               _%L7309%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5383%_)))))
                     _%hd71917299%_
                     _%hd71887289%_
                     _%opt71867281%_
                     _%pre71747241%_)
                    (_%g71577198%_ _%g71587202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71577198%_
                                                     _%g71587202%_))))
                                            (_%g71577198%_ _%g71587202%_)))))))
                        (_%loop71817261%_ _%target71787255%_ '()))
                      (_%g71577198%_ _%g71587202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71577198%_
                                                     _%g71587202%_))))
                                            (_%g71577198%_ _%g71587202%_)))))))
                        (_%loop71697221%_ _%target71667215%_ '()))
                      (_%g71577198%_ _%g71587202%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71577198%_
                                                     _%g71587202%_))))
                                            (_%g71577198%_ _%g71587202%_)))))
                                (_%g71567371%_
                                 (list _%pre6926%_
                                       (reverse _%right6935%_)
                                       _%tail6928%_
                                       _%primary6924%_))))))))
                 (_%generate-opt-clause5396%_
                  (lambda (_%primary6622%_ _%pre6624%_ _%opt6625%_)
                    (let _%recur6627%_ ((_%opt-rest6630%_ _%opt6625%_)
                                        (_%right6632%_ '()))
                      (if (pair? _%opt-rest6630%_)
                          (let* ((_%hd6634%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6630%_)))
                                 (_%rest6637%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6630%_)))
                                 (_%g66406648%_
                                  (lambda (_%g66416644%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66416644%_)))
                                 (_%g66396737%_
                                  (lambda (_%g66416652%_)
                                    ((lambda (_%L6655%_)
                                       (let* ((_%g66716679%_
                                               (lambda (_%g66726675%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66726675%_)))
                                              (_%g66706733%_
                                               (lambda (_%g66726683%_)
                                                 ((lambda (_%L6686%_)
                                                    (let* ((_%g66996707%_
                                                            (lambda (_%g67006703%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67006703%_)))
                                                           (_%g66986729%_
                                                            (lambda (_%g67006711%_)
                                                              ((lambda (_%L6714%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6655%_ '())
                                                 (cons _%L6686%_ '()))
                                           '())
                                     (cons _%L6714%_ '()))))
                       _%g67006711%_))))
              (_%g66986729%_
               (_%recur6627%_ _%rest6637%_ (cons _%L6655%_ _%right6632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66726683%_))))
                                         (_%g66706733%_ (cdr _%hd6634%_))))
                                     _%g66416652%_))))
                            (_%g66396737%_ (car _%hd6634%_)))
                          (let* ((_%g67416778%_
                                  (lambda (_%g67426774%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67426774%_)))
                                 (_%g67406920%_
                                  (lambda (_%g67426782%_)
                                    (if (gx#stx-pair? _%g67426782%_)
                                        (let ((_%e67466785%_
                                               (gx#syntax-e _%g67426782%_)))
                                          (let ((_%hd67476789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67466785%_)))
                                                (_%tl67486792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67466785%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67476789%_)
                                                (let ((_g20994_
                                                       (gx#syntax-split-splice
                                                        _%hd67476789%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20995_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20994_)
                         (##values-length _g20994_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20995_ 2)))
                  (error "Context expects 2 values" _g20995_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67496795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20994_
                                                              0)))
                                                          (_%tl67516798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20994_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67516798%_)
                                                          (letrec ((_%loop67526801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67506805%_ _%pre67566808%_)
                              (if (gx#stx-pair? _%hd67506805%_)
                                  (let ((_%e67536811%_
                                         (gx#syntax-e _%hd67506805%_)))
                                    (let ((_%lp-hd67546815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67536811%_)))
                                          (_%lp-tl67556818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67536811%_))))
                                      (_%loop67526801%_
                                       _%lp-tl67556818%_
                                       (cons _%lp-hd67546815%_
                                             _%pre67566808%_))))
                                  (let ((_%pre67576821%_
                                         (reverse _%pre67566808%_)))
                                    (if (gx#stx-pair? _%tl67486792%_)
                                        (let ((_%e67586825%_
                                               (gx#syntax-e _%tl67486792%_)))
                                          (let ((_%hd67596829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67586825%_)))
                                                (_%tl67606832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67586825%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67596829%_)
                                                (let ((_g20996_
                                                       (gx#syntax-split-splice
                                                        _%hd67596829%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20996_)
                         (##values-length _g20996_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20997_ 2)))
                  (error "Context expects 2 values" _g20997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67616835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20996_
                                                              0)))
                                                          (_%tl67636838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20996_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67636838%_)
                                                          (letrec ((_%loop67646841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67626845%_ _%opt67686848%_)
                              (if (gx#stx-pair? _%hd67626845%_)
                                  (let ((_%e67656851%_
                                         (gx#syntax-e _%hd67626845%_)))
                                    (let ((_%lp-hd67666855%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67656851%_)))
                                          (_%lp-tl67676858%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67656851%_))))
                                      (_%loop67646841%_
                                       _%lp-tl67676858%_
                                       (cons _%lp-hd67666855%_
                                             _%opt67686848%_))))
                                  (let ((_%opt67696861%_
                                         (reverse _%opt67686848%_)))
                                    (if (gx#stx-pair? _%tl67606832%_)
                                        (let ((_%e67706865%_
                                               (gx#syntax-e _%tl67606832%_)))
                                          (let ((_%hd67716869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67706865%_)))
                                                (_%tl67726872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67706865%_))))
                                            (if (gx#stx-null? _%tl67726872%_)
                                                ((lambda (_%L6875%_
                                                          _%L6877%_
                                                          _%L6878%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6875%_
                                                          (foldr (lambda (_%g69036908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69046911%_)
                           (cons _%g69036908%_ _%g69046911%_))
                         (foldr (lambda (_%g69056914%_ _%g69066917%_)
                                  (cons _%g69056914%_ _%g69066917%_))
                                '()
                                _%L6877%_)
                         _%L6878%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5383%_)))
                                                 _%hd67716869%_
                                                 _%opt67696861%_
                                                 _%pre67576821%_)
                                                (_%g67416778%_
                                                 _%g67426782%_))))
                                        (_%g67416778%_ _%g67426782%_)))))))
                    (_%loop67646841%_ _%target67616835%_ '()))
                  (_%g67416778%_ _%g67426782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67416778%_
                                                 _%g67426782%_))))
                                        (_%g67416778%_ _%g67426782%_)))))))
                    (_%loop67526801%_ _%target67496795%_ '()))
                  (_%g67416778%_ _%g67426782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67416778%_
                                                 _%g67426782%_))))
                                        (_%g67416778%_ _%g67426782%_)))))
                            (_%g67406920%_
                             (list _%pre6624%_
                                   (reverse _%right6632%_)
                                   _%primary6622%_)))))))
                 (_%generate-kw-primary5397%_
                  (lambda (_%key5998%_
                           _%kwargs6000%_
                           _%args6001%_
                           _%body6002%_)
                    (letrec ((_%make-body6004%_
                              (lambda (_%kwargs6491%_ _%kwvals6493%_)
                                (if (pair? _%kwargs6491%_)
                                    (let* ((_%kwarg6495%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6491%_)))
                                           (_%var6498%_ (cadr _%kwarg6495%_))
                                           (_%default6501%_
                                            (caddr _%kwarg6495%_))
                                           (_%kwval6504%_ (car _%kwvals6493%_))
                                           (_%rest-kwargs6507%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6491%_)))
                                           (_%rest-kwvals6510%_
                                            (cdr _%kwvals6493%_))
                                           (_%g65156538%_
                                            (lambda (_%g65166534%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65166534%_)))
                                           (_%g65146618%_
                                            (lambda (_%g65166542%_)
                                              (if (gx#stx-pair? _%g65166542%_)
                                                  (let ((_%e65216545%_
                                                         (gx#syntax-e
                                                          _%g65166542%_)))
                                                    (let ((_%hd65226549%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65216545%_)))
                                                          (_%tl65236552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65216545%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65236552%_)
                                                          (let ((_%e65246555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65236552%_)))
                    (let ((_%hd65256559%_
                           (let () (declare (not safe)) (##car _%e65246555%_)))
                          (_%tl65266562%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65246555%_))))
                      (if (gx#stx-pair? _%tl65266562%_)
                          (let ((_%e65276565%_ (gx#syntax-e _%tl65266562%_)))
                            (let ((_%hd65286569%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65276565%_)))
                                  (_%tl65296572%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65276565%_))))
                              (if (gx#stx-pair? _%tl65296572%_)
                                  (let ((_%e65306575%_
                                         (gx#syntax-e _%tl65296572%_)))
                                    (let ((_%hd65316579%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65306575%_)))
                                          (_%tl65326582%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65306575%_))))
                                      (if (gx#stx-null? _%tl65326582%_)
                                          ((lambda (_%L6585%_
                                                    _%L6587%_
                                                    _%L6588%_
                                                    _%L6589%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6588%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6587%_
                                                     (cons _%L6588%_ '()))))
                                   '()))
                       '())
                 (cons _%L6585%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65316579%_
                                           _%hd65286569%_
                                           _%hd65256559%_
                                           _%hd65226549%_)
                                          (_%g65156538%_ _%g65166542%_))))
                                  (_%g65156538%_ _%g65166542%_))))
                          (_%g65156538%_ _%g65166542%_))))
                  (_%g65156538%_ _%g65166542%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65156538%_
                                                   _%g65166542%_)))))
                                      (_%g65146618%_
                                       (list _%var6498%_
                                             _%kwval6504%_
                                             _%default6501%_
                                             (_%make-body6004%_
                                              _%rest-kwargs6507%_
                                              _%rest-kwvals6510%_))))
                                    (cons 'begin _%body6002%_))))
                             (_%make-main6006%_
                              (lambda ()
                                (let* ((_%g62996307%_
                                        (lambda (_%g63006303%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63006303%_)))
                                       (_%g62986483%_
                                        (lambda (_%g63006311%_)
                                          ((lambda (_%L6314%_)
                                             (let* ((_%g63266343%_
                                                     (lambda (_%g63276339%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63276339%_)))
                                                    (_%g63256479%_
                                                     (lambda (_%g63276347%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63276347%_)
                                                           (let ((_g20998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63276347%_ '0)))
                     (begin
                       (let ((_g20999_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20998_)
                                    (##values-length _g20998_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20999_ 2)))
                             (error "Context expects 2 values" _g20999_)))
                       (let ((_%target63296350%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20998_ 0)))
                             (_%tl63316353%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20998_ 1))))
                         (if (gx#stx-null? _%tl63316353%_)
                             (letrec ((_%loop63326356%_
                                       (lambda (_%hd63306360%_
                                                _%kwval63366363%_)
                                         (if (gx#stx-pair? _%hd63306360%_)
                                             (let ((_%e63336366%_
                                                    (gx#syntax-e
                                                     _%hd63306360%_)))
                                               (let ((_%lp-hd63346370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63336366%_)))
                                                     (_%lp-tl63356373%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63336366%_))))
                                                 (_%loop63326356%_
                                                  _%lp-tl63356373%_
                                                  (cons _%lp-hd63346370%_
                                                        _%kwval63366363%_))))
                                             (let ((_%kwval63376376%_
                                                    (reverse _%kwval63366363%_)))
                                               ((lambda (_%L6380%_)
                                                  (let* ((_%g63976405%_
                                                          (lambda (_%g63986401%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63986401%_)))
                                                         (_%g63966475%_
                                                          (lambda (_%g63986409%_)
                                                            ((lambda (_%L6412%_)
                                                               (let* ((_%g64256433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64266429%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64266429%_)))
                              (_%g64246463%_
                               (lambda (_%g64266437%_)
                                 ((lambda (_%L6440%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6314%_
                                                       (foldr (lambda (_%g64546457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64556460%_)
                        (cons _%g64546457%_ _%g64556460%_))
                      _%L6412%_
                      _%L6380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6440%_ '())))
                                     (gx#stx-source _%stx5383%_)))
                                  _%g64266437%_))))
                         (_%g64246463%_
                          (_%make-body6004%_
                           _%kwargs6000%_
                           (foldr (lambda (_%g64666469%_ _%g64676472%_)
                                    (cons _%g64666469%_ _%g64676472%_))
                                  '()
                                  _%L6380%_)))))
                     _%g63986409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63966475%_
                                                     _%args6001%_)))
                                                _%kwval63376376%_))))))
                               (_%loop63326356%_ _%target63296350%_ '()))
                             (_%g63266343%_ _%g63276347%_)))))
                   (_%g63266343%_ _%g63276347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63256479%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6000%_)))))
                                           _%g63006311%_))))
                                  (_%g62986483%_
                                   (let ((_%$e6487%_ _%key5998%_))
                                     (if _%$e6487%_
                                         _%$e6487%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6007%_
                              (lambda (_%main6107%_)
                                (let* ((_%g61106118%_
                                        (lambda (_%g61116114%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61116114%_)))
                                       (_%g61096289%_
                                        (lambda (_%g61116122%_)
                                          ((lambda (_%L6125%_)
                                             (let* ((_%g61376154%_
                                                     (lambda (_%g61386150%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61386150%_)))
                                                    (_%g61366250%_
                                                     (lambda (_%g61386158%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61386158%_)
                                                           (let ((_g21000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61386158%_ '0)))
                     (begin
                       (let ((_g21001_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g21000_)
                                    (##values-length _g21000_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g21001_ 2)))
                             (error "Context expects 2 values" _g21001_)))
                       (let ((_%target61406161%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21000_ 0)))
                             (_%tl61426164%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21000_ 1))))
                         (if (gx#stx-null? _%tl61426164%_)
                             (letrec ((_%loop61436167%_
                                       (lambda (_%hd61416171%_
                                                _%get-kw61476174%_)
                                         (if (gx#stx-pair? _%hd61416171%_)
                                             (let ((_%e61446177%_
                                                    (gx#syntax-e
                                                     _%hd61416171%_)))
                                               (let ((_%lp-hd61456181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61446177%_)))
                                                     (_%lp-tl61466184%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61446177%_))))
                                                 (_%loop61436167%_
                                                  _%lp-tl61466184%_
                                                  (cons _%lp-hd61456181%_
                                                        _%get-kw61476174%_))))
                                             (let ((_%get-kw61486187%_
                                                    (reverse _%get-kw61476174%_)))
                                               ((lambda (_%L6191%_)
                                                  (let* ((_%g62086216%_
                                                          (lambda (_%g62096212%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62096212%_)))
                                                         (_%g62076246%_
                                                          (lambda (_%g62096220%_)
                                                            ((lambda (_%L6223%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6125%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6223%_
                                                      (cons _%L6125%_
                                                            (foldr (lambda (_%g62376240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62386243%_)
                             (cons _%g62376240%_ _%g62386243%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6191%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5383%_)))
                     _%g62096220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62076246%_
                                                     _%main6107%_)))
                                                _%get-kw61486187%_))))))
                               (_%loop61436167%_ _%target61406161%_ '()))
                             (_%g61376154%_ _%g61386158%_)))))
                   (_%g61376154%_ _%g61386158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61366250%_
                                                (map (lambda (_%kwarg6254%_)
                                                       (let* ((_%g62576265%_
                                                               (lambda (_%g62586261%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62586261%_)))
                      (_%g62566285%_
                       (lambda (_%g62586269%_)
                         ((lambda (_%L6272%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6125%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6272%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62586269%_))))
                 (_%g62566285%_ (car _%kwarg6254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6000%_))))
                                           _%g61116122%_))))
                                  (_%g61096289%_
                                   (let ((_%$e6293%_ _%key5998%_))
                                     (if _%$e6293%_
                                         _%$e6293%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60096017%_
                              (lambda (_%g60106013%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60106013%_)))
                             (_%g60086103%_
                              (lambda (_%g60106021%_)
                                ((lambda (_%L6024%_)
                                   (let* ((_%g60376045%_
                                           (lambda (_%g60386041%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60386041%_)))
                                          (_%g60366099%_
                                           (lambda (_%g60386049%_)
                                             ((lambda (_%L6052%_)
                                                (let* ((_%g60656073%_
                                                        (lambda (_%g60666069%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60666069%_)))
                                                       (_%g60646095%_
                                                        (lambda (_%g60666077%_)
                                                          ((lambda (_%L6080%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L6024%_ '())
                                             (cons _%L6080%_ '()))
                                       '())
                                 (cons _%L6052%_ '()))))
                   _%g60666077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60646095%_
                                                   (_%make-main6006%_))))
                                              _%g60386049%_))))
                                     (_%g60366099%_
                                      (_%make-dispatch6007%_ _%L6024%_))))
                                 _%g60106021%_))))
                        (_%g60086103%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5398%_
                  (lambda (_%primary5911%_ _%kwargs5913%_ _%strict?5914%_)
                    (let* ((_%g59165935%_
                            (lambda (_%g59175931%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59175931%_)))
                           (_%g59155994%_
                            (lambda (_%g59175939%_)
                              (if (gx#stx-pair? _%g59175939%_)
                                  (let ((_%e59215942%_
                                         (gx#syntax-e _%g59175939%_)))
                                    (let ((_%hd59225946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59215942%_)))
                                          (_%tl59235949%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59215942%_))))
                                      (if (gx#stx-pair? _%tl59235949%_)
                                          (let ((_%e59245952%_
                                                 (gx#syntax-e _%tl59235949%_)))
                                            (let ((_%hd59255956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59245952%_)))
                                                  (_%tl59265959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59245952%_))))
                                              (if (gx#stx-pair? _%tl59265959%_)
                                                  (let ((_%e59275962%_
                                                         (gx#syntax-e
                                                          _%tl59265959%_)))
                                                    (let ((_%hd59285966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59275962%_)))
                                                          (_%tl59295969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59275962%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59295969%_)
                                                          ((lambda (_%L5972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5974%_
                            _%L5975%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5972%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5974%_ (cons _%L5972%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59285966%_
                   _%hd59255956%_
                   _%hd59225946%_)
                  (_%g59165935%_ _%g59175939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59165935%_
                                                   _%g59175939%_))))
                                          (_%g59165935%_ _%g59175939%_))))
                                  (_%g59165935%_ _%g59175939%_)))))
                      (_%g59155994%_
                       (list (if _%strict?5914%_
                                 (_%generate-kw-table5399%_
                                  (map car _%kwargs5913%_))
                                 '#f)
                             _%primary5911%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5399%_
                  (lambda (_%kws5885%_)
                    (let _%rehash5888%_ ((_%pht5891%_
                                          (let ((__tmp21006
                                                 (length _%kws5885%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp21006 '#f))))
                      (let _%lp5894%_ ((_%rest5897%_ _%kws5885%_))
                        (if (pair? _%rest5897%_)
                            (let* ((_%key5900%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5897%_)))
                                   (_%rest5903%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5897%_)))
                                   (_%pos5906%_
                                    (let ((__tmp21003
                                           (keyword-hash _%key5900%_))
                                          (__tmp21002
                                           (vector-length _%pht5891%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp21003 __tmp21002))))
                              (if (vector-ref _%pht5891%_ _%pos5906%_)
                                  (if (let ((__tmp21004
                                             (vector-length _%pht5891%_)))
                                        (declare (not safe))
                                        (##fx< __tmp21004 '8192))
                                      (_%rehash5888%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp21005
                                                (vector-length _%pht5891%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp21005))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5885%_))
                                  (begin
                                    (vector-set!
                                     _%pht5891%_
                                     _%pos5906%_
                                     _%key5900%_)
                                    (_%lp5894%_ _%rest5903%_))))
                            _%pht5891%_))))))
          (let* ((_%__stx1950919510%_ _%stx5383%_)
                 (_%g54035434%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1950919510%_))))
            (let ((_%__kont1951219513%_
                   (lambda (_%L5866%_ _%L5868%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5868%_ _%L5866%_))))
                  (_%__kont1951419515%_
                   (lambda (_%L5638%_ _%L5640%_)
                     (let ((_g21007_ (_%opt-lambda-split5389%_ _%L5640%_)))
                       (begin
                         (let ((_g21008_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21007_)
                                      (##values-length _g21007_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21008_ 3)))
                               (error "Context expects 3 values" _g21008_)))
                         (let ((_%pre5653%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21007_ 0)))
                               (_%opt5655%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21007_ 1)))
                               (_%tail5656%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21007_ 2))))
                           (let* ((_%g56585666%_
                                   (lambda (_%g56595662%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56595662%_)))
                                  (_%g56575835%_
                                   (lambda (_%g56595670%_)
                                     ((lambda (_%L5673%_)
                                        (let* ((_%g56865694%_
                                                (lambda (_%g56875690%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56875690%_)))
                                               (_%g56855831%_
                                                (lambda (_%g56875698%_)
                                                  ((lambda (_%L5701%_)
                                                     (let* ((_%g57145731%_
                                                             (lambda (_%g57155727%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57155727%_)))
                                                            (_%g57135827%_
                                                             (lambda (_%g57155735%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57155735%_)
                           (let ((_g21009_
                                  (gx#syntax-split-splice _%g57155735%_ '0)))
                             (begin
                               (let ((_g21010_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g21009_)
                                            (##values-length _g21009_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g21010_ 2)))
                                     (error "Context expects 2 values"
                                            _g21010_)))
                               (let ((_%target57175738%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21009_ 0)))
                                     (_%tl57195741%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21009_ 1))))
                                 (if (gx#stx-null? _%tl57195741%_)
                                     (letrec ((_%loop57205744%_
                                               (lambda (_%hd57185748%_
                                                        _%clause57245751%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57185748%_)
                                                     (let ((_%e57215754%_
                                                            (gx#syntax-e
                                                             _%hd57185748%_)))
                                                       (let ((_%lp-hd57225758%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57215754%_)))
                     (_%lp-tl57235761%_
                      (let () (declare (not safe)) (##cdr _%e57215754%_))))
                 (_%loop57205744%_
                  _%lp-tl57235761%_
                  (cons _%lp-hd57225758%_ _%clause57245751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57255764%_
                                                            (reverse _%clause57245751%_)))
                                                       ((lambda (_%L5768%_)
                                                          (let* ((_%g57855793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57865789%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57865789%_)))
                         (_%g57845815%_
                          (lambda (_%g57865797%_)
                            ((lambda (_%L5800%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5673%_ '())
                                                       (cons _%L5701%_ '()))
                                                 '())
                                           (cons _%L5800%_ '()))))
                             _%g57865797%_))))
                    (_%g57845815%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58185821%_ _%g58195824%_)
                                     (cons _%g58185821%_ _%g58195824%_))
                                   '()
                                   _%L5768%_))
                      (gx#stx-source _%stx5383%_)))))
                _%clause57255764%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57205744%_
                                        _%target57175738%_
                                        '()))
                                     (_%g57145731%_ _%g57155735%_)))))
                           (_%g57145731%_ _%g57155735%_)))))
               (_%g57135827%_
                (_%generate-opt-dispatch5394%_
                 _%L5673%_
                 _%pre5653%_
                 _%opt5655%_
                 _%tail5656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56875698%_))))
                                          (_%g56855831%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5393%_
                                             _%pre5653%_
                                             _%opt5655%_
                                             _%tail5656%_
                                             _%L5638%_)
                                            (gx#stx-source _%stx5383%_)))))
                                      _%g56595670%_))))
                             (_%g56575835%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1951619517%_
                   (lambda (_%L5461%_ _%L5463%_)
                     (let* ((_%g54795486%_
                             (lambda (_%g54805482%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54805482%_)))
                            (_%g54785607%_
                             (lambda (_%g54805490%_)
                               ((lambda ()
                                  (let ((_g21011_
                                         (_%kw-lambda-split5391%_ _%L5463%_)))
                                    (begin
                                      (let ((_g21012_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21011_)
                                                   (##values-length _g21011_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21012_ 3)))
                                            (error "Context expects 3 values"
                                                   _g21012_)))
                                      (let ((_%key5499%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21011_ 0)))
                                            (_%kwargs5501%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21011_ 1)))
                                            (_%args5502%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21011_ 2))))
                                        (let* ((_%g55045512%_
                                                (lambda (_%g55055508%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55055508%_)))
                                               (_%g55035603%_
                                                (lambda (_%g55055516%_)
                                                  ((lambda (_%L5519%_)
                                                     (let* ((_%g55375545%_
                                                             (lambda (_%g55385541%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55385541%_)))
                                                            (_%g55365599%_
                                                             (lambda (_%g55385549%_)
                                                               ((lambda (_%L5552%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55655573%_
                                  (lambda (_%g55665569%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55665569%_)))
                                 (_%g55645595%_
                                  (lambda (_%g55665577%_)
                                    ((lambda (_%L5580%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5552%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5580%_ '()))))
                                     _%g55665577%_))))
                            (_%g55645595%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5398%_
                               _%L5519%_
                               _%kwargs5501%_
                               (not _%key5499%_))
                              (gx#stx-source _%stx5383%_)))))
                        _%g55385549%_))))
               (_%g55365599%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5397%_
                  _%key5499%_
                  _%kwargs5501%_
                  _%args5502%_
                  _%L5461%_)
                 (gx#stx-source _%stx5383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55055516%_))))
                                          (_%g55035603%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54785607%_
                        (_%check-duplicate-bindings5392%_ _%L5463%_))))))
              (let* ((_%__match1955419555%_
                      (lambda (_%e54235441%_
                               _%hd54245445%_
                               _%tl54255448%_
                               _%e54265451%_
                               _%hd54275455%_
                               _%tl54285458%_)
                        (let ((_%L5461%_ _%tl54285458%_)
                              (_%L5463%_ _%hd54275455%_))
                          (if (_%kw-lambda?5390%_ _%L5463%_)
                              (_%__kont1951619517%_ _%L5461%_ _%L5463%_)
                              (let () (declare (not safe)) (_%g54035434%_))))))
                     (_%__match1954219543%_
                      (lambda (_%e54155618%_
                               _%hd54165622%_
                               _%tl54175625%_
                               _%e54185628%_
                               _%hd54195632%_
                               _%tl54205635%_)
                        (let ((_%L5638%_ _%tl54205635%_)
                              (_%L5640%_ _%hd54195632%_))
                          (if (_%opt-lambda?5388%_ _%L5640%_)
                              (_%__kont1951419515%_ _%L5638%_ _%L5640%_)
                              (_%__match1955419555%_
                               _%e54155618%_
                               _%hd54165622%_
                               _%tl54175625%_
                               _%e54185628%_
                               _%hd54195632%_
                               _%tl54205635%_)))))
                     (_%__match1953019531%_
                      (lambda (_%e54075846%_
                               _%hd54085850%_
                               _%tl54095853%_
                               _%e54105856%_
                               _%hd54115860%_
                               _%tl54125863%_)
                        (let ((_%L5866%_ _%tl54125863%_)
                              (_%L5868%_ _%hd54115860%_))
                          (if (_%simple-lambda?5386%_ _%L5868%_)
                              (_%__kont1951219513%_ _%L5866%_ _%L5868%_)
                              (_%__match1954219543%_
                               _%e54075846%_
                               _%hd54085850%_
                               _%tl54095853%_
                               _%e54105856%_
                               _%hd54115860%_
                               _%tl54125863%_))))))
                (if (gx#stx-pair? _%__stx1950919510%_)
                    (let ((_%e54075846%_ (gx#syntax-e _%__stx1950919510%_)))
                      (let ((_%tl54095853%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54075846%_)))
                            (_%hd54085850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54075846%_))))
                        (if (gx#stx-pair? _%tl54095853%_)
                            (let ((_%e54105856%_ (gx#syntax-e _%tl54095853%_)))
                              (let ((_%tl54125863%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54105856%_)))
                                    (_%hd54115860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54105856%_))))
                                (_%__match1953019531%_
                                 _%e54075846%_
                                 _%hd54085850%_
                                 _%tl54095853%_
                                 _%e54105856%_
                                 _%hd54115860%_
                                 _%tl54125863%_)))
                            (let () (declare (not safe)) (_%g54035434%_)))))
                    (let () (declare (not safe)) (_%g54035434%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8808%_)
        (let* ((_%__stx1955719558%_ _%$stx8808%_)
               (_%g88148878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1955719558%_))))
          (let ((_%__kont1956019561%_
                 (lambda (_%L9108%_ _%L9110%_ _%L9111%_ _%L9112%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9112%_ _%L9111%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9110%_
                                                 (foldr (lambda (_%g91349137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91359140%_)
                  (cons _%g91349137%_ _%g91359140%_))
                '()
                _%L9108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1956419565%_
                 (lambda (_%L9000%_ _%L9002%_ _%L9003%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L9003%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9002%_
                                                 (foldr (lambda (_%g90229025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90239028%_)
                  (cons _%g90229025%_ _%g90239028%_))
                '()
                _%L9000%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1956819569%_
                 (lambda (_%L8915%_ _%L8917%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8917%_ '()) (cons _%L8915%_ '()))))))
            (let* ((_%__match1964819649%_
                    (lambda (_%e88648885%_
                             _%hd88658889%_
                             _%tl88668892%_
                             _%e88678895%_
                             _%hd88688899%_
                             _%tl88698902%_
                             _%e88708905%_
                             _%hd88718909%_
                             _%tl88728912%_)
                      (let ((_%L8915%_ _%hd88718909%_)
                            (_%L8917%_ _%hd88688899%_))
                        (if (gx#identifier? _%L8917%_)
                            (_%__kont1956819569%_ _%L8915%_ _%L8917%_)
                            (let () (declare (not safe)) (_%g88148878%_))))))
                   (_%__match1964019641%_
                    (lambda (_%e88648885%_
                             _%hd88658889%_
                             _%tl88668892%_
                             _%e88678895%_
                             _%hd88688899%_
                             _%tl88698902%_)
                      (if (gx#stx-pair? _%tl88698902%_)
                          (let ((_%e88708905%_ (gx#syntax-e _%tl88698902%_)))
                            (let ((_%tl88728912%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88708905%_)))
                                  (_%hd88718909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88708905%_))))
                              (if (gx#stx-null? _%tl88728912%_)
                                  (_%__match1964819649%_
                                   _%e88648885%_
                                   _%hd88658889%_
                                   _%tl88668892%_
                                   _%e88678895%_
                                   _%hd88688899%_
                                   _%tl88698902%_
                                   _%e88708905%_
                                   _%hd88718909%_
                                   _%tl88728912%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88148878%_)))))
                          (let () (declare (not safe)) (_%g88148878%_)))))
                   (_%__match1962819629%_
                    (lambda (_%e88448940%_
                             _%hd88458944%_
                             _%tl88468947%_
                             _%e88478950%_
                             _%hd88488954%_
                             _%tl88498957%_
                             _%e88508960%_
                             _%hd88518964%_
                             _%tl88528967%_
                             _%__splice1956619567%_
                             _%target88538970%_
                             _%tl88558973%_)
                      (letrec ((_%loop88568976%_
                                (lambda (_%hd88548980%_ _%body88608983%_)
                                  (if (gx#stx-pair? _%hd88548980%_)
                                      (let ((_%e88578986%_
                                             (gx#syntax-e _%hd88548980%_)))
                                        (let ((_%lp-tl88598993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88578986%_)))
                                              (_%lp-hd88588990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88578986%_))))
                                          (_%loop88568976%_
                                           _%lp-tl88598993%_
                                           (cons _%lp-hd88588990%_
                                                 _%body88608983%_))))
                                      (let ((_%body88618996%_
                                             (reverse _%body88608983%_)))
                                        (let ((_%L9000%_ _%body88618996%_)
                                              (_%L9002%_ _%tl88528967%_)
                                              (_%L9003%_ _%hd88518964%_))
                                          (if (gx#identifier? _%L9003%_)
                                              (_%__kont1956419565%_
                                               _%L9000%_
                                               _%L9002%_
                                               _%L9003%_)
                                              (_%__match1964019641%_
                                               _%e88448940%_
                                               _%hd88458944%_
                                               _%tl88468947%_
                                               _%e88478950%_
                                               _%hd88488954%_
                                               _%tl88498957%_))))))))
                        (_%loop88568976%_ _%target88538970%_ '()))))
                   (_%__match1960219603%_
                    (lambda (_%e88209038%_
                             _%hd88219042%_
                             _%tl88229045%_
                             _%e88239048%_
                             _%hd88249052%_
                             _%tl88259055%_
                             _%e88269058%_
                             _%hd88279062%_
                             _%tl88289065%_
                             _%e88299068%_
                             _%hd88309072%_
                             _%tl88319075%_
                             _%__splice1956219563%_
                             _%target88329078%_
                             _%tl88349081%_)
                      (letrec ((_%loop88359084%_
                                (lambda (_%hd88339088%_ _%body88399091%_)
                                  (if (gx#stx-pair? _%hd88339088%_)
                                      (let ((_%e88369094%_
                                             (gx#syntax-e _%hd88339088%_)))
                                        (let ((_%lp-tl88389101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88369094%_)))
                                              (_%lp-hd88379098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88369094%_))))
                                          (_%loop88359084%_
                                           _%lp-tl88389101%_
                                           (cons _%lp-hd88379098%_
                                                 _%body88399091%_))))
                                      (let ((_%body88409104%_
                                             (reverse _%body88399091%_)))
                                        (_%__kont1956019561%_
                                         _%body88409104%_
                                         _%tl88289065%_
                                         _%tl88319075%_
                                         _%hd88309072%_))))))
                        (_%loop88359084%_ _%target88329078%_ '())))))
              (if (gx#stx-pair? _%__stx1955719558%_)
                  (let ((_%e88209038%_ (gx#syntax-e _%__stx1955719558%_)))
                    (let ((_%tl88229045%_
                           (let () (declare (not safe)) (##cdr _%e88209038%_)))
                          (_%hd88219042%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88209038%_))))
                      (if (gx#stx-pair? _%tl88229045%_)
                          (let ((_%e88239048%_ (gx#syntax-e _%tl88229045%_)))
                            (let ((_%tl88259055%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88239048%_)))
                                  (_%hd88249052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88239048%_))))
                              (if (gx#stx-pair? _%hd88249052%_)
                                  (let ((_%e88269058%_
                                         (gx#syntax-e _%hd88249052%_)))
                                    (let ((_%tl88289065%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88269058%_)))
                                          (_%hd88279062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88269058%_))))
                                      (if (gx#stx-pair? _%hd88279062%_)
                                          (let ((_%e88299068%_
                                                 (gx#syntax-e _%hd88279062%_)))
                                            (let ((_%tl88319075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88299068%_)))
                                                  (_%hd88309072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88299068%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88259055%_)
                                                  (let ((_%__splice1956219563%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88259055%_
                                                          '0)))
                                                    (let ((_%tl88349081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1956219563%_
                                                              '1)))
                                                          (_%target88329078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1956219563%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88349081%_)
                                                          (_%__match1960219603%_
                                                           _%e88209038%_
                                                           _%hd88219042%_
                                                           _%tl88229045%_
                                                           _%e88239048%_
                                                           _%hd88249052%_
                                                           _%tl88259055%_
                                                           _%e88269058%_
                                                           _%hd88279062%_
                                                           _%tl88289065%_
                                                           _%e88299068%_
                                                           _%hd88309072%_
                                                           _%tl88319075%_
                                                           _%__splice1956219563%_
                                                           _%target88329078%_
                                                           _%tl88349081%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88259055%_)
                                                              (let ((_%e88708905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88259055%_)))
                        (let ((_%tl88728912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88708905%_)))
                              (_%hd88718909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88708905%_))))
                          (if (gx#stx-null? _%tl88728912%_)
                              (_%__match1964819649%_
                               _%e88209038%_
                               _%hd88219042%_
                               _%tl88229045%_
                               _%e88239048%_
                               _%hd88249052%_
                               _%tl88259055%_
                               _%e88708905%_
                               _%hd88718909%_
                               _%tl88728912%_)
                              (let () (declare (not safe)) (_%g88148878%_)))))
                      (let () (declare (not safe)) (_%g88148878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88259055%_)
                                                      (let ((_%e88708905%_
                                                             (gx#syntax-e
                                                              _%tl88259055%_)))
                                                        (let ((_%tl88728912%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88708905%_)))
                      (_%hd88718909%_
                       (let () (declare (not safe)) (##car _%e88708905%_))))
                  (if (gx#stx-null? _%tl88728912%_)
                      (_%__match1964819649%_
                       _%e88209038%_
                       _%hd88219042%_
                       _%tl88229045%_
                       _%e88239048%_
                       _%hd88249052%_
                       _%tl88259055%_
                       _%e88708905%_
                       _%hd88718909%_
                       _%tl88728912%_)
                      (let () (declare (not safe)) (_%g88148878%_)))))
              (let () (declare (not safe)) (_%g88148878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88259055%_)
                                              (let ((_%__splice1956619567%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl88259055%_
                                                      '0)))
                                                (let ((_%tl88558973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1956619567%_
                                                          '1)))
                                                      (_%target88538970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1956619567%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88558973%_)
                                                      (_%__match1962819629%_
                                                       _%e88209038%_
                                                       _%hd88219042%_
                                                       _%tl88229045%_
                                                       _%e88239048%_
                                                       _%hd88249052%_
                                                       _%tl88259055%_
                                                       _%e88269058%_
                                                       _%hd88279062%_
                                                       _%tl88289065%_
                                                       _%__splice1956619567%_
                                                       _%target88538970%_
                                                       _%tl88558973%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88259055%_)
                                                          (let ((_%e88708905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88259055%_)))
                    (let ((_%tl88728912%_
                           (let () (declare (not safe)) (##cdr _%e88708905%_)))
                          (_%hd88718909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88708905%_))))
                      (if (gx#stx-null? _%tl88728912%_)
                          (_%__match1964819649%_
                           _%e88209038%_
                           _%hd88219042%_
                           _%tl88229045%_
                           _%e88239048%_
                           _%hd88249052%_
                           _%tl88259055%_
                           _%e88708905%_
                           _%hd88718909%_
                           _%tl88728912%_)
                          (let () (declare (not safe)) (_%g88148878%_)))))
                  (let () (declare (not safe)) (_%g88148878%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88259055%_)
                                                  (let ((_%e88708905%_
                                                         (gx#syntax-e
                                                          _%tl88259055%_)))
                                                    (let ((_%tl88728912%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88708905%_)))
                                                          (_%hd88718909%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88708905%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88728912%_)
                                                          (_%__match1964819649%_
                                                           _%e88209038%_
                                                           _%hd88219042%_
                                                           _%tl88229045%_
                                                           _%e88239048%_
                                                           _%hd88249052%_
                                                           _%tl88259055%_
                                                           _%e88708905%_
                                                           _%hd88718909%_
                                                           _%tl88728912%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88148878%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88148878%_)))))))
                                  (if (gx#stx-pair? _%tl88259055%_)
                                      (let ((_%e88708905%_
                                             (gx#syntax-e _%tl88259055%_)))
                                        (let ((_%tl88728912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88708905%_)))
                                              (_%hd88718909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88708905%_))))
                                          (if (gx#stx-null? _%tl88728912%_)
                                              (_%__match1964819649%_
                                               _%e88209038%_
                                               _%hd88219042%_
                                               _%tl88229045%_
                                               _%e88239048%_
                                               _%hd88249052%_
                                               _%tl88259055%_
                                               _%e88708905%_
                                               _%hd88718909%_
                                               _%tl88728912%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g88148878%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88148878%_))))))
                          (let () (declare (not safe)) (_%g88148878%_)))))
                  (let () (declare (not safe)) (_%g88148878%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9149%_)
        (let* ((_%g91539177%_
                (lambda (_%g91549173%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91549173%_)))
               (_%g91529262%_
                (lambda (_%g91549181%_)
                  (if (gx#stx-pair? _%g91549181%_)
                      (let ((_%e91579184%_ (gx#syntax-e _%g91549181%_)))
                        (let ((_%hd91589188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91579184%_)))
                              (_%tl91599191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91579184%_))))
                          (if (gx#stx-pair? _%tl91599191%_)
                              (let ((_%e91609194%_
                                     (gx#syntax-e _%tl91599191%_)))
                                (let ((_%hd91619198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91609194%_)))
                                      (_%tl91629201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91609194%_))))
                                  (if (gx#stx-pair/null? _%tl91629201%_)
                                      (let ((_g21013_
                                             (gx#syntax-split-splice
                                              _%tl91629201%_
                                              '0)))
                                        (begin
                                          (let ((_g21014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21013_)
                                                       (##values-length
                                                        _g21013_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21014_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21014_)))
                                          (let ((_%target91639204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21013_ 0)))
                                                (_%tl91659207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21013_ 1))))
                                            (if (gx#stx-null? _%tl91659207%_)
                                                (letrec ((_%loop91669210%_
                                                          (lambda (_%hd91649214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91709217%_)
                    (if (gx#stx-pair? _%hd91649214%_)
                        (let ((_%e91679220%_ (gx#syntax-e _%hd91649214%_)))
                          (let ((_%lp-hd91689224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91679220%_)))
                                (_%lp-tl91699227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91679220%_))))
                            (_%loop91669210%_
                             _%lp-tl91699227%_
                             (cons _%lp-hd91689224%_ _%clauses91709217%_))))
                        (let ((_%clauses91719230%_
                               (reverse _%clauses91709217%_)))
                          ((lambda (_%L9234%_ _%L9236%_)
                             (if (gx#identifier? _%L9236%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9236%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92539256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92549259%_)
                          (cons _%g92539256%_ _%g92549259%_))
                        '()
                        _%L9234%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91539177%_ _%g91549181%_)))
                           _%clauses91719230%_
                           _%hd91619198%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91669210%_
                                                   _%target91639204%_
                                                   '()))
                                                (_%g91539177%_
                                                 _%g91549181%_)))))
                                      (_%g91539177%_ _%g91549181%_))))
                              (_%g91539177%_ _%g91549181%_))))
                      (_%g91539177%_ _%g91549181%_)))))
          (_%g91529262%_ _%$stx9149%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9267%_)
        (let* ((_%g92719289%_
                (lambda (_%g92729285%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92729285%_)))
               (_%g92709344%_
                (lambda (_%g92729293%_)
                  (if (gx#stx-pair? _%g92729293%_)
                      (let ((_%e92759296%_ (gx#syntax-e _%g92729293%_)))
                        (let ((_%hd92769300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92759296%_)))
                              (_%tl92779303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92759296%_))))
                          (if (gx#stx-pair? _%tl92779303%_)
                              (let ((_%e92789306%_
                                     (gx#syntax-e _%tl92779303%_)))
                                (let ((_%hd92799310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92789306%_)))
                                      (_%tl92809313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92789306%_))))
                                  (if (gx#stx-pair? _%tl92809313%_)
                                      (let ((_%e92819316%_
                                             (gx#syntax-e _%tl92809313%_)))
                                        (let ((_%hd92829320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92819316%_)))
                                              (_%tl92839323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92819316%_))))
                                          (if (gx#stx-null? _%tl92839323%_)
                                              ((lambda (_%L9326%_ _%L9328%_)
                                                 (if (gx#identifier-list?
                                                      _%L9328%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9326%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92719289%_
                                                      _%g92729293%_)))
                                               _%hd92829320%_
                                               _%hd92799310%_)
                                              (_%g92719289%_ _%g92729293%_))))
                                      (_%g92719289%_ _%g92729293%_))))
                              (_%g92719289%_ _%g92729293%_))))
                      (_%g92719289%_ _%g92729293%_)))))
          (_%g92709344%_ _%$stx9267%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9348%_)
        (let* ((_%g93529376%_
                (lambda (_%g93539372%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93539372%_)))
               (_%g93519461%_
                (lambda (_%g93539380%_)
                  (if (gx#stx-pair? _%g93539380%_)
                      (let ((_%e93569383%_ (gx#syntax-e _%g93539380%_)))
                        (let ((_%hd93579387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93569383%_)))
                              (_%tl93589390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93569383%_))))
                          (if (gx#stx-pair? _%tl93589390%_)
                              (let ((_%e93599393%_
                                     (gx#syntax-e _%tl93589390%_)))
                                (let ((_%hd93609397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93599393%_)))
                                      (_%tl93619400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93599393%_))))
                                  (if (gx#stx-pair/null? _%tl93619400%_)
                                      (let ((_g21015_
                                             (gx#syntax-split-splice
                                              _%tl93619400%_
                                              '0)))
                                        (begin
                                          (let ((_g21016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21015_)
                                                       (##values-length
                                                        _g21015_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21016_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21016_)))
                                          (let ((_%target93629403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21015_ 0)))
                                                (_%tl93649406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21015_ 1))))
                                            (if (gx#stx-null? _%tl93649406%_)
                                                (letrec ((_%loop93659409%_
                                                          (lambda (_%hd93639413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93699416%_)
                    (if (gx#stx-pair? _%hd93639413%_)
                        (let ((_%e93669419%_ (gx#syntax-e _%hd93639413%_)))
                          (let ((_%lp-hd93679423%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93669419%_)))
                                (_%lp-tl93689426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93669419%_))))
                            (_%loop93659409%_
                             _%lp-tl93689426%_
                             (cons _%lp-hd93679423%_ _%clause93699416%_))))
                        (let ((_%clause93709429%_
                               (reverse _%clause93699416%_)))
                          ((lambda (_%L9433%_ _%L9435%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9435%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94529455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94539458%_)
                            (cons _%g94529455%_ _%g94539458%_))
                          '()
                          _%L9433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93709429%_
                           _%hd93609397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93659409%_
                                                   _%target93629403%_
                                                   '()))
                                                (_%g93529376%_
                                                 _%g93539380%_)))))
                                      (_%g93529376%_ _%g93539380%_))))
                              (_%g93529376%_ _%g93539380%_))))
                      (_%g93529376%_ _%g93539380%_)))))
          (_%g93519461%_ _%$stx9348%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9466%_)
        (letrec ((_%parse-clauses9469%_
                  (lambda (_%e11944%_ _%clauses11946%_)
                    (let _%lp11948%_ ((_%rest11951%_ _%clauses11946%_)
                                      (_%datums11953%_ '())
                                      (_%dispatch11954%_ '())
                                      (_%default11955%_ '#f))
                      (let* ((_%__stx1974719748%_ _%rest11951%_)
                             (_%g1195811970%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1974719748%_))))
                        (let ((_%__kont1975019751%_
                               (lambda (_%L12002%_ _%L12004%_)
                                 (let* ((_%__stx1965119652%_ _%L12004%_)
                                        (_%g1202212095%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1965119652%_))))
                                   (let ((_%__kont1965419655%_
                                          (lambda (_%L12460%_)
                                            (if (gx#stx-null? _%L12002%_)
                                                (let* ((_%g1247512483%_
                                                        (lambda (_%g1247612479%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1247612479%_)))
                                                       (_%g1247412502%_
                                                        (lambda (_%g1247612487%_)
                                                          ((lambda (_%L12490%_)
                                                             (_%lp11948%_
                                                              '()
                                                              _%datums11953%_
                                                              _%dispatch11954%_
                                                              (cons _%L12460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12490%_ '()))))
                   _%g1247612487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1247412502%_ _%e11944%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9466%_
                                                 _%L12004%_))))
                                         (_%__kont1965619657%_
                                          (lambda (_%L12400%_)
                                            (if (gx#stx-null? _%L12002%_)
                                                (_%lp11948%_
                                                 '()
                                                 _%datums11953%_
                                                 _%dispatch11954%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1241412417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1241512420%_)
                        (cons _%g1241412417%_ _%g1241512420%_))
                      '()
                      _%L12400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9466%_
                                                 _%L12004%_))))
                                         (_%__kont1966019661%_
                                          (lambda (_%L12285%_ _%L12287%_)
                                            (if (null? (foldr (lambda (_%g1230512308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1230612311%_)
                        (cons _%g1230512308%_ _%g1230612311%_))
                      '()
                      _%L12287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11948%_
                                                 _%L12002%_
                                                 _%datums11953%_
                                                 _%dispatch11954%_
                                                 _%default11955%_)
                                                (let* ((_%g1231412322%_
                                                        (lambda (_%g1231512318%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1231512318%_)))
                                                       (_%g1231312349%_
                                                        (lambda (_%g1231512326%_)
                                                          ((lambda (_%L12329%_)
                                                             (_%lp11948%_
                                                              _%L12002%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1234012343%_
                                                 _%g1234112346%_)
                                          (cons _%g1234012343%_
                                                _%g1234112346%_))
                                        '()
                                        _%L12287%_))
                            _%datums11953%_)
                      (cons (cons _%L12285%_ (cons _%L12329%_ '()))
                            _%dispatch11954%_)
                      _%default11955%_))
                   _%g1231512326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1231312349%_
                                                   _%e11944%_)))))
                                         (_%__kont1966419665%_
                                          (lambda (_%L12172%_ _%L12174%_)
                                            (if (null? (foldr (lambda (_%g1219312196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1219412199%_)
                        (cons _%g1219312196%_ _%g1219412199%_))
                      '()
                      _%L12174%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11948%_
                                                 _%L12002%_
                                                 _%datums11953%_
                                                 _%dispatch11954%_
                                                 _%default11955%_)
                                                (_%lp11948%_
                                                 _%L12002%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1220112204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1220212207%_)
                             (cons _%g1220112204%_ _%g1220212207%_))
                           '()
                           _%L12174%_))
               _%datums11953%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1220912212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1221012215%_)
                              (cons _%g1220912212%_ _%g1221012215%_))
                            '()
                            _%L12172%_))
               _%dispatch11954%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11955%_)))))
                                     (let* ((_%__match1974419745%_
                                             (lambda (_%e1206912102%_
                                                      _%hd1207012106%_
                                                      _%tl1207112109%_
                                                      _%__splice1966619667%_
                                                      _%target1207212112%_
                                                      _%tl1207412115%_)
                                               (letrec ((_%loop1207512118%_
                                                         (lambda (_%hd1207312122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1207912125%_)
                   (if (gx#stx-pair? _%hd1207312122%_)
                       (let ((_%e1207612128%_ (gx#syntax-e _%hd1207312122%_)))
                         (let ((_%lp-tl1207812135%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1207612128%_)))
                               (_%lp-hd1207712132%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1207612128%_))))
                           (_%loop1207512118%_
                            _%lp-tl1207812135%_
                            (cons _%lp-hd1207712132%_ _%datum1207912125%_))))
                       (let ((_%datum1208012138%_
                              (reverse _%datum1207912125%_)))
                         (if (gx#stx-pair/null? _%tl1207112109%_)
                             (let ((_%__splice1966819669%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1207112109%_
                                     '0)))
                               (let ((_%tl1208312145%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1966819669%_
                                         '1)))
                                     (_%target1208112142%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1966819669%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1208312145%_)
                                     (letrec ((_%loop1208412148%_
                                               (lambda (_%hd1208212152%_
                                                        _%body1208812155%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1208212152%_)
                                                     (let ((_%e1208512158%_
                                                            (gx#syntax-e
                                                             _%hd1208212152%_)))
                                                       (let ((_%lp-tl1208712165%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1208512158%_)))
                     (_%lp-hd1208612162%_
                      (let () (declare (not safe)) (##car _%e1208512158%_))))
                 (_%loop1208412148%_
                  _%lp-tl1208712165%_
                  (cons _%lp-hd1208612162%_ _%body1208812155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1208912168%_
                                                            (reverse _%body1208812155%_)))
                                                       (_%__kont1966419665%_
                                                        _%body1208912168%_
                                                        _%datum1208012138%_))))))
                                       (_%loop1208412148%_
                                        _%target1208112142%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1202212095%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1202212095%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1207512118%_
                                                  _%target1207212112%_
                                                  '()))))
                                            (_%__match1973019731%_
                                             (lambda (_%e1204912225%_
                                                      _%hd1205012229%_
                                                      _%tl1205112232%_
                                                      _%__splice1966219663%_
                                                      _%target1205212235%_
                                                      _%tl1205412238%_)
                                               (letrec ((_%loop1205512241%_
                                                         (lambda (_%hd1205312245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1205912248%_)
                   (if (gx#stx-pair? _%hd1205312245%_)
                       (let ((_%e1205612251%_ (gx#syntax-e _%hd1205312245%_)))
                         (let ((_%lp-tl1205812258%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1205612251%_)))
                               (_%lp-hd1205712255%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1205612251%_))))
                           (_%loop1205512241%_
                            _%lp-tl1205812258%_
                            (cons _%lp-hd1205712255%_ _%datum1205912248%_))))
                       (let ((_%datum1206012261%_
                              (reverse _%datum1205912248%_)))
                         (if (gx#stx-pair? _%tl1205112232%_)
                             (let ((_%e1206112265%_
                                    (gx#syntax-e _%tl1205112232%_)))
                               (let ((_%tl1206312272%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1206112265%_)))
                                     (_%hd1206212269%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1206112265%_))))
                                 (if (gx#identifier? _%hd1206212269%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21017_|
                                          _%hd1206212269%_)
                                         (if (gx#stx-pair? _%tl1206312272%_)
                                             (let ((_%e1206412275%_
                                                    (gx#syntax-e
                                                     _%tl1206312272%_)))
                                               (let ((_%tl1206612282%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1206412275%_)))
                                                     (_%hd1206512279%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1206412275%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1206612282%_)
                                                     (_%__kont1966019661%_
                                                      _%hd1206512279%_
                                                      _%datum1206012261%_)
                                                     (_%__match1974419745%_
                                                      _%e1204912225%_
                                                      _%hd1205012229%_
                                                      _%tl1205112232%_
                                                      _%__splice1966219663%_
                                                      _%target1205212235%_
                                                      _%tl1205412238%_))))
                                             (_%__match1974419745%_
                                              _%e1204912225%_
                                              _%hd1205012229%_
                                              _%tl1205112232%_
                                              _%__splice1966219663%_
                                              _%target1205212235%_
                                              _%tl1205412238%_))
                                         (_%__match1974419745%_
                                          _%e1204912225%_
                                          _%hd1205012229%_
                                          _%tl1205112232%_
                                          _%__splice1966219663%_
                                          _%target1205212235%_
                                          _%tl1205412238%_))
                                     (_%__match1974419745%_
                                      _%e1204912225%_
                                      _%hd1205012229%_
                                      _%tl1205112232%_
                                      _%__splice1966219663%_
                                      _%target1205212235%_
                                      _%tl1205412238%_))))
                             (_%__match1974419745%_
                              _%e1204912225%_
                              _%hd1205012229%_
                              _%tl1205112232%_
                              _%__splice1966219663%_
                              _%target1205212235%_
                              _%tl1205412238%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1205512241%_
                                                  _%target1205212235%_
                                                  '()))))
                                            (_%__match1971619717%_
                                             (lambda (_%e1203512360%_
                                                      _%hd1203612364%_
                                                      _%tl1203712367%_
                                                      _%__splice1965819659%_
                                                      _%target1203812370%_
                                                      _%tl1204012373%_)
                                               (letrec ((_%loop1204112376%_
                                                         (lambda (_%hd1203912380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1204512383%_)
                   (if (gx#stx-pair? _%hd1203912380%_)
                       (let ((_%e1204212386%_ (gx#syntax-e _%hd1203912380%_)))
                         (let ((_%lp-tl1204412393%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1204212386%_)))
                               (_%lp-hd1204312390%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1204212386%_))))
                           (_%loop1204112376%_
                            _%lp-tl1204412393%_
                            (cons _%lp-hd1204312390%_ _%body1204512383%_))))
                       (let ((_%body1204612396%_ (reverse _%body1204512383%_)))
                         (_%__kont1965619657%_ _%body1204612396%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1204112376%_
                                                  _%target1203812370%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1965119652%_)
                                           (let ((_%e1202512430%_
                                                  (gx#syntax-e
                                                   _%__stx1965119652%_)))
                                             (let ((_%tl1202712437%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1202512430%_)))
                                                   (_%hd1202612434%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1202512430%_))))
                                               (if (gx#identifier?
                                                    _%hd1202612434%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21018_|
                                                        _%hd1202612434%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1202712437%_)
                                                           (let ((_%e1202812440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1202712437%_)))
                     (let ((_%tl1203012447%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1202812440%_)))
                           (_%hd1202912444%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1202812440%_))))
                       (if (gx#identifier? _%hd1202912444%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21019_|
                                _%hd1202912444%_)
                               (if (gx#stx-pair? _%tl1203012447%_)
                                   (let ((_%e1203112450%_
                                          (gx#syntax-e _%tl1203012447%_)))
                                     (let ((_%tl1203312457%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1203112450%_)))
                                           (_%hd1203212454%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1203112450%_))))
                                       (if (gx#stx-null? _%tl1203312457%_)
                                           (_%__kont1965419655%_
                                            _%hd1203212454%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1202712437%_)
                                               (let ((_%__splice1965819659%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1202712437%_
                                                       '0)))
                                                 (let ((_%tl1204012373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1965819659%_
                                                           '1)))
                                                       (_%target1203812370%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1965819659%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1204012373%_)
                                                       (_%__match1971619717%_
                                                        _%e1202512430%_
                                                        _%hd1202612434%_
                                                        _%tl1202712437%_
                                                        _%__splice1965819659%_
                                                        _%target1203812370%_
                                                        _%tl1204012373%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1202612434%_)
                                                           (let ((_%__splice1966219663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1202612434%_
                           '0)))
                     (let ((_%tl1205412238%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1966219663%_ '1)))
                           (_%target1205212235%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1966219663%_ '0))))
                       (if (gx#stx-null? _%tl1205412238%_)
                           (_%__match1973019731%_
                            _%e1202512430%_
                            _%hd1202612434%_
                            _%tl1202712437%_
                            _%__splice1966219663%_
                            _%target1205212235%_
                            _%tl1205412238%_)
                           (let () (declare (not safe)) (_%g1202212095%_)))))
                   (let () (declare (not safe)) (_%g1202212095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1202612434%_)
                                                   (let ((_%__splice1966219663%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202612434%_
                                                           '0)))
                                                     (let ((_%tl1205412238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1966219663%_
                                                               '1)))
                                                           (_%target1205212235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1966219663%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205412238%_)
                                                           (_%__match1973019731%_
                                                            _%e1202512430%_
                                                            _%hd1202612434%_
                                                            _%tl1202712437%_
                                                            _%__splice1966219663%_
                                                            _%target1205212235%_
                                                            _%tl1205412238%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1202212095%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_)))))))
                                   (if (gx#stx-pair/null? _%tl1202712437%_)
                                       (let ((_%__splice1965819659%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1202712437%_
                                               '0)))
                                         (let ((_%tl1204012373%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1965819659%_
                                                   '1)))
                                               (_%target1203812370%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1965819659%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1204012373%_)
                                               (_%__match1971619717%_
                                                _%e1202512430%_
                                                _%hd1202612434%_
                                                _%tl1202712437%_
                                                _%__splice1965819659%_
                                                _%target1203812370%_
                                                _%tl1204012373%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1202612434%_)
                                                   (let ((_%__splice1966219663%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202612434%_
                                                           '0)))
                                                     (let ((_%tl1205412238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1966219663%_
                                                               '1)))
                                                           (_%target1205212235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1966219663%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205412238%_)
                                                           (_%__match1973019731%_
                                                            _%e1202512430%_
                                                            _%hd1202612434%_
                                                            _%tl1202712437%_
                                                            _%__splice1966219663%_
                                                            _%target1205212235%_
                                                            _%tl1205412238%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1202212095%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_))))))
                                       (if (gx#stx-pair/null? _%hd1202612434%_)
                                           (let ((_%__splice1966219663%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202612434%_
                                                   '0)))
                                             (let ((_%tl1205412238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1966219663%_
                                                       '1)))
                                                   (_%target1205212235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1966219663%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205412238%_)
                                                   (_%__match1973019731%_
                                                    _%e1202512430%_
                                                    _%hd1202612434%_
                                                    _%tl1202712437%_
                                                    _%__splice1966219663%_
                                                    _%target1205212235%_
                                                    _%tl1205412238%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                               (if (gx#stx-pair/null? _%tl1202712437%_)
                                   (let ((_%__splice1965819659%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1202712437%_
                                           '0)))
                                     (let ((_%tl1204012373%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1965819659%_
                                               '1)))
                                           (_%target1203812370%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1965819659%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1204012373%_)
                                           (_%__match1971619717%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1965819659%_
                                            _%target1203812370%_
                                            _%tl1204012373%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1202612434%_)
                                               (let ((_%__splice1966219663%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1202612434%_
                                                       '0)))
                                                 (let ((_%tl1205412238%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1966219663%_
                                                           '1)))
                                                       (_%target1205212235%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1966219663%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1205412238%_)
                                                       (_%__match1973019731%_
                                                        _%e1202512430%_
                                                        _%hd1202612434%_
                                                        _%tl1202712437%_
                                                        _%__splice1966219663%_
                                                        _%target1205212235%_
                                                        _%tl1205412238%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1202212095%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202212095%_))))))
                                   (if (gx#stx-pair/null? _%hd1202612434%_)
                                       (let ((_%__splice1966219663%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1202612434%_
                                               '0)))
                                         (let ((_%tl1205412238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1966219663%_
                                                   '1)))
                                               (_%target1205212235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1966219663%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1205412238%_)
                                               (_%__match1973019731%_
                                                _%e1202512430%_
                                                _%hd1202612434%_
                                                _%tl1202712437%_
                                                _%__splice1966219663%_
                                                _%target1205212235%_
                                                _%tl1205412238%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202212095%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1202212095%_)))))
                           (if (gx#stx-pair/null? _%tl1202712437%_)
                               (let ((_%__splice1965819659%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1202712437%_
                                       '0)))
                                 (let ((_%tl1204012373%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1965819659%_
                                           '1)))
                                       (_%target1203812370%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1965819659%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1204012373%_)
                                       (_%__match1971619717%_
                                        _%e1202512430%_
                                        _%hd1202612434%_
                                        _%tl1202712437%_
                                        _%__splice1965819659%_
                                        _%target1203812370%_
                                        _%tl1204012373%_)
                                       (if (gx#stx-pair/null? _%hd1202612434%_)
                                           (let ((_%__splice1966219663%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202612434%_
                                                   '0)))
                                             (let ((_%tl1205412238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1966219663%_
                                                       '1)))
                                                   (_%target1205212235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1966219663%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205412238%_)
                                                   (_%__match1973019731%_
                                                    _%e1202512430%_
                                                    _%hd1202612434%_
                                                    _%tl1202712437%_
                                                    _%__splice1966219663%_
                                                    _%target1205212235%_
                                                    _%tl1205412238%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_))))))
                               (if (gx#stx-pair/null? _%hd1202612434%_)
                                   (let ((_%__splice1966219663%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202612434%_
                                           '0)))
                                     (let ((_%tl1205412238%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1966219663%_
                                               '1)))
                                           (_%target1205212235%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1966219663%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205412238%_)
                                           (_%__match1973019731%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1966219663%_
                                            _%target1205212235%_
                                            _%tl1205412238%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_)))))))
                   (if (gx#stx-pair/null? _%tl1202712437%_)
                       (let ((_%__splice1965819659%_
                              (gx#syntax-split-splice->vector
                               _%tl1202712437%_
                               '0)))
                         (let ((_%tl1204012373%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1965819659%_ '1)))
                               (_%target1203812370%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1965819659%_ '0))))
                           (if (gx#stx-null? _%tl1204012373%_)
                               (_%__match1971619717%_
                                _%e1202512430%_
                                _%hd1202612434%_
                                _%tl1202712437%_
                                _%__splice1965819659%_
                                _%target1203812370%_
                                _%tl1204012373%_)
                               (if (gx#stx-pair/null? _%hd1202612434%_)
                                   (let ((_%__splice1966219663%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202612434%_
                                           '0)))
                                     (let ((_%tl1205412238%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1966219663%_
                                               '1)))
                                           (_%target1205212235%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1966219663%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205412238%_)
                                           (_%__match1973019731%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1966219663%_
                                            _%target1205212235%_
                                            _%tl1205412238%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_))))))
                       (if (gx#stx-pair/null? _%hd1202612434%_)
                           (let ((_%__splice1966219663%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1202612434%_
                                   '0)))
                             (let ((_%tl1205412238%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1966219663%_
                                       '1)))
                                   (_%target1205212235%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1966219663%_
                                       '0))))
                               (if (gx#stx-null? _%tl1205412238%_)
                                   (_%__match1973019731%_
                                    _%e1202512430%_
                                    _%hd1202612434%_
                                    _%tl1202712437%_
                                    _%__splice1966219663%_
                                    _%target1205212235%_
                                    _%tl1205412238%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_)))))
                           (let () (declare (not safe)) (_%g1202212095%_)))))
               (if (gx#stx-pair/null? _%hd1202612434%_)
                   (let ((_%__splice1966219663%_
                          (gx#syntax-split-splice->vector
                           _%hd1202612434%_
                           '0)))
                     (let ((_%tl1205412238%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1966219663%_ '1)))
                           (_%target1205212235%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1966219663%_ '0))))
                       (if (gx#stx-null? _%tl1205412238%_)
                           (_%__match1973019731%_
                            _%e1202512430%_
                            _%hd1202612434%_
                            _%tl1202712437%_
                            _%__splice1966219663%_
                            _%target1205212235%_
                            _%tl1205412238%_)
                           (let () (declare (not safe)) (_%g1202212095%_)))))
                   (let () (declare (not safe)) (_%g1202212095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1202612434%_)
                                                       (let ((_%__splice1966219663%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1202612434%_
                                                               '0)))
                                                         (let ((_%tl1205412238%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1966219663%_ '1)))
                       (_%target1205212235%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1966219663%_ '0))))
                   (if (gx#stx-null? _%tl1205412238%_)
                       (_%__match1973019731%_
                        _%e1202512430%_
                        _%hd1202612434%_
                        _%tl1202712437%_
                        _%__splice1966219663%_
                        _%target1205212235%_
                        _%tl1205412238%_)
                       (let () (declare (not safe)) (_%g1202212095%_)))))
               (let () (declare (not safe)) (_%g1202212095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_))))))))
                              (_%__kont1975219753%_
                               (lambda ()
                                 (_%check-duplicate-datums9471%_
                                  _%datums11953%_)
                                 (values (reverse _%datums11953%_)
                                         (reverse _%dispatch11954%_)
                                         (let ((_%$e11981%_ _%default11955%_))
                                           (if _%$e11981%_
                                               _%$e11981%_
                                               '#!void))))))
                          (let ((_%g1195711985%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1974719748%_)
                                       (_%__kont1975219753%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1195811970%_))))))
                            (if (gx#stx-pair? _%__stx1974719748%_)
                                (let ((_%e1196211992%_
                                       (gx#syntax-e _%__stx1974719748%_)))
                                  (let ((_%tl1196411999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1196211992%_)))
                                        (_%hd1196311996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1196211992%_))))
                                    (_%__kont1975019751%_
                                     _%tl1196411999%_
                                     _%hd1196311996%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1195711985%_)))))))))
                 (_%check-duplicate-datums9471%_
                  (lambda (_%datums11932%_)
                    (let ((_%ht11935%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11938%_)
                         (for-each
                          (lambda (_%datum11941%_)
                            (if (hash-get _%ht11935%_ _%datum11941%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9466%_
                                 _%datum11941%_)
                                (hash-put! _%ht11935%_ _%datum11941%_ '#t)))
                          _%lst11938%_))
                       _%datums11932%_))))
                 (_%count-datums9472%_
                  (lambda (_%datums11925%_)
                    (foldl (lambda (_%lst11928%_ _%r11930%_)
                             (+ (length _%lst11928%_) _%r11930%_))
                           '0
                           _%datums11925%_)))
                 (_%symbolic-datums?9473%_
                  (lambda (_%datums11919%_)
                    (andmap (lambda (_%lst11922%_)
                              (andmap symbol? _%lst11922%_))
                            _%datums11919%_)))
                 (_%char-datums?9474%_
                  (lambda (_%datums11913%_)
                    (andmap (lambda (_%lst11916%_) (andmap char? _%lst11916%_))
                            _%datums11913%_)))
                 (_%fixnum-datums?9475%_
                  (lambda (_%datums11907%_)
                    (andmap (lambda (_%lst11910%_)
                              (andmap fixnum? _%lst11910%_))
                            _%datums11907%_)))
                 (_%eq-datums?9476%_
                  (lambda (_%datums11890%_)
                    (andmap (lambda (_%lst11893%_)
                              (andmap (lambda (_%x11896%_)
                                        (let ((_%$e11899%_
                                               (symbol? _%x11896%_)))
                                          (if _%$e11899%_
                                              _%$e11899%_
                                              (let ((_%$e11903%_
                                                     (keyword? _%x11896%_)))
                                                (if _%$e11903%_
                                                    _%$e11903%_
                                                    (immediate?
                                                     _%x11896%_))))))
                                      _%lst11893%_))
                            _%datums11890%_)))
                 (_%generate-simple-case9477%_
                  (lambda (_%e11654%_
                           _%datums11656%_
                           _%dispatch11657%_
                           _%default11658%_)
                    (let* ((_%g1166011668%_
                            (lambda (_%g1166111664%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1166111664%_)))
                           (_%g1165911886%_
                            (lambda (_%g1166111672%_)
                              ((lambda (_%L11675%_)
                                 (let _%recur11687%_ ((_%datums11690%_
                                                       _%datums11656%_)
                                                      (_%dispatch11692%_
                                                       _%dispatch11657%_))
                                   (let* ((_%__stx1976519766%_ _%datums11690%_)
                                          (_%g1169511716%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1976519766%_))))
                                     (let ((_%__kont1976819769%_
                                            (lambda (_%L11774%_ _%L11776%_)
                                              (let* ((_%g1179611808%_
                                                      (lambda (_%g1179711804%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1179711804%_)))
                                                     (_%g1179511878%_
                                                      (lambda (_%g1179711812%_)
                                                        (if (gx#stx-pair?
                                                             _%g1179711812%_)
                                                            (let ((_%e1180011815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1179711812%_)))
                      (let ((_%hd1180111819%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1180011815%_)))
                            (_%tl1180211822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1180011815%_))))
                        ((lambda (_%L11825%_ _%L11827%_)
                           (let* ((_%g1183911847%_
                                   (lambda (_%g1184011843%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1184011843%_)))
                                  (_%g1183811874%_
                                   (lambda (_%g1184011851%_)
                                     ((lambda (_%L11854%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1186511868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1186611871%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1186511868%_
                                             (cons _%L11675%_ '())))
                                 _%g1186611871%_))
                         '()
                         _%L11776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11827%_
                                                          (cons _%L11854%_
                                                                '())))))
                                      _%g1184011851%_))))
                             (_%g1183811874%_
                              (_%recur11687%_ _%L11774%_ _%L11825%_))))
                         _%tl1180211822%_
                         _%hd1180111819%_)))
                    (_%g1179611808%_ _%g1179711812%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1179511878%_
                                                 _%dispatch11692%_))))
                                           (_%__kont1977219773%_
                                            (lambda () _%default11658%_)))
                                       (let ((_%__match1978819789%_
                                              (lambda (_%e1169911734%_
                                                       _%hd1170011738%_
                                                       _%tl1170111741%_
                                                       _%__splice1977019771%_
                                                       _%target1170211744%_
                                                       _%tl1170411747%_)
                                                (letrec ((_%loop1170511750%_
                                                          (lambda (_%hd1170311754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1170911757%_)
                    (if (gx#stx-pair? _%hd1170311754%_)
                        (let ((_%e1170611760%_ (gx#syntax-e _%hd1170311754%_)))
                          (let ((_%lp-tl1170811767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1170611760%_)))
                                (_%lp-hd1170711764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1170611760%_))))
                            (_%loop1170511750%_
                             _%lp-tl1170811767%_
                             (cons _%lp-hd1170711764%_ _%datum1170911757%_))))
                        (let ((_%datum1171011770%_
                               (reverse _%datum1170911757%_)))
                          (_%__kont1976819769%_
                           _%tl1170111741%_
                           _%datum1171011770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1170511750%_
                                                   _%target1170211744%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1976519766%_)
                                             (let ((_%e1169911734%_
                                                    (gx#syntax-e
                                                     _%__stx1976519766%_)))
                                               (let ((_%tl1170111741%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1169911734%_)))
                                                     (_%hd1170011738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1169911734%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1170011738%_)
                                                     (let ((_%__splice1977019771%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1170011738%_
                                                             '0)))
                                                       (let ((_%tl1170411747%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1977019771%_ '1)))
                     (_%target1170211744%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1977019771%_ '0))))
                 (if (gx#stx-null? _%tl1170411747%_)
                     (_%__match1978819789%_
                      _%e1169911734%_
                      _%hd1170011738%_
                      _%tl1170111741%_
                      _%__splice1977019771%_
                      _%target1170211744%_
                      _%tl1170411747%_)
                     (_%__kont1977219773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1977219773%_))))
                                             (_%__kont1977219773%_)))))))
                               _%g1166111672%_))))
                      (_%g1165911886%_ _%e11654%_))))
                 (_%datum-dispatch-index9478%_
                  (lambda (_%datums11526%_)
                    (let _%lp11529%_ ((_%rest11532%_ _%datums11526%_)
                                      (_%ix11534%_ '0)
                                      (_%r11535%_ '()))
                      (let* ((_%__stx1979119792%_ _%rest11532%_)
                             (_%g1153811559%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1979119792%_))))
                        (let ((_%__kont1979419795%_
                               (lambda (_%L11617%_ _%L11619%_)
                                 (_%lp11529%_
                                  _%L11617%_
                                  (fx1+ _%ix11534%_)
                                  (foldl (lambda (_%x11638%_ _%r11640%_)
                                           (cons (cons _%x11638%_ _%ix11534%_)
                                                 _%r11640%_))
                                         _%r11535%_
                                         (foldr (lambda (_%g1164111644%_
                                                         _%g1164211647%_)
                                                  (cons _%g1164111644%_
                                                        _%g1164211647%_))
                                                '()
                                                _%L11619%_)))))
                              (_%__kont1979819799%_ (lambda () _%r11535%_)))
                          (let ((_%__match1981419815%_
                                 (lambda (_%e1154211577%_
                                          _%hd1154311581%_
                                          _%tl1154411584%_
                                          _%__splice1979619797%_
                                          _%target1154511587%_
                                          _%tl1154711590%_)
                                   (letrec ((_%loop1154811593%_
                                             (lambda (_%hd1154611597%_
                                                      _%datum1155211600%_)
                                               (if (gx#stx-pair?
                                                    _%hd1154611597%_)
                                                   (let ((_%e1154911603%_
                                                          (gx#syntax-e
                                                           _%hd1154611597%_)))
                                                     (let ((_%lp-tl1155111610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1154911603%_)))
                                                           (_%lp-hd1155011607%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1154911603%_))))
                                                       (_%loop1154811593%_
                                                        _%lp-tl1155111610%_
                                                        (cons _%lp-hd1155011607%_
                                                              _%datum1155211600%_))))
                                                   (let ((_%datum1155311613%_
                                                          (reverse _%datum1155211600%_)))
                                                     (_%__kont1979419795%_
                                                      _%tl1154411584%_
                                                      _%datum1155311613%_))))))
                                     (_%loop1154811593%_
                                      _%target1154511587%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1979119792%_)
                                (let ((_%e1154211577%_
                                       (gx#syntax-e _%__stx1979119792%_)))
                                  (let ((_%tl1154411584%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1154211577%_)))
                                        (_%hd1154311581%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1154211577%_))))
                                    (if (gx#stx-pair/null? _%hd1154311581%_)
                                        (let ((_%__splice1979619797%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1154311581%_
                                                '0)))
                                          (let ((_%tl1154711590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1979619797%_
                                                    '1)))
                                                (_%target1154511587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1979619797%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1154711590%_)
                                                (_%__match1981419815%_
                                                 _%e1154211577%_
                                                 _%hd1154311581%_
                                                 _%tl1154411584%_
                                                 _%__splice1979619797%_
                                                 _%target1154511587%_
                                                 _%tl1154711590%_)
                                                (_%__kont1979819799%_))))
                                        (_%__kont1979819799%_))))
                                (_%__kont1979819799%_))))))))
                 (_%duplicate-indexes?9479%_
                  (lambda (_%xs11507%_)
                    (let ((_%ht11510%_ (make-hash-table-eq)))
                      (let _%lp11513%_ ((_%rest11516%_ _%xs11507%_))
                        (if (pair? _%rest11516%_)
                            (let* ((_%ix11519%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11516%_)))
                                   (_%$e11522%_
                                    (hash-get _%ht11510%_ _%ix11519%_)))
                              (if _%$e11522%_
                                  _%$e11522%_
                                  (begin
                                    (hash-put! _%ht11510%_ _%ix11519%_ '#t)
                                    (_%lp11513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11516%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9480%_
                  (lambda (_%indexes11476%_ _%hash-e11478%_)
                    (let _%lp11480%_ ((_%len11483%_
                                       (* '2 (length _%indexes11476%_))))
                      (let* ((_%hs11489%_
                              (map (lambda (_%x11486%_)
                                     (_%hash-e11478%_ (car _%x11486%_)))
                                   _%indexes11476%_))
                             (_%xs11495%_
                              (map (lambda (_%h11492%_)
                                     (fxmodulo _%h11492%_ _%len11483%_))
                                   _%hs11489%_)))
                        (if (_%duplicate-indexes?9479%_ _%xs11495%_)
                            (if (< _%len11483%_ '131072)
                                (_%lp11480%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11483%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9466%_
                                 _%indexes11476%_))
                            (let ((_%tab11500%_
                                   (make-vector _%len11483%_ '#f)))
                              (for-each
                               (lambda (_%entry11503%_ _%x11505%_)
                                 (vector-set!
                                  _%tab11500%_
                                  _%x11505%_
                                  _%entry11503%_))
                               _%indexes11476%_
                               _%xs11495%_)
                              _%tab11500%_))))))
                 (_%generate-symbolic-dispatch9481%_
                  (lambda (_%e11079%_
                           _%datums11081%_
                           _%dispatch11082%_
                           _%default11083%_)
                    (let* ((_%indexes11085%_
                            (_%datum-dispatch-index9478%_ _%datums11081%_))
                           (_%tab11088%_
                            (_%generate-hash-dispatch-table9480%_
                             _%indexes11085%_
                             symbol-hash)))
                      (if (= (length _%dispatch11082%_) '1)
                          (let* ((_%tab11096%_
                                  (vector-map
                                   (lambda (_%x11093%_)
                                     (if _%x11093%_ (car _%x11093%_) '#f))
                                   _%tab11088%_))
                                 (_%g1109911137%_
                                  (lambda (_%g1110011133%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1110011133%_)))
                                 (_%g1109811268%_
                                  (lambda (_%g1110011141%_)
                                    (if (gx#stx-pair? _%g1110011141%_)
                                        (let ((_%e1110811144%_
                                               (gx#syntax-e _%g1110011141%_)))
                                          (let ((_%hd1110911148%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1110811144%_)))
                                                (_%tl1111011151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1110811144%_))))
                                            (if (gx#stx-pair? _%tl1111011151%_)
                                                (let ((_%e1111111154%_
                                                       (gx#syntax-e
                                                        _%tl1111011151%_)))
                                                  (let ((_%hd1111211158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1111111154%_)))
                                                        (_%tl1111311161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1111111154%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1111311161%_)
                                                        (let ((_%e1111411164%_
                                                               (gx#syntax-e
                                                                _%tl1111311161%_)))
                                                          (let ((_%hd1111511168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1111411164%_)))
                        (_%tl1111611171%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1111411164%_))))
                    (if (gx#stx-pair? _%tl1111611171%_)
                        (let ((_%e1111711174%_ (gx#syntax-e _%tl1111611171%_)))
                          (let ((_%hd1111811178%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1111711174%_)))
                                (_%tl1111911181%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1111711174%_))))
                            (if (gx#stx-pair? _%hd1111811178%_)
                                (let ((_%e1112011184%_
                                       (gx#syntax-e _%hd1111811178%_)))
                                  (let ((_%hd1112111188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1112011184%_)))
                                        (_%tl1112211191%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1112011184%_))))
                                    (if (gx#stx-null? _%tl1112211191%_)
                                        (if (gx#stx-pair? _%tl1111911181%_)
                                            (let ((_%e1112311194%_
                                                   (gx#syntax-e
                                                    _%tl1111911181%_)))
                                              (let ((_%hd1112411198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1112311194%_)))
                                                    (_%tl1112511201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1112311194%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1112511201%_)
                                                    (let ((_%e1112611204%_
                                                           (gx#syntax-e
                                                            _%tl1112511201%_)))
                                                      (let ((_%hd1112711208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1112611204%_)))
                    (_%tl1112811211%_
                     (let () (declare (not safe)) (##cdr _%e1112611204%_))))
                (if (gx#stx-pair? _%tl1112811211%_)
                    (let ((_%e1112911214%_ (gx#syntax-e _%tl1112811211%_)))
                      (let ((_%hd1113011218%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1112911214%_)))
                            (_%tl1113111221%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1112911214%_))))
                        (if (gx#stx-null? _%tl1113111221%_)
                            ((lambda (_%L11224%_
                                      _%L11226%_
                                      _%L11227%_
                                      _%L11228%_
                                      _%L11229%_
                                      _%L11230%_
                                      _%L11231%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11230%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11227%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11229%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11226%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'symbol?)
                           (cons _%L11231%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11231%_
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
                                   (cons _%L11224%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11229%_
                                         (cons (gx#datum->syntax '#f 'ix)
                                               '())))
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
                             (cons _%L11231%_ '())))
                 (cons _%L11228%_ (cons (cons _%L11230%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11230%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1113011218%_
                             _%hd1112711208%_
                             _%hd1112411198%_
                             _%hd1112111188%_
                             _%hd1111511168%_
                             _%hd1111211158%_
                             _%hd1110911148%_)
                            (_%g1109911137%_ _%g1110011141%_))))
                    (_%g1109911137%_ _%g1110011141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1109911137%_
                                                     _%g1110011141%_))))
                                            (_%g1109911137%_ _%g1110011141%_))
                                        (_%g1109911137%_ _%g1110011141%_))))
                                (_%g1109911137%_ _%g1110011141%_))))
                        (_%g1109911137%_ _%g1110011141%_))))
                (_%g1109911137%_ _%g1110011141%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1109911137%_
                                                 _%g1110011141%_))))
                                        (_%g1109911137%_ _%g1110011141%_)))))
                            (_%g1109811268%_
                             (list _%e11079%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11082%_
                                   _%default11083%_
                                   _%tab11096%_
                                   (vector-length _%tab11096%_))))
                          (let* ((_%g1127211316%_
                                  (lambda (_%g1127311312%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1127311312%_)))
                                 (_%g1127111472%_
                                  (lambda (_%g1127311320%_)
                                    (if (gx#stx-pair? _%g1127311320%_)
                                        (let ((_%e1128111323%_
                                               (gx#syntax-e _%g1127311320%_)))
                                          (let ((_%hd1128211327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1128111323%_)))
                                                (_%tl1128311330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1128111323%_))))
                                            (if (gx#stx-pair? _%tl1128311330%_)
                                                (let ((_%e1128411333%_
                                                       (gx#syntax-e
                                                        _%tl1128311330%_)))
                                                  (let ((_%hd1128511337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1128411333%_)))
                                                        (_%tl1128611340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1128411333%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1128611340%_)
                                                        (let ((_%e1128711343%_
                                                               (gx#syntax-e
                                                                _%tl1128611340%_)))
                                                          (let ((_%hd1128811347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1128711343%_)))
                        (_%tl1128911350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1128711343%_))))
                    (if (gx#stx-pair? _%tl1128911350%_)
                        (let ((_%e1129011353%_ (gx#syntax-e _%tl1128911350%_)))
                          (let ((_%hd1129111357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1129011353%_)))
                                (_%tl1129211360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1129011353%_))))
                            (if (gx#stx-pair/null? _%hd1129111357%_)
                                (let ((_g21020_
                                       (gx#syntax-split-splice
                                        _%hd1129111357%_
                                        '0)))
                                  (begin
                                    (let ((_g21021_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21020_)
                                                 (##values-length _g21020_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21021_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21021_)))
                                    (let ((_%target1129311363%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21020_ 0)))
                                          (_%tl1129511366%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21020_ 1))))
                                      (if (gx#stx-null? _%tl1129511366%_)
                                          (letrec ((_%loop1129611369%_
                                                    (lambda (_%hd1129411373%_
                                                             _%dispatch1130011376%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1129411373%_)
                                                          (let ((_%e1129711379%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1129411373%_)))
                    (let ((_%lp-hd1129811383%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1129711379%_)))
                          (_%lp-tl1129911386%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1129711379%_))))
                      (_%loop1129611369%_
                       _%lp-tl1129911386%_
                       (cons _%lp-hd1129811383%_ _%dispatch1130011376%_))))
                  (let ((_%dispatch1130111389%_
                         (reverse _%dispatch1130011376%_)))
                    (if (gx#stx-pair? _%tl1129211360%_)
                        (let ((_%e1130211393%_ (gx#syntax-e _%tl1129211360%_)))
                          (let ((_%hd1130311397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1130211393%_)))
                                (_%tl1130411400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1130211393%_))))
                            (if (gx#stx-pair? _%tl1130411400%_)
                                (let ((_%e1130511403%_
                                       (gx#syntax-e _%tl1130411400%_)))
                                  (let ((_%hd1130611407%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1130511403%_)))
                                        (_%tl1130711410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1130511403%_))))
                                    (if (gx#stx-pair? _%tl1130711410%_)
                                        (let ((_%e1130811413%_
                                               (gx#syntax-e _%tl1130711410%_)))
                                          (let ((_%hd1130911417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1130811413%_)))
                                                (_%tl1131011420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1130811413%_))))
                                            (if (gx#stx-null? _%tl1131011420%_)
                                                ((lambda (_%L11423%_
                                                          _%L11425%_
                                                          _%L11426%_
                                                          _%L11427%_
                                                          _%L11428%_
                                                          _%L11429%_
                                                          _%L11430%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11426%_ '())))
                                         '()))
                             (cons (cons _%L11428%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11425%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11430%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let*)
                                                     (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'h)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##symbol-hash)
                                           (cons _%L11430%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11423%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11428%_
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
                           (cons _%L11430%_ '())))
               (cons (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##cdr)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'q)
                                                         '()))
                                             '()))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '~case-dispatch)
                                             (cons (gx#datum->syntax '#f 'x)
                                                   (foldr (lambda (_%g1146311466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1146411469%_)
                    (cons _%g1146311466%_ _%g1146411469%_))
                  '()
                  _%L11427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11429%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11429%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11429%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1130911417%_
                                                 _%hd1130611407%_
                                                 _%hd1130311397%_
                                                 _%dispatch1130111389%_
                                                 _%hd1128811347%_
                                                 _%hd1128511337%_
                                                 _%hd1128211327%_)
                                                (_%g1127211316%_
                                                 _%g1127311320%_))))
                                        (_%g1127211316%_ _%g1127311320%_))))
                                (_%g1127211316%_ _%g1127311320%_))))
                        (_%g1127211316%_ _%g1127311320%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1129611369%_
                                             _%target1129311363%_
                                             '()))
                                          (_%g1127211316%_ _%g1127311320%_)))))
                                (_%g1127211316%_ _%g1127311320%_))))
                        (_%g1127211316%_ _%g1127311320%_))))
                (_%g1127211316%_ _%g1127311320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1127211316%_
                                                 _%g1127311320%_))))
                                        (_%g1127211316%_ _%g1127311320%_)))))
                            (_%g1127111472%_
                             (list _%e11079%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11082%_
                                   _%default11083%_
                                   _%tab11088%_
                                   (vector-length _%tab11088%_))))))))
                 (_%max-char9482%_
                  (lambda (_%datums11068%_)
                    (foldl (lambda (_%lst11071%_ _%r11073%_)
                             (foldl (lambda (_%char11075%_ _%r11077%_)
                                      (max (char->integer _%char11075%_)
                                           _%r11077%_))
                                    _%r11073%_
                                    _%lst11071%_))
                           '0
                           _%datums11068%_)))
                 (_%generate-char-dispatch-table9483%_
                  (lambda (_%indexes11047%_)
                    (let* ((_%ixs11053%_
                            (map (lambda (_%x11050%_)
                                   (char->integer (car _%x11050%_)))
                                 _%indexes11047%_))
                           (_%len11056%_ (fx1+ (foldl max '0 _%ixs11053%_)))
                           (_%vec11059%_ (make-vector _%len11056%_ '#f)))
                      (for-each
                       (lambda (_%entry11064%_ _%x11066%_)
                         (vector-set!
                          _%vec11059%_
                          _%x11066%_
                          (cdr _%entry11064%_)))
                       _%indexes11047%_
                       _%ixs11053%_)
                      _%vec11059%_)))
                 (_%simple-char-range?9484%_
                  (lambda (_%tab11023%_)
                    (let ((_%end11026%_ (vector-length _%tab11023%_)))
                      (let _%lp11029%_ ((_%i11032%_ '0))
                        (let ((_%ix11035%_
                               (vector-ref _%tab11023%_ _%i11032%_)))
                          (if _%ix11035%_
                              (let _%lp211038%_ ((_%i11041%_
                                                  (fx1+ _%i11032%_)))
                                (if (fx< _%i11041%_ _%end11026%_)
                                    (let ((_%ix*11044%_
                                           (vector-ref
                                            _%tab11023%_
                                            _%i11041%_)))
                                      (if (eq? _%ix11035%_ _%ix*11044%_)
                                          (_%lp211038%_ (fx1+ _%i11041%_))
                                          '#f))
                                    '#t))
                              (_%lp11029%_ (fx1+ _%i11032%_))))))))
                 (_%char-range-start9485%_
                  (lambda (_%tab11014%_)
                    (let _%lp11017%_ ((_%i11020%_ '0))
                      (if (vector-ref _%tab11014%_ _%i11020%_)
                          _%i11020%_
                          (_%lp11017%_ (fx1+ _%i11020%_))))))
                 (_%generate-char-dispatch9486%_
                  (lambda (_%e10637%_
                           _%datums10639%_
                           _%dispatch10640%_
                           _%default10641%_)
                    (if (< (_%max-char9482%_ _%datums10639%_) '128)
                        (let* ((_%indexes10643%_
                                (_%datum-dispatch-index9478%_ _%datums10639%_))
                               (_%tab10646%_
                                (_%generate-char-dispatch-table9483%_
                                 _%indexes10643%_)))
                          (if (_%simple-char-range?9484%_ _%tab10646%_)
                              (let ((_%start10651%_
                                     (_%char-range-start9485%_ _%tab10646%_))
                                    (_%end10653%_
                                     (vector-length _%tab10646%_)))
                                (let* ((_%g1065510689%_
                                        (lambda (_%g1065610685%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1065610685%_)))
                                       (_%g1065410806%_
                                        (lambda (_%g1065610693%_)
                                          (if (gx#stx-pair? _%g1065610693%_)
                                              (let ((_%e1066310696%_
                                                     (gx#syntax-e
                                                      _%g1065610693%_)))
                                                (let ((_%hd1066410700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1066310696%_)))
                                                      (_%tl1066510703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1066310696%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1066510703%_)
                                                      (let ((_%e1066610706%_
                                                             (gx#syntax-e
                                                              _%tl1066510703%_)))
                                                        (let ((_%hd1066710710%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1066610706%_)))
                      (_%tl1066810713%_
                       (let () (declare (not safe)) (##cdr _%e1066610706%_))))
                  (if (gx#stx-pair? _%tl1066810713%_)
                      (let ((_%e1066910716%_ (gx#syntax-e _%tl1066810713%_)))
                        (let ((_%hd1067010720%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1066910716%_)))
                              (_%tl1067110723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1066910716%_))))
                          (if (gx#stx-pair? _%hd1067010720%_)
                              (let ((_%e1067210726%_
                                     (gx#syntax-e _%hd1067010720%_)))
                                (let ((_%hd1067310730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1067210726%_)))
                                      (_%tl1067410733%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1067210726%_))))
                                  (if (gx#stx-null? _%tl1067410733%_)
                                      (if (gx#stx-pair? _%tl1067110723%_)
                                          (let ((_%e1067510736%_
                                                 (gx#syntax-e
                                                  _%tl1067110723%_)))
                                            (let ((_%hd1067610740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1067510736%_)))
                                                  (_%tl1067710743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1067510736%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1067710743%_)
                                                  (let ((_%e1067810746%_
                                                         (gx#syntax-e
                                                          _%tl1067710743%_)))
                                                    (let ((_%hd1067910750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1067810746%_)))
                                                          (_%tl1068010753%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1067810746%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1068010753%_)
                                                          (let ((_%e1068110756%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1068010753%_)))
                    (let ((_%hd1068210760%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1068110756%_)))
                          (_%tl1068310763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1068110756%_))))
                      (if (gx#stx-null? _%tl1068310763%_)
                          ((lambda (_%L10766%_
                                    _%L10768%_
                                    _%L10769%_
                                    _%L10770%_
                                    _%L10771%_
                                    _%L10772%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10771%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10769%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10772%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10772%_ '()))
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
                                       (cons _%L10768%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10766%_ '())))
                                 '())))
               (cons _%L10770%_ (cons (cons _%L10771%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10771%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1068210760%_
                           _%hd1067910750%_
                           _%hd1067610740%_
                           _%hd1067310730%_
                           _%hd1066710710%_
                           _%hd1066410700%_)
                          (_%g1065510689%_ _%g1065610693%_))))
                  (_%g1065510689%_ _%g1065610693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1065510689%_
                                                   _%g1065610693%_))))
                                          (_%g1065510689%_ _%g1065610693%_))
                                      (_%g1065510689%_ _%g1065610693%_))))
                              (_%g1065510689%_ _%g1065610693%_))))
                      (_%g1065510689%_ _%g1065610693%_))))
              (_%g1065510689%_ _%g1065610693%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1065510689%_
                                               _%g1065610693%_)))))
                                  (_%g1065410806%_
                                   (list _%e10637%_
                                         (gx#genident 'default)
                                         _%dispatch10640%_
                                         _%default10641%_
                                         _%start10651%_
                                         _%end10653%_))))
                              (let* ((_%g1081010854%_
                                      (lambda (_%g1081110850%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1081110850%_)))
                                     (_%g1080911010%_
                                      (lambda (_%g1081110858%_)
                                        (if (gx#stx-pair? _%g1081110858%_)
                                            (let ((_%e1081910861%_
                                                   (gx#syntax-e
                                                    _%g1081110858%_)))
                                              (let ((_%hd1082010865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1081910861%_)))
                                                    (_%tl1082110868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1081910861%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1082110868%_)
                                                    (let ((_%e1082210871%_
                                                           (gx#syntax-e
                                                            _%tl1082110868%_)))
                                                      (let ((_%hd1082310875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1082210871%_)))
                    (_%tl1082410878%_
                     (let () (declare (not safe)) (##cdr _%e1082210871%_))))
                (if (gx#stx-pair? _%tl1082410878%_)
                    (let ((_%e1082510881%_ (gx#syntax-e _%tl1082410878%_)))
                      (let ((_%hd1082610885%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1082510881%_)))
                            (_%tl1082710888%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1082510881%_))))
                        (if (gx#stx-pair? _%tl1082710888%_)
                            (let ((_%e1082810891%_
                                   (gx#syntax-e _%tl1082710888%_)))
                              (let ((_%hd1082910895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1082810891%_)))
                                    (_%tl1083010898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1082810891%_))))
                                (if (gx#stx-pair/null? _%hd1082910895%_)
                                    (let ((_g21022_
                                           (gx#syntax-split-splice
                                            _%hd1082910895%_
                                            '0)))
                                      (begin
                                        (let ((_g21023_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21022_)
                                                     (##values-length _g21022_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21023_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21023_)))
                                        (let ((_%target1083110901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21022_ 0)))
                                              (_%tl1083310904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21022_ 1))))
                                          (if (gx#stx-null? _%tl1083310904%_)
                                              (letrec ((_%loop1083410907%_
                                                        (lambda (_%hd1083210911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1083810914%_)
                  (if (gx#stx-pair? _%hd1083210911%_)
                      (let ((_%e1083510917%_ (gx#syntax-e _%hd1083210911%_)))
                        (let ((_%lp-hd1083610921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1083510917%_)))
                              (_%lp-tl1083710924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1083510917%_))))
                          (_%loop1083410907%_
                           _%lp-tl1083710924%_
                           (cons _%lp-hd1083610921%_ _%dispatch1083810914%_))))
                      (let ((_%dispatch1083910927%_
                             (reverse _%dispatch1083810914%_)))
                        (if (gx#stx-pair? _%tl1083010898%_)
                            (let ((_%e1084010931%_
                                   (gx#syntax-e _%tl1083010898%_)))
                              (let ((_%hd1084110935%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1084010931%_)))
                                    (_%tl1084210938%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1084010931%_))))
                                (if (gx#stx-pair? _%tl1084210938%_)
                                    (let ((_%e1084310941%_
                                           (gx#syntax-e _%tl1084210938%_)))
                                      (let ((_%hd1084410945%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1084310941%_)))
                                            (_%tl1084510948%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1084310941%_))))
                                        (if (gx#stx-pair? _%tl1084510948%_)
                                            (let ((_%e1084610951%_
                                                   (gx#syntax-e
                                                    _%tl1084510948%_)))
                                              (let ((_%hd1084710955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1084610951%_)))
                                                    (_%tl1084810958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1084610951%_))))
                                                (if (gx#stx-null?
                                                     _%tl1084810958%_)
                                                    ((lambda (_%L10961%_
                                                              _%L10963%_
                                                              _%L10964%_
                                                              _%L10965%_
                                                              _%L10966%_
                                                              _%L10967%_
                                                              _%L10968%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10964%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10966%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10963%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10968%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _%L10968%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10961%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10966%_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '~case-dispatch)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'x)
                                                       (foldr (lambda (_%g1100111004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1100211007%_)
                        (cons _%g1100111004%_ _%g1100211007%_))
                      '()
                      _%L10965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10967%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10967%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10967%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1084710955%_
                                                     _%hd1084410945%_
                                                     _%hd1084110935%_
                                                     _%dispatch1083910927%_
                                                     _%hd1082610885%_
                                                     _%hd1082310875%_
                                                     _%hd1082010865%_)
                                                    (_%g1081010854%_
                                                     _%g1081110858%_))))
                                            (_%g1081010854%_
                                             _%g1081110858%_))))
                                    (_%g1081010854%_ _%g1081110858%_))))
                            (_%g1081010854%_ _%g1081110858%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1083410907%_
                                                 _%target1083110901%_
                                                 '()))
                                              (_%g1081010854%_
                                               _%g1081110858%_)))))
                                    (_%g1081010854%_ _%g1081110858%_))))
                            (_%g1081010854%_ _%g1081110858%_))))
                    (_%g1081010854%_ _%g1081110858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1081010854%_
                                                     _%g1081110858%_))))
                                            (_%g1081010854%_
                                             _%g1081110858%_)))))
                                (_%g1080911010%_
                                 (list _%e10637%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10640%_
                                       _%default10641%_
                                       _%tab10646%_
                                       (vector-length _%tab10646%_))))))
                        (_%generate-char-dispatch/hash9487%_
                         _%e10637%_
                         _%datums10639%_
                         _%dispatch10640%_
                         _%default10641%_))))
                 (_%generate-char-dispatch/hash9487%_
                  (lambda (_%e10415%_
                           _%datums10417%_
                           _%dispatch10418%_
                           _%default10419%_)
                    (let* ((_%indexes10421%_
                            (_%datum-dispatch-index9478%_ _%datums10417%_))
                           (_%tab10424%_
                            (_%generate-hash-dispatch-table9480%_
                             _%indexes10421%_
                             char->integer))
                           (_%g1042910473%_
                            (lambda (_%g1043010469%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1043010469%_)))
                           (_%g1042810633%_
                            (lambda (_%g1043010477%_)
                              (if (gx#stx-pair? _%g1043010477%_)
                                  (let ((_%e1043810480%_
                                         (gx#syntax-e _%g1043010477%_)))
                                    (let ((_%hd1043910484%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1043810480%_)))
                                          (_%tl1044010487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1043810480%_))))
                                      (if (gx#stx-pair? _%tl1044010487%_)
                                          (let ((_%e1044110490%_
                                                 (gx#syntax-e
                                                  _%tl1044010487%_)))
                                            (let ((_%hd1044210494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1044110490%_)))
                                                  (_%tl1044310497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1044110490%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1044310497%_)
                                                  (let ((_%e1044410500%_
                                                         (gx#syntax-e
                                                          _%tl1044310497%_)))
                                                    (let ((_%hd1044510504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1044410500%_)))
                                                          (_%tl1044610507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1044410500%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1044610507%_)
                                                          (let ((_%e1044710510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1044610507%_)))
                    (let ((_%hd1044810514%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1044710510%_)))
                          (_%tl1044910517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1044710510%_))))
                      (if (gx#stx-pair/null? _%hd1044810514%_)
                          (let ((_g21024_
                                 (gx#syntax-split-splice _%hd1044810514%_ '0)))
                            (begin
                              (let ((_g21025_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21024_)
                                           (##values-length _g21024_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21025_ 2)))
                                    (error "Context expects 2 values"
                                           _g21025_)))
                              (let ((_%target1045010520%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21024_ 0)))
                                    (_%tl1045210523%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21024_ 1))))
                                (if (gx#stx-null? _%tl1045210523%_)
                                    (letrec ((_%loop1045310526%_
                                              (lambda (_%hd1045110530%_
                                                       _%dispatch1045710533%_)
                                                (if (gx#stx-pair?
                                                     _%hd1045110530%_)
                                                    (let ((_%e1045410536%_
                                                           (gx#syntax-e
                                                            _%hd1045110530%_)))
                                                      (let ((_%lp-hd1045510540%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1045410536%_)))
                    (_%lp-tl1045610543%_
                     (let () (declare (not safe)) (##cdr _%e1045410536%_))))
                (_%loop1045310526%_
                 _%lp-tl1045610543%_
                 (cons _%lp-hd1045510540%_ _%dispatch1045710533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1045810546%_
                                                           (reverse _%dispatch1045710533%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1044910517%_)
                                                          (let ((_%e1045910550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1044910517%_)))
                    (let ((_%hd1046010554%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1045910550%_)))
                          (_%tl1046110557%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1045910550%_))))
                      (if (gx#stx-pair? _%tl1046110557%_)
                          (let ((_%e1046210560%_
                                 (gx#syntax-e _%tl1046110557%_)))
                            (let ((_%hd1046310564%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1046210560%_)))
                                  (_%tl1046410567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1046210560%_))))
                              (if (gx#stx-pair? _%tl1046410567%_)
                                  (let ((_%e1046510570%_
                                         (gx#syntax-e _%tl1046410567%_)))
                                    (let ((_%hd1046610574%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1046510570%_)))
                                          (_%tl1046710577%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1046510570%_))))
                                      (if (gx#stx-null? _%tl1046710577%_)
                                          ((lambda (_%L10580%_
                                                    _%L10582%_
                                                    _%L10583%_
                                                    _%L10584%_
                                                    _%L10585%_
                                                    _%L10586%_
                                                    _%L10587%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10583%_ '())))
                                   '()))
                       (cons (cons _%L10585%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10582%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10587%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10587%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10580%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10585%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'ix)
                                                             '())))
                                           '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
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
                     (cons _%L10587%_ '())))
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
                                             (foldr (lambda (_%g1062410627%_
                                                             _%g1062510630%_)
                                                      (cons _%g1062410627%_
                                                            _%g1062510630%_))
                                                    '()
                                                    _%L10584%_)))
                                 '())))
               (cons (cons _%L10586%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10586%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10586%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1046610574%_
                                           _%hd1046310564%_
                                           _%hd1046010554%_
                                           _%dispatch1045810546%_
                                           _%hd1044510504%_
                                           _%hd1044210494%_
                                           _%hd1043910484%_)
                                          (_%g1042910473%_ _%g1043010477%_))))
                                  (_%g1042910473%_ _%g1043010477%_))))
                          (_%g1042910473%_ _%g1043010477%_))))
                  (_%g1042910473%_ _%g1043010477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1045310526%_
                                       _%target1045010520%_
                                       '()))
                                    (_%g1042910473%_ _%g1043010477%_)))))
                          (_%g1042910473%_ _%g1043010477%_))))
                  (_%g1042910473%_ _%g1043010477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1042910473%_
                                                   _%g1043010477%_))))
                                          (_%g1042910473%_ _%g1043010477%_))))
                                  (_%g1042910473%_ _%g1043010477%_)))))
                      (_%g1042810633%_
                       (list _%e10415%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10418%_
                             _%default10419%_
                             _%tab10424%_
                             (vector-length _%tab10424%_))))))
                 (_%min-fixnum9488%_
                  (lambda (_%datums10408%_)
                    (foldl (lambda (_%lst10411%_ _%r10413%_)
                             (foldl min _%r10413%_ _%lst10411%_))
                           ##max-fixnum
                           _%datums10408%_)))
                 (_%max-fixnum9489%_
                  (lambda (_%datums10401%_)
                    (foldl (lambda (_%lst10404%_ _%r10406%_)
                             (foldl max _%r10406%_ _%lst10404%_))
                           ##min-fixnum
                           _%datums10401%_)))
                 (_%generate-fixnum-dispatch-table9490%_
                  (lambda (_%indexes10383%_)
                    (let* ((_%ixs10386%_ (map car _%indexes10383%_))
                           (_%len10389%_ (fx1+ (foldl max '0 _%ixs10386%_)))
                           (_%vec10392%_ (make-vector _%len10389%_ '#f)))
                      (for-each
                       (lambda (_%entry10397%_ _%x10399%_)
                         (vector-set!
                          _%vec10392%_
                          _%x10399%_
                          (cdr _%entry10397%_)))
                       _%indexes10383%_
                       _%ixs10386%_)
                      _%vec10392%_)))
                 (_%generate-fixnum-dispatch9491%_
                  (lambda (_%e10117%_
                           _%datums10119%_
                           _%dispatch10120%_
                           _%default10121%_)
                    (if (and (>= (_%min-fixnum9488%_ _%datums10119%_) '0)
                             (< (_%max-fixnum9489%_ _%datums10119%_) '1024))
                        (let* ((_%indexes10123%_
                                (_%datum-dispatch-index9478%_ _%datums10119%_))
                               (_%tab10126%_
                                (_%generate-fixnum-dispatch-table9490%_
                                 _%indexes10123%_))
                               (_%dense?10129%_
                                (andmap values (vector->list _%tab10126%_)))
                               (_%g1013410178%_
                                (lambda (_%g1013510174%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1013510174%_)))
                               (_%g1013310379%_
                                (lambda (_%g1013510182%_)
                                  (if (gx#stx-pair? _%g1013510182%_)
                                      (let ((_%e1014310185%_
                                             (gx#syntax-e _%g1013510182%_)))
                                        (let ((_%hd1014410189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1014310185%_)))
                                              (_%tl1014510192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1014310185%_))))
                                          (if (gx#stx-pair? _%tl1014510192%_)
                                              (let ((_%e1014610195%_
                                                     (gx#syntax-e
                                                      _%tl1014510192%_)))
                                                (let ((_%hd1014710199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1014610195%_)))
                                                      (_%tl1014810202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1014610195%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1014810202%_)
                                                      (let ((_%e1014910205%_
                                                             (gx#syntax-e
                                                              _%tl1014810202%_)))
                                                        (let ((_%hd1015010209%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1014910205%_)))
                      (_%tl1015110212%_
                       (let () (declare (not safe)) (##cdr _%e1014910205%_))))
                  (if (gx#stx-pair? _%tl1015110212%_)
                      (let ((_%e1015210215%_ (gx#syntax-e _%tl1015110212%_)))
                        (let ((_%hd1015310219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1015210215%_)))
                              (_%tl1015410222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1015210215%_))))
                          (if (gx#stx-pair/null? _%hd1015310219%_)
                              (let ((_g21026_
                                     (gx#syntax-split-splice
                                      _%hd1015310219%_
                                      '0)))
                                (begin
                                  (let ((_g21027_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21026_)
                                               (##values-length _g21026_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21027_ 2)))
                                        (error "Context expects 2 values"
                                               _g21027_)))
                                  (let ((_%target1015510225%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21026_ 0)))
                                        (_%tl1015710228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21026_ 1))))
                                    (if (gx#stx-null? _%tl1015710228%_)
                                        (letrec ((_%loop1015810231%_
                                                  (lambda (_%hd1015610235%_
                                                           _%dispatch1016210238%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1015610235%_)
                                                        (let ((_%e1015910241%_
                                                               (gx#syntax-e
                                                                _%hd1015610235%_)))
                                                          (let ((_%lp-hd1016010245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1015910241%_)))
                        (_%lp-tl1016110248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1015910241%_))))
                    (_%loop1015810231%_
                     _%lp-tl1016110248%_
                     (cons _%lp-hd1016010245%_ _%dispatch1016210238%_))))
                (let ((_%dispatch1016310251%_
                       (reverse _%dispatch1016210238%_)))
                  (if (gx#stx-pair? _%tl1015410222%_)
                      (let ((_%e1016410255%_ (gx#syntax-e _%tl1015410222%_)))
                        (let ((_%hd1016510259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1016410255%_)))
                              (_%tl1016610262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1016410255%_))))
                          (if (gx#stx-pair? _%tl1016610262%_)
                              (let ((_%e1016710265%_
                                     (gx#syntax-e _%tl1016610262%_)))
                                (let ((_%hd1016810269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1016710265%_)))
                                      (_%tl1016910272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1016710265%_))))
                                  (if (gx#stx-pair? _%tl1016910272%_)
                                      (let ((_%e1017010275%_
                                             (gx#syntax-e _%tl1016910272%_)))
                                        (let ((_%hd1017110279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1017010275%_)))
                                              (_%tl1017210282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1017010275%_))))
                                          (if (gx#stx-null? _%tl1017210282%_)
                                              ((lambda (_%L10285%_
                                                        _%L10287%_
                                                        _%L10288%_
                                                        _%L10289%_
                                                        _%L10290%_
                                                        _%L10291%_
                                                        _%L10292%_)
                                                 (let* ((_%g1033110339%_
                                                         (lambda (_%g1033210335%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1033210335%_)))
                                                        (_%g1033010359%_
                                                         (lambda (_%g1033210343%_)
                                                           ((lambda (_%L10346%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10291%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10290%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10287%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10292%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10292%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10292%_
                                                            (cons _%L10285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax '#f 'x)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##vector-ref)
                          (cons _%L10290%_ (cons _%L10292%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10346%_ '())))
                                    (cons (cons _%L10291%_ '()) '()))))
                  (cons (cons _%L10291%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1033210343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1033010359%_
                                                    (if _%dense?10129%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1036210365%_ _%g1036310368%_)
                                     (cons _%g1036210365%_ _%g1036310368%_))
                                   '()
                                   _%L10289%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1037010373%_
                                                              _%g1037110376%_)
                                                       (cons _%g1037010373%_
                                                             _%g1037110376%_))
                                                     '()
                                                     _%L10289%_)))
                                  (cons (cons _%L10291%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1017110279%_
                                               _%hd1016810269%_
                                               _%hd1016510259%_
                                               _%dispatch1016310251%_
                                               _%hd1015010209%_
                                               _%hd1014710199%_
                                               _%hd1014410189%_)
                                              (_%g1013410178%_
                                               _%g1013510182%_))))
                                      (_%g1013410178%_ _%g1013510182%_))))
                              (_%g1013410178%_ _%g1013510182%_))))
                      (_%g1013410178%_ _%g1013510182%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1015810231%_
                                           _%target1015510225%_
                                           '()))
                                        (_%g1013410178%_ _%g1013510182%_)))))
                              (_%g1013410178%_ _%g1013510182%_))))
                      (_%g1013410178%_ _%g1013510182%_))))
              (_%g1013410178%_ _%g1013510182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1013410178%_
                                               _%g1013510182%_))))
                                      (_%g1013410178%_ _%g1013510182%_)))))
                          (_%g1013310379%_
                           (list _%e10117%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10120%_
                                 _%default10121%_
                                 _%tab10126%_
                                 (vector-length _%tab10126%_))))
                        (_%generate-fixnum-dispatch/hash9492%_
                         _%e10117%_
                         _%datums10119%_
                         _%dispatch10120%_
                         _%default10121%_))))
                 (_%generate-fixnum-dispatch/hash9492%_
                  (lambda (_%e9895%_
                           _%datums9897%_
                           _%dispatch9898%_
                           _%default9899%_)
                    (let* ((_%indexes9901%_
                            (_%datum-dispatch-index9478%_ _%datums9897%_))
                           (_%tab9904%_
                            (_%generate-hash-dispatch-table9480%_
                             _%indexes9901%_
                             values))
                           (_%g99099953%_
                            (lambda (_%g99109949%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g99109949%_)))
                           (_%g990810113%_
                            (lambda (_%g99109957%_)
                              (if (gx#stx-pair? _%g99109957%_)
                                  (let ((_%e99189960%_
                                         (gx#syntax-e _%g99109957%_)))
                                    (let ((_%hd99199964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e99189960%_)))
                                          (_%tl99209967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e99189960%_))))
                                      (if (gx#stx-pair? _%tl99209967%_)
                                          (let ((_%e99219970%_
                                                 (gx#syntax-e _%tl99209967%_)))
                                            (let ((_%hd99229974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e99219970%_)))
                                                  (_%tl99239977%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e99219970%_))))
                                              (if (gx#stx-pair? _%tl99239977%_)
                                                  (let ((_%e99249980%_
                                                         (gx#syntax-e
                                                          _%tl99239977%_)))
                                                    (let ((_%hd99259984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99249980%_)))
                                                          (_%tl99269987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99249980%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99269987%_)
                                                          (let ((_%e99279990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99269987%_)))
                    (let ((_%hd99289994%_
                           (let () (declare (not safe)) (##car _%e99279990%_)))
                          (_%tl99299997%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99279990%_))))
                      (if (gx#stx-pair/null? _%hd99289994%_)
                          (let ((_g21028_
                                 (gx#syntax-split-splice _%hd99289994%_ '0)))
                            (begin
                              (let ((_g21029_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21028_)
                                           (##values-length _g21028_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21029_ 2)))
                                    (error "Context expects 2 values"
                                           _g21029_)))
                              (let ((_%target993010000%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21028_ 0)))
                                    (_%tl993210003%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21028_ 1))))
                                (if (gx#stx-null? _%tl993210003%_)
                                    (letrec ((_%loop993310006%_
                                              (lambda (_%hd993110010%_
                                                       _%dispatch993710013%_)
                                                (if (gx#stx-pair?
                                                     _%hd993110010%_)
                                                    (let ((_%e993410016%_
                                                           (gx#syntax-e
                                                            _%hd993110010%_)))
                                                      (let ((_%lp-hd993510020%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e993410016%_)))
                    (_%lp-tl993610023%_
                     (let () (declare (not safe)) (##cdr _%e993410016%_))))
                (_%loop993310006%_
                 _%lp-tl993610023%_
                 (cons _%lp-hd993510020%_ _%dispatch993710013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch993810026%_
                                                           (reverse _%dispatch993710013%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99299997%_)
                                                          (let ((_%e993910030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99299997%_)))
                    (let ((_%hd994010034%_
                           (let ()
                             (declare (not safe))
                             (##car _%e993910030%_)))
                          (_%tl994110037%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e993910030%_))))
                      (if (gx#stx-pair? _%tl994110037%_)
                          (let ((_%e994210040%_ (gx#syntax-e _%tl994110037%_)))
                            (let ((_%hd994310044%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e994210040%_)))
                                  (_%tl994410047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e994210040%_))))
                              (if (gx#stx-pair? _%tl994410047%_)
                                  (let ((_%e994510050%_
                                         (gx#syntax-e _%tl994410047%_)))
                                    (let ((_%hd994610054%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e994510050%_)))
                                          (_%tl994710057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e994510050%_))))
                                      (if (gx#stx-null? _%tl994710057%_)
                                          ((lambda (_%L10060%_
                                                    _%L10062%_
                                                    _%L10063%_
                                                    _%L10064%_
                                                    _%L10065%_
                                                    _%L10066%_
                                                    _%L10067%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10063%_ '())))
                                   '()))
                       (cons (cons _%L10065%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10062%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L10067%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L10067%_ (cons _%L10060%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L10065%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       '())))
                                     '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'if)
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
                     (cons _%L10067%_ '())))
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
                                             (foldr (lambda (_%g1010410107%_
                                                             _%g1010510110%_)
                                                      (cons _%g1010410107%_
                                                            _%g1010510110%_))
                                                    '()
                                                    _%L10064%_)))
                                 '())))
               (cons (cons _%L10066%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10066%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10066%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd994610054%_
                                           _%hd994310044%_
                                           _%hd994010034%_
                                           _%dispatch993810026%_
                                           _%hd99259984%_
                                           _%hd99229974%_
                                           _%hd99199964%_)
                                          (_%g99099953%_ _%g99109957%_))))
                                  (_%g99099953%_ _%g99109957%_))))
                          (_%g99099953%_ _%g99109957%_))))
                  (_%g99099953%_ _%g99109957%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop993310006%_
                                       _%target993010000%_
                                       '()))
                                    (_%g99099953%_ _%g99109957%_)))))
                          (_%g99099953%_ _%g99109957%_))))
                  (_%g99099953%_ _%g99109957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g99099953%_
                                                   _%g99109957%_))))
                                          (_%g99099953%_ _%g99109957%_))))
                                  (_%g99099953%_ _%g99109957%_)))))
                      (_%g990810113%_
                       (list _%e9895%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9898%_
                             _%default9899%_
                             _%tab9904%_
                             (vector-length _%tab9904%_))))))
                 (_%generate-generic-dispatch9493%_
                  (lambda (_%e9631%_
                           _%datums9633%_
                           _%dispatch9634%_
                           _%default9635%_)
                    (let ((_g21030_
                           (if (_%eq-datums?9476%_ _%datums9633%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9637%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21030_ 0)))
                              (_%hashf9639%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21030_ 1)))
                              (_%eqf9640%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21030_ 2))))
                          (let* ((_%indexes9642%_
                                  (_%datum-dispatch-index9478%_
                                   _%datums9633%_))
                                 (_%tab9645%_
                                  (_%generate-hash-dispatch-table9480%_
                                   _%indexes9642%_
                                   _%hash-e9637%_))
                                 (_%g96509702%_
                                  (lambda (_%g96519698%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96519698%_)))
                                 (_%g96499891%_
                                  (lambda (_%g96519706%_)
                                    (if (gx#stx-pair? _%g96519706%_)
                                        (let ((_%e96619709%_
                                               (gx#syntax-e _%g96519706%_)))
                                          (let ((_%hd96629713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96619709%_)))
                                                (_%tl96639716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96619709%_))))
                                            (if (gx#stx-pair? _%tl96639716%_)
                                                (let ((_%e96649719%_
                                                       (gx#syntax-e
                                                        _%tl96639716%_)))
                                                  (let ((_%hd96659723%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96649719%_)))
                                                        (_%tl96669726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96649719%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96669726%_)
                                                        (let ((_%e96679729%_
                                                               (gx#syntax-e
                                                                _%tl96669726%_)))
                                                          (let ((_%hd96689733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96679729%_)))
                        (_%tl96699736%_
                         (let () (declare (not safe)) (##cdr _%e96679729%_))))
                    (if (gx#stx-pair? _%tl96699736%_)
                        (let ((_%e96709739%_ (gx#syntax-e _%tl96699736%_)))
                          (let ((_%hd96719743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96709739%_)))
                                (_%tl96729746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96709739%_))))
                            (if (gx#stx-pair/null? _%hd96719743%_)
                                (let ((_g21031_
                                       (gx#syntax-split-splice
                                        _%hd96719743%_
                                        '0)))
                                  (begin
                                    (let ((_g21032_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21031_)
                                                 (##values-length _g21031_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21032_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21032_)))
                                    (let ((_%target96739749%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21031_ 0)))
                                          (_%tl96759752%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21031_ 1))))
                                      (if (gx#stx-null? _%tl96759752%_)
                                          (letrec ((_%loop96769755%_
                                                    (lambda (_%hd96749759%_
                                                             _%dispatch96809762%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96749759%_)
                                                          (let ((_%e96779765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96749759%_)))
                    (let ((_%lp-hd96789769%_
                           (let () (declare (not safe)) (##car _%e96779765%_)))
                          (_%lp-tl96799772%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96779765%_))))
                      (_%loop96769755%_
                       _%lp-tl96799772%_
                       (cons _%lp-hd96789769%_ _%dispatch96809762%_))))
                  (let ((_%dispatch96819775%_ (reverse _%dispatch96809762%_)))
                    (if (gx#stx-pair? _%tl96729746%_)
                        (let ((_%e96829779%_ (gx#syntax-e _%tl96729746%_)))
                          (let ((_%hd96839783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96829779%_)))
                                (_%tl96849786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96829779%_))))
                            (if (gx#stx-pair? _%tl96849786%_)
                                (let ((_%e96859789%_
                                       (gx#syntax-e _%tl96849786%_)))
                                  (let ((_%hd96869793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96859789%_)))
                                        (_%tl96879796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96859789%_))))
                                    (if (gx#stx-pair? _%tl96879796%_)
                                        (let ((_%e96889799%_
                                               (gx#syntax-e _%tl96879796%_)))
                                          (let ((_%hd96899803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96889799%_)))
                                                (_%tl96909806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96889799%_))))
                                            (if (gx#stx-pair? _%tl96909806%_)
                                                (let ((_%e96919809%_
                                                       (gx#syntax-e
                                                        _%tl96909806%_)))
                                                  (let ((_%hd96929813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96919809%_)))
                                                        (_%tl96939816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96919809%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96939816%_)
                                                        (let ((_%e96949819%_
                                                               (gx#syntax-e
                                                                _%tl96939816%_)))
                                                          (let ((_%hd96959823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96949819%_)))
                        (_%tl96969826%_
                         (let () (declare (not safe)) (##cdr _%e96949819%_))))
                    (if (gx#stx-null? _%tl96969826%_)
                        ((lambda (_%L9829%_
                                  _%L9831%_
                                  _%L9832%_
                                  _%L9833%_
                                  _%L9834%_
                                  _%L9835%_
                                  _%L9836%_
                                  _%L9837%_
                                  _%L9838%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9837%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9834%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9836%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9833%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9831%_ (cons _%L9838%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9832%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9836%_
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
                                               (cons (cons _%L9829%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9838%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (foldr (lambda (_%g98829885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98839888%_)
                  (cons _%g98829885%_ _%g98839888%_))
                '()
                _%L9835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9837%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9837%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96959823%_
                         _%hd96929813%_
                         _%hd96899803%_
                         _%hd96869793%_
                         _%hd96839783%_
                         _%dispatch96819775%_
                         _%hd96689733%_
                         _%hd96659723%_
                         _%hd96629713%_)
                        (_%g96509702%_ _%g96519706%_))))
                (_%g96509702%_ _%g96519706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96509702%_
                                                 _%g96519706%_))))
                                        (_%g96509702%_ _%g96519706%_))))
                                (_%g96509702%_ _%g96519706%_))))
                        (_%g96509702%_ _%g96519706%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96769755%_
                                             _%target96739749%_
                                             '()))
                                          (_%g96509702%_ _%g96519706%_)))))
                                (_%g96509702%_ _%g96519706%_))))
                        (_%g96509702%_ _%g96519706%_))))
                (_%g96509702%_ _%g96519706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96509702%_
                                                 _%g96519706%_))))
                                        (_%g96509702%_ _%g96519706%_)))))
                            (_%g96499891%_
                             (list _%e9631%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9634%_
                                   _%default9635%_
                                   _%tab9645%_
                                   (vector-length _%tab9645%_)
                                   _%hashf9639%_
                                   _%eqf9640%_)))))))))
          (let* ((_%g94959519%_
                  (lambda (_%g94969515%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94969515%_)))
                 (_%g94949627%_
                  (lambda (_%g94969523%_)
                    (if (gx#stx-pair? _%g94969523%_)
                        (let ((_%e94999526%_ (gx#syntax-e _%g94969523%_)))
                          (let ((_%hd95009530%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94999526%_)))
                                (_%tl95019533%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94999526%_))))
                            (if (gx#stx-pair? _%tl95019533%_)
                                (let ((_%e95029536%_
                                       (gx#syntax-e _%tl95019533%_)))
                                  (let ((_%hd95039540%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e95029536%_)))
                                        (_%tl95049543%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e95029536%_))))
                                    (if (gx#stx-pair/null? _%tl95049543%_)
                                        (let ((_g21033_
                                               (gx#syntax-split-splice
                                                _%tl95049543%_
                                                '0)))
                                          (begin
                                            (let ((_g21034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21033_)
                                                         (##values-length
                                                          _g21033_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21034_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21034_)))
                                            (let ((_%target95059546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21033_
                                                      0)))
                                                  (_%tl95079549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21033_
                                                      1))))
                                              (if (gx#stx-null? _%tl95079549%_)
                                                  (letrec ((_%loop95089552%_
                                                            (lambda (_%hd95069556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause95129559%_)
                      (if (gx#stx-pair? _%hd95069556%_)
                          (let ((_%e95099562%_ (gx#syntax-e _%hd95069556%_)))
                            (let ((_%lp-hd95109566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e95099562%_)))
                                  (_%lp-tl95119569%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e95099562%_))))
                              (_%loop95089552%_
                               _%lp-tl95119569%_
                               (cons _%lp-hd95109566%_ _%clause95129559%_))))
                          (let ((_%clause95139572%_
                                 (reverse _%clause95129559%_)))
                            ((lambda (_%L9576%_ _%L9578%_)
                               (let ((_g21035_
                                      (_%parse-clauses9469%_
                                       _%L9578%_
                                       (foldr (lambda (_%g95969599%_
                                                       _%g95979602%_)
                                                (cons _%g95969599%_
                                                      _%g95979602%_))
                                              '()
                                              _%L9576%_))))
                                 (begin
                                   (let ((_g21036_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21035_)
                                                (##values-length _g21035_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21036_ 3)))
                                         (error "Context expects 3 values"
                                                _g21036_)))
                                   (let ((_%datums9605%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21035_ 0)))
                                         (_%dispatch9607%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21035_ 1)))
                                         (_%default9608%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21035_ 2))))
                                     (let ((_%datum-count9610%_
                                            (_%count-datums9472%_
                                             _%datums9605%_)))
                                       (if (< _%datum-count9610%_ '6)
                                           (_%generate-simple-case9477%_
                                            _%L9578%_
                                            _%datums9605%_
                                            _%dispatch9607%_
                                            _%default9608%_)
                                           (if (_%char-datums?9474%_
                                                _%datums9605%_)
                                               (_%generate-char-dispatch9486%_
                                                _%L9578%_
                                                _%datums9605%_
                                                _%dispatch9607%_
                                                _%default9608%_)
                                               (if (_%fixnum-datums?9475%_
                                                    _%datums9605%_)
                                                   (_%generate-fixnum-dispatch9491%_
                                                    _%L9578%_
                                                    _%datums9605%_
                                                    _%dispatch9607%_
                                                    _%default9608%_)
                                                   (if (< _%datum-count9610%_
                                                          '12)
                                                       (_%generate-simple-case9477%_
                                                        _%L9578%_
                                                        _%datums9605%_
                                                        _%dispatch9607%_
                                                        _%default9608%_)
                                                       (if (_%symbolic-datums?9473%_
                                                            _%datums9605%_)
                                                           (_%generate-symbolic-dispatch9481%_
                                                            _%L9578%_
                                                            _%datums9605%_
                                                            _%dispatch9607%_
                                                            _%default9608%_)
                                                           (_%generate-generic-dispatch9493%_
                                                            _%L9578%_
                                                            _%datums9605%_
                                                            _%dispatch9607%_
                                                            _%default9608%_)))))))))))
                             _%clause95139572%_
                             _%hd95039540%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop95089552%_
                                                     _%target95059546%_
                                                     '()))
                                                  (_%g94959519%_
                                                   _%g94969523%_)))))
                                        (_%g94959519%_ _%g94969523%_))))
                                (_%g94959519%_ _%g94969523%_))))
                        (_%g94959519%_ _%g94969523%_)))))
            (_%g94949627%_ _%stx9466%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12529%_)
        (let* ((_%g1253212550%_
                (lambda (_%g1253312546%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1253312546%_)))
               (_%g1253112622%_
                (lambda (_%g1253312554%_)
                  (if (gx#stx-pair? _%g1253312554%_)
                      (let ((_%e1253612557%_ (gx#syntax-e _%g1253312554%_)))
                        (let ((_%hd1253712561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1253612557%_)))
                              (_%tl1253812564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1253612557%_))))
                          (if (gx#stx-pair? _%tl1253812564%_)
                              (let ((_%e1253912567%_
                                     (gx#syntax-e _%tl1253812564%_)))
                                (let ((_%hd1254012571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1253912567%_)))
                                      (_%tl1254112574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1253912567%_))))
                                  (if (gx#stx-pair? _%tl1254112574%_)
                                      (let ((_%e1254212577%_
                                             (gx#syntax-e _%tl1254112574%_)))
                                        (let ((_%hd1254312581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1254212577%_)))
                                              (_%tl1254412584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1254212577%_))))
                                          (if (gx#stx-null? _%tl1254412584%_)
                                              ((lambda (_%L12587%_ _%L12589%_)
                                                 (let ((_%datum-e12605%_
                                                        (gx#stx-e _%L12589%_)))
                                                   (if (or (symbol? _%datum-e12605%_)
                                                           (keyword?
                                                            _%datum-e12605%_)
                                                           (immediate?
                                                            _%datum-e12605%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12589%_ '()))
                           (cons _%L12587%_ '())))
               (if (number? _%datum-e12605%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12589%_ '()))
                               (cons _%L12587%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12589%_ '()))
                               (cons _%L12587%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1254312581%_
                                               _%hd1254012571%_)
                                              (_%g1253212550%_
                                               _%g1253312554%_))))
                                      (_%g1253212550%_ _%g1253312554%_))))
                              (_%g1253212550%_ _%g1253312554%_))))
                      (_%g1253212550%_ _%g1253312554%_)))))
          (_%g1253112622%_ _%stx12529%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12626%_)
        (let* ((_%g1263012654%_
                (lambda (_%g1263112650%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1263112650%_)))
               (_%g1262912739%_
                (lambda (_%g1263112658%_)
                  (if (gx#stx-pair? _%g1263112658%_)
                      (let ((_%e1263412661%_ (gx#syntax-e _%g1263112658%_)))
                        (let ((_%hd1263512665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1263412661%_)))
                              (_%tl1263612668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1263412661%_))))
                          (if (gx#stx-pair? _%tl1263612668%_)
                              (let ((_%e1263712671%_
                                     (gx#syntax-e _%tl1263612668%_)))
                                (let ((_%hd1263812675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1263712671%_)))
                                      (_%tl1263912678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1263712671%_))))
                                  (if (gx#stx-pair/null? _%tl1263912678%_)
                                      (let ((_g21037_
                                             (gx#syntax-split-splice
                                              _%tl1263912678%_
                                              '0)))
                                        (begin
                                          (let ((_g21038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21037_)
                                                       (##values-length
                                                        _g21037_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21038_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21038_)))
                                          (let ((_%target1264012681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21037_ 0)))
                                                (_%tl1264212684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21037_ 1))))
                                            (if (gx#stx-null? _%tl1264212684%_)
                                                (letrec ((_%loop1264312687%_
                                                          (lambda (_%hd1264112691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1264712694%_)
                    (if (gx#stx-pair? _%hd1264112691%_)
                        (let ((_%e1264412697%_ (gx#syntax-e _%hd1264112691%_)))
                          (let ((_%lp-hd1264512701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1264412697%_)))
                                (_%lp-tl1264612704%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1264412697%_))))
                            (_%loop1264312687%_
                             _%lp-tl1264612704%_
                             (cons _%lp-hd1264512701%_ _%K1264712694%_))))
                        (let ((_%K1264812707%_ (reverse _%K1264712694%_)))
                          ((lambda (_%L12711%_ _%L12713%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12713%_
                                               (foldr (lambda (_%g1273012733%_
                                                               _%g1273112736%_)
                                                        (cons _%g1273012733%_
                                                              _%g1273112736%_))
                                                      '()
                                                      _%L12711%_)))))
                           _%K1264812707%_
                           _%hd1263812675%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1264312687%_
                                                   _%target1264012681%_
                                                   '()))
                                                (_%g1263012654%_
                                                 _%g1263112658%_)))))
                                      (_%g1263012654%_ _%g1263112658%_))))
                              (_%g1263012654%_ _%g1263112658%_))))
                      (_%g1263012654%_ _%g1263112658%_)))))
          (_%g1262912739%_ _%$stx12626%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12744%_)
        (let* ((_%__stx1981719818%_ _%stx12744%_)
               (_%g1275112847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1981719818%_))))
          (let ((_%__kont1982019821%_
                 (lambda (_%L13324%_ _%L13326%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1982219823%_
                 (lambda (_%L13266%_ _%L13268%_ _%L13269%_) _%L13266%_))
                (_%__kont1982419825%_
                 (lambda (_%L13163%_ _%L13165%_ _%L13166%_ _%L13167%_)
                   (let* ((_%g1318813196%_
                           (lambda (_%g1318913192%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1318913192%_)))
                          (_%g1318713215%_
                           (lambda (_%g1318913200%_)
                             ((lambda (_%L13203%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13166%_
                                                        (cons _%L13203%_ '())))
                                            (cons _%L13165%_
                                                  (cons _%L13163%_ '())))))
                              _%g1318913200%_))))
                     (_%g1318713215%_ (gx#stx-e _%L13167%_)))))
                (_%__kont1982619827%_
                 (lambda (_%L13013%_
                          _%L13015%_
                          _%L13016%_
                          _%L13017%_
                          _%L13018%_)
                   (let* ((_%g1304213057%_
                           (lambda (_%g1304313053%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1304313053%_)))
                          (_%g1304113102%_
                           (lambda (_%g1304313061%_)
                             (if (gx#stx-pair? _%g1304313061%_)
                                 (let ((_%e1304613064%_
                                        (gx#syntax-e _%g1304313061%_)))
                                   (let ((_%hd1304713068%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1304613064%_)))
                                         (_%tl1304813071%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1304613064%_))))
                                     (if (gx#stx-pair? _%tl1304813071%_)
                                         (let ((_%e1304913074%_
                                                (gx#syntax-e
                                                 _%tl1304813071%_)))
                                           (let ((_%hd1305013078%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1304913074%_)))
                                                 (_%tl1305113081%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1304913074%_))))
                                             (if (gx#stx-null?
                                                  _%tl1305113081%_)
                                                 ((lambda (_%L13084%_
                                                           _%L13086%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L13017%_ (cons _%L13086%_ '())))
                        (cons _%L13016%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L13017%_
                                                            (cons _%L13084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L13015%_
                                                      (cons _%L13013%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1305013078%_
                                                  _%hd1304713068%_)
                                                 (_%g1304213057%_
                                                  _%g1304313061%_))))
                                         (_%g1304213057%_ _%g1304313061%_))))
                                 (_%g1304213057%_ _%g1304313061%_)))))
                     (_%g1304113102%_
                      (list (gx#stx-e _%L13018%_)
                            (fx1+ (gx#stx-e _%L13018%_)))))))
                (_%__kont1982819829%_
                 (lambda (_%L12914%_ _%L12916%_ _%L12917%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12917%_
                               (cons _%L12916%_
                                     (foldr (lambda (_%g1293712940%_
                                                     _%g1293812943%_)
                                              (cons _%g1293712940%_
                                                    _%g1293812943%_))
                                            '()
                                            _%L12914%_)))))))
            (let ((_%__match1997419975%_
                   (lambda (_%e1282412854%_
                            _%hd1282512858%_
                            _%tl1282612861%_
                            _%e1282712864%_
                            _%hd1282812868%_
                            _%tl1282912871%_
                            _%e1283012874%_
                            _%hd1283112878%_
                            _%tl1283212881%_
                            _%__splice1983019831%_
                            _%target1283312884%_
                            _%tl1283512887%_)
                     (letrec ((_%loop1283612890%_
                               (lambda (_%hd1283412894%_ _%K1284012897%_)
                                 (if (gx#stx-pair? _%hd1283412894%_)
                                     (let ((_%e1283712900%_
                                            (gx#syntax-e _%hd1283412894%_)))
                                       (let ((_%lp-tl1283912907%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1283712900%_)))
                                             (_%lp-hd1283812904%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1283712900%_))))
                                         (_%loop1283612890%_
                                          _%lp-tl1283912907%_
                                          (cons _%lp-hd1283812904%_
                                                _%K1284012897%_))))
                                     (let ((_%K1284112910%_
                                            (reverse _%K1284012897%_)))
                                       (_%__kont1982819829%_
                                        _%K1284112910%_
                                        _%hd1283112878%_
                                        _%hd1282812868%_))))))
                       (_%loop1283612890%_ _%target1283312884%_ '())))))
              (if (gx#stx-pair? _%__stx1981719818%_)
                  (let ((_%e1275513294%_ (gx#syntax-e _%__stx1981719818%_)))
                    (let ((_%tl1275713301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1275513294%_)))
                          (_%hd1275613298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1275513294%_))))
                      (if (gx#stx-pair? _%tl1275713301%_)
                          (let ((_%e1275813304%_
                                 (gx#syntax-e _%tl1275713301%_)))
                            (let ((_%tl1276013311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1275813304%_)))
                                  (_%hd1275913308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1275813304%_))))
                              (if (gx#stx-pair? _%tl1276013311%_)
                                  (let ((_%e1276113314%_
                                         (gx#syntax-e _%tl1276013311%_)))
                                    (let ((_%tl1276313321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1276113314%_)))
                                          (_%hd1276213318%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1276113314%_))))
                                      (if (gx#stx-null? _%tl1276313321%_)
                                          (_%__kont1982019821%_
                                           _%hd1276213318%_
                                           _%hd1275913308%_)
                                          (if (gx#stx-pair? _%tl1276313321%_)
                                              (let ((_%e1277613256%_
                                                     (gx#syntax-e
                                                      _%tl1276313321%_)))
                                                (let ((_%tl1277813263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1277613256%_)))
                                                      (_%hd1277713260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1277613256%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1277813263%_)
                                                      (_%__kont1982219823%_
                                                       _%hd1277713260%_
                                                       _%hd1276213318%_
                                                       _%hd1275913308%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1277813263%_)
                                                          (let ((_%e1279513153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1277813263%_)))
                    (let ((_%tl1279713160%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1279513153%_)))
                          (_%hd1279613157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1279513153%_))))
                      (if (gx#stx-null? _%tl1279713160%_)
                          (_%__kont1982419825%_
                           _%hd1279613157%_
                           _%hd1277713260%_
                           _%hd1276213318%_
                           _%hd1275913308%_)
                          (if (gx#stx-pair? _%tl1279713160%_)
                              (let ((_%e1281813003%_
                                     (gx#syntax-e _%tl1279713160%_)))
                                (let ((_%tl1282013010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1281813003%_)))
                                      (_%hd1281913007%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1281813003%_))))
                                  (if (gx#stx-null? _%tl1282013010%_)
                                      (_%__kont1982619827%_
                                       _%hd1281913007%_
                                       _%hd1279613157%_
                                       _%hd1277713260%_
                                       _%hd1276213318%_
                                       _%hd1275913308%_)
                                      (if (gx#stx-pair/null? _%tl1276313321%_)
                                          (let ((_%__splice1983019831%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1276313321%_
                                                  '0)))
                                            (let ((_%tl1283512887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1983019831%_
                                                      '1)))
                                                  (_%target1283312884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1983019831%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1283512887%_)
                                                  (_%__match1997419975%_
                                                   _%e1275513294%_
                                                   _%hd1275613298%_
                                                   _%tl1275713301%_
                                                   _%e1275813304%_
                                                   _%hd1275913308%_
                                                   _%tl1276013311%_
                                                   _%e1276113314%_
                                                   _%hd1276213318%_
                                                   _%tl1276313321%_
                                                   _%__splice1983019831%_
                                                   _%target1283312884%_
                                                   _%tl1283512887%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1275112847%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275112847%_))))))
                              (if (gx#stx-pair/null? _%tl1276313321%_)
                                  (let ((_%__splice1983019831%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1276313321%_
                                          '0)))
                                    (let ((_%tl1283512887%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1983019831%_
                                              '1)))
                                          (_%target1283312884%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1983019831%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1283512887%_)
                                          (_%__match1997419975%_
                                           _%e1275513294%_
                                           _%hd1275613298%_
                                           _%tl1275713301%_
                                           _%e1275813304%_
                                           _%hd1275913308%_
                                           _%tl1276013311%_
                                           _%e1276113314%_
                                           _%hd1276213318%_
                                           _%tl1276313321%_
                                           _%__splice1983019831%_
                                           _%target1283312884%_
                                           _%tl1283512887%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275112847%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1275112847%_)))))))
                  (if (gx#stx-pair/null? _%tl1276313321%_)
                      (let ((_%__splice1983019831%_
                             (gx#syntax-split-splice->vector
                              _%tl1276313321%_
                              '0)))
                        (let ((_%tl1283512887%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1983019831%_ '1)))
                              (_%target1283312884%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1983019831%_ '0))))
                          (if (gx#stx-null? _%tl1283512887%_)
                              (_%__match1997419975%_
                               _%e1275513294%_
                               _%hd1275613298%_
                               _%tl1275713301%_
                               _%e1275813304%_
                               _%hd1275913308%_
                               _%tl1276013311%_
                               _%e1276113314%_
                               _%hd1276213318%_
                               _%tl1276313321%_
                               _%__splice1983019831%_
                               _%target1283312884%_
                               _%tl1283512887%_)
                              (let ()
                                (declare (not safe))
                                (_%g1275112847%_)))))
                      (let () (declare (not safe)) (_%g1275112847%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1276313321%_)
                                                  (let ((_%__splice1983019831%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1276313321%_
                                                          '0)))
                                                    (let ((_%tl1283512887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1983019831%_
                                                              '1)))
                                                          (_%target1283312884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1983019831%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1283512887%_)
                                                          (_%__match1997419975%_
                                                           _%e1275513294%_
                                                           _%hd1275613298%_
                                                           _%tl1275713301%_
                                                           _%e1275813304%_
                                                           _%hd1275913308%_
                                                           _%tl1276013311%_
                                                           _%e1276113314%_
                                                           _%hd1276213318%_
                                                           _%tl1276313321%_
                                                           _%__splice1983019831%_
                                                           _%target1283312884%_
                                                           _%tl1283512887%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1275112847%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1275112847%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1275112847%_)))))
                          (let () (declare (not safe)) (_%g1275112847%_)))))
                  (let () (declare (not safe)) (_%g1275112847%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13346%_)
        (letrec ((_%split13349%_
                  (lambda (_%lst13710%_ _%mid13712%_)
                    (let _%lp13714%_ ((_%i13717%_ '0)
                                      (_%rest13719%_ _%lst13710%_)
                                      (_%left13720%_ '()))
                      (if (fx< _%i13717%_ _%mid13712%_)
                          (_%lp13714%_
                           (fx1+ _%i13717%_)
                           (cdr _%rest13719%_)
                           (cons (car _%rest13719%_) _%left13720%_))
                          (values (reverse _%left13720%_) _%rest13719%_))))))
          (let* ((_%g1335213380%_
                  (lambda (_%g1335313376%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1335313376%_)))
                 (_%g1335113706%_
                  (lambda (_%g1335313384%_)
                    (if (gx#stx-pair? _%g1335313384%_)
                        (let ((_%e1335713387%_ (gx#syntax-e _%g1335313384%_)))
                          (let ((_%hd1335813391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1335713387%_)))
                                (_%tl1335913394%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1335713387%_))))
                            (if (gx#stx-pair? _%tl1335913394%_)
                                (let ((_%e1336013397%_
                                       (gx#syntax-e _%tl1335913394%_)))
                                  (let ((_%hd1336113401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1336013397%_)))
                                        (_%tl1336213404%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1336013397%_))))
                                    (if (gx#stx-pair? _%tl1336213404%_)
                                        (let ((_%e1336313407%_
                                               (gx#syntax-e _%tl1336213404%_)))
                                          (let ((_%hd1336413411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1336313407%_)))
                                                (_%tl1336513414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1336313407%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1336513414%_)
                                                (let ((_g21039_
                                                       (gx#syntax-split-splice
                                                        _%tl1336513414%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21039_)
                         (##values-length _g21039_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21040_ 2)))
                  (error "Context expects 2 values" _g21040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1336613417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21039_
                                                              0)))
                                                          (_%tl1336813420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21039_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1336813420%_)
                                                          (letrec ((_%loop1336913423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1336713427%_ _%K1337313430%_)
                              (if (gx#stx-pair? _%hd1336713427%_)
                                  (let ((_%e1337013433%_
                                         (gx#syntax-e _%hd1336713427%_)))
                                    (let ((_%lp-hd1337113437%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1337013433%_)))
                                          (_%lp-tl1337213440%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1337013433%_))))
                                      (_%loop1336913423%_
                                       _%lp-tl1337213440%_
                                       (cons _%lp-hd1337113437%_
                                             _%K1337313430%_))))
                                  (let ((_%K1337413443%_
                                         (reverse _%K1337313430%_)))
                                    ((lambda (_%L13447%_ _%L13449%_ _%L13450%_)
                                       (let* ((_%len13480%_
                                               (length (foldr (lambda (_%g1347113474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1347213477%_)
                        (cons _%g1347113474%_ _%g1347213477%_))
                      '()
                      _%L13447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13483%_
                                               (quotient _%len13480%_ '2))
                                              (_g21041_
                                               (_%split13349%_
                                                (foldr (lambda (_%g1348513488%_
                                                                _%g1348613491%_)
                                                         (cons _%g1348513488%_
                                                               _%g1348613491%_))
                                                       '()
                                                       _%L13447%_)
                                                _%mid13483%_)))
                                         (begin
                                           (let ((_g21042_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21041_)
                                                        (##values-length
                                                         _g21041_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21042_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21042_)))
                                           (let ((_%left13494%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g21041_ 0)))
                                                 (_%right13496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g21041_
                                                     1))))
                                             (let* ((_%g1350013541%_
                                                     (lambda (_%g1350113537%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1350113537%_)))
                                                    (_%g1349913702%_
                                                     (lambda (_%g1350113545%_)
                                                       (if (gx#stx-pair?
                                                            _%g1350113545%_)
                                                           (let ((_%e1350613548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1350113545%_)))
                     (let ((_%hd1350713552%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1350613548%_)))
                           (_%tl1350813555%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1350613548%_))))
                       (if (gx#stx-pair? _%tl1350813555%_)
                           (let ((_%e1350913558%_
                                  (gx#syntax-e _%tl1350813555%_)))
                             (let ((_%hd1351013562%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1350913558%_)))
                                   (_%tl1351113565%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1350913558%_))))
                               (if (gx#stx-pair/null? _%hd1351013562%_)
                                   (let ((_g21043_
                                          (gx#syntax-split-splice
                                           _%hd1351013562%_
                                           '0)))
                                     (begin
                                       (let ((_g21044_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21043_)
                                                    (##values-length _g21043_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21044_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21044_)))
                                       (let ((_%target1351213568%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21043_ 0)))
                                             (_%tl1351413571%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21043_ 1))))
                                         (if (gx#stx-null? _%tl1351413571%_)
                                             (letrec ((_%loop1351513574%_
                                                       (lambda (_%hd1351313578%_
                                                                _%K-left1351913581%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1351313578%_)
                                                             (let ((_%e1351613584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1351313578%_)))
                       (let ((_%lp-hd1351713588%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1351613584%_)))
                             (_%lp-tl1351813591%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1351613584%_))))
                         (_%loop1351513574%_
                          _%lp-tl1351813591%_
                          (cons _%lp-hd1351713588%_ _%K-left1351913581%_))))
                     (let ((_%K-left1352013594%_
                            (reverse _%K-left1351913581%_)))
                       (if (gx#stx-pair? _%tl1351113565%_)
                           (let ((_%e1352113598%_
                                  (gx#syntax-e _%tl1351113565%_)))
                             (let ((_%hd1352213602%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1352113598%_)))
                                   (_%tl1352313605%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1352113598%_))))
                               (if (gx#stx-pair/null? _%hd1352213602%_)
                                   (let ((_g21045_
                                          (gx#syntax-split-splice
                                           _%hd1352213602%_
                                           '0)))
                                     (begin
                                       (let ((_g21046_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21045_)
                                                    (##values-length _g21045_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21046_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21046_)))
                                       (let ((_%target1352413608%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21045_ 0)))
                                             (_%tl1352613611%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21045_ 1))))
                                         (if (gx#stx-null? _%tl1352613611%_)
                                             (letrec ((_%loop1352713614%_
                                                       (lambda (_%hd1352513618%_
                                                                _%K-right1353113621%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1352513618%_)
                                                             (let ((_%e1352813624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1352513618%_)))
                       (let ((_%lp-hd1352913628%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1352813624%_)))
                             (_%lp-tl1353013631%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1352813624%_))))
                         (_%loop1352713614%_
                          _%lp-tl1353013631%_
                          (cons _%lp-hd1352913628%_ _%K-right1353113621%_))))
                     (let ((_%K-right1353213634%_
                            (reverse _%K-right1353113621%_)))
                       (if (gx#stx-pair? _%tl1352313605%_)
                           (let ((_%e1353313638%_
                                  (gx#syntax-e _%tl1352313605%_)))
                             (let ((_%hd1353413642%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1353313638%_)))
                                   (_%tl1353513645%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1353313638%_))))
                               (if (gx#stx-null? _%tl1353513645%_)
                                   ((lambda (_%L13648%_
                                             _%L13650%_
                                             _%L13651%_
                                             _%L13652%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13449%_
                                                              (cons _%L13648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13449%_
                                  (foldr (lambda (_%g1368513690%_
                                                  _%g1368613693%_)
                                           (cons _%g1368513690%_
                                                 _%g1368613693%_))
                                         '()
                                         _%L13651%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13648%_
                                  (cons _%L13449%_
                                        (foldr (lambda (_%g1368713696%_
                                                        _%g1368813699%_)
                                                 (cons _%g1368713696%_
                                                       _%g1368813699%_))
                                               '()
                                               _%L13650%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1353413642%_
                                    _%K-right1353213634%_
                                    _%K-left1352013594%_
                                    _%hd1350713552%_)
                                   (_%g1350013541%_ _%g1350113545%_))))
                           (_%g1350013541%_ _%g1350113545%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1352713614%_
                                                _%target1352413608%_
                                                '()))
                                             (_%g1350013541%_
                                              _%g1350113545%_)))))
                                   (_%g1350013541%_ _%g1350113545%_))))
                           (_%g1350013541%_ _%g1350113545%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1351513574%_
                                                _%target1351213568%_
                                                '()))
                                             (_%g1350013541%_
                                              _%g1350113545%_)))))
                                   (_%g1350013541%_ _%g1350113545%_))))
                           (_%g1350013541%_ _%g1350113545%_))))
                   (_%g1350013541%_ _%g1350113545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1349913702%_
                                                (list _%mid13483%_
                                                      _%left13494%_
                                                      _%right13496%_
                                                      (fx+ _%mid13483%_
                                                           (gx#stx-e
                                                            _%L13450%_)))))))))
                                     _%K1337413443%_
                                     _%hd1336413411%_
                                     _%hd1336113401%_))))))
                    (_%loop1336913423%_ _%target1336613417%_ '()))
                  (_%g1335213380%_ _%g1335313384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1335213380%_
                                                 _%g1335313384%_))))
                                        (_%g1335213380%_ _%g1335313384%_))))
                                (_%g1335213380%_ _%g1335313384%_))))
                        (_%g1335213380%_ _%g1335313384%_)))))
            (_%g1335113706%_ _%stx13346%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_%$stx13726%_)
        (let* ((_%g1373013801%_
                (lambda (_%g1373113797%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1373113797%_)))
               (_%g1372914090%_
                (lambda (_%g1373113805%_)
                  (if (gx#stx-pair? _%g1373113805%_)
                      (let ((_%e1373813808%_ (gx#syntax-e _%g1373113805%_)))
                        (let ((_%hd1373913812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1373813808%_)))
                              (_%tl1374013815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1373813808%_))))
                          (if (gx#stx-pair? _%tl1374013815%_)
                              (let ((_%e1374113818%_
                                     (gx#syntax-e _%tl1374013815%_)))
                                (let ((_%hd1374213822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1374113818%_)))
                                      (_%tl1374313825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1374113818%_))))
                                  (if (gx#stx-pair/null? _%hd1374213822%_)
                                      (let ((_g21047_
                                             (gx#syntax-split-splice
                                              _%hd1374213822%_
                                              '0)))
                                        (begin
                                          (let ((_g21048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21047_)
                                                       (##values-length
                                                        _g21047_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21048_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21048_)))
                                          (let ((_%target1374413828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21047_ 0)))
                                                (_%tl1374613831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21047_ 1))))
                                            (if (gx#stx-null? _%tl1374613831%_)
                                                (letrec ((_%loop1374713834%_
                                                          (lambda (_%hd1374513838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step1375113841%_
                           _%init1375213843%_
                           _%var1375313845%_)
                    (if (gx#stx-pair? _%hd1374513838%_)
                        (let ((_%e1374813848%_ (gx#syntax-e _%hd1374513838%_)))
                          (let ((_%lp-hd1374913852%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1374813848%_)))
                                (_%lp-tl1375013855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1374813848%_))))
                            (if (gx#stx-pair? _%lp-hd1374913852%_)
                                (let ((_%e1375713858%_
                                       (gx#syntax-e _%lp-hd1374913852%_)))
                                  (let ((_%hd1375813862%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1375713858%_)))
                                        (_%tl1375913865%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1375713858%_))))
                                    (if (gx#stx-pair? _%tl1375913865%_)
                                        (let ((_%e1376013868%_
                                               (gx#syntax-e _%tl1375913865%_)))
                                          (let ((_%hd1376113872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1376013868%_)))
                                                (_%tl1376213875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1376013868%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1376213875%_)
                                                (let ((_g21049_
                                                       (gx#syntax-split-splice
                                                        _%tl1376213875%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21050_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21049_)
                         (##values-length _g21049_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21050_ 2)))
                  (error "Context expects 2 values" _g21050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1376313878%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21049_
                                                              0)))
                                                          (_%tl1376513881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21049_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1376513881%_)
                                                          (letrec ((_%loop1376613884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1376413888%_ _%step1377013891%_)
                              (if (gx#stx-pair? _%hd1376413888%_)
                                  (let ((_%e1376713894%_
                                         (gx#syntax-e _%hd1376413888%_)))
                                    (let ((_%lp-hd1376813898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1376713894%_)))
                                          (_%lp-tl1376913901%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1376713894%_))))
                                      (_%loop1376613884%_
                                       _%lp-tl1376913901%_
                                       (cons _%lp-hd1376813898%_
                                             _%step1377013891%_))))
                                  (let ((_%step1377113904%_
                                         (reverse _%step1377013891%_)))
                                    (_%loop1374713834%_
                                     _%lp-tl1375013855%_
                                     (cons _%step1377113904%_
                                           _%step1375113841%_)
                                     (cons _%hd1376113872%_ _%init1375213843%_)
                                     (cons _%hd1375813862%_
                                           _%var1375313845%_)))))))
                    (_%loop1376613884%_ _%target1376313878%_ '()))
                  (_%g1373013801%_ _%g1373113805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1373013801%_
                                                 _%g1373113805%_))))
                                        (_%g1373013801%_ _%g1373113805%_))))
                                (_%g1373013801%_ _%g1373113805%_))))
                        (let ((_%step1375413908%_ (reverse _%step1375113841%_))
                              (_%init1375513911%_ (reverse _%init1375213843%_))
                              (_%var1375613913%_ (reverse _%var1375313845%_)))
                          (if (gx#stx-pair? _%tl1374313825%_)
                              (let ((_%e1377213916%_
                                     (gx#syntax-e _%tl1374313825%_)))
                                (let ((_%hd1377313920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1377213916%_)))
                                      (_%tl1377413923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1377213916%_))))
                                  (if (gx#stx-pair? _%hd1377313920%_)
                                      (let ((_%e1377513926%_
                                             (gx#syntax-e _%hd1377313920%_)))
                                        (let ((_%hd1377613930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1377513926%_)))
                                              (_%tl1377713933%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1377513926%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1377713933%_)
                                              (let ((_g21051_
                                                     (gx#syntax-split-splice
                                                      _%tl1377713933%_
                                                      '0)))
                                                (begin
                                                  (let ((_g21052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g21051_)
                                                               (##values-length
                                                                _g21051_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g21052_ 2)))
                (error "Context expects 2 values" _g21052_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target1377813936%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21051_
                                                            0)))
                                                        (_%tl1378013939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g21051_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl1378013939%_)
                                                        (letrec ((_%loop1378113942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd1377913946%_ _%fini1378513949%_)
                            (if (gx#stx-pair? _%hd1377913946%_)
                                (let ((_%e1378213952%_
                                       (gx#syntax-e _%hd1377913946%_)))
                                  (let ((_%lp-hd1378313956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1378213952%_)))
                                        (_%lp-tl1378413959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1378213952%_))))
                                    (_%loop1378113942%_
                                     _%lp-tl1378413959%_
                                     (cons _%lp-hd1378313956%_
                                           _%fini1378513949%_))))
                                (let ((_%fini1378613962%_
                                       (reverse _%fini1378513949%_)))
                                  (if (gx#stx-pair/null? _%tl1377413923%_)
                                      (let ((_g21053_
                                             (gx#syntax-split-splice
                                              _%tl1377413923%_
                                              '0)))
                                        (begin
                                          (let ((_g21054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21053_)
                                                       (##values-length
                                                        _g21053_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21054_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21054_)))
                                          (let ((_%target1378713966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21053_ 0)))
                                                (_%tl1378913969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21053_ 1))))
                                            (if (gx#stx-null? _%tl1378913969%_)
                                                (letrec ((_%loop1379013972%_
                                                          (lambda (_%hd1378813976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body1379413979%_)
                    (if (gx#stx-pair? _%hd1378813976%_)
                        (let ((_%e1379113982%_ (gx#syntax-e _%hd1378813976%_)))
                          (let ((_%lp-hd1379213986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1379113982%_)))
                                (_%lp-tl1379313989%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1379113982%_))))
                            (_%loop1379013972%_
                             _%lp-tl1379313989%_
                             (cons _%lp-hd1379213986%_ _%body1379413979%_))))
                        (let ((_%body1379513992%_
                               (reverse _%body1379413979%_)))
                          ((lambda (_%L13996%_
                                    _%L13998%_
                                    _%L13999%_
                                    _%L14000%_
                                    _%L14001%_
                                    _%L14002%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g1403514038%_
                                                  _%g1403614041%_)
                                           (cons _%g1403514038%_
                                                 _%g1403614041%_))
                                         '()
                                         _%L14002%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%L14001%_
                                                      _%L14002%_)
                                                     (foldr (lambda (_%g1404314056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g1404414059%_
                             _%g1404514061%_)
                      (cons (cons _%g1404414059%_ (cons _%g1404314056%_ '()))
                            _%g1404514061%_))
                    '()
                    _%L14001%_
                    _%L14002%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%L13999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g1404614064%_
                                                               _%g1404714067%_)
                                                        (cons _%g1404614064%_
                                                              _%g1404714067%_))
                                                      '()
                                                      _%L13998%_)))
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (foldr (lambda (_%g1404814070%_
                                                               _%g1404914073%_)
                                                        (cons _%g1404814070%_
                                                              _%g1404914073%_))
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$loop)
                          (begin
                            (gx#syntax-check-splice-targets
                             _%L14000%_
                             _%L14002%_)
                            (foldr (lambda (_%g1405014076%_
                                            _%g1405114079%_
                                            _%g1405214081%_)
                                     (cons (cons (gx#datum->syntax '#f 'begin)
                                                 (cons _%g1405114079%_
                                                       (foldr (lambda (_%g1405314084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1405414087%_)
                        (cons _%g1405314084%_ _%g1405414087%_))
                      '()
                      _%g1405014076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g1405214081%_))
                                   '()
                                   _%L14000%_
                                   _%L14002%_)))
                    '())
              _%L13996%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1373013801%_ _%g1373113805%_)))
                           _%body1379513992%_
                           _%fini1378613962%_
                           _%hd1377613930%_
                           _%step1375413908%_
                           _%init1375513911%_
                           _%var1375613913%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1379013972%_
                                                   _%target1378713966%_
                                                   '()))
                                                (_%g1373013801%_
                                                 _%g1373113805%_)))))
                                      (_%g1373013801%_ _%g1373113805%_)))))))
                  (_%loop1378113942%_ _%target1377813936%_ '()))
                (_%g1373013801%_ _%g1373113805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1373013801%_
                                               _%g1373113805%_))))
                                      (_%g1373013801%_ _%g1373113805%_))))
                              (_%g1373013801%_ _%g1373113805%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1374713834%_
                                                   _%target1374413828%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g1373013801%_
                                                 _%g1373113805%_)))))
                                      (_%g1373013801%_ _%g1373113805%_))))
                              (_%g1373013801%_ _%g1373113805%_))))
                      (_%g1373013801%_ _%g1373113805%_)))))
          (_%g1372914090%_ _%$stx13726%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_%$stx14098%_)
        (let* ((_%g1410214125%_
                (lambda (_%g1410314121%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1410314121%_)))
               (_%g1410114196%_
                (lambda (_%g1410314129%_)
                  (if (gx#stx-pair? _%g1410314129%_)
                      (let ((_%e1410814132%_ (gx#syntax-e _%g1410314129%_)))
                        (let ((_%hd1410914136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1410814132%_)))
                              (_%tl1411014139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1410814132%_))))
                          (if (gx#stx-pair? _%tl1411014139%_)
                              (let ((_%e1411114142%_
                                     (gx#syntax-e _%tl1411014139%_)))
                                (let ((_%hd1411214146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1411114142%_)))
                                      (_%tl1411314149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1411114142%_))))
                                  (if (gx#stx-pair? _%tl1411314149%_)
                                      (let ((_%e1411414152%_
                                             (gx#syntax-e _%tl1411314149%_)))
                                        (let ((_%hd1411514156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1411414152%_)))
                                              (_%tl1411614159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1411414152%_))))
                                          (if (gx#stx-pair? _%hd1411514156%_)
                                              (let ((_%e1411714162%_
                                                     (gx#syntax-e
                                                      _%hd1411514156%_)))
                                                (let ((_%hd1411814166%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1411714162%_)))
                                                      (_%tl1411914169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1411714162%_))))
                                                  ((lambda (_%L14172%_
                                                            _%L14174%_
                                                            _%L14175%_
                                                            _%L14176%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _%L14176%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L14175%_ '()))
                                     _%L14174%_)
                               _%L14172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl1411614159%_
                                                   _%tl1411914169%_
                                                   _%hd1411814166%_
                                                   _%hd1411214146%_)))
                                              (_%g1410214125%_
                                               _%g1410314129%_))))
                                      (_%g1410214125%_ _%g1410314129%_))))
                              (_%g1410214125%_ _%g1410314129%_))))
                      (_%g1410214125%_ _%g1410314129%_)))))
          (_%g1410114196%_ _%$stx14098%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx14200%_)
        (let* ((_%__stx1997719978%_ _%$stx14200%_)
               (_%g1420514236%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1997719978%_))))
          (let ((_%__kont1998019981%_ (lambda (_%L14348%_) _%L14348%_))
                (_%__kont1998219983%_
                 (lambda (_%L14293%_ _%L14295%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L14295%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1431214315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1431314318%_)
                        (cons _%g1431214315%_ _%g1431314318%_))
                      '()
                      _%L14293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match2002020021%_
                   (lambda (_%e1421614243%_
                            _%hd1421714247%_
                            _%tl1421814250%_
                            _%e1421914253%_
                            _%hd1422014257%_
                            _%tl1422114260%_
                            _%__splice1998419985%_
                            _%target1422214263%_
                            _%tl1422414266%_)
                     (letrec ((_%loop1422514269%_
                               (lambda (_%hd1422314273%_ _%rest1422914276%_)
                                 (if (gx#stx-pair? _%hd1422314273%_)
                                     (let ((_%e1422614279%_
                                            (gx#syntax-e _%hd1422314273%_)))
                                       (let ((_%lp-tl1422814286%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1422614279%_)))
                                             (_%lp-hd1422714283%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1422614279%_))))
                                         (_%loop1422514269%_
                                          _%lp-tl1422814286%_
                                          (cons _%lp-hd1422714283%_
                                                _%rest1422914276%_))))
                                     (let ((_%rest1423014289%_
                                            (reverse _%rest1422914276%_)))
                                       (_%__kont1998219983%_
                                        _%rest1423014289%_
                                        _%hd1422014257%_))))))
                       (_%loop1422514269%_ _%target1422214263%_ '())))))
              (if (gx#stx-pair? _%__stx1997719978%_)
                  (let ((_%e1420814328%_ (gx#syntax-e _%__stx1997719978%_)))
                    (let ((_%tl1421014335%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1420814328%_)))
                          (_%hd1420914332%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1420814328%_))))
                      (if (gx#stx-pair? _%tl1421014335%_)
                          (let ((_%e1421114338%_
                                 (gx#syntax-e _%tl1421014335%_)))
                            (let ((_%tl1421314345%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1421114338%_)))
                                  (_%hd1421214342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1421114338%_))))
                              (if (gx#stx-null? _%tl1421314345%_)
                                  (_%__kont1998019981%_ _%hd1421214342%_)
                                  (if (gx#stx-pair/null? _%tl1421314345%_)
                                      (let ((_%__splice1998419985%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1421314345%_
                                              '0)))
                                        (let ((_%tl1422414266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1998419985%_
                                                  '1)))
                                              (_%target1422214263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1998419985%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1422414266%_)
                                              (_%__match2002020021%_
                                               _%e1420814328%_
                                               _%hd1420914332%_
                                               _%tl1421014335%_
                                               _%e1421114338%_
                                               _%hd1421214342%_
                                               _%tl1421314345%_
                                               _%__splice1998419985%_
                                               _%target1422214263%_
                                               _%tl1422414266%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1420514236%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1420514236%_))))))
                          (let () (declare (not safe)) (_%g1420514236%_)))))
                  (let () (declare (not safe)) (_%g1420514236%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14366%_)
        (let* ((_%__stx2002320024%_ _%$stx14366%_)
               (_%g1437214425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2002320024%_))))
          (let ((_%__kont2002620027%_
                 (lambda (_%L14627%_ _%L14629%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14629%_ (cons _%L14627%_ '()))
                                     '())
                               (cons _%L14629%_ '())))))
                (_%__kont2002820029%_
                 (lambda (_%L14571%_ _%L14573%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14573%_ (cons _%L14571%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14573%_)
                                     '())))))
                (_%__kont2003020031%_
                 (lambda (_%L14492%_ _%L14494%_ _%L14495%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14495%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14494%_
                                                             (foldr (lambda (_%g1451514518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1451614521%_)
                              (cons _%g1451514518%_ _%g1451614521%_))
                            '()
                            _%L14492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14495%_ '()))))))
            (let* ((_%__match2011020111%_
                    (lambda (_%e1440214432%_
                             _%hd1440314436%_
                             _%tl1440414439%_
                             _%e1440514442%_
                             _%hd1440614446%_
                             _%tl1440714449%_
                             _%e1440814452%_
                             _%hd1440914456%_
                             _%tl1441014459%_
                             _%__splice2003220033%_
                             _%target1441114462%_
                             _%tl1441314465%_)
                      (letrec ((_%loop1441414468%_
                                (lambda (_%hd1441214472%_ _%body1441814475%_)
                                  (if (gx#stx-pair? _%hd1441214472%_)
                                      (let ((_%e1441514478%_
                                             (gx#syntax-e _%hd1441214472%_)))
                                        (let ((_%lp-tl1441714485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1441514478%_)))
                                              (_%lp-hd1441614482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1441514478%_))))
                                          (_%loop1441414468%_
                                           _%lp-tl1441714485%_
                                           (cons _%lp-hd1441614482%_
                                                 _%body1441814475%_))))
                                      (let ((_%body1441914488%_
                                             (reverse _%body1441814475%_)))
                                        (let ((_%L14492%_ _%body1441914488%_)
                                              (_%L14494%_ _%tl1441014459%_)
                                              (_%L14495%_ _%hd1440914456%_))
                                          (if (gx#identifier? _%L14495%_)
                                              (_%__kont2003020031%_
                                               _%L14492%_
                                               _%L14494%_
                                               _%L14495%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1437214425%_)))))))))
                        (_%loop1441414468%_ _%target1441114462%_ '()))))
                   (_%__match2008420085%_
                    (lambda (_%e1438714531%_
                             _%hd1438814535%_
                             _%tl1438914538%_
                             _%e1439014541%_
                             _%hd1439114545%_
                             _%tl1439214548%_
                             _%e1439314551%_
                             _%hd1439414555%_
                             _%tl1439514558%_
                             _%e1439614561%_
                             _%hd1439714565%_
                             _%tl1439814568%_)
                      (let ((_%L14571%_ _%hd1439714565%_)
                            (_%L14573%_ _%tl1439514558%_))
                        (if (gx#identifier-list? _%L14573%_)
                            (_%__kont2002820029%_ _%L14571%_ _%L14573%_)
                            (if (gx#stx-pair/null? _%tl1439214548%_)
                                (let ((_%__splice2003220033%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1439214548%_
                                        '0)))
                                  (let ((_%tl1441314465%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2003220033%_
                                            '1)))
                                        (_%target1441114462%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2003220033%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1441314465%_)
                                        (_%__match2011020111%_
                                         _%e1438714531%_
                                         _%hd1438814535%_
                                         _%tl1438914538%_
                                         _%e1439014541%_
                                         _%hd1439114545%_
                                         _%tl1439214548%_
                                         _%e1439314551%_
                                         _%hd1439414555%_
                                         _%tl1439514558%_
                                         _%__splice2003220033%_
                                         _%target1441114462%_
                                         _%tl1441314465%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1437214425%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1437214425%_)))))))
                   (_%__match2005420055%_
                    (lambda (_%e1437614597%_
                             _%hd1437714601%_
                             _%tl1437814604%_
                             _%e1437914607%_
                             _%hd1438014611%_
                             _%tl1438114614%_
                             _%e1438214617%_
                             _%hd1438314621%_
                             _%tl1438414624%_)
                      (let ((_%L14627%_ _%hd1438314621%_)
                            (_%L14629%_ _%hd1438014611%_))
                        (if (gx#identifier? _%L14629%_)
                            (_%__kont2002620027%_ _%L14627%_ _%L14629%_)
                            (if (gx#stx-pair? _%hd1438014611%_)
                                (let ((_%e1439314551%_
                                       (gx#syntax-e _%hd1438014611%_)))
                                  (let ((_%tl1439514558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1439314551%_)))
                                        (_%hd1439414555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1439314551%_))))
                                    (if (gx#identifier? _%hd1439414555%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21055_|
                                             _%hd1439414555%_)
                                            (_%__match2008420085%_
                                             _%e1437614597%_
                                             _%hd1437714601%_
                                             _%tl1437814604%_
                                             _%e1437914607%_
                                             _%hd1438014611%_
                                             _%tl1438114614%_
                                             _%e1439314551%_
                                             _%hd1439414555%_
                                             _%tl1439514558%_
                                             _%e1438214617%_
                                             _%hd1438314621%_
                                             _%tl1438414624%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1438114614%_)
                                                (let ((_%__splice2003220033%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1438114614%_
                                                        '0)))
                                                  (let ((_%tl1441314465%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2003220033%_
                                                            '1)))
                                                        (_%target1441114462%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2003220033%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1441314465%_)
                                                        (_%__match2011020111%_
                                                         _%e1437614597%_
                                                         _%hd1437714601%_
                                                         _%tl1437814604%_
                                                         _%e1437914607%_
                                                         _%hd1438014611%_
                                                         _%tl1438114614%_
                                                         _%e1439314551%_
                                                         _%hd1439414555%_
                                                         _%tl1439514558%_
                                                         _%__splice2003220033%_
                                                         _%target1441114462%_
                                                         _%tl1441314465%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1437214425%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1437214425%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1438114614%_)
                                            (let ((_%__splice2003220033%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1438114614%_
                                                    '0)))
                                              (let ((_%tl1441314465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2003220033%_
                                                        '1)))
                                                    (_%target1441114462%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2003220033%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1441314465%_)
                                                    (_%__match2011020111%_
                                                     _%e1437614597%_
                                                     _%hd1437714601%_
                                                     _%tl1437814604%_
                                                     _%e1437914607%_
                                                     _%hd1438014611%_
                                                     _%tl1438114614%_
                                                     _%e1439314551%_
                                                     _%hd1439414555%_
                                                     _%tl1439514558%_
                                                     _%__splice2003220033%_
                                                     _%target1441114462%_
                                                     _%tl1441314465%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1437214425%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1437214425%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1437214425%_))))))))
              (if (gx#stx-pair? _%__stx2002320024%_)
                  (let ((_%e1437614597%_ (gx#syntax-e _%__stx2002320024%_)))
                    (let ((_%tl1437814604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1437614597%_)))
                          (_%hd1437714601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1437614597%_))))
                      (if (gx#stx-pair? _%tl1437814604%_)
                          (let ((_%e1437914607%_
                                 (gx#syntax-e _%tl1437814604%_)))
                            (let ((_%tl1438114614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1437914607%_)))
                                  (_%hd1438014611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1437914607%_))))
                              (if (gx#stx-pair? _%tl1438114614%_)
                                  (let ((_%e1438214617%_
                                         (gx#syntax-e _%tl1438114614%_)))
                                    (let ((_%tl1438414624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1438214617%_)))
                                          (_%hd1438314621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1438214617%_))))
                                      (if (gx#stx-null? _%tl1438414624%_)
                                          (_%__match2005420055%_
                                           _%e1437614597%_
                                           _%hd1437714601%_
                                           _%tl1437814604%_
                                           _%e1437914607%_
                                           _%hd1438014611%_
                                           _%tl1438114614%_
                                           _%e1438214617%_
                                           _%hd1438314621%_
                                           _%tl1438414624%_)
                                          (if (gx#stx-pair? _%hd1438014611%_)
                                              (let ((_%e1439314551%_
                                                     (gx#syntax-e
                                                      _%hd1438014611%_)))
                                                (let ((_%tl1439514558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1439314551%_)))
                                                      (_%hd1439414555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1439314551%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1438114614%_)
                                                      (let ((_%__splice2003220033%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1438114614%_
                                                              '0)))
                                                        (let ((_%tl1441314465%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice2003220033%_ '1)))
                      (_%target1441114462%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice2003220033%_ '0))))
                  (if (gx#stx-null? _%tl1441314465%_)
                      (_%__match2011020111%_
                       _%e1437614597%_
                       _%hd1437714601%_
                       _%tl1437814604%_
                       _%e1437914607%_
                       _%hd1438014611%_
                       _%tl1438114614%_
                       _%e1439314551%_
                       _%hd1439414555%_
                       _%tl1439514558%_
                       _%__splice2003220033%_
                       _%target1441114462%_
                       _%tl1441314465%_)
                      (let () (declare (not safe)) (_%g1437214425%_)))))
              (let () (declare (not safe)) (_%g1437214425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1437214425%_))))))
                                  (if (gx#stx-pair? _%hd1438014611%_)
                                      (let ((_%e1439314551%_
                                             (gx#syntax-e _%hd1438014611%_)))
                                        (let ((_%tl1439514558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1439314551%_)))
                                              (_%hd1439414555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1439314551%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1438114614%_)
                                              (let ((_%__splice2003220033%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1438114614%_
                                                      '0)))
                                                (let ((_%tl1441314465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2003220033%_
                                                          '1)))
                                                      (_%target1441114462%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2003220033%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1441314465%_)
                                                      (_%__match2011020111%_
                                                       _%e1437614597%_
                                                       _%hd1437714601%_
                                                       _%tl1437814604%_
                                                       _%e1437914607%_
                                                       _%hd1438014611%_
                                                       _%tl1438114614%_
                                                       _%e1439314551%_
                                                       _%hd1439414555%_
                                                       _%tl1439514558%_
                                                       _%__splice2003220033%_
                                                       _%target1441114462%_
                                                       _%tl1441314465%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1437214425%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1437214425%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1437214425%_))))))
                          (let () (declare (not safe)) (_%g1437214425%_)))))
                  (let () (declare (not safe)) (_%g1437214425%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14649%_)
        (letrec ((_%let-bind?14652%_
                  (lambda (_%x15575%_)
                    (let* ((_%__stx2011320114%_ _%x15575%_)
                           (_%g1558015599%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2011320114%_))))
                      (let ((_%__kont2011620117%_
                             (lambda (_%L15667%_ _%L15669%_)
                               (_%let-head?14655%_ _%L15669%_)))
                            (_%__kont2011820119%_ (lambda (_%L15627%_) '#t))
                            (_%__kont2012020121%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2011320114%_)
                            (let ((_%e1558415647%_
                                   (gx#syntax-e _%__stx2011320114%_)))
                              (let ((_%tl1558615654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1558415647%_)))
                                    (_%hd1558515651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1558415647%_))))
                                (if (gx#stx-pair? _%tl1558615654%_)
                                    (let ((_%e1558715657%_
                                           (gx#syntax-e _%tl1558615654%_)))
                                      (let ((_%tl1558915664%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1558715657%_)))
                                            (_%hd1558815661%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1558715657%_))))
                                        (if (gx#stx-null? _%tl1558915664%_)
                                            (_%__kont2011620117%_
                                             _%hd1558815661%_
                                             _%hd1558515651%_)
                                            (_%__kont2012020121%_))))
                                    (if (gx#stx-null? _%tl1558615654%_)
                                        (_%__kont2011820119%_ _%hd1558515651%_)
                                        (_%__kont2012020121%_)))))
                            (_%__kont2012020121%_))))))
                 (_%let-bind14654%_
                  (lambda (_%x15477%_)
                    (let* ((_%__stx2014720148%_ _%x15477%_)
                           (_%g1548115500%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2014720148%_))))
                      (let ((_%__kont2015020151%_
                             (lambda (_%L15556%_ _%L15558%_) _%x15477%_))
                            (_%__kont2015220153%_
                             (lambda (_%L15517%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15517%_ '())))))
                        (if (gx#stx-pair? _%__stx2014720148%_)
                            (let ((_%e1548515536%_
                                   (gx#syntax-e _%__stx2014720148%_)))
                              (let ((_%tl1548715543%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1548515536%_)))
                                    (_%hd1548615540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1548515536%_))))
                                (if (gx#stx-pair? _%tl1548715543%_)
                                    (let ((_%e1548815546%_
                                           (gx#syntax-e _%tl1548715543%_)))
                                      (let ((_%tl1549015553%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1548815546%_)))
                                            (_%hd1548915550%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1548815546%_))))
                                        (if (gx#stx-null? _%tl1549015553%_)
                                            (_%__kont2015020151%_
                                             _%hd1548915550%_
                                             _%hd1548615540%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1548115500%_)))))
                                    (if (gx#stx-null? _%tl1548715543%_)
                                        (_%__kont2015220153%_ _%hd1548615540%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1548115500%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1548115500%_)))))))
                 (_%let-head?14655%_
                  (lambda (_%x15417%_)
                    (let* ((_%__stx2017920180%_ _%x15417%_)
                           (_%g1542115432%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2017920180%_))))
                      (let ((_%__kont2018220183%_
                             (lambda (_%L15460%_)
                               (gx#stx-andmap gx#identifier? _%L15460%_)))
                            (_%__kont2018420185%_
                             (lambda () (gx#identifier? _%x15417%_))))
                        (if (gx#stx-pair? _%__stx2017920180%_)
                            (let ((_%e1542415450%_
                                   (gx#syntax-e _%__stx2017920180%_)))
                              (let ((_%tl1542615457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1542415450%_)))
                                    (_%hd1542515454%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1542415450%_))))
                                (if (gx#identifier? _%hd1542515454%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21056_|
                                         _%hd1542515454%_)
                                        (_%__kont2018220183%_ _%tl1542615457%_)
                                        (_%__kont2018420185%_))
                                    (_%__kont2018420185%_))))
                            (_%__kont2018420185%_))))))
                 (_%let-head14656%_
                  (lambda (_%x15357%_)
                    (let* ((_%__stx2019920200%_ _%x15357%_)
                           (_%g1536115372%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2019920200%_))))
                      (let ((_%__kont2020220203%_
                             (lambda (_%L15400%_) _%L15400%_))
                            (_%__kont2020420205%_
                             (lambda () (list _%x15357%_))))
                        (if (gx#stx-pair? _%__stx2019920200%_)
                            (let ((_%e1536415390%_
                                   (gx#syntax-e _%__stx2019920200%_)))
                              (let ((_%tl1536615397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1536415390%_)))
                                    (_%hd1536515394%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1536415390%_))))
                                (if (gx#identifier? _%hd1536515394%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21057_|
                                         _%hd1536515394%_)
                                        (_%__kont2020220203%_ _%tl1536615397%_)
                                        (_%__kont2020420205%_))
                                    (_%__kont2020420205%_))))
                            (_%__kont2020420205%_)))))))
          (let* ((_%__stx2021920220%_ _%stx14649%_)
                 (_%g1466014732%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2021920220%_))))
            (let ((_%__kont2022220223%_
                   (lambda (_%L15330%_ _%L15332%_ _%L15333%_ _%L15334%_)
                     (cons _%L15334%_
                           (cons (cons (cons _%L15333%_ (cons _%L15332%_ '()))
                                       '())
                                 _%L15330%_))))
                  (_%__kont2022420225%_
                   (lambda (_%L15252%_ _%L15254%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L15254%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1527415277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1527515280%_)
                    (cons _%g1527415277%_ _%g1527515280%_))
                  '()
                  _%L15252%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2022820229%_
                   (lambda (_%L14819%_ _%L14821%_)
                     (let* ((_%g1485214878%_
                             (lambda (_%g1485314874%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1485314874%_)))
                            (_%g1485115163%_
                             (lambda (_%g1485314882%_)
                               (if (gx#stx-pair/null? _%g1485314882%_)
                                   (let ((_g21058_
                                          (gx#syntax-split-splice
                                           _%g1485314882%_
                                           '0)))
                                     (begin
                                       (let ((_g21059_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21058_)
                                                    (##values-length _g21058_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21059_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21059_)))
                                       (let ((_%target1485614885%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21058_ 0)))
                                             (_%tl1485814888%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21058_ 1))))
                                         (if (gx#stx-null? _%tl1485814888%_)
                                             (letrec ((_%loop1485914891%_
                                                       (lambda (_%hd1485714895%_
                                                                _%e1486314898%_
                                                                _%hd1486414900%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1485714895%_)
                                                             (let ((_%e1486014903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1485714895%_)))
                       (let ((_%lp-hd1486114907%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1486014903%_)))
                             (_%lp-tl1486214910%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1486014903%_))))
                         (if (gx#stx-pair? _%lp-hd1486114907%_)
                             (let ((_%e1486714913%_
                                    (gx#syntax-e _%lp-hd1486114907%_)))
                               (let ((_%hd1486814917%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1486714913%_)))
                                     (_%tl1486914920%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1486714913%_))))
                                 (if (gx#stx-pair? _%tl1486914920%_)
                                     (let ((_%e1487014923%_
                                            (gx#syntax-e _%tl1486914920%_)))
                                       (let ((_%hd1487114927%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1487014923%_)))
                                             (_%tl1487214930%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1487014923%_))))
                                         (if (gx#stx-null? _%tl1487214930%_)
                                             (_%loop1485914891%_
                                              _%lp-tl1486214910%_
                                              (cons _%hd1487114927%_
                                                    _%e1486314898%_)
                                              (cons _%hd1486814917%_
                                                    _%hd1486414900%_))
                                             (_%g1485214878%_
                                              _%g1485314882%_))))
                                     (_%g1485214878%_ _%g1485314882%_))))
                             (_%g1485214878%_ _%g1485314882%_))))
                     (let ((_%e1486514933%_ (reverse _%e1486314898%_))
                           (_%hd1486614936%_ (reverse _%hd1486414900%_)))
                       ((lambda (_%L14939%_ _%L14941%_)
                          (let* ((_%g1495714974%_
                                  (lambda (_%g1495814970%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1495814970%_)))
                                 (_%g1495615151%_
                                  (lambda (_%g1495814978%_)
                                    (if (gx#stx-pair/null? _%g1495814978%_)
                                        (let ((_g21060_
                                               (gx#syntax-split-splice
                                                _%g1495814978%_
                                                '0)))
                                          (begin
                                            (let ((_g21061_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21060_)
                                                         (##values-length
                                                          _g21060_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21061_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21061_)))
                                            (let ((_%target1496014981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21060_
                                                      0)))
                                                  (_%tl1496214984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21060_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1496214984%_)
                                                  (letrec ((_%loop1496314987%_
                                                            (lambda (_%hd1496114991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1496714994%_)
                      (if (gx#stx-pair? _%hd1496114991%_)
                          (let ((_%e1496414997%_
                                 (gx#syntax-e _%hd1496114991%_)))
                            (let ((_%lp-hd1496515001%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1496414997%_)))
                                  (_%lp-tl1496615004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1496414997%_))))
                              (_%loop1496314987%_
                               _%lp-tl1496615004%_
                               (cons _%lp-hd1496515001%_ _%$e1496714994%_))))
                          (let ((_%$e1496815007%_ (reverse _%$e1496714994%_)))
                            ((lambda (_%L15011%_)
                               (let* ((_%g1502815045%_
                                       (lambda (_%g1502915041%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1502915041%_)))
                                      (_%g1502715139%_
                                       (lambda (_%g1502915049%_)
                                         (if (gx#stx-pair/null?
                                              _%g1502915049%_)
                                             (let ((_g21062_
                                                    (gx#syntax-split-splice
                                                     _%g1502915049%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21063_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21062_)
                                                              (##values-length
                                                               _g21062_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1503115052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21062_
                                                           0)))
                                                       (_%tl1503315055%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21062_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1503315055%_)
                                                       (letrec ((_%loop1503415058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1503215062%_ _%hd-bind1503815065%_)
                           (if (gx#stx-pair? _%hd1503215062%_)
                               (let ((_%e1503515068%_
                                      (gx#syntax-e _%hd1503215062%_)))
                                 (let ((_%lp-hd1503615072%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1503515068%_)))
                                       (_%lp-tl1503715075%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1503515068%_))))
                                   (_%loop1503415058%_
                                    _%lp-tl1503715075%_
                                    (cons _%lp-hd1503615072%_
                                          _%hd-bind1503815065%_))))
                               (let ((_%hd-bind1503915078%_
                                      (reverse _%hd-bind1503815065%_)))
                                 ((lambda (_%L15082%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14939%_
                                                   _%L15011%_)
                                                  (foldr (lambda (_%g1510015111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1510115114%_
                          _%g1510215116%_)
                   (cons (cons (cons _%g1510115114%_ '())
                               (cons _%g1510015111%_ '()))
                         _%g1510215116%_))
                 '()
                 _%L14939%_
                 _%L15011%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1510315119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1510415122%_)
                             (cons _%g1510315119%_ _%g1510415122%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L15011%_
                                                _%L15082%_)
                                               (foldr (lambda (_%g1510515125%_
                                                               _%g1510615128%_
                                                               _%g1510715130%_)
                                                        (cons (cons _%g1510615128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1510515125%_ '()))
                      _%g1510715130%_))
              '()
              _%L15011%_
              _%L15082%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1510815133%_
                                                             _%g1510915136%_)
                                                      (cons _%g1510815133%_
                                                            _%g1510915136%_))
                                                    '()
                                                    _%L14819%_)))
                                 '())
                           _%L15011%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1503915078%_))))))
                 (_%loop1503415058%_ _%target1503115052%_ '()))
               (_%g1502815045%_ _%g1502915049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1502815045%_
                                              _%g1502915049%_)))))
                                 (_%g1502715139%_
                                  (gx#stx-map
                                   _%let-head14656%_
                                   (foldr (lambda (_%g1514215145%_
                                                   _%g1514315148%_)
                                            (cons _%g1514215145%_
                                                  _%g1514315148%_))
                                          '()
                                          _%L14941%_)))))
                             _%$e1496815007%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1496314987%_
                                                     _%target1496014981%_
                                                     '()))
                                                  (_%g1495714974%_
                                                   _%g1495814978%_)))))
                                        (_%g1495714974%_ _%g1495814978%_)))))
                            (_%g1495615151%_
                             (gx#gentemps
                              (foldr (lambda (_%g1515415157%_ _%g1515515160%_)
                                       (cons _%g1515415157%_ _%g1515515160%_))
                                     '()
                                     _%L14941%_)))))
                        _%e1486514933%_
                        _%hd1486614936%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1485914891%_
                                                _%target1485614885%_
                                                '()
                                                '()))
                                             (_%g1485214878%_
                                              _%g1485314882%_)))))
                                   (_%g1485214878%_ _%g1485314882%_)))))
                       (_%g1485115163%_
                        (gx#stx-map
                         _%let-bind14654%_
                         (foldr (lambda (_%g1516615169%_ _%g1516715172%_)
                                  (cons _%g1516615169%_ _%g1516715172%_))
                                '()
                                _%L14821%_)))))))
              (let* ((_%__match2031620317%_
                      (lambda (_%e1470314739%_
                               _%hd1470414743%_
                               _%tl1470514746%_
                               _%e1470614749%_
                               _%hd1470714753%_
                               _%tl1470814756%_
                               _%__splice2023020231%_
                               _%target1470914759%_
                               _%tl1471114762%_)
                        (letrec ((_%loop1471214765%_
                                  (lambda (_%hd1471014769%_ _%bind1471614772%_)
                                    (if (gx#stx-pair? _%hd1471014769%_)
                                        (let ((_%e1471314775%_
                                               (gx#syntax-e _%hd1471014769%_)))
                                          (let ((_%lp-tl1471514782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1471314775%_)))
                                                (_%lp-hd1471414779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1471314775%_))))
                                            (_%loop1471214765%_
                                             _%lp-tl1471514782%_
                                             (cons _%lp-hd1471414779%_
                                                   _%bind1471614772%_))))
                                        (let ((_%bind1471714785%_
                                               (reverse _%bind1471614772%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1470814756%_)
                                              (let ((_%__splice2023220233%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1470814756%_
                                                      '0)))
                                                (let ((_%tl1472014792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023220233%_
                                                          '1)))
                                                      (_%target1471814789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023220233%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1472014792%_)
                                                      (letrec ((_%loop1472114795%_
                                                                (lambda (_%hd1471914799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1472514802%_)
                          (if (gx#stx-pair? _%hd1471914799%_)
                              (let ((_%e1472214805%_
                                     (gx#syntax-e _%hd1471914799%_)))
                                (let ((_%lp-tl1472414812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1472214805%_)))
                                      (_%lp-hd1472314809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1472214805%_))))
                                  (_%loop1472114795%_
                                   _%lp-tl1472414812%_
                                   (cons _%lp-hd1472314809%_
                                         _%body1472514802%_))))
                              (let ((_%body1472614815%_
                                     (reverse _%body1472514802%_)))
                                (let ((_%L14819%_ _%body1472614815%_)
                                      (_%L14821%_ _%bind1471714785%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14652%_
                                       (foldr (lambda (_%g1484314846%_
                                                       _%g1484414849%_)
                                                (cons _%g1484314846%_
                                                      _%g1484414849%_))
                                              '()
                                              _%L14821%_))
                                      (_%__kont2022820229%_
                                       _%L14819%_
                                       _%L14821%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1466014732%_)))))))))
                (_%loop1472114795%_ _%target1471814789%_ '()))
              (let () (declare (not safe)) (_%g1466014732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1466014732%_))))))))
                          (_%loop1471214765%_ _%target1470914759%_ '()))))
                     (_%__match2029620297%_
                      (lambda (_%e1468015182%_
                               _%hd1468115186%_
                               _%tl1468215189%_
                               _%e1468315192%_
                               _%hd1468415196%_
                               _%tl1468515199%_
                               _%e1468615202%_
                               _%hd1468715206%_
                               _%tl1468815209%_
                               _%e1468915212%_
                               _%hd1469015216%_
                               _%tl1469115219%_
                               _%__splice2022620227%_
                               _%target1469215222%_
                               _%tl1469415225%_)
                        (letrec ((_%loop1469515228%_
                                  (lambda (_%hd1469315232%_ _%body1469915235%_)
                                    (if (gx#stx-pair? _%hd1469315232%_)
                                        (let ((_%e1469615238%_
                                               (gx#syntax-e _%hd1469315232%_)))
                                          (let ((_%lp-tl1469815245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1469615238%_)))
                                                (_%lp-hd1469715242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1469615238%_))))
                                            (_%loop1469515228%_
                                             _%lp-tl1469815245%_
                                             (cons _%lp-hd1469715242%_
                                                   _%body1469915235%_))))
                                        (let ((_%body1470015248%_
                                               (reverse _%body1469915235%_)))
                                          (_%__kont2022420225%_
                                           _%body1470015248%_
                                           _%hd1469015216%_))))))
                          (_%loop1469515228%_ _%target1469215222%_ '()))))
                     (_%__match2026020261%_
                      (lambda (_%e1466615290%_
                               _%hd1466715294%_
                               _%tl1466815297%_
                               _%e1466915300%_
                               _%hd1467015304%_
                               _%tl1467115307%_
                               _%e1467215310%_
                               _%hd1467315314%_
                               _%tl1467415317%_
                               _%e1467515320%_
                               _%hd1467615324%_
                               _%tl1467715327%_)
                        (let ((_%L15330%_ _%tl1467115307%_)
                              (_%L15332%_ _%hd1467615324%_)
                              (_%L15333%_ _%hd1467315314%_)
                              (_%L15334%_ _%hd1466715294%_))
                          (if (_%let-head?14655%_ _%L15333%_)
                              (_%__kont2022220223%_
                               _%L15330%_
                               _%L15332%_
                               _%L15333%_
                               _%L15334%_)
                              (if (gx#stx-pair? _%hd1467315314%_)
                                  (let ((_%e1468915212%_
                                         (gx#syntax-e _%hd1467315314%_)))
                                    (let ((_%tl1469115219%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1468915212%_)))
                                          (_%hd1469015216%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1468915212%_))))
                                      (if (gx#stx-pair/null? _%hd1467015304%_)
                                          (let ((_%__splice2023020231%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1467015304%_
                                                  '0)))
                                            (let ((_%tl1471114762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2023020231%_
                                                      '1)))
                                                  (_%target1470914759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2023020231%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1471114762%_)
                                                  (_%__match2031620317%_
                                                   _%e1466615290%_
                                                   _%hd1466715294%_
                                                   _%tl1466815297%_
                                                   _%e1466915300%_
                                                   _%hd1467015304%_
                                                   _%tl1467115307%_
                                                   _%__splice2023020231%_
                                                   _%target1470914759%_
                                                   _%tl1471114762%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1466014732%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1466014732%_)))))
                                  (if (gx#stx-pair/null? _%hd1467015304%_)
                                      (let ((_%__splice2023020231%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1467015304%_
                                              '0)))
                                        (let ((_%tl1471114762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2023020231%_
                                                  '1)))
                                              (_%target1470914759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2023020231%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1471114762%_)
                                              (_%__match2031620317%_
                                               _%e1466615290%_
                                               _%hd1466715294%_
                                               _%tl1466815297%_
                                               _%e1466915300%_
                                               _%hd1467015304%_
                                               _%tl1467115307%_
                                               _%__splice2023020231%_
                                               _%target1470914759%_
                                               _%tl1471114762%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1466014732%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1466014732%_)))))))))
                (if (gx#stx-pair? _%__stx2021920220%_)
                    (let ((_%e1466615290%_ (gx#syntax-e _%__stx2021920220%_)))
                      (let ((_%tl1466815297%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1466615290%_)))
                            (_%hd1466715294%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1466615290%_))))
                        (if (gx#stx-pair? _%tl1466815297%_)
                            (let ((_%e1466915300%_
                                   (gx#syntax-e _%tl1466815297%_)))
                              (let ((_%tl1467115307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1466915300%_)))
                                    (_%hd1467015304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1466915300%_))))
                                (if (gx#stx-pair? _%hd1467015304%_)
                                    (let ((_%e1467215310%_
                                           (gx#syntax-e _%hd1467015304%_)))
                                      (let ((_%tl1467415317%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1467215310%_)))
                                            (_%hd1467315314%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1467215310%_))))
                                        (if (gx#stx-pair? _%tl1467415317%_)
                                            (let ((_%e1467515320%_
                                                   (gx#syntax-e
                                                    _%tl1467415317%_)))
                                              (let ((_%tl1467715327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1467515320%_)))
                                                    (_%hd1467615324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1467515320%_))))
                                                (if (gx#stx-null?
                                                     _%tl1467715327%_)
                                                    (_%__match2026020261%_
                                                     _%e1466615290%_
                                                     _%hd1466715294%_
                                                     _%tl1466815297%_
                                                     _%e1466915300%_
                                                     _%hd1467015304%_
                                                     _%tl1467115307%_
                                                     _%e1467215310%_
                                                     _%hd1467315314%_
                                                     _%tl1467415317%_
                                                     _%e1467515320%_
                                                     _%hd1467615324%_
                                                     _%tl1467715327%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1467315314%_)
                                                        (let ((_%e1468915212%_
                                                               (gx#syntax-e
                                                                _%hd1467315314%_)))
                                                          (let ((_%tl1469115219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1468915212%_)))
                        (_%hd1469015216%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1468915212%_))))
                    (if (gx#stx-pair/null? _%hd1467015304%_)
                        (let ((_%__splice2023020231%_
                               (gx#syntax-split-splice->vector
                                _%hd1467015304%_
                                '0)))
                          (let ((_%tl1471114762%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2023020231%_ '1)))
                                (_%target1470914759%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2023020231%_ '0))))
                            (if (gx#stx-null? _%tl1471114762%_)
                                (_%__match2031620317%_
                                 _%e1466615290%_
                                 _%hd1466715294%_
                                 _%tl1466815297%_
                                 _%e1466915300%_
                                 _%hd1467015304%_
                                 _%tl1467115307%_
                                 _%__splice2023020231%_
                                 _%target1470914759%_
                                 _%tl1471114762%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1466014732%_)))))
                        (let () (declare (not safe)) (_%g1466014732%_)))))
                (if (gx#stx-pair/null? _%hd1467015304%_)
                    (let ((_%__splice2023020231%_
                           (gx#syntax-split-splice->vector
                            _%hd1467015304%_
                            '0)))
                      (let ((_%tl1471114762%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2023020231%_ '1)))
                            (_%target1470914759%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2023020231%_ '0))))
                        (if (gx#stx-null? _%tl1471114762%_)
                            (_%__match2031620317%_
                             _%e1466615290%_
                             _%hd1466715294%_
                             _%tl1466815297%_
                             _%e1466915300%_
                             _%hd1467015304%_
                             _%tl1467115307%_
                             _%__splice2023020231%_
                             _%target1470914759%_
                             _%tl1471114762%_)
                            (let () (declare (not safe)) (_%g1466014732%_)))))
                    (let () (declare (not safe)) (_%g1466014732%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1467315314%_)
                                                (let ((_%e1468915212%_
                                                       (gx#syntax-e
                                                        _%hd1467315314%_)))
                                                  (let ((_%tl1469115219%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1468915212%_)))
                                                        (_%hd1469015216%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1468915212%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1469115219%_)
                                                        (if (gx#stx-null?
                                                             _%tl1467415317%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1467115307%_)
                        (let ((_%__splice2022620227%_
                               (gx#syntax-split-splice->vector
                                _%tl1467115307%_
                                '0)))
                          (let ((_%tl1469415225%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2022620227%_ '1)))
                                (_%target1469215222%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2022620227%_ '0))))
                            (if (gx#stx-null? _%tl1469415225%_)
                                (_%__match2029620297%_
                                 _%e1466615290%_
                                 _%hd1466715294%_
                                 _%tl1466815297%_
                                 _%e1466915300%_
                                 _%hd1467015304%_
                                 _%tl1467115307%_
                                 _%e1467215310%_
                                 _%hd1467315314%_
                                 _%tl1467415317%_
                                 _%e1468915212%_
                                 _%hd1469015216%_
                                 _%tl1469115219%_
                                 _%__splice2022620227%_
                                 _%target1469215222%_
                                 _%tl1469415225%_)
                                (if (gx#stx-pair/null? _%hd1467015304%_)
                                    (let ((_%__splice2023020231%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1467015304%_
                                            '0)))
                                      (let ((_%tl1471114762%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2023020231%_
                                                '1)))
                                            (_%target1470914759%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2023020231%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1471114762%_)
                                            (_%__match2031620317%_
                                             _%e1466615290%_
                                             _%hd1466715294%_
                                             _%tl1466815297%_
                                             _%e1466915300%_
                                             _%hd1467015304%_
                                             _%tl1467115307%_
                                             _%__splice2023020231%_
                                             _%target1470914759%_
                                             _%tl1471114762%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1466014732%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1466014732%_))))))
                        (if (gx#stx-pair/null? _%hd1467015304%_)
                            (let ((_%__splice2023020231%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1467015304%_
                                    '0)))
                              (let ((_%tl1471114762%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2023020231%_
                                        '1)))
                                    (_%target1470914759%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2023020231%_
                                        '0))))
                                (if (gx#stx-null? _%tl1471114762%_)
                                    (_%__match2031620317%_
                                     _%e1466615290%_
                                     _%hd1466715294%_
                                     _%tl1466815297%_
                                     _%e1466915300%_
                                     _%hd1467015304%_
                                     _%tl1467115307%_
                                     _%__splice2023020231%_
                                     _%target1470914759%_
                                     _%tl1471114762%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1466014732%_)))))
                            (let () (declare (not safe)) (_%g1466014732%_))))
                    (if (gx#stx-pair/null? _%hd1467015304%_)
                        (let ((_%__splice2023020231%_
                               (gx#syntax-split-splice->vector
                                _%hd1467015304%_
                                '0)))
                          (let ((_%tl1471114762%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2023020231%_ '1)))
                                (_%target1470914759%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2023020231%_ '0))))
                            (if (gx#stx-null? _%tl1471114762%_)
                                (_%__match2031620317%_
                                 _%e1466615290%_
                                 _%hd1466715294%_
                                 _%tl1466815297%_
                                 _%e1466915300%_
                                 _%hd1467015304%_
                                 _%tl1467115307%_
                                 _%__splice2023020231%_
                                 _%target1470914759%_
                                 _%tl1471114762%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1466014732%_)))))
                        (let () (declare (not safe)) (_%g1466014732%_))))
                (if (gx#stx-pair/null? _%hd1467015304%_)
                    (let ((_%__splice2023020231%_
                           (gx#syntax-split-splice->vector
                            _%hd1467015304%_
                            '0)))
                      (let ((_%tl1471114762%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2023020231%_ '1)))
                            (_%target1470914759%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2023020231%_ '0))))
                        (if (gx#stx-null? _%tl1471114762%_)
                            (_%__match2031620317%_
                             _%e1466615290%_
                             _%hd1466715294%_
                             _%tl1466815297%_
                             _%e1466915300%_
                             _%hd1467015304%_
                             _%tl1467115307%_
                             _%__splice2023020231%_
                             _%target1470914759%_
                             _%tl1471114762%_)
                            (let () (declare (not safe)) (_%g1466014732%_)))))
                    (let () (declare (not safe)) (_%g1466014732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1467015304%_)
                                                    (let ((_%__splice2023020231%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1467015304%_
                                                            '0)))
                                                      (let ((_%tl1471114762%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2023020231%_ '1)))
                    (_%target1470914759%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2023020231%_ '0))))
                (if (gx#stx-null? _%tl1471114762%_)
                    (_%__match2031620317%_
                     _%e1466615290%_
                     _%hd1466715294%_
                     _%tl1466815297%_
                     _%e1466915300%_
                     _%hd1467015304%_
                     _%tl1467115307%_
                     _%__splice2023020231%_
                     _%target1470914759%_
                     _%tl1471114762%_)
                    (let () (declare (not safe)) (_%g1466014732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1466014732%_)))))))
                                    (if (gx#stx-pair/null? _%hd1467015304%_)
                                        (let ((_%__splice2023020231%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1467015304%_
                                                '0)))
                                          (let ((_%tl1471114762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2023020231%_
                                                    '1)))
                                                (_%target1470914759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2023020231%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1471114762%_)
                                                (_%__match2031620317%_
                                                 _%e1466615290%_
                                                 _%hd1466715294%_
                                                 _%tl1466815297%_
                                                 _%e1466915300%_
                                                 _%hd1467015304%_
                                                 _%tl1467115307%_
                                                 _%__splice2023020231%_
                                                 _%target1470914759%_
                                                 _%tl1471114762%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1466014732%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1466014732%_))))))
                            (let () (declare (not safe)) (_%g1466014732%_)))))
                    (let () (declare (not safe)) (_%g1466014732%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15692%_)
        (let* ((_%__stx2031920320%_ _%$stx15692%_)
               (_%g1569815749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2031920320%_))))
          (let ((_%__kont2032220323%_ (lambda () '#t))
                (_%__kont2032420325%_
                 (lambda (_%L15907%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1592315926%_ _%g1592415929%_)
                                        (cons _%g1592315926%_ _%g1592415929%_))
                                      '()
                                      _%L15907%_)))))
                (_%__kont2032820329%_
                 (lambda (_%L15816%_ _%L15818%_ _%L15819%_ _%L15820%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15819%_ '())
                               (cons (cons _%L15820%_
                                           (cons _%L15818%_
                                                 (foldr (lambda (_%g1584115844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1584215847%_)
                  (cons _%g1584115844%_ _%g1584215847%_))
                '()
                _%L15816%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2039620397%_
                    (lambda (_%e1572615756%_
                             _%hd1572715760%_
                             _%tl1572815763%_
                             _%e1572915766%_
                             _%hd1573015770%_
                             _%tl1573115773%_
                             _%e1573215776%_
                             _%hd1573315780%_
                             _%tl1573415783%_
                             _%__splice2033020331%_
                             _%target1573515786%_
                             _%tl1573715789%_)
                      (letrec ((_%loop1573815792%_
                                (lambda (_%hd1573615796%_ _%body1574215799%_)
                                  (if (gx#stx-pair? _%hd1573615796%_)
                                      (let ((_%e1573915802%_
                                             (gx#syntax-e _%hd1573615796%_)))
                                        (let ((_%lp-tl1574115809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1573915802%_)))
                                              (_%lp-hd1574015806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1573915802%_))))
                                          (_%loop1573815792%_
                                           _%lp-tl1574115809%_
                                           (cons _%lp-hd1574015806%_
                                                 _%body1574215799%_))))
                                      (let ((_%body1574315812%_
                                             (reverse _%body1574215799%_)))
                                        (_%__kont2032820329%_
                                         _%body1574315812%_
                                         _%tl1573415783%_
                                         _%hd1573315780%_
                                         _%hd1572715760%_))))))
                        (_%loop1573815792%_ _%target1573515786%_ '()))))
                   (_%__match2037020371%_
                    (lambda (_%e1570715857%_
                             _%hd1570815861%_
                             _%tl1570915864%_
                             _%e1571015867%_
                             _%hd1571115871%_
                             _%tl1571215874%_
                             _%__splice2032620327%_
                             _%target1571315877%_
                             _%tl1571515880%_)
                      (letrec ((_%loop1571615883%_
                                (lambda (_%hd1571415887%_ _%body1572015890%_)
                                  (if (gx#stx-pair? _%hd1571415887%_)
                                      (let ((_%e1571715893%_
                                             (gx#syntax-e _%hd1571415887%_)))
                                        (let ((_%lp-tl1571915900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1571715893%_)))
                                              (_%lp-hd1571815897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1571715893%_))))
                                          (_%loop1571615883%_
                                           _%lp-tl1571915900%_
                                           (cons _%lp-hd1571815897%_
                                                 _%body1572015890%_))))
                                      (let ((_%body1572115903%_
                                             (reverse _%body1572015890%_)))
                                        (_%__kont2032420325%_
                                         _%body1572115903%_))))))
                        (_%loop1571615883%_ _%target1571315877%_ '())))))
              (if (gx#stx-pair? _%__stx2031920320%_)
                  (let ((_%e1570015939%_ (gx#syntax-e _%__stx2031920320%_)))
                    (let ((_%tl1570215946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1570015939%_)))
                          (_%hd1570115943%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1570015939%_))))
                      (if (gx#stx-pair? _%tl1570215946%_)
                          (let ((_%e1570315949%_
                                 (gx#syntax-e _%tl1570215946%_)))
                            (let ((_%tl1570515956%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1570315949%_)))
                                  (_%hd1570415953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1570315949%_))))
                              (if (gx#stx-null? _%hd1570415953%_)
                                  (if (gx#stx-null? _%tl1570515956%_)
                                      (_%__kont2032220323%_)
                                      (if (gx#stx-pair/null? _%tl1570515956%_)
                                          (let ((_%__splice2032620327%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1570515956%_
                                                  '0)))
                                            (let ((_%tl1571515880%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2032620327%_
                                                      '1)))
                                                  (_%target1571315877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2032620327%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1571515880%_)
                                                  (_%__match2037020371%_
                                                   _%e1570015939%_
                                                   _%hd1570115943%_
                                                   _%tl1570215946%_
                                                   _%e1570315949%_
                                                   _%hd1570415953%_
                                                   _%tl1570515956%_
                                                   _%__splice2032620327%_
                                                   _%target1571315877%_
                                                   _%tl1571515880%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1569815749%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1569815749%_))))
                                  (if (gx#stx-pair? _%hd1570415953%_)
                                      (let ((_%e1573215776%_
                                             (gx#syntax-e _%hd1570415953%_)))
                                        (let ((_%tl1573415783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1573215776%_)))
                                              (_%hd1573315780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1573215776%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1570515956%_)
                                              (let ((_%__splice2033020331%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1570515956%_
                                                      '0)))
                                                (let ((_%tl1573715789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2033020331%_
                                                          '1)))
                                                      (_%target1573515786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2033020331%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1573715789%_)
                                                      (_%__match2039620397%_
                                                       _%e1570015939%_
                                                       _%hd1570115943%_
                                                       _%tl1570215946%_
                                                       _%e1570315949%_
                                                       _%hd1570415953%_
                                                       _%tl1570515956%_
                                                       _%e1573215776%_
                                                       _%hd1573315780%_
                                                       _%tl1573415783%_
                                                       _%__splice2033020331%_
                                                       _%target1573515786%_
                                                       _%tl1573715789%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1569815749%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1569815749%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1569815749%_))))))
                          (let () (declare (not safe)) (_%g1569815749%_)))))
                  (let () (declare (not safe)) (_%g1569815749%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15969%_)
        (let* ((_%__stx2039920400%_ _%$stx15969%_)
               (_%g1598016058%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2039920400%_))))
          (let ((_%__kont2040220403%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2040420405%_
                 (lambda (_%L16389%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L16389%_ '()))))
                (_%__kont2040620407%_
                 (lambda (_%L16337%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L16337%_ '()))))
                (_%__kont2040820409%_ (lambda (_%L16284%_) _%L16284%_))
                (_%__kont2041020411%_
                 (lambda (_%L16226%_ _%L16228%_) _%L16228%_))
                (_%__kont2041220413%_
                 (lambda (_%L16168%_ _%L16170%_ _%L16171%_ _%L16172%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L16172%_ _%L16168%_)
                                     (cons _%L16171%_ '()))))))
                (_%__kont2041420415%_
                 (lambda (_%L16114%_ _%L16116%_ _%L16117%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L16116%_
                               (cons (cons _%L16117%_ _%L16114%_) '())))))
                (_%__kont2041620417%_ (lambda (_%L16075%_) _%L16075%_)))
            (let* ((_%__match2053820539%_
                    (lambda (_%e1603116138%_
                             _%hd1603216142%_
                             _%tl1603316145%_
                             _%e1603416148%_
                             _%hd1603516152%_
                             _%tl1603616155%_
                             _%e1603716158%_
                             _%hd1603816162%_
                             _%tl1603916165%_)
                      (let ((_%L16168%_ _%tl1603916165%_)
                            (_%L16170%_ _%hd1603816162%_)
                            (_%L16171%_ _%hd1603516152%_)
                            (_%L16172%_ _%hd1603216142%_))
                        (if (gx#ellipsis? _%L16170%_)
                            (_%__kont2041220413%_
                             _%L16168%_
                             _%L16170%_
                             _%L16171%_
                             _%L16172%_)
                            (_%__kont2041420415%_
                             _%tl1603616155%_
                             _%hd1603516152%_
                             _%hd1603216142%_)))))
                   (_%__match2052020521%_
                    (lambda (_%e1601816196%_
                             _%hd1601916200%_
                             _%tl1602016203%_
                             _%e1602116206%_
                             _%hd1602216210%_
                             _%tl1602316213%_
                             _%e1602416216%_
                             _%hd1602516220%_
                             _%tl1602616223%_)
                      (let ((_%L16226%_ _%hd1602516220%_)
                            (_%L16228%_ _%hd1602216210%_))
                        (if (gx#ellipsis? _%L16226%_)
                            (_%__kont2041020411%_ _%L16226%_ _%L16228%_)
                            (_%__match2053820539%_
                             _%e1601816196%_
                             _%hd1601916200%_
                             _%tl1602016203%_
                             _%e1602116206%_
                             _%hd1602216210%_
                             _%tl1602316213%_
                             _%e1602416216%_
                             _%hd1602516220%_
                             _%tl1602616223%_))))))
              (if (gx#stx-pair? _%__stx2039920400%_)
                  (let ((_%e1598216411%_ (gx#syntax-e _%__stx2039920400%_)))
                    (let ((_%tl1598416418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1598216411%_)))
                          (_%hd1598316415%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1598216411%_))))
                      (if (gx#stx-null? _%tl1598416418%_)
                          (_%__kont2040220403%_)
                          (if (gx#stx-pair? _%tl1598416418%_)
                              (let ((_%e1598916369%_
                                     (gx#syntax-e _%tl1598416418%_)))
                                (let ((_%tl1599116376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1598916369%_)))
                                      (_%hd1599016373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1598916369%_))))
                                  (if (gx#identifier? _%hd1599016373%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21064_|
                                           _%hd1599016373%_)
                                          (if (gx#stx-pair? _%tl1599116376%_)
                                              (let ((_%e1599216379%_
                                                     (gx#syntax-e
                                                      _%tl1599116376%_)))
                                                (let ((_%tl1599416386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1599216379%_)))
                                                      (_%hd1599316383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1599216379%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1599416386%_)
                                                      (_%__kont2040420405%_
                                                       _%hd1599316383%_)
                                                      (_%__match2053820539%_
                                                       _%e1598216411%_
                                                       _%hd1598316415%_
                                                       _%tl1598416418%_
                                                       _%e1598916369%_
                                                       _%hd1599016373%_
                                                       _%tl1599116376%_
                                                       _%e1599216379%_
                                                       _%hd1599316383%_
                                                       _%tl1599416386%_))))
                                              (_%__kont2041420415%_
                                               _%tl1599116376%_
                                               _%hd1599016373%_
                                               _%hd1598316415%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21065_|
                                               _%hd1599016373%_)
                                              (if (gx#stx-pair?
                                                   _%tl1599116376%_)
                                                  (let ((_%e1600216327%_
                                                         (gx#syntax-e
                                                          _%tl1599116376%_)))
                                                    (let ((_%tl1600416334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1600216327%_)))
                                                          (_%hd1600316331%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1600216327%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1600416334%_)
                                                          (_%__kont2040620407%_
                                                           _%hd1600316331%_)
                                                          (_%__match2053820539%_
                                                           _%e1598216411%_
                                                           _%hd1598316415%_
                                                           _%tl1598416418%_
                                                           _%e1598916369%_
                                                           _%hd1599016373%_
                                                           _%tl1599116376%_
                                                           _%e1600216327%_
                                                           _%hd1600316331%_
                                                           _%tl1600416334%_))))
                                                  (_%__kont2041420415%_
                                                   _%tl1599116376%_
                                                   _%hd1599016373%_
                                                   _%hd1598316415%_))
                                              (if (gx#stx-pair?
                                                   _%tl1599116376%_)
                                                  (let ((_%e1602416216%_
                                                         (gx#syntax-e
                                                          _%tl1599116376%_)))
                                                    (let ((_%tl1602616223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1602416216%_)))
                                                          (_%hd1602516220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1602416216%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1602616223%_)
                                                          (_%__match2052020521%_
                                                           _%e1598216411%_
                                                           _%hd1598316415%_
                                                           _%tl1598416418%_
                                                           _%e1598916369%_
                                                           _%hd1599016373%_
                                                           _%tl1599116376%_
                                                           _%e1602416216%_
                                                           _%hd1602516220%_
                                                           _%tl1602616223%_)
                                                          (_%__match2053820539%_
                                                           _%e1598216411%_
                                                           _%hd1598316415%_
                                                           _%tl1598416418%_
                                                           _%e1598916369%_
                                                           _%hd1599016373%_
                                                           _%tl1599116376%_
                                                           _%e1602416216%_
                                                           _%hd1602516220%_
                                                           _%tl1602616223%_))))
                                                  (_%__kont2041420415%_
                                                   _%tl1599116376%_
                                                   _%hd1599016373%_
                                                   _%hd1598316415%_))))
                                      (if (gx#stx-datum? _%hd1599016373%_)
                                          (let ((_%e1601216270%_
                                                 (gx#stx-e _%hd1599016373%_)))
                                            (if (equal? _%e1601216270%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1599116376%_)
                                                    (let ((_%e1601316274%_
                                                           (gx#syntax-e
                                                            _%tl1599116376%_)))
                                                      (let ((_%tl1601516281%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1601316274%_)))
                    (_%hd1601416278%_
                     (let () (declare (not safe)) (##car _%e1601316274%_))))
                (if (gx#stx-null? _%tl1601516281%_)
                    (_%__kont2040820409%_ _%hd1601416278%_)
                    (_%__match2053820539%_
                     _%e1598216411%_
                     _%hd1598316415%_
                     _%tl1598416418%_
                     _%e1598916369%_
                     _%hd1599016373%_
                     _%tl1599116376%_
                     _%e1601316274%_
                     _%hd1601416278%_
                     _%tl1601516281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2041420415%_
                                                     _%tl1599116376%_
                                                     _%hd1599016373%_
                                                     _%hd1598316415%_))
                                                (if (gx#stx-pair?
                                                     _%tl1599116376%_)
                                                    (let ((_%e1602416216%_
                                                           (gx#syntax-e
                                                            _%tl1599116376%_)))
                                                      (let ((_%tl1602616223%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1602416216%_)))
                    (_%hd1602516220%_
                     (let () (declare (not safe)) (##car _%e1602416216%_))))
                (if (gx#stx-null? _%tl1602616223%_)
                    (_%__match2052020521%_
                     _%e1598216411%_
                     _%hd1598316415%_
                     _%tl1598416418%_
                     _%e1598916369%_
                     _%hd1599016373%_
                     _%tl1599116376%_
                     _%e1602416216%_
                     _%hd1602516220%_
                     _%tl1602616223%_)
                    (_%__match2053820539%_
                     _%e1598216411%_
                     _%hd1598316415%_
                     _%tl1598416418%_
                     _%e1598916369%_
                     _%hd1599016373%_
                     _%tl1599116376%_
                     _%e1602416216%_
                     _%hd1602516220%_
                     _%tl1602616223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2041420415%_
                                                     _%tl1599116376%_
                                                     _%hd1599016373%_
                                                     _%hd1598316415%_))))
                                          (if (gx#stx-pair? _%tl1599116376%_)
                                              (let ((_%e1602416216%_
                                                     (gx#syntax-e
                                                      _%tl1599116376%_)))
                                                (let ((_%tl1602616223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1602416216%_)))
                                                      (_%hd1602516220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1602416216%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1602616223%_)
                                                      (_%__match2052020521%_
                                                       _%e1598216411%_
                                                       _%hd1598316415%_
                                                       _%tl1598416418%_
                                                       _%e1598916369%_
                                                       _%hd1599016373%_
                                                       _%tl1599116376%_
                                                       _%e1602416216%_
                                                       _%hd1602516220%_
                                                       _%tl1602616223%_)
                                                      (_%__match2053820539%_
                                                       _%e1598216411%_
                                                       _%hd1598316415%_
                                                       _%tl1598416418%_
                                                       _%e1598916369%_
                                                       _%hd1599016373%_
                                                       _%tl1599116376%_
                                                       _%e1602416216%_
                                                       _%hd1602516220%_
                                                       _%tl1602616223%_))))
                                              (_%__kont2041420415%_
                                               _%tl1599116376%_
                                               _%hd1599016373%_
                                               _%hd1598316415%_))))))
                              (_%__kont2041620417%_ _%tl1598416418%_)))))
                  (let () (declare (not safe)) (_%g1598016058%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16429%_)
        (letrec ((_%simple-quote?16432%_
                  (lambda (_%e17124%_)
                    (let* ((_%__stx2055920560%_ _%e17124%_)
                           (_%g1713217169%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2055920560%_))))
                      (let ((_%__kont2056220563%_ (lambda () '#f))
                            (_%__kont2056420565%_ (lambda () '#f))
                            (_%__kont2056620567%_
                             (lambda (_%L17283%_ _%L17285%_)
                               (if (_%simple-quote?16432%_ _%L17285%_)
                                   (_%simple-quote?16432%_ _%L17283%_)
                                   '#f)))
                            (_%__kont2056820569%_
                             (lambda (_%L17244%_)
                               (_%simple-quote?16432%_
                                (foldr (lambda (_%g1725717260%_
                                                _%g1725817263%_)
                                         (cons _%g1725717260%_
                                               _%g1725817263%_))
                                       '()
                                       _%L17244%_))))
                            (_%__kont2057220573%_
                             (lambda (_%L17191%_)
                               (_%simple-quote?16432%_ _%L17191%_)))
                            (_%__kont2057420575%_ (lambda () '#t)))
                        (let* ((_%g1713017203%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2055920560%_)
                                      (let ((_%e1716317187%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2055920560%_))))
                                        (_%__kont2057220573%_ _%e1716317187%_))
                                      (_%__kont2057420575%_))))
                               (_%__match2063020631%_
                                (lambda (_%e1715217210%_
                                         _%__splice2057020571%_
                                         _%target1715317214%_
                                         _%tl1715517217%_)
                                  (letrec ((_%loop1715617220%_
                                            (lambda (_%hd1715417224%_
                                                     _%e1716017227%_)
                                              (if (gx#stx-pair?
                                                   _%hd1715417224%_)
                                                  (let ((_%e1715717230%_
                                                         (gx#syntax-e
                                                          _%hd1715417224%_)))
                                                    (let ((_%lp-tl1715917237%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1715717230%_)))
                                                          (_%lp-hd1715817234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1715717230%_))))
                                                      (_%loop1715617220%_
                                                       _%lp-tl1715917237%_
                                                       (cons _%lp-hd1715817234%_
                                                             _%e1716017227%_))))
                                                  (let ((_%e1716117240%_
                                                         (reverse _%e1716017227%_)))
                                                    (_%__kont2056820569%_
                                                     _%e1716117240%_))))))
                                    (_%loop1715617220%_
                                     _%target1715317214%_
                                     '()))))
                               (_%g1712917266%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2055920560%_)
                                      (let ((_%e1715217210%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2055920560%_))))
                                        (if (gx#stx-pair/null? _%e1715217210%_)
                                            (let ((_%__splice2057020571%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1715217210%_
                                                    '0)))
                                              (let ((_%tl1715517217%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2057020571%_
                                                        '1)))
                                                    (_%target1715317214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2057020571%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1715517217%_)
                                                    (_%__match2063020631%_
                                                     _%e1715217210%_
                                                     _%__splice2057020571%_
                                                     _%target1715317214%_
                                                     _%tl1715517217%_)
                                                    (_%__kont2057420575%_))))
                                            (_%__kont2057420575%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1713017203%_))))))
                          (if (gx#stx-pair? _%__stx2055920560%_)
                              (let ((_%e1713417334%_
                                     (gx#syntax-e _%__stx2055920560%_)))
                                (let ((_%tl1713617341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1713417334%_)))
                                      (_%hd1713517338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1713417334%_))))
                                  (if (gx#identifier? _%hd1713517338%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21066_|
                                           _%hd1713517338%_)
                                          (if (gx#stx-pair? _%tl1713617341%_)
                                              (let ((_%e1713717344%_
                                                     (gx#syntax-e
                                                      _%tl1713617341%_)))
                                                (let ((_%tl1713917351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1713717344%_)))
                                                      (_%hd1713817348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1713717344%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1713917351%_)
                                                      (_%__kont2056220563%_)
                                                      (_%__kont2056620567%_
                                                       _%tl1713617341%_
                                                       _%hd1713517338%_))))
                                              (_%__kont2056620567%_
                                               _%tl1713617341%_
                                               _%hd1713517338%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21067_|
                                               _%hd1713517338%_)
                                              (if (gx#stx-pair?
                                                   _%tl1713617341%_)
                                                  (let ((_%e1714317313%_
                                                         (gx#syntax-e
                                                          _%tl1713617341%_)))
                                                    (let ((_%tl1714517320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1714317313%_)))
                                                          (_%hd1714417317%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1714317313%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1714517320%_)
                                                          (_%__kont2056420565%_)
                                                          (_%__kont2056620567%_
                                                           _%tl1713617341%_
                                                           _%hd1713517338%_))))
                                                  (_%__kont2056620567%_
                                                   _%tl1713617341%_
                                                   _%hd1713517338%_))
                                              (_%__kont2056620567%_
                                               _%tl1713617341%_
                                               _%hd1713517338%_)))
                                      (_%__kont2056620567%_
                                       _%tl1713617341%_
                                       _%hd1713517338%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1712917266%_))))))))
                 (_%generate16434%_
                  (lambda (_%e16496%_ _%d16498%_)
                    (let* ((_%__stx2063720638%_ _%e16496%_)
                           (_%g1650716565%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2063720638%_))))
                      (let ((_%__kont2064020641%_
                             (lambda (_%L17076%_)
                               (let* ((_%g1708917097%_
                                       (lambda (_%g1709017093%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1709017093%_)))
                                      (_%g1708817116%_
                                       (lambda (_%g1709017101%_)
                                         ((lambda (_%L17104%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L17104%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1709017101%_))))
                                 (_%g1708817116%_
                                  (_%generate16434%_
                                   _%L17076%_
                                   (fx1+ _%d16498%_))))))
                            (_%__kont2064220643%_
                             (lambda (_%L17005%_)
                               (if (fxzero? _%d16498%_)
                                   _%L17005%_
                                   (let* ((_%g1701817026%_
                                           (lambda (_%g1701917022%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1701917022%_)))
                                          (_%g1701717045%_
                                           (lambda (_%g1701917030%_)
                                             ((lambda (_%L17033%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L17033%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1701917030%_))))
                                     (_%g1701717045%_
                                      (_%generate16434%_
                                       _%L17005%_
                                       (fx1- _%d16498%_)))))))
                            (_%__kont2064420645%_
                             (lambda (_%L16934%_)
                               (if (fxzero? _%d16498%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16934%_ '()))))
                                   (let* ((_%g1694716955%_
                                           (lambda (_%g1694816951%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1694816951%_)))
                                          (_%g1694616974%_
                                           (lambda (_%g1694816959%_)
                                             ((lambda (_%L16962%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16962%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1694816959%_))))
                                     (_%g1694616974%_
                                      (_%generate16434%_
                                       _%L16934%_
                                       (fx1- _%d16498%_)))))))
                            (_%__kont2064620647%_
                             (lambda (_%L16859%_ _%L16861%_)
                               (let* ((_%g1687616884%_
                                       (lambda (_%g1687716880%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1687716880%_)))
                                      (_%g1687516903%_
                                       (lambda (_%g1687716888%_)
                                         ((lambda (_%L16891%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16891%_
                                                              (cons _%L16861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1687716888%_))))
                                 (_%g1687516903%_
                                  (_%generate16434%_ _%L16859%_ _%d16498%_)))))
                            (_%__kont2064820649%_
                             (lambda (_%L16745%_ _%L16747%_)
                               (let* ((_%g1675816773%_
                                       (lambda (_%g1675916769%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1675916769%_)))
                                      (_%g1675716818%_
                                       (lambda (_%g1675916777%_)
                                         (if (gx#stx-pair? _%g1675916777%_)
                                             (let ((_%e1676216780%_
                                                    (gx#syntax-e
                                                     _%g1675916777%_)))
                                               (let ((_%hd1676316784%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1676216780%_)))
                                                     (_%tl1676416787%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1676216780%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1676416787%_)
                                                     (let ((_%e1676516790%_
                                                            (gx#syntax-e
                                                             _%tl1676416787%_)))
                                                       (let ((_%hd1676616794%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1676516790%_)))
                     (_%tl1676716797%_
                      (let () (declare (not safe)) (##cdr _%e1676516790%_))))
                 (if (gx#stx-null? _%tl1676716797%_)
                     ((lambda (_%L16800%_ _%L16802%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16802%_ (cons _%L16800%_ '()))))
                      _%hd1676616794%_
                      _%hd1676316784%_)
                     (_%g1675816773%_ _%g1675916777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1675816773%_
                                                      _%g1675916777%_))))
                                             (_%g1675816773%_
                                              _%g1675916777%_)))))
                                 (_%g1675716818%_
                                  (list (_%generate16434%_
                                         _%L16747%_
                                         _%d16498%_)
                                        (_%generate16434%_
                                         _%L16745%_
                                         _%d16498%_))))))
                            (_%__kont2065020651%_
                             (lambda (_%L16675%_)
                               (let* ((_%g1668916697%_
                                       (lambda (_%g1669016693%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1669016693%_)))
                                      (_%g1668816716%_
                                       (lambda (_%g1669016701%_)
                                         ((lambda (_%L16704%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16704%_ '())))
                                          _%g1669016701%_))))
                                 (_%g1668816716%_
                                  (_%generate16434%_
                                   (foldr (lambda (_%g1671916722%_
                                                   _%g1672016725%_)
                                            (cons _%g1671916722%_
                                                  _%g1672016725%_))
                                          '()
                                          _%L16675%_)
                                   _%d16498%_)))))
                            (_%__kont2065420655%_
                             (lambda (_%L16593%_)
                               (let* ((_%g1660316611%_
                                       (lambda (_%g1660416607%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1660416607%_)))
                                      (_%g1660216630%_
                                       (lambda (_%g1660416615%_)
                                         ((lambda (_%L16618%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16618%_ '())))
                                          _%g1660416615%_))))
                                 (_%g1660216630%_
                                  (_%generate16434%_ _%L16593%_ _%d16498%_)))))
                            (_%__kont2065620657%_
                             (lambda (_%L16572%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16572%_ '())))))
                        (let* ((_%g1650516634%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2063720638%_)
                                      (let ((_%e1655816589%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2063720638%_))))
                                        (_%__kont2065420655%_ _%e1655816589%_))
                                      (_%__kont2065620657%_
                                       _%__stx2063720638%_))))
                               (_%__match2075620757%_
                                (lambda (_%e1654716641%_
                                         _%__splice2065220653%_
                                         _%target1654816645%_
                                         _%tl1655016648%_)
                                  (letrec ((_%loop1655116651%_
                                            (lambda (_%hd1654916655%_
                                                     _%e1655516658%_)
                                              (if (gx#stx-pair?
                                                   _%hd1654916655%_)
                                                  (let ((_%e1655216661%_
                                                         (gx#syntax-e
                                                          _%hd1654916655%_)))
                                                    (let ((_%lp-tl1655416668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1655216661%_)))
                                                          (_%lp-hd1655316665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1655216661%_))))
                                                      (_%loop1655116651%_
                                                       _%lp-tl1655416668%_
                                                       (cons _%lp-hd1655316665%_
                                                             _%e1655516658%_))))
                                                  (let ((_%e1655616671%_
                                                         (reverse _%e1655516658%_)))
                                                    (_%__kont2065020651%_
                                                     _%e1655616671%_))))))
                                    (_%loop1655116651%_
                                     _%target1654816645%_
                                     '()))))
                               (_%g1650416728%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2063720638%_)
                                      (let ((_%e1654716641%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2063720638%_))))
                                        (if (gx#stx-pair/null? _%e1654716641%_)
                                            (let ((_%__splice2065220653%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1654716641%_
                                                    '0)))
                                              (let ((_%tl1655016648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2065220653%_
                                                        '1)))
                                                    (_%target1654816645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2065220653%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1655016648%_)
                                                    (_%__match2075620757%_
                                                     _%e1654716641%_
                                                     _%__splice2065220653%_
                                                     _%target1654816645%_
                                                     _%tl1655016648%_)
                                                    (_%__kont2065620657%_
                                                     _%__stx2063720638%_))))
                                            (_%__kont2065620657%_
                                             _%__stx2063720638%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1650516634%_))))))
                          (if (gx#stx-pair? _%__stx2063720638%_)
                              (let ((_%e1651017056%_
                                     (gx#syntax-e _%__stx2063720638%_)))
                                (let ((_%tl1651217063%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1651017056%_)))
                                      (_%hd1651117060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1651017056%_))))
                                  (if (gx#identifier? _%hd1651117060%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21068_|
                                           _%hd1651117060%_)
                                          (if (gx#stx-pair? _%tl1651217063%_)
                                              (let ((_%e1651317066%_
                                                     (gx#syntax-e
                                                      _%tl1651217063%_)))
                                                (let ((_%tl1651517073%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1651317066%_)))
                                                      (_%hd1651417070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1651317066%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1651517073%_)
                                                      (_%__kont2064020641%_
                                                       _%hd1651417070%_)
                                                      (_%__kont2064820649%_
                                                       _%tl1651217063%_
                                                       _%hd1651117060%_))))
                                              (_%__kont2064820649%_
                                               _%tl1651217063%_
                                               _%hd1651117060%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21069_|
                                               _%hd1651117060%_)
                                              (if (gx#stx-pair?
                                                   _%tl1651217063%_)
                                                  (let ((_%e1652016995%_
                                                         (gx#syntax-e
                                                          _%tl1651217063%_)))
                                                    (let ((_%tl1652217002%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1652016995%_)))
                                                          (_%hd1652116999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1652016995%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1652217002%_)
                                                          (_%__kont2064220643%_
                                                           _%hd1652116999%_)
                                                          (_%__kont2064820649%_
                                                           _%tl1651217063%_
                                                           _%hd1651117060%_))))
                                                  (_%__kont2064820649%_
                                                   _%tl1651217063%_
                                                   _%hd1651117060%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21070_|
                                                   _%hd1651117060%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1651217063%_)
                                                      (let ((_%e1652716924%_
                                                             (gx#syntax-e
                                                              _%tl1651217063%_)))
                                                        (let ((_%tl1652916931%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1652716924%_)))
                      (_%hd1652816928%_
                       (let () (declare (not safe)) (##car _%e1652716924%_))))
                  (if (gx#stx-null? _%tl1652916931%_)
                      (_%__kont2064420645%_ _%hd1652816928%_)
                      (_%__kont2064820649%_
                       _%tl1651217063%_
                       _%hd1651117060%_))))
              (_%__kont2064820649%_ _%tl1651217063%_ _%hd1651117060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2064820649%_
                                                   _%tl1651217063%_
                                                   _%hd1651117060%_))))
                                      (if (gx#stx-pair? _%hd1651117060%_)
                                          (let ((_%e1653516839%_
                                                 (gx#syntax-e
                                                  _%hd1651117060%_)))
                                            (let ((_%tl1653716846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1653516839%_)))
                                                  (_%hd1653616843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1653516839%_))))
                                              (if (gx#identifier?
                                                   _%hd1653616843%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21071_|
                                                       _%hd1653616843%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1653716846%_)
                                                          (let ((_%e1653816849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1653716846%_)))
                    (let ((_%tl1654016856%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1653816849%_)))
                          (_%hd1653916853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1653816849%_))))
                      (if (gx#stx-null? _%tl1654016856%_)
                          (if (fxzero? _%d16498%_)
                              (let ((_%L16859%_ _%tl1651217063%_)
                                    (_%L16861%_ _%hd1653916853%_))
                                (_%__kont2064620647%_ _%L16859%_ _%L16861%_))
                              (_%__kont2064820649%_
                               _%tl1651217063%_
                               _%hd1651117060%_))
                          (_%__kont2064820649%_
                           _%tl1651217063%_
                           _%hd1651117060%_))))
                  (_%__kont2064820649%_ _%tl1651217063%_ _%hd1651117060%_))
              (_%__kont2064820649%_ _%tl1651217063%_ _%hd1651117060%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2064820649%_
                                                   _%tl1651217063%_
                                                   _%hd1651117060%_))))
                                          (_%__kont2064820649%_
                                           _%tl1651217063%_
                                           _%hd1651117060%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1650416728%_)))))))))
          (let* ((_%g1643616450%_
                  (lambda (_%g1643716446%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1643716446%_)))
                 (_%g1643516492%_
                  (lambda (_%g1643716454%_)
                    (if (gx#stx-pair? _%g1643716454%_)
                        (let ((_%e1643916457%_ (gx#syntax-e _%g1643716454%_)))
                          (let ((_%hd1644016461%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1643916457%_)))
                                (_%tl1644116464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1643916457%_))))
                            (if (gx#stx-pair? _%tl1644116464%_)
                                (let ((_%e1644216467%_
                                       (gx#syntax-e _%tl1644116464%_)))
                                  (let ((_%hd1644316471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1644216467%_)))
                                        (_%tl1644416474%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1644216467%_))))
                                    (if (gx#stx-null? _%tl1644416474%_)
                                        ((lambda (_%L16477%_)
                                           (if (_%simple-quote?16432%_
                                                _%L16477%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16477%_ '()))
                                               (_%generate16434%_
                                                _%L16477%_
                                                '0)))
                                         _%hd1644316471%_)
                                        (_%g1643616450%_ _%g1643716454%_))))
                                (_%g1643616450%_ _%g1643716454%_))))
                        (_%g1643616450%_ _%g1643716454%_)))))
            (_%g1643516492%_ _%stx16429%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17364%_)
        (let* ((_%__stx2076320764%_ _%$stx17364%_)
               (_%g1736917390%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2076320764%_))))
          (let ((_%__kont2076620767%_
                 (lambda (_%L17458%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17458%_ '()))))
                (_%__kont2076820769%_
                 (lambda (_%L17417%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17417%_ '())))
                               '())))))
            (let ((_%__match2078420785%_
                   (lambda (_%e1737217438%_
                            _%hd1737317442%_
                            _%tl1737417445%_
                            _%e1737517448%_
                            _%hd1737617452%_
                            _%tl1737717455%_)
                     (let ((_%L17458%_ _%hd1737617452%_))
                       (if (gx#stx-datum? _%L17458%_)
                           (_%__kont2076620767%_ _%L17458%_)
                           (_%__kont2076820769%_ _%hd1737617452%_))))))
              (if (gx#stx-pair? _%__stx2076320764%_)
                  (let ((_%e1737217438%_ (gx#syntax-e _%__stx2076320764%_)))
                    (let ((_%tl1737417445%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1737217438%_)))
                          (_%hd1737317442%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1737217438%_))))
                      (if (gx#stx-pair? _%tl1737417445%_)
                          (let ((_%e1737517448%_
                                 (gx#syntax-e _%tl1737417445%_)))
                            (let ((_%tl1737717455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1737517448%_)))
                                  (_%hd1737617452%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1737517448%_))))
                              (if (gx#stx-null? _%tl1737717455%_)
                                  (_%__match2078420785%_
                                   _%e1737217438%_
                                   _%hd1737317442%_
                                   _%tl1737417445%_
                                   _%e1737517448%_
                                   _%hd1737617452%_
                                   _%tl1737717455%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g1736917390%_)))))
                          (let () (declare (not safe)) (_%g1736917390%_)))))
                  (let () (declare (not safe)) (_%g1736917390%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17475%_)
        (letrec ((_%generate17478%_
                  (lambda (_%rest17597%_)
                    (let _%lp17600%_ ((_%rest17603%_ _%rest17597%_)
                                      (_%hd17605%_ '())
                                      (_%body17606%_ '()))
                      (let* ((_%__stx2082120822%_ _%rest17603%_)
                             (_%g1760917621%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2082120822%_))))
                        (let ((_%__kont2082420825%_
                               (lambda (_%L17649%_ _%L17651%_)
                                 (let* ((_%__stx2080120802%_ _%L17651%_)
                                        (_%g1766817675%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2080120802%_))))
                                   (let ((_%__kont2080420805%_
                                          (lambda ()
                                            (let ((_%arg17711%_ (gx#genident)))
                                              (_%lp17600%_
                                               _%L17649%_
                                               (cons _%arg17711%_ _%hd17605%_)
                                               (cons _%arg17711%_
                                                     _%body17606%_)))))
                                         (_%__kont2080620807%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17649%_)
                                                (let ((_%tail17697%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17697%_
                         _%hd17605%_)
                  (foldl cons (list _%tail17697%_) _%body17606%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17475%_
                                                 _%L17651%_))))
                                         (_%__kont2080820809%_
                                          (lambda ()
                                            (_%lp17600%_
                                             _%L17649%_
                                             _%hd17605%_
                                             (cons _%L17651%_
                                                   _%body17606%_)))))
                                     (if (gx#identifier? _%__stx2080120802%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21072_|
                                              _%__stx2080120802%_)
                                             (_%__kont2080420805%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21073_|
                                                  _%__stx2080120802%_)
                                                 (_%__kont2080620807%_)
                                                 (_%__kont2080820809%_)))
                                         (_%__kont2080820809%_))))))
                              (_%__kont2082620827%_
                               (lambda ()
                                 (values (reverse _%hd17605%_)
                                         (reverse _%body17606%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2082120822%_)
                              (let ((_%e1761317639%_
                                     (gx#syntax-e _%__stx2082120822%_)))
                                (let ((_%tl1761517646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1761317639%_)))
                                      (_%hd1761417643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1761317639%_))))
                                  (_%__kont2082420825%_
                                   _%tl1761517646%_
                                   _%hd1761417643%_)))
                              (_%__kont2082620827%_))))))))
          (let* ((_%g1748117492%_
                  (lambda (_%g1748217488%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1748217488%_)))
                 (_%g1748017593%_
                  (lambda (_%g1748217496%_)
                    (if (gx#stx-pair? _%g1748217496%_)
                        (let ((_%e1748417499%_ (gx#syntax-e _%g1748217496%_)))
                          (let ((_%hd1748517503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1748417499%_)))
                                (_%tl1748617506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1748417499%_))))
                            ((lambda (_%L17509%_)
                               (if (and (gx#stx-list? _%L17509%_)
                                        (not (gx#stx-null? _%L17509%_)))
                                   (let ((_g21074_
                                          (_%generate17478%_ _%L17509%_)))
                                     (begin
                                       (let ((_g21075_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21074_)
                                                    (##values-length _g21074_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21075_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21075_)))
                                       (let ((_%hd17522%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21074_ 0)))
                                             (_%body17524%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21074_ 1)))
                                             (_%tail?17525%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21074_ 2))))
                                         (let* ((_%g1752717535%_
                                                 (lambda (_%g1752817531%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1752817531%_)))
                                                (_%g1752617589%_
                                                 (lambda (_%g1752817539%_)
                                                   ((lambda (_%L17542%_)
                                                      (let* ((_%g1755517563%_
                                                              (lambda (_%g1755617559%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1755617559%_)))
                     (_%g1755417585%_
                      (lambda (_%g1755617567%_)
                        ((lambda (_%L17570%_)
                           (if _%tail?17525%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17542%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17570%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17542%_ (cons _%L17570%_ '())))))
                         _%g1755617567%_))))
                (_%g1755417585%_ _%body17524%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1752817539%_))))
                                           (_%g1752617589%_ _%hd17522%_)))))
                                   (_%g1748117492%_ _%g1748217496%_)))
                             _%tl1748617506%_)))
                        (_%g1748117492%_ _%g1748217496%_)))))
            (_%g1748017593%_ _%stx17475%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17723%_)
        (let ((_%g1772617733%_
               (lambda (_%g1772717729%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1772717729%_))))
          (_%g1772617733%_ _%$stx17723%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17737%_)
        (let ((_%g1774017747%_
               (lambda (_%g1774117743%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1774117743%_))))
          (_%g1774017747%_ _%$stx17737%_))))))

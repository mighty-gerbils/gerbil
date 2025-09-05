(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20916_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20917_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20918_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20946_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20947_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20948_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20955_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20956_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20957_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20959_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20960_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20961_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20962_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20963_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20964_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20965_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20966_|
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
                      (let* ((_%__stx1903419035%_ _%rest8650%_)
                             (_%g86558667%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1903419035%_))))
                        (let ((_%__kont1903719038%_
                               (lambda (_%L8699%_ _%L8701%_)
                                 (let* ((_%__stx1901019011%_ _%L8701%_)
                                        (_%g87178731%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1901019011%_))))
                                   (let ((_%__kont1901319014%_
                                          (lambda (_%L8769%_)
                                            (_%lp8647%_ _%L8699%_ '#t)))
                                         (_%__kont1901519016%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8701%_)
                                                (if (not _%opt?8652%_)
                                                    (_%lp8647%_ _%L8699%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1903119032%_
                                            (lambda (_%e87208749%_
                                                     _%hd87218753%_
                                                     _%tl87228756%_
                                                     _%e87238759%_
                                                     _%hd87248763%_
                                                     _%tl87258766%_)
                                              (let ((_%L8769%_ _%hd87218753%_))
                                                (if (gx#identifier? _%L8769%_)
                                                    (_%__kont1901319014%_
                                                     _%L8769%_)
                                                    (_%__kont1901519016%_))))))
                                       (if (gx#stx-pair? _%__stx1901019011%_)
                                           (let ((_%e87208749%_
                                                  (gx#syntax-e
                                                   _%__stx1901019011%_)))
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
                                                           (_%__match1903119032%_
                                                            _%e87208749%_
                                                            _%hd87218753%_
                                                            _%tl87228756%_
                                                            _%e87238759%_
                                                            _%hd87248763%_
                                                            _%tl87258766%_)
                                                           (_%__kont1901519016%_))))
                                                   (_%__kont1901519016%_))))
                                           (_%__kont1901519016%_)))))))
                              (_%__kont1903919040%_
                               (lambda ()
                                 (if _%opt?8652%_
                                     (let ((_%$e8678%_
                                            (gx#stx-null? _%rest8650%_)))
                                       (if _%$e8678%_
                                           _%$e8678%_
                                           (gx#identifier? _%rest8650%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1903419035%_)
                              (let ((_%e86598689%_
                                     (gx#syntax-e _%__stx1903419035%_)))
                                (let ((_%tl86618696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86598689%_)))
                                      (_%hd86608693%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86598689%_))))
                                  (_%__kont1903719038%_
                                   _%tl86618696%_
                                   _%hd86608693%_)))
                              (_%__kont1903919040%_)))))))
                 (_%opt-lambda-split5389%_
                  (lambda (_%hd8496%_)
                    (let _%lp8499%_ ((_%rest8502%_ _%hd8496%_)
                                     (_%pre8504%_ '())
                                     (_%opt8505%_ '()))
                      (let* ((_%__stx1907419075%_ _%rest8502%_)
                             (_%g85088520%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1907419075%_))))
                        (let ((_%__kont1907719078%_
                               (lambda (_%L8548%_ _%L8550%_)
                                 (let* ((_%__stx1905019051%_ _%L8550%_)
                                        (_%g85668581%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1905019051%_))))
                                   (let ((_%__kont1905319054%_
                                          (lambda (_%L8619%_ _%L8621%_)
                                            (_%lp8499%_
                                             _%L8548%_
                                             _%pre8504%_
                                             (cons (cons _%L8621%_ _%L8619%_)
                                                   _%opt8505%_))))
                                         (_%__kont1905519056%_
                                          (lambda ()
                                            (_%lp8499%_
                                             _%L8548%_
                                             (cons _%L8550%_ _%pre8504%_)
                                             _%opt8505%_))))
                                     (if (gx#stx-pair? _%__stx1905019051%_)
                                         (let ((_%e85708599%_
                                                (gx#syntax-e
                                                 _%__stx1905019051%_)))
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
                                                         (_%__kont1905319054%_
                                                          _%hd85748613%_
                                                          _%hd85718603%_)
                                                         (_%__kont1905519056%_))))
                                                 (_%__kont1905519056%_))))
                                         (_%__kont1905519056%_))))))
                              (_%__kont1907919080%_
                               (lambda ()
                                 (values (reverse _%pre8504%_)
                                         (reverse _%opt8505%_)
                                         _%rest8502%_))))
                          (if (gx#stx-pair? _%__stx1907419075%_)
                              (let ((_%e85128538%_
                                     (gx#syntax-e _%__stx1907419075%_)))
                                (let ((_%tl85148545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85128538%_)))
                                      (_%hd85138542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85128538%_))))
                                  (_%__kont1907719078%_
                                   _%tl85148545%_
                                   _%hd85138542%_)))
                              (_%__kont1907919080%_)))))))
                 (_%kw-lambda?5390%_
                  (lambda (_%hd8164%_)
                    (let _%lp8167%_ ((_%rest8170%_ _%hd8164%_)
                                     (_%opt?8172%_ '#f)
                                     (_%key?8173%_ '#f))
                      (let* ((_%__stx1913819139%_ _%rest8170%_)
                             (_%g81788208%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1913819139%_))))
                        (let ((_%__kont1914119142%_
                               (lambda (_%L8403%_ _%L8405%_ _%L8406%_)
                                 (let* ((_%__stx1911419115%_ _%L8405%_)
                                        (_%g84218435%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1911419115%_))))
                                   (let ((_%__kont1911719118%_
                                          (lambda (_%L8473%_)
                                            (if (gx#identifier? _%L8473%_)
                                                (_%lp8167%_
                                                 _%L8403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1911919120%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8405%_)
                                                (_%lp8167%_
                                                 _%L8403%_
                                                 _%opt?8172%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1911419115%_)
                                         (let ((_%e84248453%_
                                                (gx#syntax-e
                                                 _%__stx1911419115%_)))
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
                                                         (_%__kont1911719118%_
                                                          _%hd84258457%_)
                                                         (_%__kont1911919120%_))))
                                                 (_%__kont1911919120%_))))
                                         (_%__kont1911919120%_))))))
                              (_%__kont1914319144%_
                               (lambda (_%L8360%_ _%L8362%_)
                                 (if (gx#identifier? _%L8362%_)
                                     (_%lp8167%_ _%L8360%_ _%opt?8172%_ '#t)
                                     '#f)))
                              (_%__kont1914519146%_
                               (lambda (_%L8240%_ _%L8242%_)
                                 (let* ((_%__stx1909019091%_ _%L8242%_)
                                        (_%g82588272%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1909019091%_))))
                                   (let ((_%__kont1909319094%_
                                          (lambda (_%L8310%_)
                                            (if (gx#identifier? _%L8310%_)
                                                (_%lp8167%_
                                                 _%L8240%_
                                                 '#t
                                                 _%key?8173%_)
                                                '#f)))
                                         (_%__kont1909519096%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8242%_)
                                                (if (not _%opt?8172%_)
                                                    (_%lp8167%_
                                                     _%L8240%_
                                                     '#f
                                                     _%key?8173%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1909019091%_)
                                         (let ((_%e82618290%_
                                                (gx#syntax-e
                                                 _%__stx1909019091%_)))
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
                                                         (_%__kont1909319094%_
                                                          _%hd82628294%_)
                                                         (_%__kont1909519096%_))))
                                                 (_%__kont1909519096%_))))
                                         (_%__kont1909519096%_))))))
                              (_%__kont1914719148%_
                               (lambda ()
                                 (if _%key?8173%_
                                     (let ((_%$e8219%_
                                            (gx#stx-null? _%rest8170%_)))
                                       (if _%$e8219%_
                                           _%$e8219%_
                                           (gx#identifier? _%rest8170%_)))
                                     '#f))))
                          (let ((_%__match1916119162%_
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
                                         (_%__kont1914119142%_
                                          _%L8403%_
                                          _%L8405%_
                                          _%L8406%_)
                                         (if (gx#stx-datum? _%hd81848387%_)
                                             (let ((_%e81948346%_
                                                    (gx#stx-e _%hd81848387%_)))
                                               (if (equal? _%e81948346%_
                                                           '#!key)
                                                   (_%__kont1914319144%_
                                                    _%tl81888400%_
                                                    _%hd81878397%_)
                                                   (_%__kont1914519146%_
                                                    _%tl81858390%_
                                                    _%hd81848387%_)))
                                             (_%__kont1914519146%_
                                              _%tl81858390%_
                                              _%hd81848387%_)))))))
                            (if (gx#stx-pair? _%__stx1913819139%_)
                                (let ((_%e81838383%_
                                       (gx#syntax-e _%__stx1913819139%_)))
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
                                            (_%__match1916119162%_
                                             _%e81838383%_
                                             _%hd81848387%_
                                             _%tl81858390%_
                                             _%e81868393%_
                                             _%hd81878397%_
                                             _%tl81888400%_)))
                                        (if (gx#stx-datum? _%hd81848387%_)
                                            (let ((_%e81948346%_
                                                   (gx#stx-e _%hd81848387%_)))
                                              (_%__kont1914519146%_
                                               _%tl81858390%_
                                               _%hd81848387%_))
                                            (_%__kont1914519146%_
                                             _%tl81858390%_
                                             _%hd81848387%_)))))
                                (_%__kont1914719148%_))))))))
                 (_%kw-lambda-split5391%_
                  (lambda (_%hd7897%_)
                    (let _%lp7900%_ ((_%rest7903%_ _%hd7897%_)
                                     (_%kwvar7905%_ '#f)
                                     (_%kwargs7906%_ '())
                                     (_%args7907%_ '()))
                      (let* ((_%__stx1921219213%_ _%rest7903%_)
                             (_%g79127942%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1921219213%_))))
                        (let ((_%__kont1921519216%_
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
                                       (let* ((_%__stx1918819189%_ _%L8063%_)
                                              (_%g80858100%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1918819189%_))))
                                         (let ((_%__kont1919119192%_
                                                (lambda (_%L8138%_ _%L8140%_)
                                                  (_%lp7900%_
                                                   _%L8061%_
                                                   _%kwvar7905%_
                                                   (cons (list _%key8078%_
                                                               _%L8140%_
                                                               _%L8138%_)
                                                         _%kwargs7906%_)
                                                   _%args7907%_)))
                                               (_%__kont1919319194%_
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
                                                _%__stx1918819189%_)
                                               (let ((_%e80898118%_
                                                      (gx#syntax-e
                                                       _%__stx1918819189%_)))
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
                       (_%__kont1919119192%_ _%hd80938132%_ _%hd80908122%_)
                       (_%__kont1919319194%_))))
               (_%__kont1919319194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1919319194%_))))))))
                              (_%__kont1921719218%_
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
                              (_%__kont1921919220%_
                               (lambda (_%L7970%_ _%L7972%_)
                                 (_%lp7900%_
                                  _%L7970%_
                                  _%kwvar7905%_
                                  _%kwargs7906%_
                                  (cons _%L7972%_ _%args7907%_))))
                              (_%__kont1922119222%_
                               (lambda ()
                                 (values _%kwvar7905%_
                                         (reverse _%kwargs7906%_)
                                         (foldl cons
                                                _%rest7903%_
                                                _%args7907%_)))))
                          (let ((_%__match1923519236%_
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
                                         (_%__kont1921519216%_
                                          _%L8061%_
                                          _%L8063%_
                                          _%L8064%_)
                                         (if (gx#stx-datum? _%hd79188045%_)
                                             (let ((_%e79288004%_
                                                    (gx#stx-e _%hd79188045%_)))
                                               (if (equal? _%e79288004%_
                                                           '#!key)
                                                   (_%__kont1921719218%_
                                                    _%tl79228058%_
                                                    _%hd79218055%_)
                                                   (_%__kont1921919220%_
                                                    _%tl79198048%_
                                                    _%hd79188045%_)))
                                             (_%__kont1921919220%_
                                              _%tl79198048%_
                                              _%hd79188045%_)))))))
                            (if (gx#stx-pair? _%__stx1921219213%_)
                                (let ((_%e79178041%_
                                       (gx#syntax-e _%__stx1921219213%_)))
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
                                            (_%__match1923519236%_
                                             _%e79178041%_
                                             _%hd79188045%_
                                             _%tl79198048%_
                                             _%e79208051%_
                                             _%hd79218055%_
                                             _%tl79228058%_)))
                                        (if (gx#stx-datum? _%hd79188045%_)
                                            (let ((_%e79288004%_
                                                   (gx#stx-e _%hd79188045%_)))
                                              (_%__kont1921919220%_
                                               _%tl79198048%_
                                               _%hd79188045%_))
                                            (_%__kont1921919220%_
                                             _%tl79198048%_
                                             _%hd79188045%_)))))
                                (_%__kont1922119222%_))))))))
                 (_%check-duplicate-bindings5392%_
                  (lambda (_%hd7589%_)
                    (let _%lp7592%_ ((_%rest7595%_ _%hd7589%_)
                                     (_%ids7597%_ '()))
                      (let* ((_%__stx1928619287%_ _%rest7595%_)
                             (_%g76007612%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1928619287%_))))
                        (let ((_%__kont1928919290%_
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
                          (let* ((_%__stx1926219263%_ _%L7754%_)
                                 (_%g77677781%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1926219263%_))))
                            (let ((_%__kont1926519266%_
                                   (lambda (_%L7819%_)
                                     (_%lp7592%_
                                      _%L7752%_
                                      (cons _%L7819%_ _%ids7597%_))))
                                  (_%__kont1926719268%_
                                   (lambda ()
                                     (_%lp7592%_
                                      _%L7752%_
                                      (cons _%L7754%_ _%ids7597%_)))))
                              (if (gx#stx-pair? _%__stx1926219263%_)
                                  (let ((_%e77707799%_
                                         (gx#syntax-e _%__stx1926219263%_)))
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
                                                  (_%__kont1926519266%_
                                                   _%hd77717803%_)
                                                  (_%__kont1926719268%_))))
                                          (_%__kont1926719268%_))))
                                  (_%__kont1926719268%_)))))
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
                              (_%__kont1929119292%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7595%_)
                                      _%ids7597%_
                                      (cons _%rest7595%_ _%ids7597%_))
                                  _%stx5383%_))))
                          (if (gx#stx-pair? _%__stx1928619287%_)
                              (let ((_%e76047630%_
                                     (gx#syntax-e _%__stx1928619287%_)))
                                (let ((_%tl76067637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e76047630%_)))
                                      (_%hd76057634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e76047630%_))))
                                  (_%__kont1928919290%_
                                   _%tl76067637%_
                                   _%hd76057634%_)))
                              (_%__kont1929119292%_)))))))
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
                                          (let ((_g20881_
                                                 (gx#syntax-split-splice
                                                  _%hd73947439%_
                                                  '0)))
                                            (begin
                                              (let ((_g20882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20881_)
                                                           (##values-length
                                                            _g20881_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20882_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20882_)))
                                              (let ((_%target73967445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20881_
                                                        0)))
                                                    (_%tl73987448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20881_
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
                                          (let ((_g20883_
                                                 (gx#syntax-split-splice
                                                  _%hd74067479%_
                                                  '0)))
                                            (begin
                                              (let ((_g20884_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20883_)
                                                           (##values-length
                                                            _g20883_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20884_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20884_)))
                                              (let ((_%target74087485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20883_
                                                        0)))
                                                    (_%tl74107488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20883_
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
                                        (let ((_g20885_
                                               (gx#syntax-split-splice
                                                _%g69496969%_
                                                '0)))
                                          (begin
                                            (let ((_g20886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20885_)
                                                         (##values-length
                                                          _g20885_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20886_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20886_)))
                                            (let ((_%target69516972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20885_
                                                      0)))
                                                  (_%tl69536975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20885_
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
                                             (let ((_g20887_
                                                    (gx#syntax-split-splice
                                                     _%g70257045%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20888_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20887_)
                                                              (##values-length
                                                               _g20887_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70277048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20887_
                                                           0)))
                                                       (_%tl70297051%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20887_
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
                                                    (let ((_g20889_
                                                           (gx#syntax-split-splice
                                                            _%hd71647209%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20890_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20889_)
                             (##values-length _g20889_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20890_ 2)))
                      (error "Context expects 2 values" _g20890_)))
                (let ((_%target71667215%_
                       (let () (declare (not safe)) (##values-ref _g20889_ 0)))
                      (_%tl71687218%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20889_ 1))))
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
                                                    (let ((_g20891_
                                                           (gx#syntax-split-splice
                                                            _%hd71767249%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20892_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20891_)
                             (##values-length _g20891_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20892_ 2)))
                      (error "Context expects 2 values" _g20892_)))
                (let ((_%target71787255%_
                       (let () (declare (not safe)) (##values-ref _g20891_ 0)))
                      (_%tl71807258%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20891_ 1))))
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
                                                (let ((_g20893_
                                                       (gx#syntax-split-splice
                                                        _%hd67476789%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20893_)
                         (##values-length _g20893_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20894_ 2)))
                  (error "Context expects 2 values" _g20894_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67496795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20893_
                                                              0)))
                                                          (_%tl67516798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20893_
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
                                                (let ((_g20895_
                                                       (gx#syntax-split-splice
                                                        _%hd67596829%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20895_)
                         (##values-length _g20895_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20896_ 2)))
                  (error "Context expects 2 values" _g20896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67616835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20895_
                                                              0)))
                                                          (_%tl67636838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20895_
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
                                                           (let ((_g20897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63276347%_ '0)))
                     (begin
                       (let ((_g20898_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20897_)
                                    (##values-length _g20897_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20898_ 2)))
                             (error "Context expects 2 values" _g20898_)))
                       (let ((_%target63296350%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20897_ 0)))
                             (_%tl63316353%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20897_ 1))))
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
                                                           (let ((_g20899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61386158%_ '0)))
                     (begin
                       (let ((_g20900_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20899_)
                                    (##values-length _g20899_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20900_ 2)))
                             (error "Context expects 2 values" _g20900_)))
                       (let ((_%target61406161%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20899_ 0)))
                             (_%tl61426164%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20899_ 1))))
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
                                          (let ((__tmp20905
                                                 (length _%kws5885%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20905 '#f))))
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
                                    (let ((__tmp20902
                                           (keyword-hash _%key5900%_))
                                          (__tmp20901
                                           (vector-length _%pht5891%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20902 __tmp20901))))
                              (if (vector-ref _%pht5891%_ _%pos5906%_)
                                  (if (let ((__tmp20903
                                             (vector-length _%pht5891%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20903 '8192))
                                      (_%rehash5888%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20904
                                                (vector-length _%pht5891%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20904))
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
          (let* ((_%__stx1930219303%_ _%stx5383%_)
                 (_%g54035434%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1930219303%_))))
            (let ((_%__kont1930519306%_
                   (lambda (_%L5866%_ _%L5868%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5868%_ _%L5866%_))))
                  (_%__kont1930719308%_
                   (lambda (_%L5638%_ _%L5640%_)
                     (let ((_g20906_ (_%opt-lambda-split5389%_ _%L5640%_)))
                       (begin
                         (let ((_g20907_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20906_)
                                      (##values-length _g20906_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20907_ 3)))
                               (error "Context expects 3 values" _g20907_)))
                         (let ((_%pre5653%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20906_ 0)))
                               (_%opt5655%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20906_ 1)))
                               (_%tail5656%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20906_ 2))))
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
                           (let ((_g20908_
                                  (gx#syntax-split-splice _%g57155735%_ '0)))
                             (begin
                               (let ((_g20909_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20908_)
                                            (##values-length _g20908_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20909_ 2)))
                                     (error "Context expects 2 values"
                                            _g20909_)))
                               (let ((_%target57175738%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20908_ 0)))
                                     (_%tl57195741%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20908_ 1))))
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
                  (_%__kont1930919310%_
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
                                  (let ((_g20910_
                                         (_%kw-lambda-split5391%_ _%L5463%_)))
                                    (begin
                                      (let ((_g20911_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20910_)
                                                   (##values-length _g20910_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20911_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20911_)))
                                      (let ((_%key5499%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20910_ 0)))
                                            (_%kwargs5501%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20910_ 1)))
                                            (_%args5502%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20910_ 2))))
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
              (let* ((_%__match1934719348%_
                      (lambda (_%e54235441%_
                               _%hd54245445%_
                               _%tl54255448%_
                               _%e54265451%_
                               _%hd54275455%_
                               _%tl54285458%_)
                        (let ((_%L5461%_ _%tl54285458%_)
                              (_%L5463%_ _%hd54275455%_))
                          (if (_%kw-lambda?5390%_ _%L5463%_)
                              (_%__kont1930919310%_ _%L5461%_ _%L5463%_)
                              (let () (declare (not safe)) (_%g54035434%_))))))
                     (_%__match1933519336%_
                      (lambda (_%e54155618%_
                               _%hd54165622%_
                               _%tl54175625%_
                               _%e54185628%_
                               _%hd54195632%_
                               _%tl54205635%_)
                        (let ((_%L5638%_ _%tl54205635%_)
                              (_%L5640%_ _%hd54195632%_))
                          (if (_%opt-lambda?5388%_ _%L5640%_)
                              (_%__kont1930719308%_ _%L5638%_ _%L5640%_)
                              (_%__match1934719348%_
                               _%e54155618%_
                               _%hd54165622%_
                               _%tl54175625%_
                               _%e54185628%_
                               _%hd54195632%_
                               _%tl54205635%_)))))
                     (_%__match1932319324%_
                      (lambda (_%e54075846%_
                               _%hd54085850%_
                               _%tl54095853%_
                               _%e54105856%_
                               _%hd54115860%_
                               _%tl54125863%_)
                        (let ((_%L5866%_ _%tl54125863%_)
                              (_%L5868%_ _%hd54115860%_))
                          (if (_%simple-lambda?5386%_ _%L5868%_)
                              (_%__kont1930519306%_ _%L5866%_ _%L5868%_)
                              (_%__match1933519336%_
                               _%e54075846%_
                               _%hd54085850%_
                               _%tl54095853%_
                               _%e54105856%_
                               _%hd54115860%_
                               _%tl54125863%_))))))
                (if (gx#stx-pair? _%__stx1930219303%_)
                    (let ((_%e54075846%_ (gx#syntax-e _%__stx1930219303%_)))
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
                                (_%__match1932319324%_
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
        (let* ((_%__stx1935019351%_ _%$stx8808%_)
               (_%g88148878%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1935019351%_))))
          (let ((_%__kont1935319354%_
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
                (_%__kont1935719358%_
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
                (_%__kont1936119362%_
                 (lambda (_%L8915%_ _%L8917%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8917%_ '()) (cons _%L8915%_ '()))))))
            (let* ((_%__match1944119442%_
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
                            (_%__kont1936119362%_ _%L8915%_ _%L8917%_)
                            (let () (declare (not safe)) (_%g88148878%_))))))
                   (_%__match1943319434%_
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
                                  (_%__match1944119442%_
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
                   (_%__match1942119422%_
                    (lambda (_%e88448940%_
                             _%hd88458944%_
                             _%tl88468947%_
                             _%e88478950%_
                             _%hd88488954%_
                             _%tl88498957%_
                             _%e88508960%_
                             _%hd88518964%_
                             _%tl88528967%_
                             _%__splice1935919360%_
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
                                              (_%__kont1935719358%_
                                               _%L9000%_
                                               _%L9002%_
                                               _%L9003%_)
                                              (_%__match1943319434%_
                                               _%e88448940%_
                                               _%hd88458944%_
                                               _%tl88468947%_
                                               _%e88478950%_
                                               _%hd88488954%_
                                               _%tl88498957%_))))))))
                        (_%loop88568976%_ _%target88538970%_ '()))))
                   (_%__match1939519396%_
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
                             _%__splice1935519356%_
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
                                        (_%__kont1935319354%_
                                         _%body88409104%_
                                         _%tl88289065%_
                                         _%tl88319075%_
                                         _%hd88309072%_))))))
                        (_%loop88359084%_ _%target88329078%_ '())))))
              (if (gx#stx-pair? _%__stx1935019351%_)
                  (let ((_%e88209038%_ (gx#syntax-e _%__stx1935019351%_)))
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
                                                  (let ((_%__splice1935519356%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88259055%_
                                                          '0)))
                                                    (let ((_%tl88349081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935519356%_
                                                              '1)))
                                                          (_%target88329078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935519356%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88349081%_)
                                                          (_%__match1939519396%_
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
                                                           _%__splice1935519356%_
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
                              (_%__match1944119442%_
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
                      (_%__match1944119442%_
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
                                              (let ((_%__splice1935919360%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl88259055%_
                                                      '0)))
                                                (let ((_%tl88558973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1935919360%_
                                                          '1)))
                                                      (_%target88538970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1935919360%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88558973%_)
                                                      (_%__match1942119422%_
                                                       _%e88209038%_
                                                       _%hd88219042%_
                                                       _%tl88229045%_
                                                       _%e88239048%_
                                                       _%hd88249052%_
                                                       _%tl88259055%_
                                                       _%e88269058%_
                                                       _%hd88279062%_
                                                       _%tl88289065%_
                                                       _%__splice1935919360%_
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
                          (_%__match1944119442%_
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
                                                          (_%__match1944119442%_
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
                                              (_%__match1944119442%_
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
                                      (let ((_g20912_
                                             (gx#syntax-split-splice
                                              _%tl91629201%_
                                              '0)))
                                        (begin
                                          (let ((_g20913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20912_)
                                                       (##values-length
                                                        _g20912_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20913_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20913_)))
                                          (let ((_%target91639204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20912_ 0)))
                                                (_%tl91659207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20912_ 1))))
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
                                      (let ((_g20914_
                                             (gx#syntax-split-splice
                                              _%tl93619400%_
                                              '0)))
                                        (begin
                                          (let ((_g20915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20914_)
                                                       (##values-length
                                                        _g20914_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20915_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20915_)))
                                          (let ((_%target93629403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20914_ 0)))
                                                (_%tl93649406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20914_ 1))))
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
                      (let* ((_%__stx1954019541%_ _%rest11951%_)
                             (_%g1195811970%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1954019541%_))))
                        (let ((_%__kont1954319544%_
                               (lambda (_%L12002%_ _%L12004%_)
                                 (let* ((_%__stx1944419445%_ _%L12004%_)
                                        (_%g1202212095%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1944419445%_))))
                                   (let ((_%__kont1944719448%_
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
                                         (_%__kont1944919450%_
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
                                         (_%__kont1945319454%_
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
                                         (_%__kont1945719458%_
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
                                     (let* ((_%__match1953719538%_
                                             (lambda (_%e1206912102%_
                                                      _%hd1207012106%_
                                                      _%tl1207112109%_
                                                      _%__splice1945919460%_
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
                             (let ((_%__splice1946119462%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1207112109%_
                                     '0)))
                               (let ((_%tl1208312145%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1946119462%_
                                         '1)))
                                     (_%target1208112142%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1946119462%_
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
                                                       (_%__kont1945719458%_
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
                                            (_%__match1952319524%_
                                             (lambda (_%e1204912225%_
                                                      _%hd1205012229%_
                                                      _%tl1205112232%_
                                                      _%__splice1945519456%_
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
                                          |gerbil/core/sugar~Sugar-2[1]#_g20916_|
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
                                                     (_%__kont1945319454%_
                                                      _%hd1206512279%_
                                                      _%datum1206012261%_)
                                                     (_%__match1953719538%_
                                                      _%e1204912225%_
                                                      _%hd1205012229%_
                                                      _%tl1205112232%_
                                                      _%__splice1945519456%_
                                                      _%target1205212235%_
                                                      _%tl1205412238%_))))
                                             (_%__match1953719538%_
                                              _%e1204912225%_
                                              _%hd1205012229%_
                                              _%tl1205112232%_
                                              _%__splice1945519456%_
                                              _%target1205212235%_
                                              _%tl1205412238%_))
                                         (_%__match1953719538%_
                                          _%e1204912225%_
                                          _%hd1205012229%_
                                          _%tl1205112232%_
                                          _%__splice1945519456%_
                                          _%target1205212235%_
                                          _%tl1205412238%_))
                                     (_%__match1953719538%_
                                      _%e1204912225%_
                                      _%hd1205012229%_
                                      _%tl1205112232%_
                                      _%__splice1945519456%_
                                      _%target1205212235%_
                                      _%tl1205412238%_))))
                             (_%__match1953719538%_
                              _%e1204912225%_
                              _%hd1205012229%_
                              _%tl1205112232%_
                              _%__splice1945519456%_
                              _%target1205212235%_
                              _%tl1205412238%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1205512241%_
                                                  _%target1205212235%_
                                                  '()))))
                                            (_%__match1950919510%_
                                             (lambda (_%e1203512360%_
                                                      _%hd1203612364%_
                                                      _%tl1203712367%_
                                                      _%__splice1945119452%_
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
                         (_%__kont1944919450%_ _%body1204612396%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1204112376%_
                                                  _%target1203812370%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1944419445%_)
                                           (let ((_%e1202512430%_
                                                  (gx#syntax-e
                                                   _%__stx1944419445%_)))
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
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20917_|
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
                                |gerbil/core/sugar~Sugar-2[1]#_g20918_|
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
                                           (_%__kont1944719448%_
                                            _%hd1203212454%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1202712437%_)
                                               (let ((_%__splice1945119452%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1202712437%_
                                                       '0)))
                                                 (let ((_%tl1204012373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945119452%_
                                                           '1)))
                                                       (_%target1203812370%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945119452%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1204012373%_)
                                                       (_%__match1950919510%_
                                                        _%e1202512430%_
                                                        _%hd1202612434%_
                                                        _%tl1202712437%_
                                                        _%__splice1945119452%_
                                                        _%target1203812370%_
                                                        _%tl1204012373%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1202612434%_)
                                                           (let ((_%__splice1945519456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1202612434%_
                           '0)))
                     (let ((_%tl1205412238%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945519456%_ '1)))
                           (_%target1205212235%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945519456%_ '0))))
                       (if (gx#stx-null? _%tl1205412238%_)
                           (_%__match1952319524%_
                            _%e1202512430%_
                            _%hd1202612434%_
                            _%tl1202712437%_
                            _%__splice1945519456%_
                            _%target1205212235%_
                            _%tl1205412238%_)
                           (let () (declare (not safe)) (_%g1202212095%_)))))
                   (let () (declare (not safe)) (_%g1202212095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1202612434%_)
                                                   (let ((_%__splice1945519456%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202612434%_
                                                           '0)))
                                                     (let ((_%tl1205412238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945519456%_
                                                               '1)))
                                                           (_%target1205212235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945519456%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205412238%_)
                                                           (_%__match1952319524%_
                                                            _%e1202512430%_
                                                            _%hd1202612434%_
                                                            _%tl1202712437%_
                                                            _%__splice1945519456%_
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
                                       (let ((_%__splice1945119452%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1202712437%_
                                               '0)))
                                         (let ((_%tl1204012373%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945119452%_
                                                   '1)))
                                               (_%target1203812370%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945119452%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1204012373%_)
                                               (_%__match1950919510%_
                                                _%e1202512430%_
                                                _%hd1202612434%_
                                                _%tl1202712437%_
                                                _%__splice1945119452%_
                                                _%target1203812370%_
                                                _%tl1204012373%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1202612434%_)
                                                   (let ((_%__splice1945519456%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202612434%_
                                                           '0)))
                                                     (let ((_%tl1205412238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945519456%_
                                                               '1)))
                                                           (_%target1205212235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945519456%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205412238%_)
                                                           (_%__match1952319524%_
                                                            _%e1202512430%_
                                                            _%hd1202612434%_
                                                            _%tl1202712437%_
                                                            _%__splice1945519456%_
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
                                           (let ((_%__splice1945519456%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202612434%_
                                                   '0)))
                                             (let ((_%tl1205412238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945519456%_
                                                       '1)))
                                                   (_%target1205212235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945519456%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205412238%_)
                                                   (_%__match1952319524%_
                                                    _%e1202512430%_
                                                    _%hd1202612434%_
                                                    _%tl1202712437%_
                                                    _%__splice1945519456%_
                                                    _%target1205212235%_
                                                    _%tl1205412238%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                               (if (gx#stx-pair/null? _%tl1202712437%_)
                                   (let ((_%__splice1945119452%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1202712437%_
                                           '0)))
                                     (let ((_%tl1204012373%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945119452%_
                                               '1)))
                                           (_%target1203812370%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945119452%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1204012373%_)
                                           (_%__match1950919510%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1945119452%_
                                            _%target1203812370%_
                                            _%tl1204012373%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1202612434%_)
                                               (let ((_%__splice1945519456%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1202612434%_
                                                       '0)))
                                                 (let ((_%tl1205412238%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945519456%_
                                                           '1)))
                                                       (_%target1205212235%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945519456%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1205412238%_)
                                                       (_%__match1952319524%_
                                                        _%e1202512430%_
                                                        _%hd1202612434%_
                                                        _%tl1202712437%_
                                                        _%__splice1945519456%_
                                                        _%target1205212235%_
                                                        _%tl1205412238%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1202212095%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202212095%_))))))
                                   (if (gx#stx-pair/null? _%hd1202612434%_)
                                       (let ((_%__splice1945519456%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1202612434%_
                                               '0)))
                                         (let ((_%tl1205412238%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945519456%_
                                                   '1)))
                                               (_%target1205212235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945519456%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1205412238%_)
                                               (_%__match1952319524%_
                                                _%e1202512430%_
                                                _%hd1202612434%_
                                                _%tl1202712437%_
                                                _%__splice1945519456%_
                                                _%target1205212235%_
                                                _%tl1205412238%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202212095%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1202212095%_)))))
                           (if (gx#stx-pair/null? _%tl1202712437%_)
                               (let ((_%__splice1945119452%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1202712437%_
                                       '0)))
                                 (let ((_%tl1204012373%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1945119452%_
                                           '1)))
                                       (_%target1203812370%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1945119452%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1204012373%_)
                                       (_%__match1950919510%_
                                        _%e1202512430%_
                                        _%hd1202612434%_
                                        _%tl1202712437%_
                                        _%__splice1945119452%_
                                        _%target1203812370%_
                                        _%tl1204012373%_)
                                       (if (gx#stx-pair/null? _%hd1202612434%_)
                                           (let ((_%__splice1945519456%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202612434%_
                                                   '0)))
                                             (let ((_%tl1205412238%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945519456%_
                                                       '1)))
                                                   (_%target1205212235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945519456%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205412238%_)
                                                   (_%__match1952319524%_
                                                    _%e1202512430%_
                                                    _%hd1202612434%_
                                                    _%tl1202712437%_
                                                    _%__splice1945519456%_
                                                    _%target1205212235%_
                                                    _%tl1205412238%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202212095%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_))))))
                               (if (gx#stx-pair/null? _%hd1202612434%_)
                                   (let ((_%__splice1945519456%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202612434%_
                                           '0)))
                                     (let ((_%tl1205412238%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945519456%_
                                               '1)))
                                           (_%target1205212235%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945519456%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205412238%_)
                                           (_%__match1952319524%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1945519456%_
                                            _%target1205212235%_
                                            _%tl1205412238%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_)))))))
                   (if (gx#stx-pair/null? _%tl1202712437%_)
                       (let ((_%__splice1945119452%_
                              (gx#syntax-split-splice->vector
                               _%tl1202712437%_
                               '0)))
                         (let ((_%tl1204012373%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1945119452%_ '1)))
                               (_%target1203812370%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1945119452%_ '0))))
                           (if (gx#stx-null? _%tl1204012373%_)
                               (_%__match1950919510%_
                                _%e1202512430%_
                                _%hd1202612434%_
                                _%tl1202712437%_
                                _%__splice1945119452%_
                                _%target1203812370%_
                                _%tl1204012373%_)
                               (if (gx#stx-pair/null? _%hd1202612434%_)
                                   (let ((_%__splice1945519456%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202612434%_
                                           '0)))
                                     (let ((_%tl1205412238%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945519456%_
                                               '1)))
                                           (_%target1205212235%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945519456%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205412238%_)
                                           (_%__match1952319524%_
                                            _%e1202512430%_
                                            _%hd1202612434%_
                                            _%tl1202712437%_
                                            _%__splice1945519456%_
                                            _%target1205212235%_
                                            _%tl1205412238%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_))))))
                       (if (gx#stx-pair/null? _%hd1202612434%_)
                           (let ((_%__splice1945519456%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1202612434%_
                                   '0)))
                             (let ((_%tl1205412238%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1945519456%_
                                       '1)))
                                   (_%target1205212235%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1945519456%_
                                       '0))))
                               (if (gx#stx-null? _%tl1205412238%_)
                                   (_%__match1952319524%_
                                    _%e1202512430%_
                                    _%hd1202612434%_
                                    _%tl1202712437%_
                                    _%__splice1945519456%_
                                    _%target1205212235%_
                                    _%tl1205412238%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202212095%_)))))
                           (let () (declare (not safe)) (_%g1202212095%_)))))
               (if (gx#stx-pair/null? _%hd1202612434%_)
                   (let ((_%__splice1945519456%_
                          (gx#syntax-split-splice->vector
                           _%hd1202612434%_
                           '0)))
                     (let ((_%tl1205412238%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945519456%_ '1)))
                           (_%target1205212235%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945519456%_ '0))))
                       (if (gx#stx-null? _%tl1205412238%_)
                           (_%__match1952319524%_
                            _%e1202512430%_
                            _%hd1202612434%_
                            _%tl1202712437%_
                            _%__splice1945519456%_
                            _%target1205212235%_
                            _%tl1205412238%_)
                           (let () (declare (not safe)) (_%g1202212095%_)))))
                   (let () (declare (not safe)) (_%g1202212095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1202612434%_)
                                                       (let ((_%__splice1945519456%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1202612434%_
                                                               '0)))
                                                         (let ((_%tl1205412238%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1945519456%_ '1)))
                       (_%target1205212235%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1945519456%_ '0))))
                   (if (gx#stx-null? _%tl1205412238%_)
                       (_%__match1952319524%_
                        _%e1202512430%_
                        _%hd1202612434%_
                        _%tl1202712437%_
                        _%__splice1945519456%_
                        _%target1205212235%_
                        _%tl1205412238%_)
                       (let () (declare (not safe)) (_%g1202212095%_)))))
               (let () (declare (not safe)) (_%g1202212095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202212095%_))))))))
                              (_%__kont1954519546%_
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
                                   (if (gx#stx-null? _%__stx1954019541%_)
                                       (_%__kont1954519546%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1195811970%_))))))
                            (if (gx#stx-pair? _%__stx1954019541%_)
                                (let ((_%e1196211992%_
                                       (gx#syntax-e _%__stx1954019541%_)))
                                  (let ((_%tl1196411999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1196211992%_)))
                                        (_%hd1196311996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1196211992%_))))
                                    (_%__kont1954319544%_
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
                                   (let* ((_%__stx1955819559%_ _%datums11690%_)
                                          (_%g1169511716%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1955819559%_))))
                                     (let ((_%__kont1956119562%_
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
                                           (_%__kont1956519566%_
                                            (lambda () _%default11658%_)))
                                       (let ((_%__match1958119582%_
                                              (lambda (_%e1169911734%_
                                                       _%hd1170011738%_
                                                       _%tl1170111741%_
                                                       _%__splice1956319564%_
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
                          (_%__kont1956119562%_
                           _%tl1170111741%_
                           _%datum1171011770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1170511750%_
                                                   _%target1170211744%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1955819559%_)
                                             (let ((_%e1169911734%_
                                                    (gx#syntax-e
                                                     _%__stx1955819559%_)))
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
                                                     (let ((_%__splice1956319564%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1170011738%_
                                                             '0)))
                                                       (let ((_%tl1170411747%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1956319564%_ '1)))
                     (_%target1170211744%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1956319564%_ '0))))
                 (if (gx#stx-null? _%tl1170411747%_)
                     (_%__match1958119582%_
                      _%e1169911734%_
                      _%hd1170011738%_
                      _%tl1170111741%_
                      _%__splice1956319564%_
                      _%target1170211744%_
                      _%tl1170411747%_)
                     (_%__kont1956519566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1956519566%_))))
                                             (_%__kont1956519566%_)))))))
                               _%g1166111672%_))))
                      (_%g1165911886%_ _%e11654%_))))
                 (_%datum-dispatch-index9478%_
                  (lambda (_%datums11526%_)
                    (let _%lp11529%_ ((_%rest11532%_ _%datums11526%_)
                                      (_%ix11534%_ '0)
                                      (_%r11535%_ '()))
                      (let* ((_%__stx1958419585%_ _%rest11532%_)
                             (_%g1153811559%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1958419585%_))))
                        (let ((_%__kont1958719588%_
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
                              (_%__kont1959119592%_ (lambda () _%r11535%_)))
                          (let ((_%__match1960719608%_
                                 (lambda (_%e1154211577%_
                                          _%hd1154311581%_
                                          _%tl1154411584%_
                                          _%__splice1958919590%_
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
                                                     (_%__kont1958719588%_
                                                      _%tl1154411584%_
                                                      _%datum1155311613%_))))))
                                     (_%loop1154811593%_
                                      _%target1154511587%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1958419585%_)
                                (let ((_%e1154211577%_
                                       (gx#syntax-e _%__stx1958419585%_)))
                                  (let ((_%tl1154411584%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1154211577%_)))
                                        (_%hd1154311581%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1154211577%_))))
                                    (if (gx#stx-pair/null? _%hd1154311581%_)
                                        (let ((_%__splice1958919590%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1154311581%_
                                                '0)))
                                          (let ((_%tl1154711590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1958919590%_
                                                    '1)))
                                                (_%target1154511587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1958919590%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1154711590%_)
                                                (_%__match1960719608%_
                                                 _%e1154211577%_
                                                 _%hd1154311581%_
                                                 _%tl1154411584%_
                                                 _%__splice1958919590%_
                                                 _%target1154511587%_
                                                 _%tl1154711590%_)
                                                (_%__kont1959119592%_))))
                                        (_%__kont1959119592%_))))
                                (_%__kont1959119592%_))))))))
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
                                (let ((_g20919_
                                       (gx#syntax-split-splice
                                        _%hd1129111357%_
                                        '0)))
                                  (begin
                                    (let ((_g20920_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20919_)
                                                 (##values-length _g20919_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20920_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20920_)))
                                    (let ((_%target1129311363%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20919_ 0)))
                                          (_%tl1129511366%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20919_ 1))))
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
                                    (let ((_g20921_
                                           (gx#syntax-split-splice
                                            _%hd1082910895%_
                                            '0)))
                                      (begin
                                        (let ((_g20922_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g20921_)
                                                     (##values-length _g20921_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g20922_ 2)))
                                              (error "Context expects 2 values"
                                                     _g20922_)))
                                        (let ((_%target1083110901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20921_ 0)))
                                              (_%tl1083310904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20921_ 1))))
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
                          (let ((_g20923_
                                 (gx#syntax-split-splice _%hd1044810514%_ '0)))
                            (begin
                              (let ((_g20924_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20923_)
                                           (##values-length _g20923_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20924_ 2)))
                                    (error "Context expects 2 values"
                                           _g20924_)))
                              (let ((_%target1045010520%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20923_ 0)))
                                    (_%tl1045210523%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20923_ 1))))
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
                              (let ((_g20925_
                                     (gx#syntax-split-splice
                                      _%hd1015310219%_
                                      '0)))
                                (begin
                                  (let ((_g20926_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20925_)
                                               (##values-length _g20925_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20926_ 2)))
                                        (error "Context expects 2 values"
                                               _g20926_)))
                                  (let ((_%target1015510225%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20925_ 0)))
                                        (_%tl1015710228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20925_ 1))))
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
                          (let ((_g20927_
                                 (gx#syntax-split-splice _%hd99289994%_ '0)))
                            (begin
                              (let ((_g20928_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20927_)
                                           (##values-length _g20927_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20928_ 2)))
                                    (error "Context expects 2 values"
                                           _g20928_)))
                              (let ((_%target993010000%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20927_ 0)))
                                    (_%tl993210003%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20927_ 1))))
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
                    (let ((_g20929_
                           (if (_%eq-datums?9476%_ _%datums9633%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9637%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20929_ 0)))
                              (_%hashf9639%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20929_ 1)))
                              (_%eqf9640%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20929_ 2))))
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
                                (let ((_g20930_
                                       (gx#syntax-split-splice
                                        _%hd96719743%_
                                        '0)))
                                  (begin
                                    (let ((_g20931_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20930_)
                                                 (##values-length _g20930_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20931_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20931_)))
                                    (let ((_%target96739749%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20930_ 0)))
                                          (_%tl96759752%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20930_ 1))))
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
                                        (let ((_g20932_
                                               (gx#syntax-split-splice
                                                _%tl95049543%_
                                                '0)))
                                          (begin
                                            (let ((_g20933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20932_)
                                                         (##values-length
                                                          _g20932_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20933_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20933_)))
                                            (let ((_%target95059546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20932_
                                                      0)))
                                                  (_%tl95079549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20932_
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
                               (let ((_g20934_
                                      (_%parse-clauses9469%_
                                       _%L9578%_
                                       (foldr (lambda (_%g95969599%_
                                                       _%g95979602%_)
                                                (cons _%g95969599%_
                                                      _%g95979602%_))
                                              '()
                                              _%L9576%_))))
                                 (begin
                                   (let ((_g20935_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20934_)
                                                (##values-length _g20934_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20935_ 3)))
                                         (error "Context expects 3 values"
                                                _g20935_)))
                                   (let ((_%datums9605%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20934_ 0)))
                                         (_%dispatch9607%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20934_ 1)))
                                         (_%default9608%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20934_ 2))))
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
                                      (let ((_g20936_
                                             (gx#syntax-split-splice
                                              _%tl1263912678%_
                                              '0)))
                                        (begin
                                          (let ((_g20937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20936_)
                                                       (##values-length
                                                        _g20936_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20937_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20937_)))
                                          (let ((_%target1264012681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20936_ 0)))
                                                (_%tl1264212684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20936_ 1))))
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
        (let* ((_%__stx1961019611%_ _%stx12744%_)
               (_%g1275112847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1961019611%_))))
          (let ((_%__kont1961319614%_
                 (lambda (_%L13324%_ _%L13326%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1961519616%_
                 (lambda (_%L13266%_ _%L13268%_ _%L13269%_) _%L13266%_))
                (_%__kont1961719618%_
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
                (_%__kont1961919620%_
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
                (_%__kont1962119622%_
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
            (let ((_%__match1976719768%_
                   (lambda (_%e1282412854%_
                            _%hd1282512858%_
                            _%tl1282612861%_
                            _%e1282712864%_
                            _%hd1282812868%_
                            _%tl1282912871%_
                            _%e1283012874%_
                            _%hd1283112878%_
                            _%tl1283212881%_
                            _%__splice1962319624%_
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
                                       (_%__kont1962119622%_
                                        _%K1284112910%_
                                        _%hd1283112878%_
                                        _%hd1282812868%_))))))
                       (_%loop1283612890%_ _%target1283312884%_ '())))))
              (if (gx#stx-pair? _%__stx1961019611%_)
                  (let ((_%e1275513294%_ (gx#syntax-e _%__stx1961019611%_)))
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
                                          (_%__kont1961319614%_
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
                                                      (_%__kont1961519616%_
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
                          (_%__kont1961719618%_
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
                                      (_%__kont1961919620%_
                                       _%hd1281913007%_
                                       _%hd1279613157%_
                                       _%hd1277713260%_
                                       _%hd1276213318%_
                                       _%hd1275913308%_)
                                      (if (gx#stx-pair/null? _%tl1276313321%_)
                                          (let ((_%__splice1962319624%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1276313321%_
                                                  '0)))
                                            (let ((_%tl1283512887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1962319624%_
                                                      '1)))
                                                  (_%target1283312884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1962319624%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1283512887%_)
                                                  (_%__match1976719768%_
                                                   _%e1275513294%_
                                                   _%hd1275613298%_
                                                   _%tl1275713301%_
                                                   _%e1275813304%_
                                                   _%hd1275913308%_
                                                   _%tl1276013311%_
                                                   _%e1276113314%_
                                                   _%hd1276213318%_
                                                   _%tl1276313321%_
                                                   _%__splice1962319624%_
                                                   _%target1283312884%_
                                                   _%tl1283512887%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1275112847%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275112847%_))))))
                              (if (gx#stx-pair/null? _%tl1276313321%_)
                                  (let ((_%__splice1962319624%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1276313321%_
                                          '0)))
                                    (let ((_%tl1283512887%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1962319624%_
                                              '1)))
                                          (_%target1283312884%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1962319624%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1283512887%_)
                                          (_%__match1976719768%_
                                           _%e1275513294%_
                                           _%hd1275613298%_
                                           _%tl1275713301%_
                                           _%e1275813304%_
                                           _%hd1275913308%_
                                           _%tl1276013311%_
                                           _%e1276113314%_
                                           _%hd1276213318%_
                                           _%tl1276313321%_
                                           _%__splice1962319624%_
                                           _%target1283312884%_
                                           _%tl1283512887%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275112847%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1275112847%_)))))))
                  (if (gx#stx-pair/null? _%tl1276313321%_)
                      (let ((_%__splice1962319624%_
                             (gx#syntax-split-splice->vector
                              _%tl1276313321%_
                              '0)))
                        (let ((_%tl1283512887%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1962319624%_ '1)))
                              (_%target1283312884%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1962319624%_ '0))))
                          (if (gx#stx-null? _%tl1283512887%_)
                              (_%__match1976719768%_
                               _%e1275513294%_
                               _%hd1275613298%_
                               _%tl1275713301%_
                               _%e1275813304%_
                               _%hd1275913308%_
                               _%tl1276013311%_
                               _%e1276113314%_
                               _%hd1276213318%_
                               _%tl1276313321%_
                               _%__splice1962319624%_
                               _%target1283312884%_
                               _%tl1283512887%_)
                              (let ()
                                (declare (not safe))
                                (_%g1275112847%_)))))
                      (let () (declare (not safe)) (_%g1275112847%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1276313321%_)
                                                  (let ((_%__splice1962319624%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1276313321%_
                                                          '0)))
                                                    (let ((_%tl1283512887%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1962319624%_
                                                              '1)))
                                                          (_%target1283312884%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1962319624%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1283512887%_)
                                                          (_%__match1976719768%_
                                                           _%e1275513294%_
                                                           _%hd1275613298%_
                                                           _%tl1275713301%_
                                                           _%e1275813304%_
                                                           _%hd1275913308%_
                                                           _%tl1276013311%_
                                                           _%e1276113314%_
                                                           _%hd1276213318%_
                                                           _%tl1276313321%_
                                                           _%__splice1962319624%_
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
                                                (let ((_g20938_
                                                       (gx#syntax-split-splice
                                                        _%tl1336513414%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20938_)
                         (##values-length _g20938_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20939_ 2)))
                  (error "Context expects 2 values" _g20939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1336613417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20938_
                                                              0)))
                                                          (_%tl1336813420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20938_
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
                                              (_g20940_
                                               (_%split13349%_
                                                (foldr (lambda (_%g1348513488%_
                                                                _%g1348613491%_)
                                                         (cons _%g1348513488%_
                                                               _%g1348613491%_))
                                                       '()
                                                       _%L13447%_)
                                                _%mid13483%_)))
                                         (begin
                                           (let ((_g20941_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g20940_)
                                                        (##values-length
                                                         _g20940_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g20941_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g20941_)))
                                           (let ((_%left13494%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g20940_ 0)))
                                                 (_%right13496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g20940_
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
                                   (let ((_g20942_
                                          (gx#syntax-split-splice
                                           _%hd1351013562%_
                                           '0)))
                                     (begin
                                       (let ((_g20943_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20942_)
                                                    (##values-length _g20942_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20943_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20943_)))
                                       (let ((_%target1351213568%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20942_ 0)))
                                             (_%tl1351413571%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20942_ 1))))
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
                                   (let ((_g20944_
                                          (gx#syntax-split-splice
                                           _%hd1352213602%_
                                           '0)))
                                     (begin
                                       (let ((_g20945_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20944_)
                                                    (##values-length _g20944_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20945_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20945_)))
                                       (let ((_%target1352413608%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20944_ 0)))
                                             (_%tl1352613611%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20944_ 1))))
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
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13726%_)
        (let* ((_%__stx1977019771%_ _%$stx13726%_)
               (_%g1373113762%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1977019771%_))))
          (let ((_%__kont1977319774%_ (lambda (_%L13874%_) _%L13874%_))
                (_%__kont1977519776%_
                 (lambda (_%L13819%_ _%L13821%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L13821%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1383813841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1383913844%_)
                        (cons _%g1383813841%_ _%g1383913844%_))
                      '()
                      _%L13819%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1981319814%_
                   (lambda (_%e1374213769%_
                            _%hd1374313773%_
                            _%tl1374413776%_
                            _%e1374513779%_
                            _%hd1374613783%_
                            _%tl1374713786%_
                            _%__splice1977719778%_
                            _%target1374813789%_
                            _%tl1375013792%_)
                     (letrec ((_%loop1375113795%_
                               (lambda (_%hd1374913799%_ _%rest1375513802%_)
                                 (if (gx#stx-pair? _%hd1374913799%_)
                                     (let ((_%e1375213805%_
                                            (gx#syntax-e _%hd1374913799%_)))
                                       (let ((_%lp-tl1375413812%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1375213805%_)))
                                             (_%lp-hd1375313809%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1375213805%_))))
                                         (_%loop1375113795%_
                                          _%lp-tl1375413812%_
                                          (cons _%lp-hd1375313809%_
                                                _%rest1375513802%_))))
                                     (let ((_%rest1375613815%_
                                            (reverse _%rest1375513802%_)))
                                       (_%__kont1977519776%_
                                        _%rest1375613815%_
                                        _%hd1374613783%_))))))
                       (_%loop1375113795%_ _%target1374813789%_ '())))))
              (if (gx#stx-pair? _%__stx1977019771%_)
                  (let ((_%e1373413854%_ (gx#syntax-e _%__stx1977019771%_)))
                    (let ((_%tl1373613861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1373413854%_)))
                          (_%hd1373513858%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1373413854%_))))
                      (if (gx#stx-pair? _%tl1373613861%_)
                          (let ((_%e1373713864%_
                                 (gx#syntax-e _%tl1373613861%_)))
                            (let ((_%tl1373913871%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1373713864%_)))
                                  (_%hd1373813868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1373713864%_))))
                              (if (gx#stx-null? _%tl1373913871%_)
                                  (_%__kont1977319774%_ _%hd1373813868%_)
                                  (if (gx#stx-pair/null? _%tl1373913871%_)
                                      (let ((_%__splice1977719778%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1373913871%_
                                              '0)))
                                        (let ((_%tl1375013792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1977719778%_
                                                  '1)))
                                              (_%target1374813789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1977719778%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1375013792%_)
                                              (_%__match1981319814%_
                                               _%e1373413854%_
                                               _%hd1373513858%_
                                               _%tl1373613861%_
                                               _%e1373713864%_
                                               _%hd1373813868%_
                                               _%tl1373913871%_
                                               _%__splice1977719778%_
                                               _%target1374813789%_
                                               _%tl1375013792%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1373113762%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1373113762%_))))))
                          (let () (declare (not safe)) (_%g1373113762%_)))))
                  (let () (declare (not safe)) (_%g1373113762%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13892%_)
        (let* ((_%__stx1981619817%_ _%$stx13892%_)
               (_%g1389813951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1981619817%_))))
          (let ((_%__kont1981919820%_
                 (lambda (_%L14153%_ _%L14155%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14155%_ (cons _%L14153%_ '()))
                                     '())
                               (cons _%L14155%_ '())))))
                (_%__kont1982119822%_
                 (lambda (_%L14097%_ _%L14099%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14099%_ (cons _%L14097%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14099%_)
                                     '())))))
                (_%__kont1982319824%_
                 (lambda (_%L14018%_ _%L14020%_ _%L14021%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14021%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14020%_
                                                             (foldr (lambda (_%g1404114044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1404214047%_)
                              (cons _%g1404114044%_ _%g1404214047%_))
                            '()
                            _%L14018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14021%_ '()))))))
            (let* ((_%__match1990319904%_
                    (lambda (_%e1392813958%_
                             _%hd1392913962%_
                             _%tl1393013965%_
                             _%e1393113968%_
                             _%hd1393213972%_
                             _%tl1393313975%_
                             _%e1393413978%_
                             _%hd1393513982%_
                             _%tl1393613985%_
                             _%__splice1982519826%_
                             _%target1393713988%_
                             _%tl1393913991%_)
                      (letrec ((_%loop1394013994%_
                                (lambda (_%hd1393813998%_ _%body1394414001%_)
                                  (if (gx#stx-pair? _%hd1393813998%_)
                                      (let ((_%e1394114004%_
                                             (gx#syntax-e _%hd1393813998%_)))
                                        (let ((_%lp-tl1394314011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1394114004%_)))
                                              (_%lp-hd1394214008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1394114004%_))))
                                          (_%loop1394013994%_
                                           _%lp-tl1394314011%_
                                           (cons _%lp-hd1394214008%_
                                                 _%body1394414001%_))))
                                      (let ((_%body1394514014%_
                                             (reverse _%body1394414001%_)))
                                        (let ((_%L14018%_ _%body1394514014%_)
                                              (_%L14020%_ _%tl1393613985%_)
                                              (_%L14021%_ _%hd1393513982%_))
                                          (if (gx#identifier? _%L14021%_)
                                              (_%__kont1982319824%_
                                               _%L14018%_
                                               _%L14020%_
                                               _%L14021%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389813951%_)))))))))
                        (_%loop1394013994%_ _%target1393713988%_ '()))))
                   (_%__match1987719878%_
                    (lambda (_%e1391314057%_
                             _%hd1391414061%_
                             _%tl1391514064%_
                             _%e1391614067%_
                             _%hd1391714071%_
                             _%tl1391814074%_
                             _%e1391914077%_
                             _%hd1392014081%_
                             _%tl1392114084%_
                             _%e1392214087%_
                             _%hd1392314091%_
                             _%tl1392414094%_)
                      (let ((_%L14097%_ _%hd1392314091%_)
                            (_%L14099%_ _%tl1392114084%_))
                        (if (gx#identifier-list? _%L14099%_)
                            (_%__kont1982119822%_ _%L14097%_ _%L14099%_)
                            (if (gx#stx-pair/null? _%tl1391814074%_)
                                (let ((_%__splice1982519826%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1391814074%_
                                        '0)))
                                  (let ((_%tl1393913991%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1982519826%_
                                            '1)))
                                        (_%target1393713988%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1982519826%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1393913991%_)
                                        (_%__match1990319904%_
                                         _%e1391314057%_
                                         _%hd1391414061%_
                                         _%tl1391514064%_
                                         _%e1391614067%_
                                         _%hd1391714071%_
                                         _%tl1391814074%_
                                         _%e1391914077%_
                                         _%hd1392014081%_
                                         _%tl1392114084%_
                                         _%__splice1982519826%_
                                         _%target1393713988%_
                                         _%tl1393913991%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1389813951%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1389813951%_)))))))
                   (_%__match1984719848%_
                    (lambda (_%e1390214123%_
                             _%hd1390314127%_
                             _%tl1390414130%_
                             _%e1390514133%_
                             _%hd1390614137%_
                             _%tl1390714140%_
                             _%e1390814143%_
                             _%hd1390914147%_
                             _%tl1391014150%_)
                      (let ((_%L14153%_ _%hd1390914147%_)
                            (_%L14155%_ _%hd1390614137%_))
                        (if (gx#identifier? _%L14155%_)
                            (_%__kont1981919820%_ _%L14153%_ _%L14155%_)
                            (if (gx#stx-pair? _%hd1390614137%_)
                                (let ((_%e1391914077%_
                                       (gx#syntax-e _%hd1390614137%_)))
                                  (let ((_%tl1392114084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1391914077%_)))
                                        (_%hd1392014081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1391914077%_))))
                                    (if (gx#identifier? _%hd1392014081%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20946_|
                                             _%hd1392014081%_)
                                            (_%__match1987719878%_
                                             _%e1390214123%_
                                             _%hd1390314127%_
                                             _%tl1390414130%_
                                             _%e1390514133%_
                                             _%hd1390614137%_
                                             _%tl1390714140%_
                                             _%e1391914077%_
                                             _%hd1392014081%_
                                             _%tl1392114084%_
                                             _%e1390814143%_
                                             _%hd1390914147%_
                                             _%tl1391014150%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1390714140%_)
                                                (let ((_%__splice1982519826%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1390714140%_
                                                        '0)))
                                                  (let ((_%tl1393913991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1982519826%_
                                                            '1)))
                                                        (_%target1393713988%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1982519826%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1393913991%_)
                                                        (_%__match1990319904%_
                                                         _%e1390214123%_
                                                         _%hd1390314127%_
                                                         _%tl1390414130%_
                                                         _%e1390514133%_
                                                         _%hd1390614137%_
                                                         _%tl1390714140%_
                                                         _%e1391914077%_
                                                         _%hd1392014081%_
                                                         _%tl1392114084%_
                                                         _%__splice1982519826%_
                                                         _%target1393713988%_
                                                         _%tl1393913991%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1389813951%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1389813951%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1390714140%_)
                                            (let ((_%__splice1982519826%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1390714140%_
                                                    '0)))
                                              (let ((_%tl1393913991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1982519826%_
                                                        '1)))
                                                    (_%target1393713988%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1982519826%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1393913991%_)
                                                    (_%__match1990319904%_
                                                     _%e1390214123%_
                                                     _%hd1390314127%_
                                                     _%tl1390414130%_
                                                     _%e1390514133%_
                                                     _%hd1390614137%_
                                                     _%tl1390714140%_
                                                     _%e1391914077%_
                                                     _%hd1392014081%_
                                                     _%tl1392114084%_
                                                     _%__splice1982519826%_
                                                     _%target1393713988%_
                                                     _%tl1393913991%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1389813951%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1389813951%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1389813951%_))))))))
              (if (gx#stx-pair? _%__stx1981619817%_)
                  (let ((_%e1390214123%_ (gx#syntax-e _%__stx1981619817%_)))
                    (let ((_%tl1390414130%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1390214123%_)))
                          (_%hd1390314127%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1390214123%_))))
                      (if (gx#stx-pair? _%tl1390414130%_)
                          (let ((_%e1390514133%_
                                 (gx#syntax-e _%tl1390414130%_)))
                            (let ((_%tl1390714140%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1390514133%_)))
                                  (_%hd1390614137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1390514133%_))))
                              (if (gx#stx-pair? _%tl1390714140%_)
                                  (let ((_%e1390814143%_
                                         (gx#syntax-e _%tl1390714140%_)))
                                    (let ((_%tl1391014150%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1390814143%_)))
                                          (_%hd1390914147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1390814143%_))))
                                      (if (gx#stx-null? _%tl1391014150%_)
                                          (_%__match1984719848%_
                                           _%e1390214123%_
                                           _%hd1390314127%_
                                           _%tl1390414130%_
                                           _%e1390514133%_
                                           _%hd1390614137%_
                                           _%tl1390714140%_
                                           _%e1390814143%_
                                           _%hd1390914147%_
                                           _%tl1391014150%_)
                                          (if (gx#stx-pair? _%hd1390614137%_)
                                              (let ((_%e1391914077%_
                                                     (gx#syntax-e
                                                      _%hd1390614137%_)))
                                                (let ((_%tl1392114084%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1391914077%_)))
                                                      (_%hd1392014081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1391914077%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1390714140%_)
                                                      (let ((_%__splice1982519826%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1390714140%_
                                                              '0)))
                                                        (let ((_%tl1393913991%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1982519826%_ '1)))
                      (_%target1393713988%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1982519826%_ '0))))
                  (if (gx#stx-null? _%tl1393913991%_)
                      (_%__match1990319904%_
                       _%e1390214123%_
                       _%hd1390314127%_
                       _%tl1390414130%_
                       _%e1390514133%_
                       _%hd1390614137%_
                       _%tl1390714140%_
                       _%e1391914077%_
                       _%hd1392014081%_
                       _%tl1392114084%_
                       _%__splice1982519826%_
                       _%target1393713988%_
                       _%tl1393913991%_)
                      (let () (declare (not safe)) (_%g1389813951%_)))))
              (let () (declare (not safe)) (_%g1389813951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389813951%_))))))
                                  (if (gx#stx-pair? _%hd1390614137%_)
                                      (let ((_%e1391914077%_
                                             (gx#syntax-e _%hd1390614137%_)))
                                        (let ((_%tl1392114084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1391914077%_)))
                                              (_%hd1392014081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1391914077%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1390714140%_)
                                              (let ((_%__splice1982519826%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1390714140%_
                                                      '0)))
                                                (let ((_%tl1393913991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1982519826%_
                                                          '1)))
                                                      (_%target1393713988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1982519826%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1393913991%_)
                                                      (_%__match1990319904%_
                                                       _%e1390214123%_
                                                       _%hd1390314127%_
                                                       _%tl1390414130%_
                                                       _%e1390514133%_
                                                       _%hd1390614137%_
                                                       _%tl1390714140%_
                                                       _%e1391914077%_
                                                       _%hd1392014081%_
                                                       _%tl1392114084%_
                                                       _%__splice1982519826%_
                                                       _%target1393713988%_
                                                       _%tl1393913991%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1389813951%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389813951%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1389813951%_))))))
                          (let () (declare (not safe)) (_%g1389813951%_)))))
                  (let () (declare (not safe)) (_%g1389813951%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14175%_)
        (letrec ((_%let-bind?14178%_
                  (lambda (_%x15101%_)
                    (let* ((_%__stx1990619907%_ _%x15101%_)
                           (_%g1510615125%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1990619907%_))))
                      (let ((_%__kont1990919910%_
                             (lambda (_%L15193%_ _%L15195%_)
                               (_%let-head?14181%_ _%L15195%_)))
                            (_%__kont1991119912%_ (lambda (_%L15153%_) '#t))
                            (_%__kont1991319914%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx1990619907%_)
                            (let ((_%e1511015173%_
                                   (gx#syntax-e _%__stx1990619907%_)))
                              (let ((_%tl1511215180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1511015173%_)))
                                    (_%hd1511115177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1511015173%_))))
                                (if (gx#stx-pair? _%tl1511215180%_)
                                    (let ((_%e1511315183%_
                                           (gx#syntax-e _%tl1511215180%_)))
                                      (let ((_%tl1511515190%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1511315183%_)))
                                            (_%hd1511415187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1511315183%_))))
                                        (if (gx#stx-null? _%tl1511515190%_)
                                            (_%__kont1990919910%_
                                             _%hd1511415187%_
                                             _%hd1511115177%_)
                                            (_%__kont1991319914%_))))
                                    (if (gx#stx-null? _%tl1511215180%_)
                                        (_%__kont1991119912%_ _%hd1511115177%_)
                                        (_%__kont1991319914%_)))))
                            (_%__kont1991319914%_))))))
                 (_%let-bind14180%_
                  (lambda (_%x15003%_)
                    (let* ((_%__stx1994019941%_ _%x15003%_)
                           (_%g1500715026%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1994019941%_))))
                      (let ((_%__kont1994319944%_
                             (lambda (_%L15082%_ _%L15084%_) _%x15003%_))
                            (_%__kont1994519946%_
                             (lambda (_%L15043%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15043%_ '())))))
                        (if (gx#stx-pair? _%__stx1994019941%_)
                            (let ((_%e1501115062%_
                                   (gx#syntax-e _%__stx1994019941%_)))
                              (let ((_%tl1501315069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1501115062%_)))
                                    (_%hd1501215066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1501115062%_))))
                                (if (gx#stx-pair? _%tl1501315069%_)
                                    (let ((_%e1501415072%_
                                           (gx#syntax-e _%tl1501315069%_)))
                                      (let ((_%tl1501615079%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1501415072%_)))
                                            (_%hd1501515076%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1501415072%_))))
                                        (if (gx#stx-null? _%tl1501615079%_)
                                            (_%__kont1994319944%_
                                             _%hd1501515076%_
                                             _%hd1501215066%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1500715026%_)))))
                                    (if (gx#stx-null? _%tl1501315069%_)
                                        (_%__kont1994519946%_ _%hd1501215066%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1500715026%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1500715026%_)))))))
                 (_%let-head?14181%_
                  (lambda (_%x14943%_)
                    (let* ((_%__stx1997219973%_ _%x14943%_)
                           (_%g1494714958%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1997219973%_))))
                      (let ((_%__kont1997519976%_
                             (lambda (_%L14986%_)
                               (gx#stx-andmap gx#identifier? _%L14986%_)))
                            (_%__kont1997719978%_
                             (lambda () (gx#identifier? _%x14943%_))))
                        (if (gx#stx-pair? _%__stx1997219973%_)
                            (let ((_%e1495014976%_
                                   (gx#syntax-e _%__stx1997219973%_)))
                              (let ((_%tl1495214983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1495014976%_)))
                                    (_%hd1495114980%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1495014976%_))))
                                (if (gx#identifier? _%hd1495114980%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20947_|
                                         _%hd1495114980%_)
                                        (_%__kont1997519976%_ _%tl1495214983%_)
                                        (_%__kont1997719978%_))
                                    (_%__kont1997719978%_))))
                            (_%__kont1997719978%_))))))
                 (_%let-head14182%_
                  (lambda (_%x14883%_)
                    (let* ((_%__stx1999219993%_ _%x14883%_)
                           (_%g1488714898%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1999219993%_))))
                      (let ((_%__kont1999519996%_
                             (lambda (_%L14926%_) _%L14926%_))
                            (_%__kont1999719998%_
                             (lambda () (list _%x14883%_))))
                        (if (gx#stx-pair? _%__stx1999219993%_)
                            (let ((_%e1489014916%_
                                   (gx#syntax-e _%__stx1999219993%_)))
                              (let ((_%tl1489214923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1489014916%_)))
                                    (_%hd1489114920%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1489014916%_))))
                                (if (gx#identifier? _%hd1489114920%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20948_|
                                         _%hd1489114920%_)
                                        (_%__kont1999519996%_ _%tl1489214923%_)
                                        (_%__kont1999719998%_))
                                    (_%__kont1999719998%_))))
                            (_%__kont1999719998%_)))))))
          (let* ((_%__stx2001220013%_ _%stx14175%_)
                 (_%g1418614258%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2001220013%_))))
            (let ((_%__kont2001520016%_
                   (lambda (_%L14856%_ _%L14858%_ _%L14859%_ _%L14860%_)
                     (cons _%L14860%_
                           (cons (cons (cons _%L14859%_ (cons _%L14858%_ '()))
                                       '())
                                 _%L14856%_))))
                  (_%__kont2001720018%_
                   (lambda (_%L14778%_ _%L14780%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L14780%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1480014803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1480114806%_)
                    (cons _%g1480014803%_ _%g1480114806%_))
                  '()
                  _%L14778%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2002120022%_
                   (lambda (_%L14345%_ _%L14347%_)
                     (let* ((_%g1437814404%_
                             (lambda (_%g1437914400%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1437914400%_)))
                            (_%g1437714689%_
                             (lambda (_%g1437914408%_)
                               (if (gx#stx-pair/null? _%g1437914408%_)
                                   (let ((_g20949_
                                          (gx#syntax-split-splice
                                           _%g1437914408%_
                                           '0)))
                                     (begin
                                       (let ((_g20950_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20949_)
                                                    (##values-length _g20949_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20950_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20950_)))
                                       (let ((_%target1438214411%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20949_ 0)))
                                             (_%tl1438414414%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20949_ 1))))
                                         (if (gx#stx-null? _%tl1438414414%_)
                                             (letrec ((_%loop1438514417%_
                                                       (lambda (_%hd1438314421%_
                                                                _%e1438914424%_
                                                                _%hd1439014426%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1438314421%_)
                                                             (let ((_%e1438614429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1438314421%_)))
                       (let ((_%lp-hd1438714433%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1438614429%_)))
                             (_%lp-tl1438814436%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1438614429%_))))
                         (if (gx#stx-pair? _%lp-hd1438714433%_)
                             (let ((_%e1439314439%_
                                    (gx#syntax-e _%lp-hd1438714433%_)))
                               (let ((_%hd1439414443%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1439314439%_)))
                                     (_%tl1439514446%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1439314439%_))))
                                 (if (gx#stx-pair? _%tl1439514446%_)
                                     (let ((_%e1439614449%_
                                            (gx#syntax-e _%tl1439514446%_)))
                                       (let ((_%hd1439714453%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1439614449%_)))
                                             (_%tl1439814456%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1439614449%_))))
                                         (if (gx#stx-null? _%tl1439814456%_)
                                             (_%loop1438514417%_
                                              _%lp-tl1438814436%_
                                              (cons _%hd1439714453%_
                                                    _%e1438914424%_)
                                              (cons _%hd1439414443%_
                                                    _%hd1439014426%_))
                                             (_%g1437814404%_
                                              _%g1437914408%_))))
                                     (_%g1437814404%_ _%g1437914408%_))))
                             (_%g1437814404%_ _%g1437914408%_))))
                     (let ((_%e1439114459%_ (reverse _%e1438914424%_))
                           (_%hd1439214462%_ (reverse _%hd1439014426%_)))
                       ((lambda (_%L14465%_ _%L14467%_)
                          (let* ((_%g1448314500%_
                                  (lambda (_%g1448414496%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1448414496%_)))
                                 (_%g1448214677%_
                                  (lambda (_%g1448414504%_)
                                    (if (gx#stx-pair/null? _%g1448414504%_)
                                        (let ((_g20951_
                                               (gx#syntax-split-splice
                                                _%g1448414504%_
                                                '0)))
                                          (begin
                                            (let ((_g20952_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20951_)
                                                         (##values-length
                                                          _g20951_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20952_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20952_)))
                                            (let ((_%target1448614507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20951_
                                                      0)))
                                                  (_%tl1448814510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20951_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1448814510%_)
                                                  (letrec ((_%loop1448914513%_
                                                            (lambda (_%hd1448714517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1449314520%_)
                      (if (gx#stx-pair? _%hd1448714517%_)
                          (let ((_%e1449014523%_
                                 (gx#syntax-e _%hd1448714517%_)))
                            (let ((_%lp-hd1449114527%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1449014523%_)))
                                  (_%lp-tl1449214530%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1449014523%_))))
                              (_%loop1448914513%_
                               _%lp-tl1449214530%_
                               (cons _%lp-hd1449114527%_ _%$e1449314520%_))))
                          (let ((_%$e1449414533%_ (reverse _%$e1449314520%_)))
                            ((lambda (_%L14537%_)
                               (let* ((_%g1455414571%_
                                       (lambda (_%g1455514567%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1455514567%_)))
                                      (_%g1455314665%_
                                       (lambda (_%g1455514575%_)
                                         (if (gx#stx-pair/null?
                                              _%g1455514575%_)
                                             (let ((_g20953_
                                                    (gx#syntax-split-splice
                                                     _%g1455514575%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20954_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20953_)
                                                              (##values-length
                                                               _g20953_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20954_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1455714578%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20953_
                                                           0)))
                                                       (_%tl1455914581%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20953_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1455914581%_)
                                                       (letrec ((_%loop1456014584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1455814588%_ _%hd-bind1456414591%_)
                           (if (gx#stx-pair? _%hd1455814588%_)
                               (let ((_%e1456114594%_
                                      (gx#syntax-e _%hd1455814588%_)))
                                 (let ((_%lp-hd1456214598%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1456114594%_)))
                                       (_%lp-tl1456314601%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1456114594%_))))
                                   (_%loop1456014584%_
                                    _%lp-tl1456314601%_
                                    (cons _%lp-hd1456214598%_
                                          _%hd-bind1456414591%_))))
                               (let ((_%hd-bind1456514604%_
                                      (reverse _%hd-bind1456414591%_)))
                                 ((lambda (_%L14608%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14465%_
                                                   _%L14537%_)
                                                  (foldr (lambda (_%g1462614637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1462714640%_
                          _%g1462814642%_)
                   (cons (cons (cons _%g1462714640%_ '())
                               (cons _%g1462614637%_ '()))
                         _%g1462814642%_))
                 '()
                 _%L14465%_
                 _%L14537%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1462914645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1463014648%_)
                             (cons _%g1462914645%_ _%g1463014648%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14537%_
                                                _%L14608%_)
                                               (foldr (lambda (_%g1463114651%_
                                                               _%g1463214654%_
                                                               _%g1463314656%_)
                                                        (cons (cons _%g1463214654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1463114651%_ '()))
                      _%g1463314656%_))
              '()
              _%L14537%_
              _%L14608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1463414659%_
                                                             _%g1463514662%_)
                                                      (cons _%g1463414659%_
                                                            _%g1463514662%_))
                                                    '()
                                                    _%L14345%_)))
                                 '())
                           _%L14537%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1456514604%_))))))
                 (_%loop1456014584%_ _%target1455714578%_ '()))
               (_%g1455414571%_ _%g1455514575%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1455414571%_
                                              _%g1455514575%_)))))
                                 (_%g1455314665%_
                                  (gx#stx-map
                                   _%let-head14182%_
                                   (foldr (lambda (_%g1466814671%_
                                                   _%g1466914674%_)
                                            (cons _%g1466814671%_
                                                  _%g1466914674%_))
                                          '()
                                          _%L14467%_)))))
                             _%$e1449414533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1448914513%_
                                                     _%target1448614507%_
                                                     '()))
                                                  (_%g1448314500%_
                                                   _%g1448414504%_)))))
                                        (_%g1448314500%_ _%g1448414504%_)))))
                            (_%g1448214677%_
                             (gx#gentemps
                              (foldr (lambda (_%g1468014683%_ _%g1468114686%_)
                                       (cons _%g1468014683%_ _%g1468114686%_))
                                     '()
                                     _%L14467%_)))))
                        _%e1439114459%_
                        _%hd1439214462%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1438514417%_
                                                _%target1438214411%_
                                                '()
                                                '()))
                                             (_%g1437814404%_
                                              _%g1437914408%_)))))
                                   (_%g1437814404%_ _%g1437914408%_)))))
                       (_%g1437714689%_
                        (gx#stx-map
                         _%let-bind14180%_
                         (foldr (lambda (_%g1469214695%_ _%g1469314698%_)
                                  (cons _%g1469214695%_ _%g1469314698%_))
                                '()
                                _%L14347%_)))))))
              (let* ((_%__match2010920110%_
                      (lambda (_%e1422914265%_
                               _%hd1423014269%_
                               _%tl1423114272%_
                               _%e1423214275%_
                               _%hd1423314279%_
                               _%tl1423414282%_
                               _%__splice2002320024%_
                               _%target1423514285%_
                               _%tl1423714288%_)
                        (letrec ((_%loop1423814291%_
                                  (lambda (_%hd1423614295%_ _%bind1424214298%_)
                                    (if (gx#stx-pair? _%hd1423614295%_)
                                        (let ((_%e1423914301%_
                                               (gx#syntax-e _%hd1423614295%_)))
                                          (let ((_%lp-tl1424114308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1423914301%_)))
                                                (_%lp-hd1424014305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1423914301%_))))
                                            (_%loop1423814291%_
                                             _%lp-tl1424114308%_
                                             (cons _%lp-hd1424014305%_
                                                   _%bind1424214298%_))))
                                        (let ((_%bind1424314311%_
                                               (reverse _%bind1424214298%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1423414282%_)
                                              (let ((_%__splice2002520026%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1423414282%_
                                                      '0)))
                                                (let ((_%tl1424614318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2002520026%_
                                                          '1)))
                                                      (_%target1424414315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2002520026%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1424614318%_)
                                                      (letrec ((_%loop1424714321%_
                                                                (lambda (_%hd1424514325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1425114328%_)
                          (if (gx#stx-pair? _%hd1424514325%_)
                              (let ((_%e1424814331%_
                                     (gx#syntax-e _%hd1424514325%_)))
                                (let ((_%lp-tl1425014338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1424814331%_)))
                                      (_%lp-hd1424914335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1424814331%_))))
                                  (_%loop1424714321%_
                                   _%lp-tl1425014338%_
                                   (cons _%lp-hd1424914335%_
                                         _%body1425114328%_))))
                              (let ((_%body1425214341%_
                                     (reverse _%body1425114328%_)))
                                (let ((_%L14345%_ _%body1425214341%_)
                                      (_%L14347%_ _%bind1424314311%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14178%_
                                       (foldr (lambda (_%g1436914372%_
                                                       _%g1437014375%_)
                                                (cons _%g1436914372%_
                                                      _%g1437014375%_))
                                              '()
                                              _%L14347%_))
                                      (_%__kont2002120022%_
                                       _%L14345%_
                                       _%L14347%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418614258%_)))))))))
                (_%loop1424714321%_ _%target1424414315%_ '()))
              (let () (declare (not safe)) (_%g1418614258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418614258%_))))))))
                          (_%loop1423814291%_ _%target1423514285%_ '()))))
                     (_%__match2008920090%_
                      (lambda (_%e1420614708%_
                               _%hd1420714712%_
                               _%tl1420814715%_
                               _%e1420914718%_
                               _%hd1421014722%_
                               _%tl1421114725%_
                               _%e1421214728%_
                               _%hd1421314732%_
                               _%tl1421414735%_
                               _%e1421514738%_
                               _%hd1421614742%_
                               _%tl1421714745%_
                               _%__splice2001920020%_
                               _%target1421814748%_
                               _%tl1422014751%_)
                        (letrec ((_%loop1422114754%_
                                  (lambda (_%hd1421914758%_ _%body1422514761%_)
                                    (if (gx#stx-pair? _%hd1421914758%_)
                                        (let ((_%e1422214764%_
                                               (gx#syntax-e _%hd1421914758%_)))
                                          (let ((_%lp-tl1422414771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1422214764%_)))
                                                (_%lp-hd1422314768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1422214764%_))))
                                            (_%loop1422114754%_
                                             _%lp-tl1422414771%_
                                             (cons _%lp-hd1422314768%_
                                                   _%body1422514761%_))))
                                        (let ((_%body1422614774%_
                                               (reverse _%body1422514761%_)))
                                          (_%__kont2001720018%_
                                           _%body1422614774%_
                                           _%hd1421614742%_))))))
                          (_%loop1422114754%_ _%target1421814748%_ '()))))
                     (_%__match2005320054%_
                      (lambda (_%e1419214816%_
                               _%hd1419314820%_
                               _%tl1419414823%_
                               _%e1419514826%_
                               _%hd1419614830%_
                               _%tl1419714833%_
                               _%e1419814836%_
                               _%hd1419914840%_
                               _%tl1420014843%_
                               _%e1420114846%_
                               _%hd1420214850%_
                               _%tl1420314853%_)
                        (let ((_%L14856%_ _%tl1419714833%_)
                              (_%L14858%_ _%hd1420214850%_)
                              (_%L14859%_ _%hd1419914840%_)
                              (_%L14860%_ _%hd1419314820%_))
                          (if (_%let-head?14181%_ _%L14859%_)
                              (_%__kont2001520016%_
                               _%L14856%_
                               _%L14858%_
                               _%L14859%_
                               _%L14860%_)
                              (if (gx#stx-pair? _%hd1419914840%_)
                                  (let ((_%e1421514738%_
                                         (gx#syntax-e _%hd1419914840%_)))
                                    (let ((_%tl1421714745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1421514738%_)))
                                          (_%hd1421614742%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1421514738%_))))
                                      (if (gx#stx-pair/null? _%hd1419614830%_)
                                          (let ((_%__splice2002320024%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1419614830%_
                                                  '0)))
                                            (let ((_%tl1423714288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2002320024%_
                                                      '1)))
                                                  (_%target1423514285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2002320024%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1423714288%_)
                                                  (_%__match2010920110%_
                                                   _%e1419214816%_
                                                   _%hd1419314820%_
                                                   _%tl1419414823%_
                                                   _%e1419514826%_
                                                   _%hd1419614830%_
                                                   _%tl1419714833%_
                                                   _%__splice2002320024%_
                                                   _%target1423514285%_
                                                   _%tl1423714288%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1418614258%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1418614258%_)))))
                                  (if (gx#stx-pair/null? _%hd1419614830%_)
                                      (let ((_%__splice2002320024%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1419614830%_
                                              '0)))
                                        (let ((_%tl1423714288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2002320024%_
                                                  '1)))
                                              (_%target1423514285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2002320024%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1423714288%_)
                                              (_%__match2010920110%_
                                               _%e1419214816%_
                                               _%hd1419314820%_
                                               _%tl1419414823%_
                                               _%e1419514826%_
                                               _%hd1419614830%_
                                               _%tl1419714833%_
                                               _%__splice2002320024%_
                                               _%target1423514285%_
                                               _%tl1423714288%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418614258%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418614258%_)))))))))
                (if (gx#stx-pair? _%__stx2001220013%_)
                    (let ((_%e1419214816%_ (gx#syntax-e _%__stx2001220013%_)))
                      (let ((_%tl1419414823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1419214816%_)))
                            (_%hd1419314820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1419214816%_))))
                        (if (gx#stx-pair? _%tl1419414823%_)
                            (let ((_%e1419514826%_
                                   (gx#syntax-e _%tl1419414823%_)))
                              (let ((_%tl1419714833%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1419514826%_)))
                                    (_%hd1419614830%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1419514826%_))))
                                (if (gx#stx-pair? _%hd1419614830%_)
                                    (let ((_%e1419814836%_
                                           (gx#syntax-e _%hd1419614830%_)))
                                      (let ((_%tl1420014843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1419814836%_)))
                                            (_%hd1419914840%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1419814836%_))))
                                        (if (gx#stx-pair? _%tl1420014843%_)
                                            (let ((_%e1420114846%_
                                                   (gx#syntax-e
                                                    _%tl1420014843%_)))
                                              (let ((_%tl1420314853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1420114846%_)))
                                                    (_%hd1420214850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1420114846%_))))
                                                (if (gx#stx-null?
                                                     _%tl1420314853%_)
                                                    (_%__match2005320054%_
                                                     _%e1419214816%_
                                                     _%hd1419314820%_
                                                     _%tl1419414823%_
                                                     _%e1419514826%_
                                                     _%hd1419614830%_
                                                     _%tl1419714833%_
                                                     _%e1419814836%_
                                                     _%hd1419914840%_
                                                     _%tl1420014843%_
                                                     _%e1420114846%_
                                                     _%hd1420214850%_
                                                     _%tl1420314853%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1419914840%_)
                                                        (let ((_%e1421514738%_
                                                               (gx#syntax-e
                                                                _%hd1419914840%_)))
                                                          (let ((_%tl1421714745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1421514738%_)))
                        (_%hd1421614742%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1421514738%_))))
                    (if (gx#stx-pair/null? _%hd1419614830%_)
                        (let ((_%__splice2002320024%_
                               (gx#syntax-split-splice->vector
                                _%hd1419614830%_
                                '0)))
                          (let ((_%tl1423714288%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002320024%_ '1)))
                                (_%target1423514285%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002320024%_ '0))))
                            (if (gx#stx-null? _%tl1423714288%_)
                                (_%__match2010920110%_
                                 _%e1419214816%_
                                 _%hd1419314820%_
                                 _%tl1419414823%_
                                 _%e1419514826%_
                                 _%hd1419614830%_
                                 _%tl1419714833%_
                                 _%__splice2002320024%_
                                 _%target1423514285%_
                                 _%tl1423714288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1418614258%_)))))
                        (let () (declare (not safe)) (_%g1418614258%_)))))
                (if (gx#stx-pair/null? _%hd1419614830%_)
                    (let ((_%__splice2002320024%_
                           (gx#syntax-split-splice->vector
                            _%hd1419614830%_
                            '0)))
                      (let ((_%tl1423714288%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002320024%_ '1)))
                            (_%target1423514285%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002320024%_ '0))))
                        (if (gx#stx-null? _%tl1423714288%_)
                            (_%__match2010920110%_
                             _%e1419214816%_
                             _%hd1419314820%_
                             _%tl1419414823%_
                             _%e1419514826%_
                             _%hd1419614830%_
                             _%tl1419714833%_
                             _%__splice2002320024%_
                             _%target1423514285%_
                             _%tl1423714288%_)
                            (let () (declare (not safe)) (_%g1418614258%_)))))
                    (let () (declare (not safe)) (_%g1418614258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1419914840%_)
                                                (let ((_%e1421514738%_
                                                       (gx#syntax-e
                                                        _%hd1419914840%_)))
                                                  (let ((_%tl1421714745%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1421514738%_)))
                                                        (_%hd1421614742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1421514738%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1421714745%_)
                                                        (if (gx#stx-null?
                                                             _%tl1420014843%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1419714833%_)
                        (let ((_%__splice2001920020%_
                               (gx#syntax-split-splice->vector
                                _%tl1419714833%_
                                '0)))
                          (let ((_%tl1422014751%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2001920020%_ '1)))
                                (_%target1421814748%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2001920020%_ '0))))
                            (if (gx#stx-null? _%tl1422014751%_)
                                (_%__match2008920090%_
                                 _%e1419214816%_
                                 _%hd1419314820%_
                                 _%tl1419414823%_
                                 _%e1419514826%_
                                 _%hd1419614830%_
                                 _%tl1419714833%_
                                 _%e1419814836%_
                                 _%hd1419914840%_
                                 _%tl1420014843%_
                                 _%e1421514738%_
                                 _%hd1421614742%_
                                 _%tl1421714745%_
                                 _%__splice2001920020%_
                                 _%target1421814748%_
                                 _%tl1422014751%_)
                                (if (gx#stx-pair/null? _%hd1419614830%_)
                                    (let ((_%__splice2002320024%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1419614830%_
                                            '0)))
                                      (let ((_%tl1423714288%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2002320024%_
                                                '1)))
                                            (_%target1423514285%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2002320024%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1423714288%_)
                                            (_%__match2010920110%_
                                             _%e1419214816%_
                                             _%hd1419314820%_
                                             _%tl1419414823%_
                                             _%e1419514826%_
                                             _%hd1419614830%_
                                             _%tl1419714833%_
                                             _%__splice2002320024%_
                                             _%target1423514285%_
                                             _%tl1423714288%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1418614258%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1418614258%_))))))
                        (if (gx#stx-pair/null? _%hd1419614830%_)
                            (let ((_%__splice2002320024%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1419614830%_
                                    '0)))
                              (let ((_%tl1423714288%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2002320024%_
                                        '1)))
                                    (_%target1423514285%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2002320024%_
                                        '0))))
                                (if (gx#stx-null? _%tl1423714288%_)
                                    (_%__match2010920110%_
                                     _%e1419214816%_
                                     _%hd1419314820%_
                                     _%tl1419414823%_
                                     _%e1419514826%_
                                     _%hd1419614830%_
                                     _%tl1419714833%_
                                     _%__splice2002320024%_
                                     _%target1423514285%_
                                     _%tl1423714288%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1418614258%_)))))
                            (let () (declare (not safe)) (_%g1418614258%_))))
                    (if (gx#stx-pair/null? _%hd1419614830%_)
                        (let ((_%__splice2002320024%_
                               (gx#syntax-split-splice->vector
                                _%hd1419614830%_
                                '0)))
                          (let ((_%tl1423714288%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002320024%_ '1)))
                                (_%target1423514285%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002320024%_ '0))))
                            (if (gx#stx-null? _%tl1423714288%_)
                                (_%__match2010920110%_
                                 _%e1419214816%_
                                 _%hd1419314820%_
                                 _%tl1419414823%_
                                 _%e1419514826%_
                                 _%hd1419614830%_
                                 _%tl1419714833%_
                                 _%__splice2002320024%_
                                 _%target1423514285%_
                                 _%tl1423714288%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1418614258%_)))))
                        (let () (declare (not safe)) (_%g1418614258%_))))
                (if (gx#stx-pair/null? _%hd1419614830%_)
                    (let ((_%__splice2002320024%_
                           (gx#syntax-split-splice->vector
                            _%hd1419614830%_
                            '0)))
                      (let ((_%tl1423714288%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002320024%_ '1)))
                            (_%target1423514285%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002320024%_ '0))))
                        (if (gx#stx-null? _%tl1423714288%_)
                            (_%__match2010920110%_
                             _%e1419214816%_
                             _%hd1419314820%_
                             _%tl1419414823%_
                             _%e1419514826%_
                             _%hd1419614830%_
                             _%tl1419714833%_
                             _%__splice2002320024%_
                             _%target1423514285%_
                             _%tl1423714288%_)
                            (let () (declare (not safe)) (_%g1418614258%_)))))
                    (let () (declare (not safe)) (_%g1418614258%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1419614830%_)
                                                    (let ((_%__splice2002320024%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1419614830%_
                                                            '0)))
                                                      (let ((_%tl1423714288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2002320024%_ '1)))
                    (_%target1423514285%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2002320024%_ '0))))
                (if (gx#stx-null? _%tl1423714288%_)
                    (_%__match2010920110%_
                     _%e1419214816%_
                     _%hd1419314820%_
                     _%tl1419414823%_
                     _%e1419514826%_
                     _%hd1419614830%_
                     _%tl1419714833%_
                     _%__splice2002320024%_
                     _%target1423514285%_
                     _%tl1423714288%_)
                    (let () (declare (not safe)) (_%g1418614258%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1418614258%_)))))))
                                    (if (gx#stx-pair/null? _%hd1419614830%_)
                                        (let ((_%__splice2002320024%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1419614830%_
                                                '0)))
                                          (let ((_%tl1423714288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2002320024%_
                                                    '1)))
                                                (_%target1423514285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2002320024%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1423714288%_)
                                                (_%__match2010920110%_
                                                 _%e1419214816%_
                                                 _%hd1419314820%_
                                                 _%tl1419414823%_
                                                 _%e1419514826%_
                                                 _%hd1419614830%_
                                                 _%tl1419714833%_
                                                 _%__splice2002320024%_
                                                 _%target1423514285%_
                                                 _%tl1423714288%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1418614258%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1418614258%_))))))
                            (let () (declare (not safe)) (_%g1418614258%_)))))
                    (let () (declare (not safe)) (_%g1418614258%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15218%_)
        (let* ((_%__stx2011220113%_ _%$stx15218%_)
               (_%g1522415275%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2011220113%_))))
          (let ((_%__kont2011520116%_ (lambda () '#t))
                (_%__kont2011720118%_
                 (lambda (_%L15433%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1544915452%_ _%g1545015455%_)
                                        (cons _%g1544915452%_ _%g1545015455%_))
                                      '()
                                      _%L15433%_)))))
                (_%__kont2012120122%_
                 (lambda (_%L15342%_ _%L15344%_ _%L15345%_ _%L15346%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15345%_ '())
                               (cons (cons _%L15346%_
                                           (cons _%L15344%_
                                                 (foldr (lambda (_%g1536715370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1536815373%_)
                  (cons _%g1536715370%_ _%g1536815373%_))
                '()
                _%L15342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2018920190%_
                    (lambda (_%e1525215282%_
                             _%hd1525315286%_
                             _%tl1525415289%_
                             _%e1525515292%_
                             _%hd1525615296%_
                             _%tl1525715299%_
                             _%e1525815302%_
                             _%hd1525915306%_
                             _%tl1526015309%_
                             _%__splice2012320124%_
                             _%target1526115312%_
                             _%tl1526315315%_)
                      (letrec ((_%loop1526415318%_
                                (lambda (_%hd1526215322%_ _%body1526815325%_)
                                  (if (gx#stx-pair? _%hd1526215322%_)
                                      (let ((_%e1526515328%_
                                             (gx#syntax-e _%hd1526215322%_)))
                                        (let ((_%lp-tl1526715335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1526515328%_)))
                                              (_%lp-hd1526615332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1526515328%_))))
                                          (_%loop1526415318%_
                                           _%lp-tl1526715335%_
                                           (cons _%lp-hd1526615332%_
                                                 _%body1526815325%_))))
                                      (let ((_%body1526915338%_
                                             (reverse _%body1526815325%_)))
                                        (_%__kont2012120122%_
                                         _%body1526915338%_
                                         _%tl1526015309%_
                                         _%hd1525915306%_
                                         _%hd1525315286%_))))))
                        (_%loop1526415318%_ _%target1526115312%_ '()))))
                   (_%__match2016320164%_
                    (lambda (_%e1523315383%_
                             _%hd1523415387%_
                             _%tl1523515390%_
                             _%e1523615393%_
                             _%hd1523715397%_
                             _%tl1523815400%_
                             _%__splice2011920120%_
                             _%target1523915403%_
                             _%tl1524115406%_)
                      (letrec ((_%loop1524215409%_
                                (lambda (_%hd1524015413%_ _%body1524615416%_)
                                  (if (gx#stx-pair? _%hd1524015413%_)
                                      (let ((_%e1524315419%_
                                             (gx#syntax-e _%hd1524015413%_)))
                                        (let ((_%lp-tl1524515426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1524315419%_)))
                                              (_%lp-hd1524415423%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1524315419%_))))
                                          (_%loop1524215409%_
                                           _%lp-tl1524515426%_
                                           (cons _%lp-hd1524415423%_
                                                 _%body1524615416%_))))
                                      (let ((_%body1524715429%_
                                             (reverse _%body1524615416%_)))
                                        (_%__kont2011720118%_
                                         _%body1524715429%_))))))
                        (_%loop1524215409%_ _%target1523915403%_ '())))))
              (if (gx#stx-pair? _%__stx2011220113%_)
                  (let ((_%e1522615465%_ (gx#syntax-e _%__stx2011220113%_)))
                    (let ((_%tl1522815472%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1522615465%_)))
                          (_%hd1522715469%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1522615465%_))))
                      (if (gx#stx-pair? _%tl1522815472%_)
                          (let ((_%e1522915475%_
                                 (gx#syntax-e _%tl1522815472%_)))
                            (let ((_%tl1523115482%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1522915475%_)))
                                  (_%hd1523015479%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1522915475%_))))
                              (if (gx#stx-null? _%hd1523015479%_)
                                  (if (gx#stx-null? _%tl1523115482%_)
                                      (_%__kont2011520116%_)
                                      (if (gx#stx-pair/null? _%tl1523115482%_)
                                          (let ((_%__splice2011920120%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1523115482%_
                                                  '0)))
                                            (let ((_%tl1524115406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2011920120%_
                                                      '1)))
                                                  (_%target1523915403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2011920120%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1524115406%_)
                                                  (_%__match2016320164%_
                                                   _%e1522615465%_
                                                   _%hd1522715469%_
                                                   _%tl1522815472%_
                                                   _%e1522915475%_
                                                   _%hd1523015479%_
                                                   _%tl1523115482%_
                                                   _%__splice2011920120%_
                                                   _%target1523915403%_
                                                   _%tl1524115406%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1522415275%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1522415275%_))))
                                  (if (gx#stx-pair? _%hd1523015479%_)
                                      (let ((_%e1525815302%_
                                             (gx#syntax-e _%hd1523015479%_)))
                                        (let ((_%tl1526015309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1525815302%_)))
                                              (_%hd1525915306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1525815302%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1523115482%_)
                                              (let ((_%__splice2012320124%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1523115482%_
                                                      '0)))
                                                (let ((_%tl1526315315%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2012320124%_
                                                          '1)))
                                                      (_%target1526115312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2012320124%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1526315315%_)
                                                      (_%__match2018920190%_
                                                       _%e1522615465%_
                                                       _%hd1522715469%_
                                                       _%tl1522815472%_
                                                       _%e1522915475%_
                                                       _%hd1523015479%_
                                                       _%tl1523115482%_
                                                       _%e1525815302%_
                                                       _%hd1525915306%_
                                                       _%tl1526015309%_
                                                       _%__splice2012320124%_
                                                       _%target1526115312%_
                                                       _%tl1526315315%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1522415275%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1522415275%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1522415275%_))))))
                          (let () (declare (not safe)) (_%g1522415275%_)))))
                  (let () (declare (not safe)) (_%g1522415275%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15495%_)
        (let* ((_%__stx2019220193%_ _%$stx15495%_)
               (_%g1550615584%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2019220193%_))))
          (let ((_%__kont2019520196%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2019720198%_
                 (lambda (_%L15915%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L15915%_ '()))))
                (_%__kont2019920200%_
                 (lambda (_%L15863%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L15863%_ '()))))
                (_%__kont2020120202%_ (lambda (_%L15810%_) _%L15810%_))
                (_%__kont2020320204%_
                 (lambda (_%L15752%_ _%L15754%_) _%L15754%_))
                (_%__kont2020520206%_
                 (lambda (_%L15694%_ _%L15696%_ _%L15697%_ _%L15698%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L15698%_ _%L15694%_)
                                     (cons _%L15697%_ '()))))))
                (_%__kont2020720208%_
                 (lambda (_%L15640%_ _%L15642%_ _%L15643%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L15642%_
                               (cons (cons _%L15643%_ _%L15640%_) '())))))
                (_%__kont2020920210%_ (lambda (_%L15601%_) _%L15601%_)))
            (let* ((_%__match2033120332%_
                    (lambda (_%e1555715664%_
                             _%hd1555815668%_
                             _%tl1555915671%_
                             _%e1556015674%_
                             _%hd1556115678%_
                             _%tl1556215681%_
                             _%e1556315684%_
                             _%hd1556415688%_
                             _%tl1556515691%_)
                      (let ((_%L15694%_ _%tl1556515691%_)
                            (_%L15696%_ _%hd1556415688%_)
                            (_%L15697%_ _%hd1556115678%_)
                            (_%L15698%_ _%hd1555815668%_))
                        (if (gx#ellipsis? _%L15696%_)
                            (_%__kont2020520206%_
                             _%L15694%_
                             _%L15696%_
                             _%L15697%_
                             _%L15698%_)
                            (_%__kont2020720208%_
                             _%tl1556215681%_
                             _%hd1556115678%_
                             _%hd1555815668%_)))))
                   (_%__match2031320314%_
                    (lambda (_%e1554415722%_
                             _%hd1554515726%_
                             _%tl1554615729%_
                             _%e1554715732%_
                             _%hd1554815736%_
                             _%tl1554915739%_
                             _%e1555015742%_
                             _%hd1555115746%_
                             _%tl1555215749%_)
                      (let ((_%L15752%_ _%hd1555115746%_)
                            (_%L15754%_ _%hd1554815736%_))
                        (if (gx#ellipsis? _%L15752%_)
                            (_%__kont2020320204%_ _%L15752%_ _%L15754%_)
                            (_%__match2033120332%_
                             _%e1554415722%_
                             _%hd1554515726%_
                             _%tl1554615729%_
                             _%e1554715732%_
                             _%hd1554815736%_
                             _%tl1554915739%_
                             _%e1555015742%_
                             _%hd1555115746%_
                             _%tl1555215749%_))))))
              (if (gx#stx-pair? _%__stx2019220193%_)
                  (let ((_%e1550815937%_ (gx#syntax-e _%__stx2019220193%_)))
                    (let ((_%tl1551015944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1550815937%_)))
                          (_%hd1550915941%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1550815937%_))))
                      (if (gx#stx-null? _%tl1551015944%_)
                          (_%__kont2019520196%_)
                          (if (gx#stx-pair? _%tl1551015944%_)
                              (let ((_%e1551515895%_
                                     (gx#syntax-e _%tl1551015944%_)))
                                (let ((_%tl1551715902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1551515895%_)))
                                      (_%hd1551615899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1551515895%_))))
                                  (if (gx#identifier? _%hd1551615899%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20955_|
                                           _%hd1551615899%_)
                                          (if (gx#stx-pair? _%tl1551715902%_)
                                              (let ((_%e1551815905%_
                                                     (gx#syntax-e
                                                      _%tl1551715902%_)))
                                                (let ((_%tl1552015912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1551815905%_)))
                                                      (_%hd1551915909%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1551815905%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1552015912%_)
                                                      (_%__kont2019720198%_
                                                       _%hd1551915909%_)
                                                      (_%__match2033120332%_
                                                       _%e1550815937%_
                                                       _%hd1550915941%_
                                                       _%tl1551015944%_
                                                       _%e1551515895%_
                                                       _%hd1551615899%_
                                                       _%tl1551715902%_
                                                       _%e1551815905%_
                                                       _%hd1551915909%_
                                                       _%tl1552015912%_))))
                                              (_%__kont2020720208%_
                                               _%tl1551715902%_
                                               _%hd1551615899%_
                                               _%hd1550915941%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20956_|
                                               _%hd1551615899%_)
                                              (if (gx#stx-pair?
                                                   _%tl1551715902%_)
                                                  (let ((_%e1552815853%_
                                                         (gx#syntax-e
                                                          _%tl1551715902%_)))
                                                    (let ((_%tl1553015860%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1552815853%_)))
                                                          (_%hd1552915857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1552815853%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1553015860%_)
                                                          (_%__kont2019920200%_
                                                           _%hd1552915857%_)
                                                          (_%__match2033120332%_
                                                           _%e1550815937%_
                                                           _%hd1550915941%_
                                                           _%tl1551015944%_
                                                           _%e1551515895%_
                                                           _%hd1551615899%_
                                                           _%tl1551715902%_
                                                           _%e1552815853%_
                                                           _%hd1552915857%_
                                                           _%tl1553015860%_))))
                                                  (_%__kont2020720208%_
                                                   _%tl1551715902%_
                                                   _%hd1551615899%_
                                                   _%hd1550915941%_))
                                              (if (gx#stx-pair?
                                                   _%tl1551715902%_)
                                                  (let ((_%e1555015742%_
                                                         (gx#syntax-e
                                                          _%tl1551715902%_)))
                                                    (let ((_%tl1555215749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1555015742%_)))
                                                          (_%hd1555115746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1555015742%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1555215749%_)
                                                          (_%__match2031320314%_
                                                           _%e1550815937%_
                                                           _%hd1550915941%_
                                                           _%tl1551015944%_
                                                           _%e1551515895%_
                                                           _%hd1551615899%_
                                                           _%tl1551715902%_
                                                           _%e1555015742%_
                                                           _%hd1555115746%_
                                                           _%tl1555215749%_)
                                                          (_%__match2033120332%_
                                                           _%e1550815937%_
                                                           _%hd1550915941%_
                                                           _%tl1551015944%_
                                                           _%e1551515895%_
                                                           _%hd1551615899%_
                                                           _%tl1551715902%_
                                                           _%e1555015742%_
                                                           _%hd1555115746%_
                                                           _%tl1555215749%_))))
                                                  (_%__kont2020720208%_
                                                   _%tl1551715902%_
                                                   _%hd1551615899%_
                                                   _%hd1550915941%_))))
                                      (if (gx#stx-datum? _%hd1551615899%_)
                                          (let ((_%e1553815796%_
                                                 (gx#stx-e _%hd1551615899%_)))
                                            (if (equal? _%e1553815796%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1551715902%_)
                                                    (let ((_%e1553915800%_
                                                           (gx#syntax-e
                                                            _%tl1551715902%_)))
                                                      (let ((_%tl1554115807%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1553915800%_)))
                    (_%hd1554015804%_
                     (let () (declare (not safe)) (##car _%e1553915800%_))))
                (if (gx#stx-null? _%tl1554115807%_)
                    (_%__kont2020120202%_ _%hd1554015804%_)
                    (_%__match2033120332%_
                     _%e1550815937%_
                     _%hd1550915941%_
                     _%tl1551015944%_
                     _%e1551515895%_
                     _%hd1551615899%_
                     _%tl1551715902%_
                     _%e1553915800%_
                     _%hd1554015804%_
                     _%tl1554115807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2020720208%_
                                                     _%tl1551715902%_
                                                     _%hd1551615899%_
                                                     _%hd1550915941%_))
                                                (if (gx#stx-pair?
                                                     _%tl1551715902%_)
                                                    (let ((_%e1555015742%_
                                                           (gx#syntax-e
                                                            _%tl1551715902%_)))
                                                      (let ((_%tl1555215749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1555015742%_)))
                    (_%hd1555115746%_
                     (let () (declare (not safe)) (##car _%e1555015742%_))))
                (if (gx#stx-null? _%tl1555215749%_)
                    (_%__match2031320314%_
                     _%e1550815937%_
                     _%hd1550915941%_
                     _%tl1551015944%_
                     _%e1551515895%_
                     _%hd1551615899%_
                     _%tl1551715902%_
                     _%e1555015742%_
                     _%hd1555115746%_
                     _%tl1555215749%_)
                    (_%__match2033120332%_
                     _%e1550815937%_
                     _%hd1550915941%_
                     _%tl1551015944%_
                     _%e1551515895%_
                     _%hd1551615899%_
                     _%tl1551715902%_
                     _%e1555015742%_
                     _%hd1555115746%_
                     _%tl1555215749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2020720208%_
                                                     _%tl1551715902%_
                                                     _%hd1551615899%_
                                                     _%hd1550915941%_))))
                                          (if (gx#stx-pair? _%tl1551715902%_)
                                              (let ((_%e1555015742%_
                                                     (gx#syntax-e
                                                      _%tl1551715902%_)))
                                                (let ((_%tl1555215749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1555015742%_)))
                                                      (_%hd1555115746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1555015742%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1555215749%_)
                                                      (_%__match2031320314%_
                                                       _%e1550815937%_
                                                       _%hd1550915941%_
                                                       _%tl1551015944%_
                                                       _%e1551515895%_
                                                       _%hd1551615899%_
                                                       _%tl1551715902%_
                                                       _%e1555015742%_
                                                       _%hd1555115746%_
                                                       _%tl1555215749%_)
                                                      (_%__match2033120332%_
                                                       _%e1550815937%_
                                                       _%hd1550915941%_
                                                       _%tl1551015944%_
                                                       _%e1551515895%_
                                                       _%hd1551615899%_
                                                       _%tl1551715902%_
                                                       _%e1555015742%_
                                                       _%hd1555115746%_
                                                       _%tl1555215749%_))))
                                              (_%__kont2020720208%_
                                               _%tl1551715902%_
                                               _%hd1551615899%_
                                               _%hd1550915941%_))))))
                              (_%__kont2020920210%_ _%tl1551015944%_)))))
                  (let () (declare (not safe)) (_%g1550615584%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15955%_)
        (letrec ((_%simple-quote?15958%_
                  (lambda (_%e16650%_)
                    (let* ((_%__stx2035220353%_ _%e16650%_)
                           (_%g1665816695%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2035220353%_))))
                      (let ((_%__kont2035520356%_ (lambda () '#f))
                            (_%__kont2035720358%_ (lambda () '#f))
                            (_%__kont2035920360%_
                             (lambda (_%L16809%_ _%L16811%_)
                               (if (_%simple-quote?15958%_ _%L16811%_)
                                   (_%simple-quote?15958%_ _%L16809%_)
                                   '#f)))
                            (_%__kont2036120362%_
                             (lambda (_%L16770%_)
                               (_%simple-quote?15958%_
                                (foldr (lambda (_%g1678316786%_
                                                _%g1678416789%_)
                                         (cons _%g1678316786%_
                                               _%g1678416789%_))
                                       '()
                                       _%L16770%_))))
                            (_%__kont2036520366%_
                             (lambda (_%L16717%_)
                               (_%simple-quote?15958%_ _%L16717%_)))
                            (_%__kont2036720368%_ (lambda () '#t)))
                        (let* ((_%g1665616729%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2035220353%_)
                                      (let ((_%e1668916713%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2035220353%_))))
                                        (_%__kont2036520366%_ _%e1668916713%_))
                                      (_%__kont2036720368%_))))
                               (_%__match2042320424%_
                                (lambda (_%e1667816736%_
                                         _%__splice2036320364%_
                                         _%target1667916740%_
                                         _%tl1668116743%_)
                                  (letrec ((_%loop1668216746%_
                                            (lambda (_%hd1668016750%_
                                                     _%e1668616753%_)
                                              (if (gx#stx-pair?
                                                   _%hd1668016750%_)
                                                  (let ((_%e1668316756%_
                                                         (gx#syntax-e
                                                          _%hd1668016750%_)))
                                                    (let ((_%lp-tl1668516763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1668316756%_)))
                                                          (_%lp-hd1668416760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1668316756%_))))
                                                      (_%loop1668216746%_
                                                       _%lp-tl1668516763%_
                                                       (cons _%lp-hd1668416760%_
                                                             _%e1668616753%_))))
                                                  (let ((_%e1668716766%_
                                                         (reverse _%e1668616753%_)))
                                                    (_%__kont2036120362%_
                                                     _%e1668716766%_))))))
                                    (_%loop1668216746%_
                                     _%target1667916740%_
                                     '()))))
                               (_%g1665516792%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2035220353%_)
                                      (let ((_%e1667816736%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2035220353%_))))
                                        (if (gx#stx-pair/null? _%e1667816736%_)
                                            (let ((_%__splice2036320364%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1667816736%_
                                                    '0)))
                                              (let ((_%tl1668116743%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2036320364%_
                                                        '1)))
                                                    (_%target1667916740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2036320364%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1668116743%_)
                                                    (_%__match2042320424%_
                                                     _%e1667816736%_
                                                     _%__splice2036320364%_
                                                     _%target1667916740%_
                                                     _%tl1668116743%_)
                                                    (_%__kont2036720368%_))))
                                            (_%__kont2036720368%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1665616729%_))))))
                          (if (gx#stx-pair? _%__stx2035220353%_)
                              (let ((_%e1666016860%_
                                     (gx#syntax-e _%__stx2035220353%_)))
                                (let ((_%tl1666216867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1666016860%_)))
                                      (_%hd1666116864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1666016860%_))))
                                  (if (gx#identifier? _%hd1666116864%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20957_|
                                           _%hd1666116864%_)
                                          (if (gx#stx-pair? _%tl1666216867%_)
                                              (let ((_%e1666316870%_
                                                     (gx#syntax-e
                                                      _%tl1666216867%_)))
                                                (let ((_%tl1666516877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1666316870%_)))
                                                      (_%hd1666416874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1666316870%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1666516877%_)
                                                      (_%__kont2035520356%_)
                                                      (_%__kont2035920360%_
                                                       _%tl1666216867%_
                                                       _%hd1666116864%_))))
                                              (_%__kont2035920360%_
                                               _%tl1666216867%_
                                               _%hd1666116864%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20958_|
                                               _%hd1666116864%_)
                                              (if (gx#stx-pair?
                                                   _%tl1666216867%_)
                                                  (let ((_%e1666916839%_
                                                         (gx#syntax-e
                                                          _%tl1666216867%_)))
                                                    (let ((_%tl1667116846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1666916839%_)))
                                                          (_%hd1667016843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1666916839%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1667116846%_)
                                                          (_%__kont2035720358%_)
                                                          (_%__kont2035920360%_
                                                           _%tl1666216867%_
                                                           _%hd1666116864%_))))
                                                  (_%__kont2035920360%_
                                                   _%tl1666216867%_
                                                   _%hd1666116864%_))
                                              (_%__kont2035920360%_
                                               _%tl1666216867%_
                                               _%hd1666116864%_)))
                                      (_%__kont2035920360%_
                                       _%tl1666216867%_
                                       _%hd1666116864%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1665516792%_))))))))
                 (_%generate15960%_
                  (lambda (_%e16022%_ _%d16024%_)
                    (let* ((_%__stx2043020431%_ _%e16022%_)
                           (_%g1603316091%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2043020431%_))))
                      (let ((_%__kont2043320434%_
                             (lambda (_%L16602%_)
                               (let* ((_%g1661516623%_
                                       (lambda (_%g1661616619%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1661616619%_)))
                                      (_%g1661416642%_
                                       (lambda (_%g1661616627%_)
                                         ((lambda (_%L16630%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L16630%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1661616627%_))))
                                 (_%g1661416642%_
                                  (_%generate15960%_
                                   _%L16602%_
                                   (fx1+ _%d16024%_))))))
                            (_%__kont2043520436%_
                             (lambda (_%L16531%_)
                               (if (fxzero? _%d16024%_)
                                   _%L16531%_
                                   (let* ((_%g1654416552%_
                                           (lambda (_%g1654516548%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1654516548%_)))
                                          (_%g1654316571%_
                                           (lambda (_%g1654516556%_)
                                             ((lambda (_%L16559%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L16559%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1654516556%_))))
                                     (_%g1654316571%_
                                      (_%generate15960%_
                                       _%L16531%_
                                       (fx1- _%d16024%_)))))))
                            (_%__kont2043720438%_
                             (lambda (_%L16460%_)
                               (if (fxzero? _%d16024%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16460%_ '()))))
                                   (let* ((_%g1647316481%_
                                           (lambda (_%g1647416477%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1647416477%_)))
                                          (_%g1647216500%_
                                           (lambda (_%g1647416485%_)
                                             ((lambda (_%L16488%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16488%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1647416485%_))))
                                     (_%g1647216500%_
                                      (_%generate15960%_
                                       _%L16460%_
                                       (fx1- _%d16024%_)))))))
                            (_%__kont2043920440%_
                             (lambda (_%L16385%_ _%L16387%_)
                               (let* ((_%g1640216410%_
                                       (lambda (_%g1640316406%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1640316406%_)))
                                      (_%g1640116429%_
                                       (lambda (_%g1640316414%_)
                                         ((lambda (_%L16417%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16417%_
                                                              (cons _%L16387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1640316414%_))))
                                 (_%g1640116429%_
                                  (_%generate15960%_ _%L16385%_ _%d16024%_)))))
                            (_%__kont2044120442%_
                             (lambda (_%L16271%_ _%L16273%_)
                               (let* ((_%g1628416299%_
                                       (lambda (_%g1628516295%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1628516295%_)))
                                      (_%g1628316344%_
                                       (lambda (_%g1628516303%_)
                                         (if (gx#stx-pair? _%g1628516303%_)
                                             (let ((_%e1628816306%_
                                                    (gx#syntax-e
                                                     _%g1628516303%_)))
                                               (let ((_%hd1628916310%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1628816306%_)))
                                                     (_%tl1629016313%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1628816306%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1629016313%_)
                                                     (let ((_%e1629116316%_
                                                            (gx#syntax-e
                                                             _%tl1629016313%_)))
                                                       (let ((_%hd1629216320%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1629116316%_)))
                     (_%tl1629316323%_
                      (let () (declare (not safe)) (##cdr _%e1629116316%_))))
                 (if (gx#stx-null? _%tl1629316323%_)
                     ((lambda (_%L16326%_ _%L16328%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16328%_ (cons _%L16326%_ '()))))
                      _%hd1629216320%_
                      _%hd1628916310%_)
                     (_%g1628416299%_ _%g1628516303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1628416299%_
                                                      _%g1628516303%_))))
                                             (_%g1628416299%_
                                              _%g1628516303%_)))))
                                 (_%g1628316344%_
                                  (list (_%generate15960%_
                                         _%L16273%_
                                         _%d16024%_)
                                        (_%generate15960%_
                                         _%L16271%_
                                         _%d16024%_))))))
                            (_%__kont2044320444%_
                             (lambda (_%L16201%_)
                               (let* ((_%g1621516223%_
                                       (lambda (_%g1621616219%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1621616219%_)))
                                      (_%g1621416242%_
                                       (lambda (_%g1621616227%_)
                                         ((lambda (_%L16230%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16230%_ '())))
                                          _%g1621616227%_))))
                                 (_%g1621416242%_
                                  (_%generate15960%_
                                   (foldr (lambda (_%g1624516248%_
                                                   _%g1624616251%_)
                                            (cons _%g1624516248%_
                                                  _%g1624616251%_))
                                          '()
                                          _%L16201%_)
                                   _%d16024%_)))))
                            (_%__kont2044720448%_
                             (lambda (_%L16119%_)
                               (let* ((_%g1612916137%_
                                       (lambda (_%g1613016133%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1613016133%_)))
                                      (_%g1612816156%_
                                       (lambda (_%g1613016141%_)
                                         ((lambda (_%L16144%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16144%_ '())))
                                          _%g1613016141%_))))
                                 (_%g1612816156%_
                                  (_%generate15960%_ _%L16119%_ _%d16024%_)))))
                            (_%__kont2044920450%_
                             (lambda (_%L16098%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16098%_ '())))))
                        (let* ((_%g1603116160%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2043020431%_)
                                      (let ((_%e1608416115%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2043020431%_))))
                                        (_%__kont2044720448%_ _%e1608416115%_))
                                      (_%__kont2044920450%_
                                       _%__stx2043020431%_))))
                               (_%__match2054920550%_
                                (lambda (_%e1607316167%_
                                         _%__splice2044520446%_
                                         _%target1607416171%_
                                         _%tl1607616174%_)
                                  (letrec ((_%loop1607716177%_
                                            (lambda (_%hd1607516181%_
                                                     _%e1608116184%_)
                                              (if (gx#stx-pair?
                                                   _%hd1607516181%_)
                                                  (let ((_%e1607816187%_
                                                         (gx#syntax-e
                                                          _%hd1607516181%_)))
                                                    (let ((_%lp-tl1608016194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1607816187%_)))
                                                          (_%lp-hd1607916191%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1607816187%_))))
                                                      (_%loop1607716177%_
                                                       _%lp-tl1608016194%_
                                                       (cons _%lp-hd1607916191%_
                                                             _%e1608116184%_))))
                                                  (let ((_%e1608216197%_
                                                         (reverse _%e1608116184%_)))
                                                    (_%__kont2044320444%_
                                                     _%e1608216197%_))))))
                                    (_%loop1607716177%_
                                     _%target1607416171%_
                                     '()))))
                               (_%g1603016254%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2043020431%_)
                                      (let ((_%e1607316167%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2043020431%_))))
                                        (if (gx#stx-pair/null? _%e1607316167%_)
                                            (let ((_%__splice2044520446%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1607316167%_
                                                    '0)))
                                              (let ((_%tl1607616174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044520446%_
                                                        '1)))
                                                    (_%target1607416171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044520446%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1607616174%_)
                                                    (_%__match2054920550%_
                                                     _%e1607316167%_
                                                     _%__splice2044520446%_
                                                     _%target1607416171%_
                                                     _%tl1607616174%_)
                                                    (_%__kont2044920450%_
                                                     _%__stx2043020431%_))))
                                            (_%__kont2044920450%_
                                             _%__stx2043020431%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1603116160%_))))))
                          (if (gx#stx-pair? _%__stx2043020431%_)
                              (let ((_%e1603616582%_
                                     (gx#syntax-e _%__stx2043020431%_)))
                                (let ((_%tl1603816589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1603616582%_)))
                                      (_%hd1603716586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1603616582%_))))
                                  (if (gx#identifier? _%hd1603716586%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20959_|
                                           _%hd1603716586%_)
                                          (if (gx#stx-pair? _%tl1603816589%_)
                                              (let ((_%e1603916592%_
                                                     (gx#syntax-e
                                                      _%tl1603816589%_)))
                                                (let ((_%tl1604116599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1603916592%_)))
                                                      (_%hd1604016596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1603916592%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1604116599%_)
                                                      (_%__kont2043320434%_
                                                       _%hd1604016596%_)
                                                      (_%__kont2044120442%_
                                                       _%tl1603816589%_
                                                       _%hd1603716586%_))))
                                              (_%__kont2044120442%_
                                               _%tl1603816589%_
                                               _%hd1603716586%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20960_|
                                               _%hd1603716586%_)
                                              (if (gx#stx-pair?
                                                   _%tl1603816589%_)
                                                  (let ((_%e1604616521%_
                                                         (gx#syntax-e
                                                          _%tl1603816589%_)))
                                                    (let ((_%tl1604816528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1604616521%_)))
                                                          (_%hd1604716525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1604616521%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1604816528%_)
                                                          (_%__kont2043520436%_
                                                           _%hd1604716525%_)
                                                          (_%__kont2044120442%_
                                                           _%tl1603816589%_
                                                           _%hd1603716586%_))))
                                                  (_%__kont2044120442%_
                                                   _%tl1603816589%_
                                                   _%hd1603716586%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20961_|
                                                   _%hd1603716586%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1603816589%_)
                                                      (let ((_%e1605316450%_
                                                             (gx#syntax-e
                                                              _%tl1603816589%_)))
                                                        (let ((_%tl1605516457%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1605316450%_)))
                      (_%hd1605416454%_
                       (let () (declare (not safe)) (##car _%e1605316450%_))))
                  (if (gx#stx-null? _%tl1605516457%_)
                      (_%__kont2043720438%_ _%hd1605416454%_)
                      (_%__kont2044120442%_
                       _%tl1603816589%_
                       _%hd1603716586%_))))
              (_%__kont2044120442%_ _%tl1603816589%_ _%hd1603716586%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2044120442%_
                                                   _%tl1603816589%_
                                                   _%hd1603716586%_))))
                                      (if (gx#stx-pair? _%hd1603716586%_)
                                          (let ((_%e1606116365%_
                                                 (gx#syntax-e
                                                  _%hd1603716586%_)))
                                            (let ((_%tl1606316372%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1606116365%_)))
                                                  (_%hd1606216369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1606116365%_))))
                                              (if (gx#identifier?
                                                   _%hd1606216369%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g20962_|
                                                       _%hd1606216369%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1606316372%_)
                                                          (let ((_%e1606416375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1606316372%_)))
                    (let ((_%tl1606616382%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1606416375%_)))
                          (_%hd1606516379%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1606416375%_))))
                      (if (gx#stx-null? _%tl1606616382%_)
                          (if (fxzero? _%d16024%_)
                              (let ((_%L16385%_ _%tl1603816589%_)
                                    (_%L16387%_ _%hd1606516379%_))
                                (_%__kont2043920440%_ _%L16385%_ _%L16387%_))
                              (_%__kont2044120442%_
                               _%tl1603816589%_
                               _%hd1603716586%_))
                          (_%__kont2044120442%_
                           _%tl1603816589%_
                           _%hd1603716586%_))))
                  (_%__kont2044120442%_ _%tl1603816589%_ _%hd1603716586%_))
              (_%__kont2044120442%_ _%tl1603816589%_ _%hd1603716586%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2044120442%_
                                                   _%tl1603816589%_
                                                   _%hd1603716586%_))))
                                          (_%__kont2044120442%_
                                           _%tl1603816589%_
                                           _%hd1603716586%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1603016254%_)))))))))
          (let* ((_%g1596215976%_
                  (lambda (_%g1596315972%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1596315972%_)))
                 (_%g1596116018%_
                  (lambda (_%g1596315980%_)
                    (if (gx#stx-pair? _%g1596315980%_)
                        (let ((_%e1596515983%_ (gx#syntax-e _%g1596315980%_)))
                          (let ((_%hd1596615987%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1596515983%_)))
                                (_%tl1596715990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1596515983%_))))
                            (if (gx#stx-pair? _%tl1596715990%_)
                                (let ((_%e1596815993%_
                                       (gx#syntax-e _%tl1596715990%_)))
                                  (let ((_%hd1596915997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1596815993%_)))
                                        (_%tl1597016000%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1596815993%_))))
                                    (if (gx#stx-null? _%tl1597016000%_)
                                        ((lambda (_%L16003%_)
                                           (if (_%simple-quote?15958%_
                                                _%L16003%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16003%_ '()))
                                               (_%generate15960%_
                                                _%L16003%_
                                                '0)))
                                         _%hd1596915997%_)
                                        (_%g1596215976%_ _%g1596315980%_))))
                                (_%g1596215976%_ _%g1596315980%_))))
                        (_%g1596215976%_ _%g1596315980%_)))))
            (_%g1596116018%_ _%stx15955%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16890%_)
        (let* ((_%__stx2055620557%_ _%$stx16890%_)
               (_%g1689616930%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2055620557%_))))
          (let ((_%__kont2055920560%_
                 (lambda (_%L17062%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17062%_ '()))))
                (_%__kont2056120562%_
                 (lambda (_%L17018%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17018%_ '()))))
                (_%__kont2056320564%_
                 (lambda (_%L16957%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L16957%_ '())))
                               '())))))
            (let ((_%__match2057920580%_
                   (lambda (_%e1689917042%_
                            _%hd1690017046%_
                            _%tl1690117049%_
                            _%e1690217052%_
                            _%hd1690317056%_
                            _%tl1690417059%_)
                     (let ((_%L17062%_ _%hd1690317056%_))
                       (if (gx#stx-datum? _%L17062%_)
                           (_%__kont2055920560%_ _%L17062%_)
                           (if (gx#stx-pair? _%hd1690317056%_)
                               (let ((_%e1691216998%_
                                      (gx#syntax-e _%hd1690317056%_)))
                                 (let ((_%tl1691417005%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1691216998%_)))
                                       (_%hd1691317002%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1691216998%_))))
                                   (if (gx#identifier? _%hd1691317002%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g20963_|
                                            _%hd1691317002%_)
                                           (if (gx#stx-pair? _%tl1691417005%_)
                                               (let ((_%e1691517008%_
                                                      (gx#syntax-e
                                                       _%tl1691417005%_)))
                                                 (let ((_%tl1691717015%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1691517008%_)))
                                                       (_%hd1691617012%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1691517008%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1691717015%_)
                                                       (_%__kont2056120562%_
                                                        _%hd1691617012%_)
                                                       (_%__kont2056320564%_
                                                        _%hd1690317056%_))))
                                               (_%__kont2056320564%_
                                                _%hd1690317056%_))
                                           (_%__kont2056320564%_
                                            _%hd1690317056%_))
                                       (_%__kont2056320564%_
                                        _%hd1690317056%_))))
                               (_%__kont2056320564%_ _%hd1690317056%_)))))))
              (if (gx#stx-pair? _%__stx2055620557%_)
                  (let ((_%e1689917042%_ (gx#syntax-e _%__stx2055620557%_)))
                    (let ((_%tl1690117049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1689917042%_)))
                          (_%hd1690017046%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1689917042%_))))
                      (if (gx#stx-pair? _%tl1690117049%_)
                          (let ((_%e1690217052%_
                                 (gx#syntax-e _%tl1690117049%_)))
                            (let ((_%tl1690417059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1690217052%_)))
                                  (_%hd1690317056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1690217052%_))))
                              (if (gx#stx-null? _%tl1690417059%_)
                                  (_%__match2057920580%_
                                   _%e1689917042%_
                                   _%hd1690017046%_
                                   _%tl1690117049%_
                                   _%e1690217052%_
                                   _%hd1690317056%_
                                   _%tl1690417059%_)
                                  (if (gx#stx-pair? _%hd1690317056%_)
                                      (let ((_%e1691216998%_
                                             (gx#syntax-e _%hd1690317056%_)))
                                        (let ((_%tl1691417005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1691216998%_)))
                                              (_%hd1691317002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1691216998%_))))
                                          (if (gx#identifier? _%hd1691317002%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20963_|
                                                   _%hd1691317002%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1691417005%_)
                                                      (let ((_%e1691517008%_
                                                             (gx#syntax-e
                                                              _%tl1691417005%_)))
                                                        (let ((_%tl1691717015%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1691517008%_)))
                      (_%hd1691617012%_
                       (let () (declare (not safe)) (##car _%e1691517008%_))))
                  (let () (declare (not safe)) (_%g1689616930%_))))
              (let () (declare (not safe)) (_%g1689616930%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1689616930%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1689616930%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1689616930%_))))))
                          (let () (declare (not safe)) (_%g1689616930%_)))))
                  (let () (declare (not safe)) (_%g1689616930%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17079%_)
        (let* ((_%__stx2062820629%_ _%$stx17079%_)
               (_%g1708517119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2062820629%_))))
          (let ((_%__kont2063120632%_
                 (lambda (_%L17251%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17251%_ '()))))
                (_%__kont2063320634%_
                 (lambda (_%L17207%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17207%_ '()))))
                (_%__kont2063520636%_
                 (lambda (_%L17146%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17146%_ '())))
                               '())))))
            (let ((_%__match2065120652%_
                   (lambda (_%e1708817231%_
                            _%hd1708917235%_
                            _%tl1709017238%_
                            _%e1709117241%_
                            _%hd1709217245%_
                            _%tl1709317248%_)
                     (let ((_%L17251%_ _%hd1709217245%_))
                       (if (gx#stx-datum? _%L17251%_)
                           (_%__kont2063120632%_ _%L17251%_)
                           (if (gx#stx-pair? _%hd1709217245%_)
                               (let ((_%e1710117187%_
                                      (gx#syntax-e _%hd1709217245%_)))
                                 (let ((_%tl1710317194%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1710117187%_)))
                                       (_%hd1710217191%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1710117187%_))))
                                   (if (gx#identifier? _%hd1710217191%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g20964_|
                                            _%hd1710217191%_)
                                           (if (gx#stx-pair? _%tl1710317194%_)
                                               (let ((_%e1710417197%_
                                                      (gx#syntax-e
                                                       _%tl1710317194%_)))
                                                 (let ((_%tl1710617204%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1710417197%_)))
                                                       (_%hd1710517201%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1710417197%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1710617204%_)
                                                       (_%__kont2063320634%_
                                                        _%hd1710517201%_)
                                                       (_%__kont2063520636%_
                                                        _%hd1709217245%_))))
                                               (_%__kont2063520636%_
                                                _%hd1709217245%_))
                                           (_%__kont2063520636%_
                                            _%hd1709217245%_))
                                       (_%__kont2063520636%_
                                        _%hd1709217245%_))))
                               (_%__kont2063520636%_ _%hd1709217245%_)))))))
              (if (gx#stx-pair? _%__stx2062820629%_)
                  (let ((_%e1708817231%_ (gx#syntax-e _%__stx2062820629%_)))
                    (let ((_%tl1709017238%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1708817231%_)))
                          (_%hd1708917235%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1708817231%_))))
                      (if (gx#stx-pair? _%tl1709017238%_)
                          (let ((_%e1709117241%_
                                 (gx#syntax-e _%tl1709017238%_)))
                            (let ((_%tl1709317248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1709117241%_)))
                                  (_%hd1709217245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1709117241%_))))
                              (if (gx#stx-null? _%tl1709317248%_)
                                  (_%__match2065120652%_
                                   _%e1708817231%_
                                   _%hd1708917235%_
                                   _%tl1709017238%_
                                   _%e1709117241%_
                                   _%hd1709217245%_
                                   _%tl1709317248%_)
                                  (if (gx#stx-pair? _%hd1709217245%_)
                                      (let ((_%e1710117187%_
                                             (gx#syntax-e _%hd1709217245%_)))
                                        (let ((_%tl1710317194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1710117187%_)))
                                              (_%hd1710217191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1710117187%_))))
                                          (if (gx#identifier? _%hd1710217191%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20964_|
                                                   _%hd1710217191%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1710317194%_)
                                                      (let ((_%e1710417197%_
                                                             (gx#syntax-e
                                                              _%tl1710317194%_)))
                                                        (let ((_%tl1710617204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1710417197%_)))
                      (_%hd1710517201%_
                       (let () (declare (not safe)) (##car _%e1710417197%_))))
                  (let () (declare (not safe)) (_%g1708517119%_))))
              (let () (declare (not safe)) (_%g1708517119%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1708517119%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1708517119%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1708517119%_))))))
                          (let () (declare (not safe)) (_%g1708517119%_)))))
                  (let () (declare (not safe)) (_%g1708517119%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17268%_)
        (letrec ((_%generate17271%_
                  (lambda (_%rest17390%_)
                    (let _%lp17393%_ ((_%rest17396%_ _%rest17390%_)
                                      (_%hd17398%_ '())
                                      (_%body17399%_ '()))
                      (let* ((_%__stx2072020721%_ _%rest17396%_)
                             (_%g1740217414%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2072020721%_))))
                        (let ((_%__kont2072320724%_
                               (lambda (_%L17442%_ _%L17444%_)
                                 (let* ((_%__stx2070020701%_ _%L17444%_)
                                        (_%g1746117468%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2070020701%_))))
                                   (let ((_%__kont2070320704%_
                                          (lambda ()
                                            (let ((_%arg17504%_ (gx#genident)))
                                              (_%lp17393%_
                                               _%L17442%_
                                               (cons _%arg17504%_ _%hd17398%_)
                                               (cons _%arg17504%_
                                                     _%body17399%_)))))
                                         (_%__kont2070520706%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17442%_)
                                                (let ((_%tail17490%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17490%_
                         _%hd17398%_)
                  (foldl cons (list _%tail17490%_) _%body17399%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17268%_
                                                 _%L17444%_))))
                                         (_%__kont2070720708%_
                                          (lambda ()
                                            (_%lp17393%_
                                             _%L17442%_
                                             _%hd17398%_
                                             (cons _%L17444%_
                                                   _%body17399%_)))))
                                     (if (gx#identifier? _%__stx2070020701%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g20965_|
                                              _%__stx2070020701%_)
                                             (_%__kont2070320704%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g20966_|
                                                  _%__stx2070020701%_)
                                                 (_%__kont2070520706%_)
                                                 (_%__kont2070720708%_)))
                                         (_%__kont2070720708%_))))))
                              (_%__kont2072520726%_
                               (lambda ()
                                 (values (reverse _%hd17398%_)
                                         (reverse _%body17399%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2072020721%_)
                              (let ((_%e1740617432%_
                                     (gx#syntax-e _%__stx2072020721%_)))
                                (let ((_%tl1740817439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1740617432%_)))
                                      (_%hd1740717436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1740617432%_))))
                                  (_%__kont2072320724%_
                                   _%tl1740817439%_
                                   _%hd1740717436%_)))
                              (_%__kont2072520726%_))))))))
          (let* ((_%g1727417285%_
                  (lambda (_%g1727517281%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1727517281%_)))
                 (_%g1727317386%_
                  (lambda (_%g1727517289%_)
                    (if (gx#stx-pair? _%g1727517289%_)
                        (let ((_%e1727717292%_ (gx#syntax-e _%g1727517289%_)))
                          (let ((_%hd1727817296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1727717292%_)))
                                (_%tl1727917299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1727717292%_))))
                            ((lambda (_%L17302%_)
                               (if (and (gx#stx-list? _%L17302%_)
                                        (not (gx#stx-null? _%L17302%_)))
                                   (let ((_g20967_
                                          (_%generate17271%_ _%L17302%_)))
                                     (begin
                                       (let ((_g20968_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20967_)
                                                    (##values-length _g20967_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20968_ 3)))
                                             (error "Context expects 3 values"
                                                    _g20968_)))
                                       (let ((_%hd17315%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20967_ 0)))
                                             (_%body17317%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20967_ 1)))
                                             (_%tail?17318%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20967_ 2))))
                                         (let* ((_%g1732017328%_
                                                 (lambda (_%g1732117324%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1732117324%_)))
                                                (_%g1731917382%_
                                                 (lambda (_%g1732117332%_)
                                                   ((lambda (_%L17335%_)
                                                      (let* ((_%g1734817356%_
                                                              (lambda (_%g1734917352%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1734917352%_)))
                     (_%g1734717378%_
                      (lambda (_%g1734917360%_)
                        ((lambda (_%L17363%_)
                           (if _%tail?17318%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17335%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17363%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17335%_ (cons _%L17363%_ '())))))
                         _%g1734917360%_))))
                (_%g1734717378%_ _%body17317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1732117332%_))))
                                           (_%g1731917382%_ _%hd17315%_)))))
                                   (_%g1727417285%_ _%g1727517289%_)))
                             _%tl1727917299%_)))
                        (_%g1727417285%_ _%g1727517289%_)))))
            (_%g1727317386%_ _%stx17268%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17516%_)
        (let ((_%g1751917526%_
               (lambda (_%g1752017522%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1752017522%_))))
          (_%g1751917526%_ _%$stx17516%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17530%_)
        (let ((_%g1753317540%_
               (lambda (_%g1753417536%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1753417536%_))))
          (_%g1753317540%_ _%$stx17530%_))))))

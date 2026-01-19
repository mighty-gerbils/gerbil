(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20917_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20918_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20919_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
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
  (define |gerbil/core/sugar~Sugar-2[1]#_g20949_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20956_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20957_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20958_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20959_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20960_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20961_|
    (##structure
     gx#syntax-quote::t
     'unquote
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
     'unquote-splicing
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
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20966_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20967_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5384%_)
        (letrec ((_%simple-lambda?5387%_
                  (lambda (_%hd8793%_)
                    (gx#stx-andmap gx#identifier? _%hd8793%_)))
                 (_%opt-lambda?5389%_
                  (lambda (_%hd8645%_)
                    (let _%lp8648%_ ((_%rest8651%_ _%hd8645%_)
                                     (_%opt?8653%_ '#f))
                      (let* ((_%__stx1903519036%_ _%rest8651%_)
                             (_%g86568668%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1903519036%_))))
                        (let ((_%__kont1903819039%_
                               (lambda (_%L8700%_ _%L8702%_)
                                 (let* ((_%__stx1901119012%_ _%L8702%_)
                                        (_%g87188732%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1901119012%_))))
                                   (let ((_%__kont1901419015%_
                                          (lambda (_%L8770%_)
                                            (_%lp8648%_ _%L8700%_ '#t)))
                                         (_%__kont1901619017%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8702%_)
                                                (if (not _%opt?8653%_)
                                                    (_%lp8648%_ _%L8700%_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1903219033%_
                                            (lambda (_%e87218750%_
                                                     _%hd87228754%_
                                                     _%tl87238757%_
                                                     _%e87248760%_
                                                     _%hd87258764%_
                                                     _%tl87268767%_)
                                              (let ((_%L8770%_ _%hd87228754%_))
                                                (if (gx#identifier? _%L8770%_)
                                                    (_%__kont1901419015%_
                                                     _%L8770%_)
                                                    (_%__kont1901619017%_))))))
                                       (if (gx#stx-pair? _%__stx1901119012%_)
                                           (let ((_%e87218750%_
                                                  (gx#syntax-e
                                                   _%__stx1901119012%_)))
                                             (let ((_%tl87238757%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87218750%_)))
                                                   (_%hd87228754%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87218750%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87238757%_)
                                                   (let ((_%e87248760%_
                                                          (gx#syntax-e
                                                           _%tl87238757%_)))
                                                     (let ((_%tl87268767%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87248760%_)))
                                                           (_%hd87258764%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87248760%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87268767%_)
                                                           (_%__match1903219033%_
                                                            _%e87218750%_
                                                            _%hd87228754%_
                                                            _%tl87238757%_
                                                            _%e87248760%_
                                                            _%hd87258764%_
                                                            _%tl87268767%_)
                                                           (_%__kont1901619017%_))))
                                                   (_%__kont1901619017%_))))
                                           (_%__kont1901619017%_)))))))
                              (_%__kont1904019041%_
                               (lambda ()
                                 (if _%opt?8653%_
                                     (let ((_%$e8679%_
                                            (gx#stx-null? _%rest8651%_)))
                                       (if _%$e8679%_
                                           _%$e8679%_
                                           (gx#identifier? _%rest8651%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1903519036%_)
                              (let ((_%e86608690%_
                                     (gx#syntax-e _%__stx1903519036%_)))
                                (let ((_%tl86628697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86608690%_)))
                                      (_%hd86618694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86608690%_))))
                                  (_%__kont1903819039%_
                                   _%tl86628697%_
                                   _%hd86618694%_)))
                              (_%__kont1904019041%_)))))))
                 (_%opt-lambda-split5390%_
                  (lambda (_%hd8497%_)
                    (let _%lp8500%_ ((_%rest8503%_ _%hd8497%_)
                                     (_%pre8505%_ '())
                                     (_%opt8506%_ '()))
                      (let* ((_%__stx1907519076%_ _%rest8503%_)
                             (_%g85098521%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1907519076%_))))
                        (let ((_%__kont1907819079%_
                               (lambda (_%L8549%_ _%L8551%_)
                                 (let* ((_%__stx1905119052%_ _%L8551%_)
                                        (_%g85678582%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1905119052%_))))
                                   (let ((_%__kont1905419055%_
                                          (lambda (_%L8620%_ _%L8622%_)
                                            (_%lp8500%_
                                             _%L8549%_
                                             _%pre8505%_
                                             (cons (cons _%L8622%_ _%L8620%_)
                                                   _%opt8506%_))))
                                         (_%__kont1905619057%_
                                          (lambda ()
                                            (_%lp8500%_
                                             _%L8549%_
                                             (cons _%L8551%_ _%pre8505%_)
                                             _%opt8506%_))))
                                     (if (gx#stx-pair? _%__stx1905119052%_)
                                         (let ((_%e85718600%_
                                                (gx#syntax-e
                                                 _%__stx1905119052%_)))
                                           (let ((_%tl85738607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85718600%_)))
                                                 (_%hd85728604%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85718600%_))))
                                             (if (gx#stx-pair? _%tl85738607%_)
                                                 (let ((_%e85748610%_
                                                        (gx#syntax-e
                                                         _%tl85738607%_)))
                                                   (let ((_%tl85768617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85748610%_)))
                                                         (_%hd85758614%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85748610%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85768617%_)
                                                         (_%__kont1905419055%_
                                                          _%hd85758614%_
                                                          _%hd85728604%_)
                                                         (_%__kont1905619057%_))))
                                                 (_%__kont1905619057%_))))
                                         (_%__kont1905619057%_))))))
                              (_%__kont1908019081%_
                               (lambda ()
                                 (values (reverse _%pre8505%_)
                                         (reverse _%opt8506%_)
                                         _%rest8503%_))))
                          (if (gx#stx-pair? _%__stx1907519076%_)
                              (let ((_%e85138539%_
                                     (gx#syntax-e _%__stx1907519076%_)))
                                (let ((_%tl85158546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85138539%_)))
                                      (_%hd85148543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85138539%_))))
                                  (_%__kont1907819079%_
                                   _%tl85158546%_
                                   _%hd85148543%_)))
                              (_%__kont1908019081%_)))))))
                 (_%kw-lambda?5391%_
                  (lambda (_%hd8165%_)
                    (let _%lp8168%_ ((_%rest8171%_ _%hd8165%_)
                                     (_%opt?8173%_ '#f)
                                     (_%key?8174%_ '#f))
                      (let* ((_%__stx1913919140%_ _%rest8171%_)
                             (_%g81798209%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1913919140%_))))
                        (let ((_%__kont1914219143%_
                               (lambda (_%L8404%_ _%L8406%_ _%L8407%_)
                                 (let* ((_%__stx1911519116%_ _%L8406%_)
                                        (_%g84228436%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1911519116%_))))
                                   (let ((_%__kont1911819119%_
                                          (lambda (_%L8474%_)
                                            (if (gx#identifier? _%L8474%_)
                                                (_%lp8168%_
                                                 _%L8404%_
                                                 _%opt?8173%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1912019121%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8406%_)
                                                (_%lp8168%_
                                                 _%L8404%_
                                                 _%opt?8173%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1911519116%_)
                                         (let ((_%e84258454%_
                                                (gx#syntax-e
                                                 _%__stx1911519116%_)))
                                           (let ((_%tl84278461%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84258454%_)))
                                                 (_%hd84268458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84258454%_))))
                                             (if (gx#stx-pair? _%tl84278461%_)
                                                 (let ((_%e84288464%_
                                                        (gx#syntax-e
                                                         _%tl84278461%_)))
                                                   (let ((_%tl84308471%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84288464%_)))
                                                         (_%hd84298468%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84288464%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84308471%_)
                                                         (_%__kont1911819119%_
                                                          _%hd84268458%_)
                                                         (_%__kont1912019121%_))))
                                                 (_%__kont1912019121%_))))
                                         (_%__kont1912019121%_))))))
                              (_%__kont1914419145%_
                               (lambda (_%L8361%_ _%L8363%_)
                                 (if (gx#identifier? _%L8363%_)
                                     (_%lp8168%_ _%L8361%_ _%opt?8173%_ '#t)
                                     '#f)))
                              (_%__kont1914619147%_
                               (lambda (_%L8241%_ _%L8243%_)
                                 (let* ((_%__stx1909119092%_ _%L8243%_)
                                        (_%g82598273%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1909119092%_))))
                                   (let ((_%__kont1909419095%_
                                          (lambda (_%L8311%_)
                                            (if (gx#identifier? _%L8311%_)
                                                (_%lp8168%_
                                                 _%L8241%_
                                                 '#t
                                                 _%key?8174%_)
                                                '#f)))
                                         (_%__kont1909619097%_
                                          (lambda ()
                                            (if (gx#identifier? _%L8243%_)
                                                (if (not _%opt?8173%_)
                                                    (_%lp8168%_
                                                     _%L8241%_
                                                     '#f
                                                     _%key?8174%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1909119092%_)
                                         (let ((_%e82628291%_
                                                (gx#syntax-e
                                                 _%__stx1909119092%_)))
                                           (let ((_%tl82648298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82628291%_)))
                                                 (_%hd82638295%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82628291%_))))
                                             (if (gx#stx-pair? _%tl82648298%_)
                                                 (let ((_%e82658301%_
                                                        (gx#syntax-e
                                                         _%tl82648298%_)))
                                                   (let ((_%tl82678308%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82658301%_)))
                                                         (_%hd82668305%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82658301%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82678308%_)
                                                         (_%__kont1909419095%_
                                                          _%hd82638295%_)
                                                         (_%__kont1909619097%_))))
                                                 (_%__kont1909619097%_))))
                                         (_%__kont1909619097%_))))))
                              (_%__kont1914819149%_
                               (lambda ()
                                 (if _%key?8174%_
                                     (let ((_%$e8220%_
                                            (gx#stx-null? _%rest8171%_)))
                                       (if _%$e8220%_
                                           _%$e8220%_
                                           (gx#identifier? _%rest8171%_)))
                                     '#f))))
                          (let ((_%__match1916219163%_
                                 (lambda (_%e81848384%_
                                          _%hd81858388%_
                                          _%tl81868391%_
                                          _%e81878394%_
                                          _%hd81888398%_
                                          _%tl81898401%_)
                                   (let ((_%L8404%_ _%tl81898401%_)
                                         (_%L8406%_ _%hd81888398%_)
                                         (_%L8407%_ _%hd81858388%_))
                                     (if (gx#stx-keyword? _%L8407%_)
                                         (_%__kont1914219143%_
                                          _%L8404%_
                                          _%L8406%_
                                          _%L8407%_)
                                         (if (gx#stx-datum? _%hd81858388%_)
                                             (let ((_%e81958347%_
                                                    (gx#stx-e _%hd81858388%_)))
                                               (if (equal? _%e81958347%_
                                                           '#!key)
                                                   (_%__kont1914419145%_
                                                    _%tl81898401%_
                                                    _%hd81888398%_)
                                                   (_%__kont1914619147%_
                                                    _%tl81868391%_
                                                    _%hd81858388%_)))
                                             (_%__kont1914619147%_
                                              _%tl81868391%_
                                              _%hd81858388%_)))))))
                            (if (gx#stx-pair? _%__stx1913919140%_)
                                (let ((_%e81848384%_
                                       (gx#syntax-e _%__stx1913919140%_)))
                                  (let ((_%tl81868391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81848384%_)))
                                        (_%hd81858388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81848384%_))))
                                    (if (gx#stx-pair? _%tl81868391%_)
                                        (let ((_%e81878394%_
                                               (gx#syntax-e _%tl81868391%_)))
                                          (let ((_%tl81898401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81878394%_)))
                                                (_%hd81888398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81878394%_))))
                                            (_%__match1916219163%_
                                             _%e81848384%_
                                             _%hd81858388%_
                                             _%tl81868391%_
                                             _%e81878394%_
                                             _%hd81888398%_
                                             _%tl81898401%_)))
                                        (if (gx#stx-datum? _%hd81858388%_)
                                            (let ((_%e81958347%_
                                                   (gx#stx-e _%hd81858388%_)))
                                              (_%__kont1914619147%_
                                               _%tl81868391%_
                                               _%hd81858388%_))
                                            (_%__kont1914619147%_
                                             _%tl81868391%_
                                             _%hd81858388%_)))))
                                (_%__kont1914819149%_))))))))
                 (_%kw-lambda-split5392%_
                  (lambda (_%hd7898%_)
                    (let _%lp7901%_ ((_%rest7904%_ _%hd7898%_)
                                     (_%kwvar7906%_ '#f)
                                     (_%kwargs7907%_ '())
                                     (_%args7908%_ '()))
                      (let* ((_%__stx1921319214%_ _%rest7904%_)
                             (_%g79137943%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1921319214%_))))
                        (let ((_%__kont1921619217%_
                               (lambda (_%L8062%_ _%L8064%_ _%L8065%_)
                                 (let ((_%key8079%_ (gx#stx-e _%L8065%_)))
                                   (if (find (lambda (_%kwarg8082%_)
                                               (eq? _%key8079%_
                                                    (car _%kwarg8082%_)))
                                             _%kwargs7907%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5384%_
                                        _%hd7898%_
                                        _%key8079%_)
                                       (let* ((_%__stx1918919190%_ _%L8064%_)
                                              (_%g80868101%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1918919190%_))))
                                         (let ((_%__kont1919219193%_
                                                (lambda (_%L8139%_ _%L8141%_)
                                                  (_%lp7901%_
                                                   _%L8062%_
                                                   _%kwvar7906%_
                                                   (cons (list _%key8079%_
                                                               _%L8141%_
                                                               _%L8139%_)
                                                         _%kwargs7907%_)
                                                   _%args7908%_)))
                                               (_%__kont1919419195%_
                                                (lambda ()
                                                  (_%lp7901%_
                                                   _%L8062%_
                                                   _%kwvar7906%_
                                                   (cons (list _%key8079%_
                                                               _%L8064%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%L8065%_ '()))))
                 _%kwargs7907%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7908%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1918919190%_)
                                               (let ((_%e80908119%_
                                                      (gx#syntax-e
                                                       _%__stx1918919190%_)))
                                                 (let ((_%tl80928126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80908119%_)))
                                                       (_%hd80918123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80908119%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80928126%_)
                                                       (let ((_%e80938129%_
                                                              (gx#syntax-e
                                                               _%tl80928126%_)))
                                                         (let ((_%tl80958136%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80938129%_)))
                       (_%hd80948133%_
                        (let () (declare (not safe)) (##car _%e80938129%_))))
                   (if (gx#stx-null? _%tl80958136%_)
                       (_%__kont1919219193%_ _%hd80948133%_ _%hd80918123%_)
                       (_%__kont1919419195%_))))
               (_%__kont1919419195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1919419195%_))))))))
                              (_%__kont1921819219%_
                               (lambda (_%L8019%_ _%L8021%_)
                                 (if _%kwvar7906%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5384%_
                                      _%hd7898%_
                                      _%L8021%_)
                                     (_%lp7901%_
                                      _%L8019%_
                                      _%L8021%_
                                      _%kwargs7907%_
                                      _%args7908%_))))
                              (_%__kont1922019221%_
                               (lambda (_%L7971%_ _%L7973%_)
                                 (_%lp7901%_
                                  _%L7971%_
                                  _%kwvar7906%_
                                  _%kwargs7907%_
                                  (cons _%L7973%_ _%args7908%_))))
                              (_%__kont1922219223%_
                               (lambda ()
                                 (values _%kwvar7906%_
                                         (reverse _%kwargs7907%_)
                                         (foldl cons
                                                _%rest7904%_
                                                _%args7908%_)))))
                          (let ((_%__match1923619237%_
                                 (lambda (_%e79188042%_
                                          _%hd79198046%_
                                          _%tl79208049%_
                                          _%e79218052%_
                                          _%hd79228056%_
                                          _%tl79238059%_)
                                   (let ((_%L8062%_ _%tl79238059%_)
                                         (_%L8064%_ _%hd79228056%_)
                                         (_%L8065%_ _%hd79198046%_))
                                     (if (gx#stx-keyword? _%L8065%_)
                                         (_%__kont1921619217%_
                                          _%L8062%_
                                          _%L8064%_
                                          _%L8065%_)
                                         (if (gx#stx-datum? _%hd79198046%_)
                                             (let ((_%e79298005%_
                                                    (gx#stx-e _%hd79198046%_)))
                                               (if (equal? _%e79298005%_
                                                           '#!key)
                                                   (_%__kont1921819219%_
                                                    _%tl79238059%_
                                                    _%hd79228056%_)
                                                   (_%__kont1922019221%_
                                                    _%tl79208049%_
                                                    _%hd79198046%_)))
                                             (_%__kont1922019221%_
                                              _%tl79208049%_
                                              _%hd79198046%_)))))))
                            (if (gx#stx-pair? _%__stx1921319214%_)
                                (let ((_%e79188042%_
                                       (gx#syntax-e _%__stx1921319214%_)))
                                  (let ((_%tl79208049%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79188042%_)))
                                        (_%hd79198046%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79188042%_))))
                                    (if (gx#stx-pair? _%tl79208049%_)
                                        (let ((_%e79218052%_
                                               (gx#syntax-e _%tl79208049%_)))
                                          (let ((_%tl79238059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79218052%_)))
                                                (_%hd79228056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79218052%_))))
                                            (_%__match1923619237%_
                                             _%e79188042%_
                                             _%hd79198046%_
                                             _%tl79208049%_
                                             _%e79218052%_
                                             _%hd79228056%_
                                             _%tl79238059%_)))
                                        (if (gx#stx-datum? _%hd79198046%_)
                                            (let ((_%e79298005%_
                                                   (gx#stx-e _%hd79198046%_)))
                                              (_%__kont1922019221%_
                                               _%tl79208049%_
                                               _%hd79198046%_))
                                            (_%__kont1922019221%_
                                             _%tl79208049%_
                                             _%hd79198046%_)))))
                                (_%__kont1922219223%_))))))))
                 (_%check-duplicate-bindings5393%_
                  (lambda (_%hd7590%_)
                    (let _%lp7593%_ ((_%rest7596%_ _%hd7590%_)
                                     (_%ids7598%_ '()))
                      (let* ((_%__stx1928719288%_ _%rest7596%_)
                             (_%g76017613%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1928719288%_))))
                        (let ((_%__kont1929019291%_
                               (lambda (_%L7641%_ _%L7643%_)
                                 (if (gx#identifier? _%L7643%_)
                                     (_%lp7593%_
                                      _%L7641%_
                                      (cons _%L7643%_ _%ids7598%_))
                                     (if (gx#stx-pair? _%L7643%_)
                                         (let* ((_%g76627676%_
                                                 (lambda (_%g76637672%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76637672%_)))
                                                (_%g76617718%_
                                                 (lambda (_%g76637680%_)
                                                   (if (gx#stx-pair?
                                                        _%g76637680%_)
                                                       (let ((_%e76657683%_
                                                              (gx#syntax-e
                                                               _%g76637680%_)))
                                                         (let ((_%hd76667687%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76657683%_)))
                       (_%tl76677690%_
                        (let () (declare (not safe)) (##cdr _%e76657683%_))))
                   (if (gx#stx-pair? _%tl76677690%_)
                       (let ((_%e76687693%_ (gx#syntax-e _%tl76677690%_)))
                         (let ((_%hd76697697%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76687693%_)))
                               (_%tl76707700%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76687693%_))))
                           (if (gx#stx-null? _%tl76707700%_)
                               ((lambda (_%L7703%_)
                                  (_%lp7593%_
                                   _%L7641%_
                                   (cons _%L7703%_ _%ids7598%_)))
                                _%hd76667687%_)
                               (_%g76627676%_ _%g76637680%_))))
                       (_%g76627676%_ _%g76637680%_))))
               (_%g76627676%_ _%g76637680%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76617718%_ _%L7643%_))
                                         (if (gx#stx-keyword? _%L7643%_)
                                             (let* ((_%g77247736%_
                                                     (lambda (_%g77257732%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77257732%_)))
                                                    (_%g77237839%_
                                                     (lambda (_%g77257740%_)
                                                       (if (gx#stx-pair?
                                                            _%g77257740%_)
                                                           (let ((_%e77287743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77257740%_)))
                     (let ((_%hd77297747%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77287743%_)))
                           (_%tl77307750%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77287743%_))))
                       ((lambda (_%L7753%_ _%L7755%_)
                          (let* ((_%__stx1926319264%_ _%L7755%_)
                                 (_%g77687782%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1926319264%_))))
                            (let ((_%__kont1926619267%_
                                   (lambda (_%L7820%_)
                                     (_%lp7593%_
                                      _%L7753%_
                                      (cons _%L7820%_ _%ids7598%_))))
                                  (_%__kont1926819269%_
                                   (lambda ()
                                     (_%lp7593%_
                                      _%L7753%_
                                      (cons _%L7755%_ _%ids7598%_)))))
                              (if (gx#stx-pair? _%__stx1926319264%_)
                                  (let ((_%e77717800%_
                                         (gx#syntax-e _%__stx1926319264%_)))
                                    (let ((_%tl77737807%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77717800%_)))
                                          (_%hd77727804%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77717800%_))))
                                      (if (gx#stx-pair? _%tl77737807%_)
                                          (let ((_%e77747810%_
                                                 (gx#syntax-e _%tl77737807%_)))
                                            (let ((_%tl77767817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77747810%_)))
                                                  (_%hd77757814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77747810%_))))
                                              (if (gx#stx-null? _%tl77767817%_)
                                                  (_%__kont1926619267%_
                                                   _%hd77727804%_)
                                                  (_%__kont1926819269%_))))
                                          (_%__kont1926819269%_))))
                                  (_%__kont1926819269%_)))))
                        _%tl77307750%_
                        _%hd77297747%_)))
                   (_%g77247736%_ _%g77257740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77237839%_ _%L7641%_))
                                             (if (eq? (gx#stx-e _%L7643%_)
                                                      '#!key)
                                                 (let* ((_%g78457857%_
                                                         (lambda (_%g78467853%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78467853%_)))
                                                        (_%g78447888%_
                                                         (lambda (_%g78467861%_)
                                                           (if (gx#stx-pair?
                                                                _%g78467861%_)
                                                               (let ((_%e78497864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78467861%_)))
                         (let ((_%hd78507868%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78497864%_)))
                               (_%tl78517871%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78497864%_))))
                           ((lambda (_%L7874%_ _%L7876%_)
                              (_%lp7593%_
                               _%L7874%_
                               (cons _%L7876%_ _%ids7598%_)))
                            _%tl78517871%_
                            _%hd78507868%_)))
                       (_%g78457857%_ _%g78467861%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78447888%_ _%L7641%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5384%_
                                                        _%rest7596%_)))))))
                              (_%__kont1929219293%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7596%_)
                                      _%ids7598%_
                                      (cons _%rest7596%_ _%ids7598%_))
                                  _%stx5384%_))))
                          (if (gx#stx-pair? _%__stx1928719288%_)
                              (let ((_%e76057631%_
                                     (gx#syntax-e _%__stx1928719288%_)))
                                (let ((_%tl76077638%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e76057631%_)))
                                      (_%hd76067635%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e76057631%_))))
                                  (_%__kont1929019291%_
                                   _%tl76077638%_
                                   _%hd76067635%_)))
                              (_%__kont1929219293%_)))))))
                 (_%generate-opt-primary5394%_
                  (lambda (_%pre7382%_ _%opt7384%_ _%tail7385%_ _%body7386%_)
                    (let* ((_%g73887429%_
                            (lambda (_%g73897425%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73897425%_)))
                           (_%g73877586%_
                            (lambda (_%g73897433%_)
                              (if (gx#stx-pair? _%g73897433%_)
                                  (let ((_%e73947436%_
                                         (gx#syntax-e _%g73897433%_)))
                                    (let ((_%hd73957440%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73947436%_)))
                                          (_%tl73967443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73947436%_))))
                                      (if (gx#stx-pair/null? _%hd73957440%_)
                                          (let ((_g20882_
                                                 (gx#syntax-split-splice
                                                  _%hd73957440%_
                                                  '0)))
                                            (begin
                                              (let ((_g20883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20882_)
                                                           (##values-length
                                                            _g20882_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20883_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20883_)))
                                              (let ((_%target73977446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20882_
                                                        0)))
                                                    (_%tl73997449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20882_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73997449%_)
                                                    (letrec ((_%loop74007452%_
                                                              (lambda (_%hd73987456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre74047459%_)
                        (if (gx#stx-pair? _%hd73987456%_)
                            (let ((_%e74017462%_ (gx#syntax-e _%hd73987456%_)))
                              (let ((_%lp-hd74027466%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74017462%_)))
                                    (_%lp-tl74037469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74017462%_))))
                                (_%loop74007452%_
                                 _%lp-tl74037469%_
                                 (cons _%lp-hd74027466%_ _%pre74047459%_))))
                            (let ((_%pre74057472%_ (reverse _%pre74047459%_)))
                              (if (gx#stx-pair? _%tl73967443%_)
                                  (let ((_%e74067476%_
                                         (gx#syntax-e _%tl73967443%_)))
                                    (let ((_%hd74077480%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74067476%_)))
                                          (_%tl74087483%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74067476%_))))
                                      (if (gx#stx-pair/null? _%hd74077480%_)
                                          (let ((_g20884_
                                                 (gx#syntax-split-splice
                                                  _%hd74077480%_
                                                  '0)))
                                            (begin
                                              (let ((_g20885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20884_)
                                                           (##values-length
                                                            _g20884_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20885_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20885_)))
                                              (let ((_%target74097486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20884_
                                                        0)))
                                                    (_%tl74117489%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20884_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74117489%_)
                                                    (letrec ((_%loop74127492%_
                                                              (lambda (_%hd74107496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74167499%_)
                        (if (gx#stx-pair? _%hd74107496%_)
                            (let ((_%e74137502%_ (gx#syntax-e _%hd74107496%_)))
                              (let ((_%lp-hd74147506%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74137502%_)))
                                    (_%lp-tl74157509%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74137502%_))))
                                (_%loop74127492%_
                                 _%lp-tl74157509%_
                                 (cons _%lp-hd74147506%_ _%opt74167499%_))))
                            (let ((_%opt74177512%_ (reverse _%opt74167499%_)))
                              (if (gx#stx-pair? _%tl74087483%_)
                                  (let ((_%e74187516%_
                                         (gx#syntax-e _%tl74087483%_)))
                                    (let ((_%hd74197520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74187516%_)))
                                          (_%tl74207523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74187516%_))))
                                      (if (gx#stx-pair? _%tl74207523%_)
                                          (let ((_%e74217526%_
                                                 (gx#syntax-e _%tl74207523%_)))
                                            (let ((_%hd74227530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74217526%_)))
                                                  (_%tl74237533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74217526%_))))
                                              (if (gx#stx-null? _%tl74237533%_)
                                                  ((lambda (_%L7536%_
                                                            _%L7538%_
                                                            _%L7539%_
                                                            _%L7540%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75697574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75707577%_)
                                  (cons _%g75697574%_ _%g75707577%_))
                                (foldr (lambda (_%g75717580%_ _%g75727583%_)
                                         (cons _%g75717580%_ _%g75727583%_))
                                       _%L7538%_
                                       _%L7539%_)
                                _%L7540%_)
                         _%L7536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74227530%_
                                                   _%hd74197520%_
                                                   _%opt74177512%_
                                                   _%pre74057472%_)
                                                  (_%g73887429%_
                                                   _%g73897433%_))))
                                          (_%g73887429%_ _%g73897433%_))))
                                  (_%g73887429%_ _%g73897433%_)))))))
              (_%loop74127492%_ _%target74097486%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73887429%_
                                                     _%g73897433%_)))))
                                          (_%g73887429%_ _%g73897433%_))))
                                  (_%g73887429%_ _%g73897433%_)))))))
              (_%loop74007452%_ _%target73977446%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73887429%_
                                                     _%g73897433%_)))))
                                          (_%g73887429%_ _%g73897433%_))))
                                  (_%g73887429%_ _%g73897433%_)))))
                      (_%g73877586%_
                       (list _%pre7382%_
                             (map car _%opt7384%_)
                             _%tail7385%_
                             _%body7386%_)))))
                 (_%generate-opt-dispatch5395%_
                  (lambda (_%primary7376%_
                           _%pre7378%_
                           _%opt7379%_
                           _%tail7380%_)
                    (cons (list _%pre7378%_
                                (_%generate-opt-clause5397%_
                                 _%primary7376%_
                                 _%pre7378%_
                                 _%opt7379%_))
                          (_%generate-opt-dispatch*5396%_
                           _%primary7376%_
                           _%pre7378%_
                           _%opt7379%_
                           _%tail7380%_))))
                 (_%generate-opt-dispatch*5396%_
                  (lambda (_%primary6925%_
                           _%pre6927%_
                           _%opt6928%_
                           _%tail6929%_)
                    (let _%recur6931%_ ((_%opt-rest6934%_ _%opt6928%_)
                                        (_%right6936%_ '()))
                      (if (pair? _%opt-rest6934%_)
                          (let* ((_%hd6940%_ (caar _%opt-rest6934%_))
                                 (_%rest6943%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6934%_)))
                                 (_%right*6946%_
                                  (cons _%hd6940%_ _%right6936%_))
                                 (_%g69496966%_
                                  (lambda (_%g69506962%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69506962%_)))
                                 (_%g69487150%_
                                  (lambda (_%g69506970%_)
                                    (if (gx#stx-pair/null? _%g69506970%_)
                                        (let ((_g20886_
                                               (gx#syntax-split-splice
                                                _%g69506970%_
                                                '0)))
                                          (begin
                                            (let ((_g20887_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20886_)
                                                         (##values-length
                                                          _g20886_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20887_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20887_)))
                                            (let ((_%target69526973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20886_
                                                      0)))
                                                  (_%tl69546976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20886_
                                                      1))))
                                              (if (gx#stx-null? _%tl69546976%_)
                                                  (letrec ((_%loop69556979%_
                                                            (lambda (_%hd69536983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69596986%_)
                      (if (gx#stx-pair? _%hd69536983%_)
                          (let ((_%e69566989%_ (gx#syntax-e _%hd69536983%_)))
                            (let ((_%lp-hd69576993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69566989%_)))
                                  (_%lp-tl69586996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69566989%_))))
                              (_%loop69556979%_
                               _%lp-tl69586996%_
                               (cons _%lp-hd69576993%_ _%pre-bind69596986%_))))
                          (let ((_%pre-bind69606999%_
                                 (reverse _%pre-bind69596986%_)))
                            ((lambda (_%L7003%_)
                               (let* ((_%g70257042%_
                                       (lambda (_%g70267038%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70267038%_)))
                                      (_%g70247146%_
                                       (lambda (_%g70267046%_)
                                         (if (gx#stx-pair/null? _%g70267046%_)
                                             (let ((_g20888_
                                                    (gx#syntax-split-splice
                                                     _%g70267046%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20889_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20888_)
                                                              (##values-length
                                                               _g20888_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70287049%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20888_
                                                           0)))
                                                       (_%tl70307052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20888_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70307052%_)
                                                       (letrec ((_%loop70317055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70297059%_ _%opt-bind70357062%_)
                           (if (gx#stx-pair? _%hd70297059%_)
                               (let ((_%e70327065%_
                                      (gx#syntax-e _%hd70297059%_)))
                                 (let ((_%lp-hd70337069%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70327065%_)))
                                       (_%lp-tl70347072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70327065%_))))
                                   (_%loop70317055%_
                                    _%lp-tl70347072%_
                                    (cons _%lp-hd70337069%_
                                          _%opt-bind70357062%_))))
                               (let ((_%opt-bind70367075%_
                                      (reverse _%opt-bind70357062%_)))
                                 ((lambda (_%L7079%_)
                                    (let* ((_%g70967104%_
                                            (lambda (_%g70977100%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70977100%_)))
                                           (_%g70957142%_
                                            (lambda (_%g70977108%_)
                                              ((lambda (_%L7111%_)
                                                 (cons (list (foldr (lambda (_%g71257130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71267133%_)
                              (cons _%g71257130%_ _%g71267133%_))
                            (foldr (lambda (_%g71277136%_ _%g71287139%_)
                                     (cons _%g71277136%_ _%g71287139%_))
                                   (cons _%L7111%_ '())
                                   _%L7079%_)
                            _%L7003%_)
                     (_%generate-opt-clause5397%_
                      _%primary6925%_
                      (foldr cons (reverse _%right*6946%_) _%pre6927%_)
                      _%rest6943%_))
               (_%recur6931%_ _%rest6943%_ _%right*6946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70977108%_))))
                                      (_%g70957142%_ _%hd6940%_)))
                                  _%opt-bind70367075%_))))))
                 (_%loop70317055%_ _%target70287049%_ '()))
               (_%g70257042%_ _%g70267046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70257042%_ _%g70267046%_)))))
                                 (_%g70247146%_ (reverse _%right6936%_))))
                             _%pre-bind69606999%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69556979%_
                                                     _%target69526973%_
                                                     '()))
                                                  (_%g69496966%_
                                                   _%g69506970%_)))))
                                        (_%g69496966%_ _%g69506970%_)))))
                            (_%g69487150%_ _%pre6927%_))
                          (if (gx#stx-null? _%tail6929%_)
                              '()
                              (let* ((_%g71587199%_
                                      (lambda (_%g71597195%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71597195%_)))
                                     (_%g71577372%_
                                      (lambda (_%g71597203%_)
                                        (if (gx#stx-pair? _%g71597203%_)
                                            (let ((_%e71647206%_
                                                   (gx#syntax-e
                                                    _%g71597203%_)))
                                              (let ((_%hd71657210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71647206%_)))
                                                    (_%tl71667213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71647206%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71657210%_)
                                                    (let ((_g20890_
                                                           (gx#syntax-split-splice
                                                            _%hd71657210%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20891_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20890_)
                             (##values-length _g20890_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20891_ 2)))
                      (error "Context expects 2 values" _g20891_)))
                (let ((_%target71677216%_
                       (let () (declare (not safe)) (##values-ref _g20890_ 0)))
                      (_%tl71697219%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20890_ 1))))
                  (if (gx#stx-null? _%tl71697219%_)
                      (letrec ((_%loop71707222%_
                                (lambda (_%hd71687226%_ _%pre71747229%_)
                                  (if (gx#stx-pair? _%hd71687226%_)
                                      (let ((_%e71717232%_
                                             (gx#syntax-e _%hd71687226%_)))
                                        (let ((_%lp-hd71727236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71717232%_)))
                                              (_%lp-tl71737239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71717232%_))))
                                          (_%loop71707222%_
                                           _%lp-tl71737239%_
                                           (cons _%lp-hd71727236%_
                                                 _%pre71747229%_))))
                                      (let ((_%pre71757242%_
                                             (reverse _%pre71747229%_)))
                                        (if (gx#stx-pair? _%tl71667213%_)
                                            (let ((_%e71767246%_
                                                   (gx#syntax-e
                                                    _%tl71667213%_)))
                                              (let ((_%hd71777250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71767246%_)))
                                                    (_%tl71787253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71767246%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71777250%_)
                                                    (let ((_g20892_
                                                           (gx#syntax-split-splice
                                                            _%hd71777250%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20893_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20892_)
                             (##values-length _g20892_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20893_ 2)))
                      (error "Context expects 2 values" _g20893_)))
                (let ((_%target71797256%_
                       (let () (declare (not safe)) (##values-ref _g20892_ 0)))
                      (_%tl71817259%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20892_ 1))))
                  (if (gx#stx-null? _%tl71817259%_)
                      (letrec ((_%loop71827262%_
                                (lambda (_%hd71807266%_ _%opt71867269%_)
                                  (if (gx#stx-pair? _%hd71807266%_)
                                      (let ((_%e71837272%_
                                             (gx#syntax-e _%hd71807266%_)))
                                        (let ((_%lp-hd71847276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71837272%_)))
                                              (_%lp-tl71857279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71837272%_))))
                                          (_%loop71827262%_
                                           _%lp-tl71857279%_
                                           (cons _%lp-hd71847276%_
                                                 _%opt71867269%_))))
                                      (let ((_%opt71877282%_
                                             (reverse _%opt71867269%_)))
                                        (if (gx#stx-pair? _%tl71787253%_)
                                            (let ((_%e71887286%_
                                                   (gx#syntax-e
                                                    _%tl71787253%_)))
                                              (let ((_%hd71897290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71887286%_)))
                                                    (_%tl71907293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71887286%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71907293%_)
                                                    (let ((_%e71917296%_
                                                           (gx#syntax-e
                                                            _%tl71907293%_)))
                                                      (let ((_%hd71927300%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71917296%_)))
                    (_%tl71937303%_
                     (let () (declare (not safe)) (##cdr _%e71917296%_))))
                (if (gx#stx-null? _%tl71937303%_)
                    ((lambda (_%L7306%_ _%L7308%_ _%L7309%_ _%L7310%_)
                       (list (list (foldr (lambda (_%g73397344%_ _%g73407347%_)
                                            (cons _%g73397344%_ _%g73407347%_))
                                          (foldr (lambda (_%g73417350%_
                                                          _%g73427353%_)
                                                   (cons _%g73417350%_
                                                         _%g73427353%_))
                                                 _%L7308%_
                                                 _%L7309%_)
                                          _%L7310%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%L7306%_
                                                (foldr (lambda (_%g73557360%_
                                                                _%g73567363%_)
                                                         (cons _%g73557360%_
                                                               _%g73567363%_))
                                                       (foldr (lambda (_%g73577366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73587369%_)
                        (cons _%g73577366%_ _%g73587369%_))
                      (cons _%L7308%_ '())
                      _%L7309%_)
               _%L7310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5384%_)))))
                     _%hd71927300%_
                     _%hd71897290%_
                     _%opt71877282%_
                     _%pre71757242%_)
                    (_%g71587199%_ _%g71597203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71587199%_
                                                     _%g71597203%_))))
                                            (_%g71587199%_ _%g71597203%_)))))))
                        (_%loop71827262%_ _%target71797256%_ '()))
                      (_%g71587199%_ _%g71597203%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71587199%_
                                                     _%g71597203%_))))
                                            (_%g71587199%_ _%g71597203%_)))))))
                        (_%loop71707222%_ _%target71677216%_ '()))
                      (_%g71587199%_ _%g71597203%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71587199%_
                                                     _%g71597203%_))))
                                            (_%g71587199%_ _%g71597203%_)))))
                                (_%g71577372%_
                                 (list _%pre6927%_
                                       (reverse _%right6936%_)
                                       _%tail6929%_
                                       _%primary6925%_))))))))
                 (_%generate-opt-clause5397%_
                  (lambda (_%primary6623%_ _%pre6625%_ _%opt6626%_)
                    (let _%recur6628%_ ((_%opt-rest6631%_ _%opt6626%_)
                                        (_%right6633%_ '()))
                      (if (pair? _%opt-rest6631%_)
                          (let* ((_%hd6635%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6631%_)))
                                 (_%rest6638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6631%_)))
                                 (_%g66416649%_
                                  (lambda (_%g66426645%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66426645%_)))
                                 (_%g66406738%_
                                  (lambda (_%g66426653%_)
                                    ((lambda (_%L6656%_)
                                       (let* ((_%g66726680%_
                                               (lambda (_%g66736676%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66736676%_)))
                                              (_%g66716734%_
                                               (lambda (_%g66736684%_)
                                                 ((lambda (_%L6687%_)
                                                    (let* ((_%g67006708%_
                                                            (lambda (_%g67016704%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67016704%_)))
                                                           (_%g66996730%_
                                                            (lambda (_%g67016712%_)
                                                              ((lambda (_%L6715%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%L6656%_ '())
                                                 (cons _%L6687%_ '()))
                                           '())
                                     (cons _%L6715%_ '()))))
                       _%g67016712%_))))
              (_%g66996730%_
               (_%recur6628%_ _%rest6638%_ (cons _%L6656%_ _%right6633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66736684%_))))
                                         (_%g66716734%_ (cdr _%hd6635%_))))
                                     _%g66426653%_))))
                            (_%g66406738%_ (car _%hd6635%_)))
                          (let* ((_%g67426779%_
                                  (lambda (_%g67436775%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67436775%_)))
                                 (_%g67416921%_
                                  (lambda (_%g67436783%_)
                                    (if (gx#stx-pair? _%g67436783%_)
                                        (let ((_%e67476786%_
                                               (gx#syntax-e _%g67436783%_)))
                                          (let ((_%hd67486790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67476786%_)))
                                                (_%tl67496793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67476786%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67486790%_)
                                                (let ((_g20894_
                                                       (gx#syntax-split-splice
                                                        _%hd67486790%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20895_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20894_)
                         (##values-length _g20894_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20895_ 2)))
                  (error "Context expects 2 values" _g20895_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67506796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20894_
                                                              0)))
                                                          (_%tl67526799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20894_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67526799%_)
                                                          (letrec ((_%loop67536802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67516806%_ _%pre67576809%_)
                              (if (gx#stx-pair? _%hd67516806%_)
                                  (let ((_%e67546812%_
                                         (gx#syntax-e _%hd67516806%_)))
                                    (let ((_%lp-hd67556816%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67546812%_)))
                                          (_%lp-tl67566819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67546812%_))))
                                      (_%loop67536802%_
                                       _%lp-tl67566819%_
                                       (cons _%lp-hd67556816%_
                                             _%pre67576809%_))))
                                  (let ((_%pre67586822%_
                                         (reverse _%pre67576809%_)))
                                    (if (gx#stx-pair? _%tl67496793%_)
                                        (let ((_%e67596826%_
                                               (gx#syntax-e _%tl67496793%_)))
                                          (let ((_%hd67606830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67596826%_)))
                                                (_%tl67616833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67596826%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67606830%_)
                                                (let ((_g20896_
                                                       (gx#syntax-split-splice
                                                        _%hd67606830%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20896_)
                         (##values-length _g20896_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20897_ 2)))
                  (error "Context expects 2 values" _g20897_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67626836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20896_
                                                              0)))
                                                          (_%tl67646839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20896_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67646839%_)
                                                          (letrec ((_%loop67656842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67636846%_ _%opt67696849%_)
                              (if (gx#stx-pair? _%hd67636846%_)
                                  (let ((_%e67666852%_
                                         (gx#syntax-e _%hd67636846%_)))
                                    (let ((_%lp-hd67676856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67666852%_)))
                                          (_%lp-tl67686859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67666852%_))))
                                      (_%loop67656842%_
                                       _%lp-tl67686859%_
                                       (cons _%lp-hd67676856%_
                                             _%opt67696849%_))))
                                  (let ((_%opt67706862%_
                                         (reverse _%opt67696849%_)))
                                    (if (gx#stx-pair? _%tl67616833%_)
                                        (let ((_%e67716866%_
                                               (gx#syntax-e _%tl67616833%_)))
                                          (let ((_%hd67726870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67716866%_)))
                                                (_%tl67736873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67716866%_))))
                                            (if (gx#stx-null? _%tl67736873%_)
                                                ((lambda (_%L6876%_
                                                          _%L6878%_
                                                          _%L6879%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%L6876%_
                                                          (foldr (lambda (_%g69046909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69056912%_)
                           (cons _%g69046909%_ _%g69056912%_))
                         (foldr (lambda (_%g69066915%_ _%g69076918%_)
                                  (cons _%g69066915%_ _%g69076918%_))
                                '()
                                _%L6878%_)
                         _%L6879%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5384%_)))
                                                 _%hd67726870%_
                                                 _%opt67706862%_
                                                 _%pre67586822%_)
                                                (_%g67426779%_
                                                 _%g67436783%_))))
                                        (_%g67426779%_ _%g67436783%_)))))))
                    (_%loop67656842%_ _%target67626836%_ '()))
                  (_%g67426779%_ _%g67436783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67426779%_
                                                 _%g67436783%_))))
                                        (_%g67426779%_ _%g67436783%_)))))))
                    (_%loop67536802%_ _%target67506796%_ '()))
                  (_%g67426779%_ _%g67436783%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67426779%_
                                                 _%g67436783%_))))
                                        (_%g67426779%_ _%g67436783%_)))))
                            (_%g67416921%_
                             (list _%pre6625%_
                                   (reverse _%right6633%_)
                                   _%primary6623%_)))))))
                 (_%generate-kw-primary5398%_
                  (lambda (_%key5999%_
                           _%kwargs6001%_
                           _%args6002%_
                           _%body6003%_)
                    (letrec ((_%make-body6005%_
                              (lambda (_%kwargs6492%_ _%kwvals6494%_)
                                (if (pair? _%kwargs6492%_)
                                    (let* ((_%kwarg6496%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6492%_)))
                                           (_%var6499%_ (cadr _%kwarg6496%_))
                                           (_%default6502%_
                                            (caddr _%kwarg6496%_))
                                           (_%kwval6505%_ (car _%kwvals6494%_))
                                           (_%rest-kwargs6508%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6492%_)))
                                           (_%rest-kwvals6511%_
                                            (cdr _%kwvals6494%_))
                                           (_%g65166539%_
                                            (lambda (_%g65176535%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65176535%_)))
                                           (_%g65156619%_
                                            (lambda (_%g65176543%_)
                                              (if (gx#stx-pair? _%g65176543%_)
                                                  (let ((_%e65226546%_
                                                         (gx#syntax-e
                                                          _%g65176543%_)))
                                                    (let ((_%hd65236550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65226546%_)))
                                                          (_%tl65246553%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65226546%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65246553%_)
                                                          (let ((_%e65256556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65246553%_)))
                    (let ((_%hd65266560%_
                           (let () (declare (not safe)) (##car _%e65256556%_)))
                          (_%tl65276563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65256556%_))))
                      (if (gx#stx-pair? _%tl65276563%_)
                          (let ((_%e65286566%_ (gx#syntax-e _%tl65276563%_)))
                            (let ((_%hd65296570%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65286566%_)))
                                  (_%tl65306573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65286566%_))))
                              (if (gx#stx-pair? _%tl65306573%_)
                                  (let ((_%e65316576%_
                                         (gx#syntax-e _%tl65306573%_)))
                                    (let ((_%hd65326580%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65316576%_)))
                                          (_%tl65336583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65316576%_))))
                                      (if (gx#stx-null? _%tl65336583%_)
                                          ((lambda (_%L6586%_
                                                    _%L6588%_
                                                    _%L6589%_
                                                    _%L6590%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%L6590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%L6589%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L6588%_
                                                     (cons _%L6589%_ '()))))
                                   '()))
                       '())
                 (cons _%L6586%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65326580%_
                                           _%hd65296570%_
                                           _%hd65266560%_
                                           _%hd65236550%_)
                                          (_%g65166539%_ _%g65176543%_))))
                                  (_%g65166539%_ _%g65176543%_))))
                          (_%g65166539%_ _%g65176543%_))))
                  (_%g65166539%_ _%g65176543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65166539%_
                                                   _%g65176543%_)))))
                                      (_%g65156619%_
                                       (list _%var6499%_
                                             _%kwval6505%_
                                             _%default6502%_
                                             (_%make-body6005%_
                                              _%rest-kwargs6508%_
                                              _%rest-kwvals6511%_))))
                                    (cons 'begin _%body6003%_))))
                             (_%make-main6007%_
                              (lambda ()
                                (let* ((_%g63006308%_
                                        (lambda (_%g63016304%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63016304%_)))
                                       (_%g62996484%_
                                        (lambda (_%g63016312%_)
                                          ((lambda (_%L6315%_)
                                             (let* ((_%g63276344%_
                                                     (lambda (_%g63286340%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63286340%_)))
                                                    (_%g63266480%_
                                                     (lambda (_%g63286348%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63286348%_)
                                                           (let ((_g20898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63286348%_ '0)))
                     (begin
                       (let ((_g20899_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20898_)
                                    (##values-length _g20898_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20899_ 2)))
                             (error "Context expects 2 values" _g20899_)))
                       (let ((_%target63306351%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20898_ 0)))
                             (_%tl63326354%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20898_ 1))))
                         (if (gx#stx-null? _%tl63326354%_)
                             (letrec ((_%loop63336357%_
                                       (lambda (_%hd63316361%_
                                                _%kwval63376364%_)
                                         (if (gx#stx-pair? _%hd63316361%_)
                                             (let ((_%e63346367%_
                                                    (gx#syntax-e
                                                     _%hd63316361%_)))
                                               (let ((_%lp-hd63356371%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63346367%_)))
                                                     (_%lp-tl63366374%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63346367%_))))
                                                 (_%loop63336357%_
                                                  _%lp-tl63366374%_
                                                  (cons _%lp-hd63356371%_
                                                        _%kwval63376364%_))))
                                             (let ((_%kwval63386377%_
                                                    (reverse _%kwval63376364%_)))
                                               ((lambda (_%L6381%_)
                                                  (let* ((_%g63986406%_
                                                          (lambda (_%g63996402%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g63996402%_)))
                                                         (_%g63976476%_
                                                          (lambda (_%g63996410%_)
                                                            ((lambda (_%L6413%_)
                                                               (let* ((_%g64266434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64276430%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64276430%_)))
                              (_%g64256464%_
                               (lambda (_%g64276438%_)
                                 ((lambda (_%L6441%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%L6315%_
                                                       (foldr (lambda (_%g64556458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64566461%_)
                        (cons _%g64556458%_ _%g64566461%_))
                      _%L6413%_
                      _%L6381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L6441%_ '())))
                                     (gx#stx-source _%stx5384%_)))
                                  _%g64276438%_))))
                         (_%g64256464%_
                          (_%make-body6005%_
                           _%kwargs6001%_
                           (foldr (lambda (_%g64676470%_ _%g64686473%_)
                                    (cons _%g64676470%_ _%g64686473%_))
                                  '()
                                  _%L6381%_)))))
                     _%g63996410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g63976476%_
                                                     _%args6002%_)))
                                                _%kwval63386377%_))))))
                               (_%loop63336357%_ _%target63306351%_ '()))
                             (_%g63276344%_ _%g63286348%_)))))
                   (_%g63276344%_ _%g63286348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63266480%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6001%_)))))
                                           _%g63016312%_))))
                                  (_%g62996484%_
                                   (let ((_%$e6488%_ _%key5999%_))
                                     (if _%$e6488%_
                                         _%$e6488%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6008%_
                              (lambda (_%main6108%_)
                                (let* ((_%g61116119%_
                                        (lambda (_%g61126115%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61126115%_)))
                                       (_%g61106290%_
                                        (lambda (_%g61126123%_)
                                          ((lambda (_%L6126%_)
                                             (let* ((_%g61386155%_
                                                     (lambda (_%g61396151%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61396151%_)))
                                                    (_%g61376251%_
                                                     (lambda (_%g61396159%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61396159%_)
                                                           (let ((_g20900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61396159%_ '0)))
                     (begin
                       (let ((_g20901_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20900_)
                                    (##values-length _g20900_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20901_ 2)))
                             (error "Context expects 2 values" _g20901_)))
                       (let ((_%target61416162%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20900_ 0)))
                             (_%tl61436165%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20900_ 1))))
                         (if (gx#stx-null? _%tl61436165%_)
                             (letrec ((_%loop61446168%_
                                       (lambda (_%hd61426172%_
                                                _%get-kw61486175%_)
                                         (if (gx#stx-pair? _%hd61426172%_)
                                             (let ((_%e61456178%_
                                                    (gx#syntax-e
                                                     _%hd61426172%_)))
                                               (let ((_%lp-hd61466182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61456178%_)))
                                                     (_%lp-tl61476185%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61456178%_))))
                                                 (_%loop61446168%_
                                                  _%lp-tl61476185%_
                                                  (cons _%lp-hd61466182%_
                                                        _%get-kw61486175%_))))
                                             (let ((_%get-kw61496188%_
                                                    (reverse _%get-kw61486175%_)))
                                               ((lambda (_%L6192%_)
                                                  (let* ((_%g62096217%_
                                                          (lambda (_%g62106213%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62106213%_)))
                                                         (_%g62086247%_
                                                          (lambda (_%g62106221%_)
                                                            ((lambda (_%L6224%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%L6126%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%L6224%_
                                                      (cons _%L6126%_
                                                            (foldr (lambda (_%g62386241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62396244%_)
                             (cons _%g62386241%_ _%g62396244%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%L6192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5384%_)))
                     _%g62106221%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62086247%_
                                                     _%main6108%_)))
                                                _%get-kw61496188%_))))))
                               (_%loop61446168%_ _%target61416162%_ '()))
                             (_%g61386155%_ _%g61396159%_)))))
                   (_%g61386155%_ _%g61396159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61376251%_
                                                (map (lambda (_%kwarg6255%_)
                                                       (let* ((_%g62586266%_
                                                               (lambda (_%g62596262%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62596262%_)))
                      (_%g62576286%_
                       (lambda (_%g62596270%_)
                         ((lambda (_%L6273%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%L6126%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%L6273%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62596270%_))))
                 (_%g62576286%_ (car _%kwarg6255%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6001%_))))
                                           _%g61126123%_))))
                                  (_%g61106290%_
                                   (let ((_%$e6294%_ _%key5999%_))
                                     (if _%$e6294%_
                                         _%$e6294%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60106018%_
                              (lambda (_%g60116014%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60116014%_)))
                             (_%g60096104%_
                              (lambda (_%g60116022%_)
                                ((lambda (_%L6025%_)
                                   (let* ((_%g60386046%_
                                           (lambda (_%g60396042%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60396042%_)))
                                          (_%g60376100%_
                                           (lambda (_%g60396050%_)
                                             ((lambda (_%L6053%_)
                                                (let* ((_%g60666074%_
                                                        (lambda (_%g60676070%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60676070%_)))
                                                       (_%g60656096%_
                                                        (lambda (_%g60676078%_)
                                                          ((lambda (_%L6081%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%L6025%_ '())
                                             (cons _%L6081%_ '()))
                                       '())
                                 (cons _%L6053%_ '()))))
                   _%g60676078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60656096%_
                                                   (_%make-main6007%_))))
                                              _%g60396050%_))))
                                     (_%g60376100%_
                                      (_%make-dispatch6008%_ _%L6025%_))))
                                 _%g60116022%_))))
                        (_%g60096104%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5399%_
                  (lambda (_%primary5912%_ _%kwargs5914%_ _%strict?5915%_)
                    (let* ((_%g59175936%_
                            (lambda (_%g59185932%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59185932%_)))
                           (_%g59165995%_
                            (lambda (_%g59185940%_)
                              (if (gx#stx-pair? _%g59185940%_)
                                  (let ((_%e59225943%_
                                         (gx#syntax-e _%g59185940%_)))
                                    (let ((_%hd59235947%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59225943%_)))
                                          (_%tl59245950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59225943%_))))
                                      (if (gx#stx-pair? _%tl59245950%_)
                                          (let ((_%e59255953%_
                                                 (gx#syntax-e _%tl59245950%_)))
                                            (let ((_%hd59265957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59255953%_)))
                                                  (_%tl59275960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59255953%_))))
                                              (if (gx#stx-pair? _%tl59275960%_)
                                                  (let ((_%e59285963%_
                                                         (gx#syntax-e
                                                          _%tl59275960%_)))
                                                    (let ((_%hd59295967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59285963%_)))
                                                          (_%tl59305970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59285963%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59305970%_)
                                                          ((lambda (_%L5973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L5975%_
                            _%L5976%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5973%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%L5976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%L5975%_ (cons _%L5973%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59295967%_
                   _%hd59265957%_
                   _%hd59235947%_)
                  (_%g59175936%_ _%g59185940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59175936%_
                                                   _%g59185940%_))))
                                          (_%g59175936%_ _%g59185940%_))))
                                  (_%g59175936%_ _%g59185940%_)))))
                      (_%g59165995%_
                       (list (if _%strict?5915%_
                                 (_%generate-kw-table5400%_
                                  (map car _%kwargs5914%_))
                                 '#f)
                             _%primary5912%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5400%_
                  (lambda (_%kws5886%_)
                    (let _%rehash5889%_ ((_%pht5892%_
                                          (let ((__tmp20906
                                                 (length _%kws5886%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20906 '#f))))
                      (let _%lp5895%_ ((_%rest5898%_ _%kws5886%_))
                        (if (pair? _%rest5898%_)
                            (let* ((_%key5901%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5898%_)))
                                   (_%rest5904%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5898%_)))
                                   (_%pos5907%_
                                    (let ((__tmp20903
                                           (keyword-hash _%key5901%_))
                                          (__tmp20902
                                           (vector-length _%pht5892%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20903 __tmp20902))))
                              (if (vector-ref _%pht5892%_ _%pos5907%_)
                                  (if (let ((__tmp20904
                                             (vector-length _%pht5892%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20904 '8192))
                                      (_%rehash5889%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20905
                                                (vector-length _%pht5892%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20905))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5886%_))
                                  (begin
                                    (vector-set!
                                     _%pht5892%_
                                     _%pos5907%_
                                     _%key5901%_)
                                    (_%lp5895%_ _%rest5904%_))))
                            _%pht5892%_))))))
          (let* ((_%__stx1930319304%_ _%stx5384%_)
                 (_%g54045435%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1930319304%_))))
            (let ((_%__kont1930619307%_
                   (lambda (_%L5867%_ _%L5869%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%L5869%_ _%L5867%_))))
                  (_%__kont1930819309%_
                   (lambda (_%L5639%_ _%L5641%_)
                     (let ((_g20907_ (_%opt-lambda-split5390%_ _%L5641%_)))
                       (begin
                         (let ((_g20908_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20907_)
                                      (##values-length _g20907_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20908_ 3)))
                               (error "Context expects 3 values" _g20908_)))
                         (let ((_%pre5654%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20907_ 0)))
                               (_%opt5656%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20907_ 1)))
                               (_%tail5657%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20907_ 2))))
                           (let* ((_%g56595667%_
                                   (lambda (_%g56605663%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56605663%_)))
                                  (_%g56585836%_
                                   (lambda (_%g56605671%_)
                                     ((lambda (_%L5674%_)
                                        (let* ((_%g56875695%_
                                                (lambda (_%g56885691%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g56885691%_)))
                                               (_%g56865832%_
                                                (lambda (_%g56885699%_)
                                                  ((lambda (_%L5702%_)
                                                     (let* ((_%g57155732%_
                                                             (lambda (_%g57165728%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57165728%_)))
                                                            (_%g57145828%_
                                                             (lambda (_%g57165736%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57165736%_)
                           (let ((_g20909_
                                  (gx#syntax-split-splice _%g57165736%_ '0)))
                             (begin
                               (let ((_g20910_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20909_)
                                            (##values-length _g20909_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20910_ 2)))
                                     (error "Context expects 2 values"
                                            _g20910_)))
                               (let ((_%target57185739%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20909_ 0)))
                                     (_%tl57205742%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20909_ 1))))
                                 (if (gx#stx-null? _%tl57205742%_)
                                     (letrec ((_%loop57215745%_
                                               (lambda (_%hd57195749%_
                                                        _%clause57255752%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57195749%_)
                                                     (let ((_%e57225755%_
                                                            (gx#syntax-e
                                                             _%hd57195749%_)))
                                                       (let ((_%lp-hd57235759%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57225755%_)))
                     (_%lp-tl57245762%_
                      (let () (declare (not safe)) (##cdr _%e57225755%_))))
                 (_%loop57215745%_
                  _%lp-tl57245762%_
                  (cons _%lp-hd57235759%_ _%clause57255752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57265765%_
                                                            (reverse _%clause57255752%_)))
                                                       ((lambda (_%L5769%_)
                                                          (let* ((_%g57865794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g57875790%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g57875790%_)))
                         (_%g57855816%_
                          (lambda (_%g57875798%_)
                            ((lambda (_%L5801%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%L5674%_ '())
                                                       (cons _%L5702%_ '()))
                                                 '())
                                           (cons _%L5801%_ '()))))
                             _%g57875798%_))))
                    (_%g57855816%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58195822%_ _%g58205825%_)
                                     (cons _%g58195822%_ _%g58205825%_))
                                   '()
                                   _%L5769%_))
                      (gx#stx-source _%stx5384%_)))))
                _%clause57265765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57215745%_
                                        _%target57185739%_
                                        '()))
                                     (_%g57155732%_ _%g57165736%_)))))
                           (_%g57155732%_ _%g57165736%_)))))
               (_%g57145828%_
                (_%generate-opt-dispatch5395%_
                 _%L5674%_
                 _%pre5654%_
                 _%opt5656%_
                 _%tail5657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g56885699%_))))
                                          (_%g56865832%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5394%_
                                             _%pre5654%_
                                             _%opt5656%_
                                             _%tail5657%_
                                             _%L5639%_)
                                            (gx#stx-source _%stx5384%_)))))
                                      _%g56605671%_))))
                             (_%g56585836%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1931019311%_
                   (lambda (_%L5462%_ _%L5464%_)
                     (let* ((_%g54805487%_
                             (lambda (_%g54815483%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54815483%_)))
                            (_%g54795608%_
                             (lambda (_%g54815491%_)
                               ((lambda ()
                                  (let ((_g20911_
                                         (_%kw-lambda-split5392%_ _%L5464%_)))
                                    (begin
                                      (let ((_g20912_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20911_)
                                                   (##values-length _g20911_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20912_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20912_)))
                                      (let ((_%key5500%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20911_ 0)))
                                            (_%kwargs5502%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20911_ 1)))
                                            (_%args5503%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20911_ 2))))
                                        (let* ((_%g55055513%_
                                                (lambda (_%g55065509%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55065509%_)))
                                               (_%g55045604%_
                                                (lambda (_%g55065517%_)
                                                  ((lambda (_%L5520%_)
                                                     (let* ((_%g55385546%_
                                                             (lambda (_%g55395542%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55395542%_)))
                                                            (_%g55375600%_
                                                             (lambda (_%g55395550%_)
                                                               ((lambda (_%L5553%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55665574%_
                                  (lambda (_%g55675570%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55675570%_)))
                                 (_%g55655596%_
                                  (lambda (_%g55675578%_)
                                    ((lambda (_%L5581%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%L5520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%L5553%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%L5581%_ '()))))
                                     _%g55675578%_))))
                            (_%g55655596%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5399%_
                               _%L5520%_
                               _%kwargs5502%_
                               (not _%key5500%_))
                              (gx#stx-source _%stx5384%_)))))
                        _%g55395550%_))))
               (_%g55375600%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5398%_
                  _%key5500%_
                  _%kwargs5502%_
                  _%args5503%_
                  _%L5462%_)
                 (gx#stx-source _%stx5384%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55065517%_))))
                                          (_%g55045604%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54795608%_
                        (_%check-duplicate-bindings5393%_ _%L5464%_))))))
              (let* ((_%__match1934819349%_
                      (lambda (_%e54245442%_
                               _%hd54255446%_
                               _%tl54265449%_
                               _%e54275452%_
                               _%hd54285456%_
                               _%tl54295459%_)
                        (let ((_%L5462%_ _%tl54295459%_)
                              (_%L5464%_ _%hd54285456%_))
                          (if (_%kw-lambda?5391%_ _%L5464%_)
                              (_%__kont1931019311%_ _%L5462%_ _%L5464%_)
                              (let () (declare (not safe)) (_%g54045435%_))))))
                     (_%__match1933619337%_
                      (lambda (_%e54165619%_
                               _%hd54175623%_
                               _%tl54185626%_
                               _%e54195629%_
                               _%hd54205633%_
                               _%tl54215636%_)
                        (let ((_%L5639%_ _%tl54215636%_)
                              (_%L5641%_ _%hd54205633%_))
                          (if (_%opt-lambda?5389%_ _%L5641%_)
                              (_%__kont1930819309%_ _%L5639%_ _%L5641%_)
                              (_%__match1934819349%_
                               _%e54165619%_
                               _%hd54175623%_
                               _%tl54185626%_
                               _%e54195629%_
                               _%hd54205633%_
                               _%tl54215636%_)))))
                     (_%__match1932419325%_
                      (lambda (_%e54085847%_
                               _%hd54095851%_
                               _%tl54105854%_
                               _%e54115857%_
                               _%hd54125861%_
                               _%tl54135864%_)
                        (let ((_%L5867%_ _%tl54135864%_)
                              (_%L5869%_ _%hd54125861%_))
                          (if (_%simple-lambda?5387%_ _%L5869%_)
                              (_%__kont1930619307%_ _%L5867%_ _%L5869%_)
                              (_%__match1933619337%_
                               _%e54085847%_
                               _%hd54095851%_
                               _%tl54105854%_
                               _%e54115857%_
                               _%hd54125861%_
                               _%tl54135864%_))))))
                (if (gx#stx-pair? _%__stx1930319304%_)
                    (let ((_%e54085847%_ (gx#syntax-e _%__stx1930319304%_)))
                      (let ((_%tl54105854%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54085847%_)))
                            (_%hd54095851%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54085847%_))))
                        (if (gx#stx-pair? _%tl54105854%_)
                            (let ((_%e54115857%_ (gx#syntax-e _%tl54105854%_)))
                              (let ((_%tl54135864%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54115857%_)))
                                    (_%hd54125861%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54115857%_))))
                                (_%__match1932419325%_
                                 _%e54085847%_
                                 _%hd54095851%_
                                 _%tl54105854%_
                                 _%e54115857%_
                                 _%hd54125861%_
                                 _%tl54135864%_)))
                            (let () (declare (not safe)) (_%g54045435%_)))))
                    (let () (declare (not safe)) (_%g54045435%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8809%_)
        (let* ((_%__stx1935119352%_ _%$stx8809%_)
               (_%g88158879%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1935119352%_))))
          (let ((_%__kont1935419355%_
                 (lambda (_%L9109%_ _%L9111%_ _%L9112%_ _%L9113%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%L9113%_ _%L9112%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9111%_
                                                 (foldr (lambda (_%g91359138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91369141%_)
                  (cons _%g91359138%_ _%g91369141%_))
                '()
                _%L9109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1935819359%_
                 (lambda (_%L9001%_ _%L9003%_ _%L9004%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L9004%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%L9003%_
                                                 (foldr (lambda (_%g90239026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90249029%_)
                  (cons _%g90239026%_ _%g90249029%_))
                '()
                _%L9001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1936219363%_
                 (lambda (_%L8916%_ _%L8918%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%L8918%_ '()) (cons _%L8916%_ '()))))))
            (let* ((_%__match1944219443%_
                    (lambda (_%e88658886%_
                             _%hd88668890%_
                             _%tl88678893%_
                             _%e88688896%_
                             _%hd88698900%_
                             _%tl88708903%_
                             _%e88718906%_
                             _%hd88728910%_
                             _%tl88738913%_)
                      (let ((_%L8916%_ _%hd88728910%_)
                            (_%L8918%_ _%hd88698900%_))
                        (if (gx#identifier? _%L8918%_)
                            (_%__kont1936219363%_ _%L8916%_ _%L8918%_)
                            (let () (declare (not safe)) (_%g88158879%_))))))
                   (_%__match1943419435%_
                    (lambda (_%e88658886%_
                             _%hd88668890%_
                             _%tl88678893%_
                             _%e88688896%_
                             _%hd88698900%_
                             _%tl88708903%_)
                      (if (gx#stx-pair? _%tl88708903%_)
                          (let ((_%e88718906%_ (gx#syntax-e _%tl88708903%_)))
                            (let ((_%tl88738913%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88718906%_)))
                                  (_%hd88728910%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88718906%_))))
                              (if (gx#stx-null? _%tl88738913%_)
                                  (_%__match1944219443%_
                                   _%e88658886%_
                                   _%hd88668890%_
                                   _%tl88678893%_
                                   _%e88688896%_
                                   _%hd88698900%_
                                   _%tl88708903%_
                                   _%e88718906%_
                                   _%hd88728910%_
                                   _%tl88738913%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88158879%_)))))
                          (let () (declare (not safe)) (_%g88158879%_)))))
                   (_%__match1942219423%_
                    (lambda (_%e88458941%_
                             _%hd88468945%_
                             _%tl88478948%_
                             _%e88488951%_
                             _%hd88498955%_
                             _%tl88508958%_
                             _%e88518961%_
                             _%hd88528965%_
                             _%tl88538968%_
                             _%__splice1936019361%_
                             _%target88548971%_
                             _%tl88568974%_)
                      (letrec ((_%loop88578977%_
                                (lambda (_%hd88558981%_ _%body88618984%_)
                                  (if (gx#stx-pair? _%hd88558981%_)
                                      (let ((_%e88588987%_
                                             (gx#syntax-e _%hd88558981%_)))
                                        (let ((_%lp-tl88608994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88588987%_)))
                                              (_%lp-hd88598991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88588987%_))))
                                          (_%loop88578977%_
                                           _%lp-tl88608994%_
                                           (cons _%lp-hd88598991%_
                                                 _%body88618984%_))))
                                      (let ((_%body88628997%_
                                             (reverse _%body88618984%_)))
                                        (let ((_%L9001%_ _%body88628997%_)
                                              (_%L9003%_ _%tl88538968%_)
                                              (_%L9004%_ _%hd88528965%_))
                                          (if (gx#identifier? _%L9004%_)
                                              (_%__kont1935819359%_
                                               _%L9001%_
                                               _%L9003%_
                                               _%L9004%_)
                                              (_%__match1943419435%_
                                               _%e88458941%_
                                               _%hd88468945%_
                                               _%tl88478948%_
                                               _%e88488951%_
                                               _%hd88498955%_
                                               _%tl88508958%_))))))))
                        (_%loop88578977%_ _%target88548971%_ '()))))
                   (_%__match1939619397%_
                    (lambda (_%e88219039%_
                             _%hd88229043%_
                             _%tl88239046%_
                             _%e88249049%_
                             _%hd88259053%_
                             _%tl88269056%_
                             _%e88279059%_
                             _%hd88289063%_
                             _%tl88299066%_
                             _%e88309069%_
                             _%hd88319073%_
                             _%tl88329076%_
                             _%__splice1935619357%_
                             _%target88339079%_
                             _%tl88359082%_)
                      (letrec ((_%loop88369085%_
                                (lambda (_%hd88349089%_ _%body88409092%_)
                                  (if (gx#stx-pair? _%hd88349089%_)
                                      (let ((_%e88379095%_
                                             (gx#syntax-e _%hd88349089%_)))
                                        (let ((_%lp-tl88399102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88379095%_)))
                                              (_%lp-hd88389099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88379095%_))))
                                          (_%loop88369085%_
                                           _%lp-tl88399102%_
                                           (cons _%lp-hd88389099%_
                                                 _%body88409092%_))))
                                      (let ((_%body88419105%_
                                             (reverse _%body88409092%_)))
                                        (_%__kont1935419355%_
                                         _%body88419105%_
                                         _%tl88299066%_
                                         _%tl88329076%_
                                         _%hd88319073%_))))))
                        (_%loop88369085%_ _%target88339079%_ '())))))
              (if (gx#stx-pair? _%__stx1935119352%_)
                  (let ((_%e88219039%_ (gx#syntax-e _%__stx1935119352%_)))
                    (let ((_%tl88239046%_
                           (let () (declare (not safe)) (##cdr _%e88219039%_)))
                          (_%hd88229043%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88219039%_))))
                      (if (gx#stx-pair? _%tl88239046%_)
                          (let ((_%e88249049%_ (gx#syntax-e _%tl88239046%_)))
                            (let ((_%tl88269056%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88249049%_)))
                                  (_%hd88259053%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88249049%_))))
                              (if (gx#stx-pair? _%hd88259053%_)
                                  (let ((_%e88279059%_
                                         (gx#syntax-e _%hd88259053%_)))
                                    (let ((_%tl88299066%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88279059%_)))
                                          (_%hd88289063%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88279059%_))))
                                      (if (gx#stx-pair? _%hd88289063%_)
                                          (let ((_%e88309069%_
                                                 (gx#syntax-e _%hd88289063%_)))
                                            (let ((_%tl88329076%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88309069%_)))
                                                  (_%hd88319073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88309069%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88269056%_)
                                                  (let ((_%__splice1935619357%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88269056%_
                                                          '0)))
                                                    (let ((_%tl88359082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935619357%_
                                                              '1)))
                                                          (_%target88339079%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935619357%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88359082%_)
                                                          (_%__match1939619397%_
                                                           _%e88219039%_
                                                           _%hd88229043%_
                                                           _%tl88239046%_
                                                           _%e88249049%_
                                                           _%hd88259053%_
                                                           _%tl88269056%_
                                                           _%e88279059%_
                                                           _%hd88289063%_
                                                           _%tl88299066%_
                                                           _%e88309069%_
                                                           _%hd88319073%_
                                                           _%tl88329076%_
                                                           _%__splice1935619357%_
                                                           _%target88339079%_
                                                           _%tl88359082%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88269056%_)
                                                              (let ((_%e88718906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88269056%_)))
                        (let ((_%tl88738913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88718906%_)))
                              (_%hd88728910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88718906%_))))
                          (if (gx#stx-null? _%tl88738913%_)
                              (_%__match1944219443%_
                               _%e88219039%_
                               _%hd88229043%_
                               _%tl88239046%_
                               _%e88249049%_
                               _%hd88259053%_
                               _%tl88269056%_
                               _%e88718906%_
                               _%hd88728910%_
                               _%tl88738913%_)
                              (let () (declare (not safe)) (_%g88158879%_)))))
                      (let () (declare (not safe)) (_%g88158879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88269056%_)
                                                      (let ((_%e88718906%_
                                                             (gx#syntax-e
                                                              _%tl88269056%_)))
                                                        (let ((_%tl88738913%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88718906%_)))
                      (_%hd88728910%_
                       (let () (declare (not safe)) (##car _%e88718906%_))))
                  (if (gx#stx-null? _%tl88738913%_)
                      (_%__match1944219443%_
                       _%e88219039%_
                       _%hd88229043%_
                       _%tl88239046%_
                       _%e88249049%_
                       _%hd88259053%_
                       _%tl88269056%_
                       _%e88718906%_
                       _%hd88728910%_
                       _%tl88738913%_)
                      (let () (declare (not safe)) (_%g88158879%_)))))
              (let () (declare (not safe)) (_%g88158879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88269056%_)
                                              (let ((_%__splice1936019361%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl88269056%_
                                                      '0)))
                                                (let ((_%tl88568974%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1936019361%_
                                                          '1)))
                                                      (_%target88548971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1936019361%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88568974%_)
                                                      (_%__match1942219423%_
                                                       _%e88219039%_
                                                       _%hd88229043%_
                                                       _%tl88239046%_
                                                       _%e88249049%_
                                                       _%hd88259053%_
                                                       _%tl88269056%_
                                                       _%e88279059%_
                                                       _%hd88289063%_
                                                       _%tl88299066%_
                                                       _%__splice1936019361%_
                                                       _%target88548971%_
                                                       _%tl88568974%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88269056%_)
                                                          (let ((_%e88718906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88269056%_)))
                    (let ((_%tl88738913%_
                           (let () (declare (not safe)) (##cdr _%e88718906%_)))
                          (_%hd88728910%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88718906%_))))
                      (if (gx#stx-null? _%tl88738913%_)
                          (_%__match1944219443%_
                           _%e88219039%_
                           _%hd88229043%_
                           _%tl88239046%_
                           _%e88249049%_
                           _%hd88259053%_
                           _%tl88269056%_
                           _%e88718906%_
                           _%hd88728910%_
                           _%tl88738913%_)
                          (let () (declare (not safe)) (_%g88158879%_)))))
                  (let () (declare (not safe)) (_%g88158879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88269056%_)
                                                  (let ((_%e88718906%_
                                                         (gx#syntax-e
                                                          _%tl88269056%_)))
                                                    (let ((_%tl88738913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88718906%_)))
                                                          (_%hd88728910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88718906%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88738913%_)
                                                          (_%__match1944219443%_
                                                           _%e88219039%_
                                                           _%hd88229043%_
                                                           _%tl88239046%_
                                                           _%e88249049%_
                                                           _%hd88259053%_
                                                           _%tl88269056%_
                                                           _%e88718906%_
                                                           _%hd88728910%_
                                                           _%tl88738913%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88158879%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88158879%_)))))))
                                  (if (gx#stx-pair? _%tl88269056%_)
                                      (let ((_%e88718906%_
                                             (gx#syntax-e _%tl88269056%_)))
                                        (let ((_%tl88738913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88718906%_)))
                                              (_%hd88728910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88718906%_))))
                                          (if (gx#stx-null? _%tl88738913%_)
                                              (_%__match1944219443%_
                                               _%e88219039%_
                                               _%hd88229043%_
                                               _%tl88239046%_
                                               _%e88249049%_
                                               _%hd88259053%_
                                               _%tl88269056%_
                                               _%e88718906%_
                                               _%hd88728910%_
                                               _%tl88738913%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g88158879%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88158879%_))))))
                          (let () (declare (not safe)) (_%g88158879%_)))))
                  (let () (declare (not safe)) (_%g88158879%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9150%_)
        (let* ((_%g91549178%_
                (lambda (_%g91559174%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91559174%_)))
               (_%g91539263%_
                (lambda (_%g91559182%_)
                  (if (gx#stx-pair? _%g91559182%_)
                      (let ((_%e91589185%_ (gx#syntax-e _%g91559182%_)))
                        (let ((_%hd91599189%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91589185%_)))
                              (_%tl91609192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91589185%_))))
                          (if (gx#stx-pair? _%tl91609192%_)
                              (let ((_%e91619195%_
                                     (gx#syntax-e _%tl91609192%_)))
                                (let ((_%hd91629199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91619195%_)))
                                      (_%tl91639202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91619195%_))))
                                  (if (gx#stx-pair/null? _%tl91639202%_)
                                      (let ((_g20913_
                                             (gx#syntax-split-splice
                                              _%tl91639202%_
                                              '0)))
                                        (begin
                                          (let ((_g20914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20913_)
                                                       (##values-length
                                                        _g20913_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20914_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20914_)))
                                          (let ((_%target91649205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20913_ 0)))
                                                (_%tl91669208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20913_ 1))))
                                            (if (gx#stx-null? _%tl91669208%_)
                                                (letrec ((_%loop91679211%_
                                                          (lambda (_%hd91659215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91719218%_)
                    (if (gx#stx-pair? _%hd91659215%_)
                        (let ((_%e91689221%_ (gx#syntax-e _%hd91659215%_)))
                          (let ((_%lp-hd91699225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91689221%_)))
                                (_%lp-tl91709228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91689221%_))))
                            (_%loop91679211%_
                             _%lp-tl91709228%_
                             (cons _%lp-hd91699225%_ _%clauses91719218%_))))
                        (let ((_%clauses91729231%_
                               (reverse _%clauses91719218%_)))
                          ((lambda (_%L9235%_ _%L9237%_)
                             (if (gx#identifier? _%L9237%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%L9237%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92549257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92559260%_)
                          (cons _%g92549257%_ _%g92559260%_))
                        '()
                        _%L9235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91549178%_ _%g91559182%_)))
                           _%clauses91729231%_
                           _%hd91629199%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91679211%_
                                                   _%target91649205%_
                                                   '()))
                                                (_%g91549178%_
                                                 _%g91559182%_)))))
                                      (_%g91549178%_ _%g91559182%_))))
                              (_%g91549178%_ _%g91559182%_))))
                      (_%g91549178%_ _%g91559182%_)))))
          (_%g91539263%_ _%$stx9150%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9268%_)
        (let* ((_%g92729290%_
                (lambda (_%g92739286%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92739286%_)))
               (_%g92719345%_
                (lambda (_%g92739294%_)
                  (if (gx#stx-pair? _%g92739294%_)
                      (let ((_%e92769297%_ (gx#syntax-e _%g92739294%_)))
                        (let ((_%hd92779301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92769297%_)))
                              (_%tl92789304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92769297%_))))
                          (if (gx#stx-pair? _%tl92789304%_)
                              (let ((_%e92799307%_
                                     (gx#syntax-e _%tl92789304%_)))
                                (let ((_%hd92809311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92799307%_)))
                                      (_%tl92819314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92799307%_))))
                                  (if (gx#stx-pair? _%tl92819314%_)
                                      (let ((_%e92829317%_
                                             (gx#syntax-e _%tl92819314%_)))
                                        (let ((_%hd92839321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92829317%_)))
                                              (_%tl92849324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92829317%_))))
                                          (if (gx#stx-null? _%tl92849324%_)
                                              ((lambda (_%L9327%_ _%L9329%_)
                                                 (if (gx#identifier-list?
                                                      _%L9329%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%L9329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L9327%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92729290%_
                                                      _%g92739294%_)))
                                               _%hd92839321%_
                                               _%hd92809311%_)
                                              (_%g92729290%_ _%g92739294%_))))
                                      (_%g92729290%_ _%g92739294%_))))
                              (_%g92729290%_ _%g92739294%_))))
                      (_%g92729290%_ _%g92739294%_)))))
          (_%g92719345%_ _%$stx9268%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9349%_)
        (let* ((_%g93539377%_
                (lambda (_%g93549373%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93549373%_)))
               (_%g93529462%_
                (lambda (_%g93549381%_)
                  (if (gx#stx-pair? _%g93549381%_)
                      (let ((_%e93579384%_ (gx#syntax-e _%g93549381%_)))
                        (let ((_%hd93589388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93579384%_)))
                              (_%tl93599391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93579384%_))))
                          (if (gx#stx-pair? _%tl93599391%_)
                              (let ((_%e93609394%_
                                     (gx#syntax-e _%tl93599391%_)))
                                (let ((_%hd93619398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93609394%_)))
                                      (_%tl93629401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93609394%_))))
                                  (if (gx#stx-pair/null? _%tl93629401%_)
                                      (let ((_g20915_
                                             (gx#syntax-split-splice
                                              _%tl93629401%_
                                              '0)))
                                        (begin
                                          (let ((_g20916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20915_)
                                                       (##values-length
                                                        _g20915_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20916_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20916_)))
                                          (let ((_%target93639404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20915_ 0)))
                                                (_%tl93659407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20915_ 1))))
                                            (if (gx#stx-null? _%tl93659407%_)
                                                (letrec ((_%loop93669410%_
                                                          (lambda (_%hd93649414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93709417%_)
                    (if (gx#stx-pair? _%hd93649414%_)
                        (let ((_%e93679420%_ (gx#syntax-e _%hd93649414%_)))
                          (let ((_%lp-hd93689424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93679420%_)))
                                (_%lp-tl93699427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93679420%_))))
                            (_%loop93669410%_
                             _%lp-tl93699427%_
                             (cons _%lp-hd93689424%_ _%clause93709417%_))))
                        (let ((_%clause93719430%_
                               (reverse _%clause93709417%_)))
                          ((lambda (_%L9434%_ _%L9436%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%L9436%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94539456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94549459%_)
                            (cons _%g94539456%_ _%g94549459%_))
                          '()
                          _%L9434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93719430%_
                           _%hd93619398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93669410%_
                                                   _%target93639404%_
                                                   '()))
                                                (_%g93539377%_
                                                 _%g93549381%_)))))
                                      (_%g93539377%_ _%g93549381%_))))
                              (_%g93539377%_ _%g93549381%_))))
                      (_%g93539377%_ _%g93549381%_)))))
          (_%g93529462%_ _%$stx9349%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9467%_)
        (letrec ((_%parse-clauses9470%_
                  (lambda (_%e11945%_ _%clauses11947%_)
                    (let _%lp11949%_ ((_%rest11952%_ _%clauses11947%_)
                                      (_%datums11954%_ '())
                                      (_%dispatch11955%_ '())
                                      (_%default11956%_ '#f))
                      (let* ((_%__stx1954119542%_ _%rest11952%_)
                             (_%g1195911971%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1954119542%_))))
                        (let ((_%__kont1954419545%_
                               (lambda (_%L12003%_ _%L12005%_)
                                 (let* ((_%__stx1944519446%_ _%L12005%_)
                                        (_%g1202312096%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1944519446%_))))
                                   (let ((_%__kont1944819449%_
                                          (lambda (_%L12461%_)
                                            (if (gx#stx-null? _%L12003%_)
                                                (let* ((_%g1247612484%_
                                                        (lambda (_%g1247712480%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1247712480%_)))
                                                       (_%g1247512503%_
                                                        (lambda (_%g1247712488%_)
                                                          ((lambda (_%L12491%_)
                                                             (_%lp11949%_
                                                              '()
                                                              _%datums11954%_
                                                              _%dispatch11955%_
                                                              (cons _%L12461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L12491%_ '()))))
                   _%g1247712488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1247512503%_ _%e11945%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9467%_
                                                 _%L12005%_))))
                                         (_%__kont1945019451%_
                                          (lambda (_%L12401%_)
                                            (if (gx#stx-null? _%L12003%_)
                                                (_%lp11949%_
                                                 '()
                                                 _%datums11954%_
                                                 _%dispatch11955%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1241512418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1241612421%_)
                        (cons _%g1241512418%_ _%g1241612421%_))
                      '()
                      _%L12401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9467%_
                                                 _%L12005%_))))
                                         (_%__kont1945419455%_
                                          (lambda (_%L12286%_ _%L12288%_)
                                            (if (null? (foldr (lambda (_%g1230612309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1230712312%_)
                        (cons _%g1230612309%_ _%g1230712312%_))
                      '()
                      _%L12288%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11949%_
                                                 _%L12003%_
                                                 _%datums11954%_
                                                 _%dispatch11955%_
                                                 _%default11956%_)
                                                (let* ((_%g1231512323%_
                                                        (lambda (_%g1231612319%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1231612319%_)))
                                                       (_%g1231412350%_
                                                        (lambda (_%g1231612327%_)
                                                          ((lambda (_%L12330%_)
                                                             (_%lp11949%_
                                                              _%L12003%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1234112344%_
                                                 _%g1234212347%_)
                                          (cons _%g1234112344%_
                                                _%g1234212347%_))
                                        '()
                                        _%L12288%_))
                            _%datums11954%_)
                      (cons (cons _%L12286%_ (cons _%L12330%_ '()))
                            _%dispatch11955%_)
                      _%default11956%_))
                   _%g1231612327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1231412350%_
                                                   _%e11945%_)))))
                                         (_%__kont1945819459%_
                                          (lambda (_%L12173%_ _%L12175%_)
                                            (if (null? (foldr (lambda (_%g1219412197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1219512200%_)
                        (cons _%g1219412197%_ _%g1219512200%_))
                      '()
                      _%L12175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11949%_
                                                 _%L12003%_
                                                 _%datums11954%_
                                                 _%dispatch11955%_
                                                 _%default11956%_)
                                                (_%lp11949%_
                                                 _%L12003%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1220212205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1220312208%_)
                             (cons _%g1220212205%_ _%g1220312208%_))
                           '()
                           _%L12175%_))
               _%datums11954%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1221012213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1221112216%_)
                              (cons _%g1221012213%_ _%g1221112216%_))
                            '()
                            _%L12173%_))
               _%dispatch11955%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11956%_)))))
                                     (let* ((_%__match1953819539%_
                                             (lambda (_%e1207012103%_
                                                      _%hd1207112107%_
                                                      _%tl1207212110%_
                                                      _%__splice1946019461%_
                                                      _%target1207312113%_
                                                      _%tl1207512116%_)
                                               (letrec ((_%loop1207612119%_
                                                         (lambda (_%hd1207412123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1208012126%_)
                   (if (gx#stx-pair? _%hd1207412123%_)
                       (let ((_%e1207712129%_ (gx#syntax-e _%hd1207412123%_)))
                         (let ((_%lp-tl1207912136%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1207712129%_)))
                               (_%lp-hd1207812133%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1207712129%_))))
                           (_%loop1207612119%_
                            _%lp-tl1207912136%_
                            (cons _%lp-hd1207812133%_ _%datum1208012126%_))))
                       (let ((_%datum1208112139%_
                              (reverse _%datum1208012126%_)))
                         (if (gx#stx-pair/null? _%tl1207212110%_)
                             (let ((_%__splice1946219463%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1207212110%_
                                     '0)))
                               (let ((_%tl1208412146%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1946219463%_
                                         '1)))
                                     (_%target1208212143%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1946219463%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1208412146%_)
                                     (letrec ((_%loop1208512149%_
                                               (lambda (_%hd1208312153%_
                                                        _%body1208912156%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1208312153%_)
                                                     (let ((_%e1208612159%_
                                                            (gx#syntax-e
                                                             _%hd1208312153%_)))
                                                       (let ((_%lp-tl1208812166%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1208612159%_)))
                     (_%lp-hd1208712163%_
                      (let () (declare (not safe)) (##car _%e1208612159%_))))
                 (_%loop1208512149%_
                  _%lp-tl1208812166%_
                  (cons _%lp-hd1208712163%_ _%body1208912156%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1209012169%_
                                                            (reverse _%body1208912156%_)))
                                                       (_%__kont1945819459%_
                                                        _%body1209012169%_
                                                        _%datum1208112139%_))))))
                                       (_%loop1208512149%_
                                        _%target1208212143%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1202312096%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1202312096%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1207612119%_
                                                  _%target1207312113%_
                                                  '()))))
                                            (_%__match1952419525%_
                                             (lambda (_%e1205012226%_
                                                      _%hd1205112230%_
                                                      _%tl1205212233%_
                                                      _%__splice1945619457%_
                                                      _%target1205312236%_
                                                      _%tl1205512239%_)
                                               (letrec ((_%loop1205612242%_
                                                         (lambda (_%hd1205412246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1206012249%_)
                   (if (gx#stx-pair? _%hd1205412246%_)
                       (let ((_%e1205712252%_ (gx#syntax-e _%hd1205412246%_)))
                         (let ((_%lp-tl1205912259%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1205712252%_)))
                               (_%lp-hd1205812256%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1205712252%_))))
                           (_%loop1205612242%_
                            _%lp-tl1205912259%_
                            (cons _%lp-hd1205812256%_ _%datum1206012249%_))))
                       (let ((_%datum1206112262%_
                              (reverse _%datum1206012249%_)))
                         (if (gx#stx-pair? _%tl1205212233%_)
                             (let ((_%e1206212266%_
                                    (gx#syntax-e _%tl1205212233%_)))
                               (let ((_%tl1206412273%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1206212266%_)))
                                     (_%hd1206312270%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1206212266%_))))
                                 (if (gx#identifier? _%hd1206312270%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20917_|
                                          _%hd1206312270%_)
                                         (if (gx#stx-pair? _%tl1206412273%_)
                                             (let ((_%e1206512276%_
                                                    (gx#syntax-e
                                                     _%tl1206412273%_)))
                                               (let ((_%tl1206712283%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1206512276%_)))
                                                     (_%hd1206612280%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1206512276%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1206712283%_)
                                                     (_%__kont1945419455%_
                                                      _%hd1206612280%_
                                                      _%datum1206112262%_)
                                                     (_%__match1953819539%_
                                                      _%e1205012226%_
                                                      _%hd1205112230%_
                                                      _%tl1205212233%_
                                                      _%__splice1945619457%_
                                                      _%target1205312236%_
                                                      _%tl1205512239%_))))
                                             (_%__match1953819539%_
                                              _%e1205012226%_
                                              _%hd1205112230%_
                                              _%tl1205212233%_
                                              _%__splice1945619457%_
                                              _%target1205312236%_
                                              _%tl1205512239%_))
                                         (_%__match1953819539%_
                                          _%e1205012226%_
                                          _%hd1205112230%_
                                          _%tl1205212233%_
                                          _%__splice1945619457%_
                                          _%target1205312236%_
                                          _%tl1205512239%_))
                                     (_%__match1953819539%_
                                      _%e1205012226%_
                                      _%hd1205112230%_
                                      _%tl1205212233%_
                                      _%__splice1945619457%_
                                      _%target1205312236%_
                                      _%tl1205512239%_))))
                             (_%__match1953819539%_
                              _%e1205012226%_
                              _%hd1205112230%_
                              _%tl1205212233%_
                              _%__splice1945619457%_
                              _%target1205312236%_
                              _%tl1205512239%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1205612242%_
                                                  _%target1205312236%_
                                                  '()))))
                                            (_%__match1951019511%_
                                             (lambda (_%e1203612361%_
                                                      _%hd1203712365%_
                                                      _%tl1203812368%_
                                                      _%__splice1945219453%_
                                                      _%target1203912371%_
                                                      _%tl1204112374%_)
                                               (letrec ((_%loop1204212377%_
                                                         (lambda (_%hd1204012381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1204612384%_)
                   (if (gx#stx-pair? _%hd1204012381%_)
                       (let ((_%e1204312387%_ (gx#syntax-e _%hd1204012381%_)))
                         (let ((_%lp-tl1204512394%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1204312387%_)))
                               (_%lp-hd1204412391%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1204312387%_))))
                           (_%loop1204212377%_
                            _%lp-tl1204512394%_
                            (cons _%lp-hd1204412391%_ _%body1204612384%_))))
                       (let ((_%body1204712397%_ (reverse _%body1204612384%_)))
                         (_%__kont1945019451%_ _%body1204712397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1204212377%_
                                                  _%target1203912371%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1944519446%_)
                                           (let ((_%e1202612431%_
                                                  (gx#syntax-e
                                                   _%__stx1944519446%_)))
                                             (let ((_%tl1202812438%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1202612431%_)))
                                                   (_%hd1202712435%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1202612431%_))))
                                               (if (gx#identifier?
                                                    _%hd1202712435%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20918_|
                                                        _%hd1202712435%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1202812438%_)
                                                           (let ((_%e1202912441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1202812438%_)))
                     (let ((_%tl1203112448%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1202912441%_)))
                           (_%hd1203012445%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1202912441%_))))
                       (if (gx#identifier? _%hd1203012445%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20919_|
                                _%hd1203012445%_)
                               (if (gx#stx-pair? _%tl1203112448%_)
                                   (let ((_%e1203212451%_
                                          (gx#syntax-e _%tl1203112448%_)))
                                     (let ((_%tl1203412458%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1203212451%_)))
                                           (_%hd1203312455%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1203212451%_))))
                                       (if (gx#stx-null? _%tl1203412458%_)
                                           (_%__kont1944819449%_
                                            _%hd1203312455%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1202812438%_)
                                               (let ((_%__splice1945219453%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1202812438%_
                                                       '0)))
                                                 (let ((_%tl1204112374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945219453%_
                                                           '1)))
                                                       (_%target1203912371%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945219453%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1204112374%_)
                                                       (_%__match1951019511%_
                                                        _%e1202612431%_
                                                        _%hd1202712435%_
                                                        _%tl1202812438%_
                                                        _%__splice1945219453%_
                                                        _%target1203912371%_
                                                        _%tl1204112374%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1202712435%_)
                                                           (let ((_%__splice1945619457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1202712435%_
                           '0)))
                     (let ((_%tl1205512239%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945619457%_ '1)))
                           (_%target1205312236%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945619457%_ '0))))
                       (if (gx#stx-null? _%tl1205512239%_)
                           (_%__match1952419525%_
                            _%e1202612431%_
                            _%hd1202712435%_
                            _%tl1202812438%_
                            _%__splice1945619457%_
                            _%target1205312236%_
                            _%tl1205512239%_)
                           (let () (declare (not safe)) (_%g1202312096%_)))))
                   (let () (declare (not safe)) (_%g1202312096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1202712435%_)
                                                   (let ((_%__splice1945619457%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202712435%_
                                                           '0)))
                                                     (let ((_%tl1205512239%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945619457%_
                                                               '1)))
                                                           (_%target1205312236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945619457%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205512239%_)
                                                           (_%__match1952419525%_
                                                            _%e1202612431%_
                                                            _%hd1202712435%_
                                                            _%tl1202812438%_
                                                            _%__splice1945619457%_
                                                            _%target1205312236%_
                                                            _%tl1205512239%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1202312096%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202312096%_)))))))
                                   (if (gx#stx-pair/null? _%tl1202812438%_)
                                       (let ((_%__splice1945219453%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1202812438%_
                                               '0)))
                                         (let ((_%tl1204112374%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945219453%_
                                                   '1)))
                                               (_%target1203912371%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945219453%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1204112374%_)
                                               (_%__match1951019511%_
                                                _%e1202612431%_
                                                _%hd1202712435%_
                                                _%tl1202812438%_
                                                _%__splice1945219453%_
                                                _%target1203912371%_
                                                _%tl1204112374%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1202712435%_)
                                                   (let ((_%__splice1945619457%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1202712435%_
                                                           '0)))
                                                     (let ((_%tl1205512239%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945619457%_
                                                               '1)))
                                                           (_%target1205312236%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1945619457%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1205512239%_)
                                                           (_%__match1952419525%_
                                                            _%e1202612431%_
                                                            _%hd1202712435%_
                                                            _%tl1202812438%_
                                                            _%__splice1945619457%_
                                                            _%target1205312236%_
                                                            _%tl1205512239%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1202312096%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202312096%_))))))
                                       (if (gx#stx-pair/null? _%hd1202712435%_)
                                           (let ((_%__splice1945619457%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202712435%_
                                                   '0)))
                                             (let ((_%tl1205512239%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945619457%_
                                                       '1)))
                                                   (_%target1205312236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945619457%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205512239%_)
                                                   (_%__match1952419525%_
                                                    _%e1202612431%_
                                                    _%hd1202712435%_
                                                    _%tl1202812438%_
                                                    _%__splice1945619457%_
                                                    _%target1205312236%_
                                                    _%tl1205512239%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202312096%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202312096%_)))))
                               (if (gx#stx-pair/null? _%tl1202812438%_)
                                   (let ((_%__splice1945219453%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1202812438%_
                                           '0)))
                                     (let ((_%tl1204112374%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945219453%_
                                               '1)))
                                           (_%target1203912371%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945219453%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1204112374%_)
                                           (_%__match1951019511%_
                                            _%e1202612431%_
                                            _%hd1202712435%_
                                            _%tl1202812438%_
                                            _%__splice1945219453%_
                                            _%target1203912371%_
                                            _%tl1204112374%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1202712435%_)
                                               (let ((_%__splice1945619457%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1202712435%_
                                                       '0)))
                                                 (let ((_%tl1205512239%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945619457%_
                                                           '1)))
                                                       (_%target1205312236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1945619457%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1205512239%_)
                                                       (_%__match1952419525%_
                                                        _%e1202612431%_
                                                        _%hd1202712435%_
                                                        _%tl1202812438%_
                                                        _%__splice1945619457%_
                                                        _%target1205312236%_
                                                        _%tl1205512239%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1202312096%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202312096%_))))))
                                   (if (gx#stx-pair/null? _%hd1202712435%_)
                                       (let ((_%__splice1945619457%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1202712435%_
                                               '0)))
                                         (let ((_%tl1205512239%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945619457%_
                                                   '1)))
                                               (_%target1205312236%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1945619457%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1205512239%_)
                                               (_%__match1952419525%_
                                                _%e1202612431%_
                                                _%hd1202712435%_
                                                _%tl1202812438%_
                                                _%__splice1945619457%_
                                                _%target1205312236%_
                                                _%tl1205512239%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1202312096%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1202312096%_)))))
                           (if (gx#stx-pair/null? _%tl1202812438%_)
                               (let ((_%__splice1945219453%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1202812438%_
                                       '0)))
                                 (let ((_%tl1204112374%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1945219453%_
                                           '1)))
                                       (_%target1203912371%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1945219453%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1204112374%_)
                                       (_%__match1951019511%_
                                        _%e1202612431%_
                                        _%hd1202712435%_
                                        _%tl1202812438%_
                                        _%__splice1945219453%_
                                        _%target1203912371%_
                                        _%tl1204112374%_)
                                       (if (gx#stx-pair/null? _%hd1202712435%_)
                                           (let ((_%__splice1945619457%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1202712435%_
                                                   '0)))
                                             (let ((_%tl1205512239%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945619457%_
                                                       '1)))
                                                   (_%target1205312236%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1945619457%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1205512239%_)
                                                   (_%__match1952419525%_
                                                    _%e1202612431%_
                                                    _%hd1202712435%_
                                                    _%tl1202812438%_
                                                    _%__splice1945619457%_
                                                    _%target1205312236%_
                                                    _%tl1205512239%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1202312096%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202312096%_))))))
                               (if (gx#stx-pair/null? _%hd1202712435%_)
                                   (let ((_%__splice1945619457%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202712435%_
                                           '0)))
                                     (let ((_%tl1205512239%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945619457%_
                                               '1)))
                                           (_%target1205312236%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945619457%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205512239%_)
                                           (_%__match1952419525%_
                                            _%e1202612431%_
                                            _%hd1202712435%_
                                            _%tl1202812438%_
                                            _%__splice1945619457%_
                                            _%target1205312236%_
                                            _%tl1205512239%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202312096%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202312096%_)))))))
                   (if (gx#stx-pair/null? _%tl1202812438%_)
                       (let ((_%__splice1945219453%_
                              (gx#syntax-split-splice->vector
                               _%tl1202812438%_
                               '0)))
                         (let ((_%tl1204112374%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1945219453%_ '1)))
                               (_%target1203912371%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1945219453%_ '0))))
                           (if (gx#stx-null? _%tl1204112374%_)
                               (_%__match1951019511%_
                                _%e1202612431%_
                                _%hd1202712435%_
                                _%tl1202812438%_
                                _%__splice1945219453%_
                                _%target1203912371%_
                                _%tl1204112374%_)
                               (if (gx#stx-pair/null? _%hd1202712435%_)
                                   (let ((_%__splice1945619457%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1202712435%_
                                           '0)))
                                     (let ((_%tl1205512239%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945619457%_
                                               '1)))
                                           (_%target1205312236%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1945619457%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1205512239%_)
                                           (_%__match1952419525%_
                                            _%e1202612431%_
                                            _%hd1202712435%_
                                            _%tl1202812438%_
                                            _%__splice1945619457%_
                                            _%target1205312236%_
                                            _%tl1205512239%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202312096%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202312096%_))))))
                       (if (gx#stx-pair/null? _%hd1202712435%_)
                           (let ((_%__splice1945619457%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1202712435%_
                                   '0)))
                             (let ((_%tl1205512239%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1945619457%_
                                       '1)))
                                   (_%target1205312236%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1945619457%_
                                       '0))))
                               (if (gx#stx-null? _%tl1205512239%_)
                                   (_%__match1952419525%_
                                    _%e1202612431%_
                                    _%hd1202712435%_
                                    _%tl1202812438%_
                                    _%__splice1945619457%_
                                    _%target1205312236%_
                                    _%tl1205512239%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1202312096%_)))))
                           (let () (declare (not safe)) (_%g1202312096%_)))))
               (if (gx#stx-pair/null? _%hd1202712435%_)
                   (let ((_%__splice1945619457%_
                          (gx#syntax-split-splice->vector
                           _%hd1202712435%_
                           '0)))
                     (let ((_%tl1205512239%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945619457%_ '1)))
                           (_%target1205312236%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1945619457%_ '0))))
                       (if (gx#stx-null? _%tl1205512239%_)
                           (_%__match1952419525%_
                            _%e1202612431%_
                            _%hd1202712435%_
                            _%tl1202812438%_
                            _%__splice1945619457%_
                            _%target1205312236%_
                            _%tl1205512239%_)
                           (let () (declare (not safe)) (_%g1202312096%_)))))
                   (let () (declare (not safe)) (_%g1202312096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1202712435%_)
                                                       (let ((_%__splice1945619457%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1202712435%_
                                                               '0)))
                                                         (let ((_%tl1205512239%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1945619457%_ '1)))
                       (_%target1205312236%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1945619457%_ '0))))
                   (if (gx#stx-null? _%tl1205512239%_)
                       (_%__match1952419525%_
                        _%e1202612431%_
                        _%hd1202712435%_
                        _%tl1202812438%_
                        _%__splice1945619457%_
                        _%target1205312236%_
                        _%tl1205512239%_)
                       (let () (declare (not safe)) (_%g1202312096%_)))))
               (let () (declare (not safe)) (_%g1202312096%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1202312096%_))))))))
                              (_%__kont1954619547%_
                               (lambda ()
                                 (_%check-duplicate-datums9472%_
                                  _%datums11954%_)
                                 (values (reverse _%datums11954%_)
                                         (reverse _%dispatch11955%_)
                                         (let ((_%$e11982%_ _%default11956%_))
                                           (if _%$e11982%_
                                               _%$e11982%_
                                               '#!void))))))
                          (let ((_%g1195811986%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1954119542%_)
                                       (_%__kont1954619547%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1195911971%_))))))
                            (if (gx#stx-pair? _%__stx1954119542%_)
                                (let ((_%e1196311993%_
                                       (gx#syntax-e _%__stx1954119542%_)))
                                  (let ((_%tl1196512000%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1196311993%_)))
                                        (_%hd1196411997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1196311993%_))))
                                    (_%__kont1954419545%_
                                     _%tl1196512000%_
                                     _%hd1196411997%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1195811986%_)))))))))
                 (_%check-duplicate-datums9472%_
                  (lambda (_%datums11933%_)
                    (let ((_%ht11936%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11939%_)
                         (for-each
                          (lambda (_%datum11942%_)
                            (if (hash-get _%ht11936%_ _%datum11942%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9467%_
                                 _%datum11942%_)
                                (hash-put! _%ht11936%_ _%datum11942%_ '#t)))
                          _%lst11939%_))
                       _%datums11933%_))))
                 (_%count-datums9473%_
                  (lambda (_%datums11926%_)
                    (foldl (lambda (_%lst11929%_ _%r11931%_)
                             (+ (length _%lst11929%_) _%r11931%_))
                           '0
                           _%datums11926%_)))
                 (_%symbolic-datums?9474%_
                  (lambda (_%datums11920%_)
                    (andmap (lambda (_%lst11923%_)
                              (andmap symbol? _%lst11923%_))
                            _%datums11920%_)))
                 (_%char-datums?9475%_
                  (lambda (_%datums11914%_)
                    (andmap (lambda (_%lst11917%_) (andmap char? _%lst11917%_))
                            _%datums11914%_)))
                 (_%fixnum-datums?9476%_
                  (lambda (_%datums11908%_)
                    (andmap (lambda (_%lst11911%_)
                              (andmap fixnum? _%lst11911%_))
                            _%datums11908%_)))
                 (_%eq-datums?9477%_
                  (lambda (_%datums11891%_)
                    (andmap (lambda (_%lst11894%_)
                              (andmap (lambda (_%x11897%_)
                                        (let ((_%$e11900%_
                                               (symbol? _%x11897%_)))
                                          (if _%$e11900%_
                                              _%$e11900%_
                                              (let ((_%$e11904%_
                                                     (keyword? _%x11897%_)))
                                                (if _%$e11904%_
                                                    _%$e11904%_
                                                    (immediate?
                                                     _%x11897%_))))))
                                      _%lst11894%_))
                            _%datums11891%_)))
                 (_%generate-simple-case9478%_
                  (lambda (_%e11655%_
                           _%datums11657%_
                           _%dispatch11658%_
                           _%default11659%_)
                    (let* ((_%g1166111669%_
                            (lambda (_%g1166211665%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1166211665%_)))
                           (_%g1166011887%_
                            (lambda (_%g1166211673%_)
                              ((lambda (_%L11676%_)
                                 (let _%recur11688%_ ((_%datums11691%_
                                                       _%datums11657%_)
                                                      (_%dispatch11693%_
                                                       _%dispatch11658%_))
                                   (let* ((_%__stx1955919560%_ _%datums11691%_)
                                          (_%g1169611717%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1955919560%_))))
                                     (let ((_%__kont1956219563%_
                                            (lambda (_%L11775%_ _%L11777%_)
                                              (let* ((_%g1179711809%_
                                                      (lambda (_%g1179811805%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1179811805%_)))
                                                     (_%g1179611879%_
                                                      (lambda (_%g1179811813%_)
                                                        (if (gx#stx-pair?
                                                             _%g1179811813%_)
                                                            (let ((_%e1180111816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1179811813%_)))
                      (let ((_%hd1180211820%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1180111816%_)))
                            (_%tl1180311823%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1180111816%_))))
                        ((lambda (_%L11826%_ _%L11828%_)
                           (let* ((_%g1184011848%_
                                   (lambda (_%g1184111844%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1184111844%_)))
                                  (_%g1183911875%_
                                   (lambda (_%g1184111852%_)
                                     ((lambda (_%L11855%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1186611869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1186711872%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1186611869%_
                                             (cons _%L11676%_ '())))
                                 _%g1186711872%_))
                         '()
                         _%L11777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%L11828%_
                                                          (cons _%L11855%_
                                                                '())))))
                                      _%g1184111852%_))))
                             (_%g1183911875%_
                              (_%recur11688%_ _%L11775%_ _%L11826%_))))
                         _%tl1180311823%_
                         _%hd1180211820%_)))
                    (_%g1179711809%_ _%g1179811813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1179611879%_
                                                 _%dispatch11693%_))))
                                           (_%__kont1956619567%_
                                            (lambda () _%default11659%_)))
                                       (let ((_%__match1958219583%_
                                              (lambda (_%e1170011735%_
                                                       _%hd1170111739%_
                                                       _%tl1170211742%_
                                                       _%__splice1956419565%_
                                                       _%target1170311745%_
                                                       _%tl1170511748%_)
                                                (letrec ((_%loop1170611751%_
                                                          (lambda (_%hd1170411755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1171011758%_)
                    (if (gx#stx-pair? _%hd1170411755%_)
                        (let ((_%e1170711761%_ (gx#syntax-e _%hd1170411755%_)))
                          (let ((_%lp-tl1170911768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1170711761%_)))
                                (_%lp-hd1170811765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1170711761%_))))
                            (_%loop1170611751%_
                             _%lp-tl1170911768%_
                             (cons _%lp-hd1170811765%_ _%datum1171011758%_))))
                        (let ((_%datum1171111771%_
                               (reverse _%datum1171011758%_)))
                          (_%__kont1956219563%_
                           _%tl1170211742%_
                           _%datum1171111771%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1170611751%_
                                                   _%target1170311745%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1955919560%_)
                                             (let ((_%e1170011735%_
                                                    (gx#syntax-e
                                                     _%__stx1955919560%_)))
                                               (let ((_%tl1170211742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1170011735%_)))
                                                     (_%hd1170111739%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1170011735%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1170111739%_)
                                                     (let ((_%__splice1956419565%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1170111739%_
                                                             '0)))
                                                       (let ((_%tl1170511748%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1956419565%_ '1)))
                     (_%target1170311745%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1956419565%_ '0))))
                 (if (gx#stx-null? _%tl1170511748%_)
                     (_%__match1958219583%_
                      _%e1170011735%_
                      _%hd1170111739%_
                      _%tl1170211742%_
                      _%__splice1956419565%_
                      _%target1170311745%_
                      _%tl1170511748%_)
                     (_%__kont1956619567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1956619567%_))))
                                             (_%__kont1956619567%_)))))))
                               _%g1166211673%_))))
                      (_%g1166011887%_ _%e11655%_))))
                 (_%datum-dispatch-index9479%_
                  (lambda (_%datums11527%_)
                    (let _%lp11530%_ ((_%rest11533%_ _%datums11527%_)
                                      (_%ix11535%_ '0)
                                      (_%r11536%_ '()))
                      (let* ((_%__stx1958519586%_ _%rest11533%_)
                             (_%g1153911560%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1958519586%_))))
                        (let ((_%__kont1958819589%_
                               (lambda (_%L11618%_ _%L11620%_)
                                 (_%lp11530%_
                                  _%L11618%_
                                  (fx1+ _%ix11535%_)
                                  (foldl (lambda (_%x11639%_ _%r11641%_)
                                           (cons (cons _%x11639%_ _%ix11535%_)
                                                 _%r11641%_))
                                         _%r11536%_
                                         (foldr (lambda (_%g1164211645%_
                                                         _%g1164311648%_)
                                                  (cons _%g1164211645%_
                                                        _%g1164311648%_))
                                                '()
                                                _%L11620%_)))))
                              (_%__kont1959219593%_ (lambda () _%r11536%_)))
                          (let ((_%__match1960819609%_
                                 (lambda (_%e1154311578%_
                                          _%hd1154411582%_
                                          _%tl1154511585%_
                                          _%__splice1959019591%_
                                          _%target1154611588%_
                                          _%tl1154811591%_)
                                   (letrec ((_%loop1154911594%_
                                             (lambda (_%hd1154711598%_
                                                      _%datum1155311601%_)
                                               (if (gx#stx-pair?
                                                    _%hd1154711598%_)
                                                   (let ((_%e1155011604%_
                                                          (gx#syntax-e
                                                           _%hd1154711598%_)))
                                                     (let ((_%lp-tl1155211611%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1155011604%_)))
                                                           (_%lp-hd1155111608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1155011604%_))))
                                                       (_%loop1154911594%_
                                                        _%lp-tl1155211611%_
                                                        (cons _%lp-hd1155111608%_
                                                              _%datum1155311601%_))))
                                                   (let ((_%datum1155411614%_
                                                          (reverse _%datum1155311601%_)))
                                                     (_%__kont1958819589%_
                                                      _%tl1154511585%_
                                                      _%datum1155411614%_))))))
                                     (_%loop1154911594%_
                                      _%target1154611588%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1958519586%_)
                                (let ((_%e1154311578%_
                                       (gx#syntax-e _%__stx1958519586%_)))
                                  (let ((_%tl1154511585%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1154311578%_)))
                                        (_%hd1154411582%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1154311578%_))))
                                    (if (gx#stx-pair/null? _%hd1154411582%_)
                                        (let ((_%__splice1959019591%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1154411582%_
                                                '0)))
                                          (let ((_%tl1154811591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1959019591%_
                                                    '1)))
                                                (_%target1154611588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1959019591%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1154811591%_)
                                                (_%__match1960819609%_
                                                 _%e1154311578%_
                                                 _%hd1154411582%_
                                                 _%tl1154511585%_
                                                 _%__splice1959019591%_
                                                 _%target1154611588%_
                                                 _%tl1154811591%_)
                                                (_%__kont1959219593%_))))
                                        (_%__kont1959219593%_))))
                                (_%__kont1959219593%_))))))))
                 (_%duplicate-indexes?9480%_
                  (lambda (_%xs11508%_)
                    (let ((_%ht11511%_ (make-hash-table-eq)))
                      (let _%lp11514%_ ((_%rest11517%_ _%xs11508%_))
                        (if (pair? _%rest11517%_)
                            (let* ((_%ix11520%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11517%_)))
                                   (_%$e11523%_
                                    (hash-get _%ht11511%_ _%ix11520%_)))
                              (if _%$e11523%_
                                  _%$e11523%_
                                  (begin
                                    (hash-put! _%ht11511%_ _%ix11520%_ '#t)
                                    (_%lp11514%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11517%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9481%_
                  (lambda (_%indexes11477%_ _%hash-e11479%_)
                    (let _%lp11481%_ ((_%len11484%_
                                       (* '2 (length _%indexes11477%_))))
                      (let* ((_%hs11490%_
                              (map (lambda (_%x11487%_)
                                     (_%hash-e11479%_ (car _%x11487%_)))
                                   _%indexes11477%_))
                             (_%xs11496%_
                              (map (lambda (_%h11493%_)
                                     (fxmodulo _%h11493%_ _%len11484%_))
                                   _%hs11490%_)))
                        (if (_%duplicate-indexes?9480%_ _%xs11496%_)
                            (if (< _%len11484%_ '131072)
                                (_%lp11481%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11484%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9467%_
                                 _%indexes11477%_))
                            (let ((_%tab11501%_
                                   (make-vector _%len11484%_ '#f)))
                              (for-each
                               (lambda (_%entry11504%_ _%x11506%_)
                                 (vector-set!
                                  _%tab11501%_
                                  _%x11506%_
                                  _%entry11504%_))
                               _%indexes11477%_
                               _%xs11496%_)
                              _%tab11501%_))))))
                 (_%generate-symbolic-dispatch9482%_
                  (lambda (_%e11080%_
                           _%datums11082%_
                           _%dispatch11083%_
                           _%default11084%_)
                    (let* ((_%indexes11086%_
                            (_%datum-dispatch-index9479%_ _%datums11082%_))
                           (_%tab11089%_
                            (_%generate-hash-dispatch-table9481%_
                             _%indexes11086%_
                             symbol-hash)))
                      (if (= (length _%dispatch11083%_) '1)
                          (let* ((_%tab11097%_
                                  (vector-map
                                   (lambda (_%x11094%_)
                                     (if _%x11094%_ (car _%x11094%_) '#f))
                                   _%tab11089%_))
                                 (_%g1110011138%_
                                  (lambda (_%g1110111134%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1110111134%_)))
                                 (_%g1109911269%_
                                  (lambda (_%g1110111142%_)
                                    (if (gx#stx-pair? _%g1110111142%_)
                                        (let ((_%e1110911145%_
                                               (gx#syntax-e _%g1110111142%_)))
                                          (let ((_%hd1111011149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1110911145%_)))
                                                (_%tl1111111152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1110911145%_))))
                                            (if (gx#stx-pair? _%tl1111111152%_)
                                                (let ((_%e1111211155%_
                                                       (gx#syntax-e
                                                        _%tl1111111152%_)))
                                                  (let ((_%hd1111311159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1111211155%_)))
                                                        (_%tl1111411162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1111211155%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1111411162%_)
                                                        (let ((_%e1111511165%_
                                                               (gx#syntax-e
                                                                _%tl1111411162%_)))
                                                          (let ((_%hd1111611169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1111511165%_)))
                        (_%tl1111711172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1111511165%_))))
                    (if (gx#stx-pair? _%tl1111711172%_)
                        (let ((_%e1111811175%_ (gx#syntax-e _%tl1111711172%_)))
                          (let ((_%hd1111911179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1111811175%_)))
                                (_%tl1112011182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1111811175%_))))
                            (if (gx#stx-pair? _%hd1111911179%_)
                                (let ((_%e1112111185%_
                                       (gx#syntax-e _%hd1111911179%_)))
                                  (let ((_%hd1112211189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1112111185%_)))
                                        (_%tl1112311192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1112111185%_))))
                                    (if (gx#stx-null? _%tl1112311192%_)
                                        (if (gx#stx-pair? _%tl1112011182%_)
                                            (let ((_%e1112411195%_
                                                   (gx#syntax-e
                                                    _%tl1112011182%_)))
                                              (let ((_%hd1112511199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1112411195%_)))
                                                    (_%tl1112611202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1112411195%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1112611202%_)
                                                    (let ((_%e1112711205%_
                                                           (gx#syntax-e
                                                            _%tl1112611202%_)))
                                                      (let ((_%hd1112811209%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1112711205%_)))
                    (_%tl1112911212%_
                     (let () (declare (not safe)) (##cdr _%e1112711205%_))))
                (if (gx#stx-pair? _%tl1112911212%_)
                    (let ((_%e1113011215%_ (gx#syntax-e _%tl1112911212%_)))
                      (let ((_%hd1113111219%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1113011215%_)))
                            (_%tl1113211222%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1113011215%_))))
                        (if (gx#stx-null? _%tl1113211222%_)
                            ((lambda (_%L11225%_
                                      _%L11227%_
                                      _%L11228%_
                                      _%L11229%_
                                      _%L11230%_
                                      _%L11231%_
                                      _%L11232%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%L11231%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%L11228%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%L11230%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L11227%_ '()))
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
                           (cons _%L11232%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%L11232%_
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
                                   (cons _%L11225%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%L11230%_
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
                             (cons _%L11232%_ '())))
                 (cons _%L11229%_ (cons (cons _%L11231%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%L11231%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1113111219%_
                             _%hd1112811209%_
                             _%hd1112511199%_
                             _%hd1112211189%_
                             _%hd1111611169%_
                             _%hd1111311159%_
                             _%hd1111011149%_)
                            (_%g1110011138%_ _%g1110111142%_))))
                    (_%g1110011138%_ _%g1110111142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1110011138%_
                                                     _%g1110111142%_))))
                                            (_%g1110011138%_ _%g1110111142%_))
                                        (_%g1110011138%_ _%g1110111142%_))))
                                (_%g1110011138%_ _%g1110111142%_))))
                        (_%g1110011138%_ _%g1110111142%_))))
                (_%g1110011138%_ _%g1110111142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1110011138%_
                                                 _%g1110111142%_))))
                                        (_%g1110011138%_ _%g1110111142%_)))))
                            (_%g1109911269%_
                             (list _%e11080%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11083%_
                                   _%default11084%_
                                   _%tab11097%_
                                   (vector-length _%tab11097%_))))
                          (let* ((_%g1127311317%_
                                  (lambda (_%g1127411313%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1127411313%_)))
                                 (_%g1127211473%_
                                  (lambda (_%g1127411321%_)
                                    (if (gx#stx-pair? _%g1127411321%_)
                                        (let ((_%e1128211324%_
                                               (gx#syntax-e _%g1127411321%_)))
                                          (let ((_%hd1128311328%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1128211324%_)))
                                                (_%tl1128411331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1128211324%_))))
                                            (if (gx#stx-pair? _%tl1128411331%_)
                                                (let ((_%e1128511334%_
                                                       (gx#syntax-e
                                                        _%tl1128411331%_)))
                                                  (let ((_%hd1128611338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1128511334%_)))
                                                        (_%tl1128711341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1128511334%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1128711341%_)
                                                        (let ((_%e1128811344%_
                                                               (gx#syntax-e
                                                                _%tl1128711341%_)))
                                                          (let ((_%hd1128911348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1128811344%_)))
                        (_%tl1129011351%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1128811344%_))))
                    (if (gx#stx-pair? _%tl1129011351%_)
                        (let ((_%e1129111354%_ (gx#syntax-e _%tl1129011351%_)))
                          (let ((_%hd1129211358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1129111354%_)))
                                (_%tl1129311361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1129111354%_))))
                            (if (gx#stx-pair/null? _%hd1129211358%_)
                                (let ((_g20920_
                                       (gx#syntax-split-splice
                                        _%hd1129211358%_
                                        '0)))
                                  (begin
                                    (let ((_g20921_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20920_)
                                                 (##values-length _g20920_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20921_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20921_)))
                                    (let ((_%target1129411364%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20920_ 0)))
                                          (_%tl1129611367%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20920_ 1))))
                                      (if (gx#stx-null? _%tl1129611367%_)
                                          (letrec ((_%loop1129711370%_
                                                    (lambda (_%hd1129511374%_
                                                             _%dispatch1130111377%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1129511374%_)
                                                          (let ((_%e1129811380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1129511374%_)))
                    (let ((_%lp-hd1129911384%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1129811380%_)))
                          (_%lp-tl1130011387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1129811380%_))))
                      (_%loop1129711370%_
                       _%lp-tl1130011387%_
                       (cons _%lp-hd1129911384%_ _%dispatch1130111377%_))))
                  (let ((_%dispatch1130211390%_
                         (reverse _%dispatch1130111377%_)))
                    (if (gx#stx-pair? _%tl1129311361%_)
                        (let ((_%e1130311394%_ (gx#syntax-e _%tl1129311361%_)))
                          (let ((_%hd1130411398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1130311394%_)))
                                (_%tl1130511401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1130311394%_))))
                            (if (gx#stx-pair? _%tl1130511401%_)
                                (let ((_%e1130611404%_
                                       (gx#syntax-e _%tl1130511401%_)))
                                  (let ((_%hd1130711408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1130611404%_)))
                                        (_%tl1130811411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1130611404%_))))
                                    (if (gx#stx-pair? _%tl1130811411%_)
                                        (let ((_%e1130911414%_
                                               (gx#syntax-e _%tl1130811411%_)))
                                          (let ((_%hd1131011418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1130911414%_)))
                                                (_%tl1131111421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1130911414%_))))
                                            (if (gx#stx-null? _%tl1131111421%_)
                                                ((lambda (_%L11424%_
                                                          _%L11426%_
                                                          _%L11427%_
                                                          _%L11428%_
                                                          _%L11429%_
                                                          _%L11430%_
                                                          _%L11431%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%L11430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%L11427%_ '())))
                                         '()))
                             (cons (cons _%L11429%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L11426%_ '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%L11431%_ '()))
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
                                           (cons _%L11431%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%L11424%_ '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%L11429%_
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
                           (cons _%L11431%_ '())))
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
                                                   (foldr (lambda (_%g1146411467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1146511470%_)
                    (cons _%g1146411467%_ _%g1146511470%_))
                  '()
                  _%L11428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%L11430%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L11430%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L11430%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1131011418%_
                                                 _%hd1130711408%_
                                                 _%hd1130411398%_
                                                 _%dispatch1130211390%_
                                                 _%hd1128911348%_
                                                 _%hd1128611338%_
                                                 _%hd1128311328%_)
                                                (_%g1127311317%_
                                                 _%g1127411321%_))))
                                        (_%g1127311317%_ _%g1127411321%_))))
                                (_%g1127311317%_ _%g1127411321%_))))
                        (_%g1127311317%_ _%g1127411321%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1129711370%_
                                             _%target1129411364%_
                                             '()))
                                          (_%g1127311317%_ _%g1127411321%_)))))
                                (_%g1127311317%_ _%g1127411321%_))))
                        (_%g1127311317%_ _%g1127411321%_))))
                (_%g1127311317%_ _%g1127411321%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1127311317%_
                                                 _%g1127411321%_))))
                                        (_%g1127311317%_ _%g1127411321%_)))))
                            (_%g1127211473%_
                             (list _%e11080%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11083%_
                                   _%default11084%_
                                   _%tab11089%_
                                   (vector-length _%tab11089%_))))))))
                 (_%max-char9483%_
                  (lambda (_%datums11069%_)
                    (foldl (lambda (_%lst11072%_ _%r11074%_)
                             (foldl (lambda (_%char11076%_ _%r11078%_)
                                      (max (char->integer _%char11076%_)
                                           _%r11078%_))
                                    _%r11074%_
                                    _%lst11072%_))
                           '0
                           _%datums11069%_)))
                 (_%generate-char-dispatch-table9484%_
                  (lambda (_%indexes11048%_)
                    (let* ((_%ixs11054%_
                            (map (lambda (_%x11051%_)
                                   (char->integer (car _%x11051%_)))
                                 _%indexes11048%_))
                           (_%len11057%_ (fx1+ (foldl max '0 _%ixs11054%_)))
                           (_%vec11060%_ (make-vector _%len11057%_ '#f)))
                      (for-each
                       (lambda (_%entry11065%_ _%x11067%_)
                         (vector-set!
                          _%vec11060%_
                          _%x11067%_
                          (cdr _%entry11065%_)))
                       _%indexes11048%_
                       _%ixs11054%_)
                      _%vec11060%_)))
                 (_%simple-char-range?9485%_
                  (lambda (_%tab11024%_)
                    (let ((_%end11027%_ (vector-length _%tab11024%_)))
                      (let _%lp11030%_ ((_%i11033%_ '0))
                        (let ((_%ix11036%_
                               (vector-ref _%tab11024%_ _%i11033%_)))
                          (if _%ix11036%_
                              (let _%lp211039%_ ((_%i11042%_
                                                  (fx1+ _%i11033%_)))
                                (if (fx< _%i11042%_ _%end11027%_)
                                    (let ((_%ix*11045%_
                                           (vector-ref
                                            _%tab11024%_
                                            _%i11042%_)))
                                      (if (eq? _%ix11036%_ _%ix*11045%_)
                                          (_%lp211039%_ (fx1+ _%i11042%_))
                                          '#f))
                                    '#t))
                              (_%lp11030%_ (fx1+ _%i11033%_))))))))
                 (_%char-range-start9486%_
                  (lambda (_%tab11015%_)
                    (let _%lp11018%_ ((_%i11021%_ '0))
                      (if (vector-ref _%tab11015%_ _%i11021%_)
                          _%i11021%_
                          (_%lp11018%_ (fx1+ _%i11021%_))))))
                 (_%generate-char-dispatch9487%_
                  (lambda (_%e10638%_
                           _%datums10640%_
                           _%dispatch10641%_
                           _%default10642%_)
                    (if (< (_%max-char9483%_ _%datums10640%_) '128)
                        (let* ((_%indexes10644%_
                                (_%datum-dispatch-index9479%_ _%datums10640%_))
                               (_%tab10647%_
                                (_%generate-char-dispatch-table9484%_
                                 _%indexes10644%_)))
                          (if (_%simple-char-range?9485%_ _%tab10647%_)
                              (let ((_%start10652%_
                                     (_%char-range-start9486%_ _%tab10647%_))
                                    (_%end10654%_
                                     (vector-length _%tab10647%_)))
                                (let* ((_%g1065610690%_
                                        (lambda (_%g1065710686%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1065710686%_)))
                                       (_%g1065510807%_
                                        (lambda (_%g1065710694%_)
                                          (if (gx#stx-pair? _%g1065710694%_)
                                              (let ((_%e1066410697%_
                                                     (gx#syntax-e
                                                      _%g1065710694%_)))
                                                (let ((_%hd1066510701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1066410697%_)))
                                                      (_%tl1066610704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1066410697%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1066610704%_)
                                                      (let ((_%e1066710707%_
                                                             (gx#syntax-e
                                                              _%tl1066610704%_)))
                                                        (let ((_%hd1066810711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1066710707%_)))
                      (_%tl1066910714%_
                       (let () (declare (not safe)) (##cdr _%e1066710707%_))))
                  (if (gx#stx-pair? _%tl1066910714%_)
                      (let ((_%e1067010717%_ (gx#syntax-e _%tl1066910714%_)))
                        (let ((_%hd1067110721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1067010717%_)))
                              (_%tl1067210724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1067010717%_))))
                          (if (gx#stx-pair? _%hd1067110721%_)
                              (let ((_%e1067310727%_
                                     (gx#syntax-e _%hd1067110721%_)))
                                (let ((_%hd1067410731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1067310727%_)))
                                      (_%tl1067510734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1067310727%_))))
                                  (if (gx#stx-null? _%tl1067510734%_)
                                      (if (gx#stx-pair? _%tl1067210724%_)
                                          (let ((_%e1067610737%_
                                                 (gx#syntax-e
                                                  _%tl1067210724%_)))
                                            (let ((_%hd1067710741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1067610737%_)))
                                                  (_%tl1067810744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1067610737%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1067810744%_)
                                                  (let ((_%e1067910747%_
                                                         (gx#syntax-e
                                                          _%tl1067810744%_)))
                                                    (let ((_%hd1068010751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1067910747%_)))
                                                          (_%tl1068110754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1067910747%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1068110754%_)
                                                          (let ((_%e1068210757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1068110754%_)))
                    (let ((_%hd1068310761%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1068210757%_)))
                          (_%tl1068410764%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1068210757%_))))
                      (if (gx#stx-null? _%tl1068410764%_)
                          ((lambda (_%L10767%_
                                    _%L10769%_
                                    _%L10770%_
                                    _%L10771%_
                                    _%L10772%_
                                    _%L10773%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%L10772%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L10770%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%L10773%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%L10773%_ '()))
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
                                       (cons _%L10769%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%L10767%_ '())))
                                 '())))
               (cons _%L10771%_ (cons (cons _%L10772%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%L10772%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1068310761%_
                           _%hd1068010751%_
                           _%hd1067710741%_
                           _%hd1067410731%_
                           _%hd1066810711%_
                           _%hd1066510701%_)
                          (_%g1065610690%_ _%g1065710694%_))))
                  (_%g1065610690%_ _%g1065710694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1065610690%_
                                                   _%g1065710694%_))))
                                          (_%g1065610690%_ _%g1065710694%_))
                                      (_%g1065610690%_ _%g1065710694%_))))
                              (_%g1065610690%_ _%g1065710694%_))))
                      (_%g1065610690%_ _%g1065710694%_))))
              (_%g1065610690%_ _%g1065710694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1065610690%_
                                               _%g1065710694%_)))))
                                  (_%g1065510807%_
                                   (list _%e10638%_
                                         (gx#genident 'default)
                                         _%dispatch10641%_
                                         _%default10642%_
                                         _%start10652%_
                                         _%end10654%_))))
                              (let* ((_%g1081110855%_
                                      (lambda (_%g1081210851%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1081210851%_)))
                                     (_%g1081011011%_
                                      (lambda (_%g1081210859%_)
                                        (if (gx#stx-pair? _%g1081210859%_)
                                            (let ((_%e1082010862%_
                                                   (gx#syntax-e
                                                    _%g1081210859%_)))
                                              (let ((_%hd1082110866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1082010862%_)))
                                                    (_%tl1082210869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1082010862%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1082210869%_)
                                                    (let ((_%e1082310872%_
                                                           (gx#syntax-e
                                                            _%tl1082210869%_)))
                                                      (let ((_%hd1082410876%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1082310872%_)))
                    (_%tl1082510879%_
                     (let () (declare (not safe)) (##cdr _%e1082310872%_))))
                (if (gx#stx-pair? _%tl1082510879%_)
                    (let ((_%e1082610882%_ (gx#syntax-e _%tl1082510879%_)))
                      (let ((_%hd1082710886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1082610882%_)))
                            (_%tl1082810889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1082610882%_))))
                        (if (gx#stx-pair? _%tl1082810889%_)
                            (let ((_%e1082910892%_
                                   (gx#syntax-e _%tl1082810889%_)))
                              (let ((_%hd1083010896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1082910892%_)))
                                    (_%tl1083110899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1082910892%_))))
                                (if (gx#stx-pair/null? _%hd1083010896%_)
                                    (let ((_g20922_
                                           (gx#syntax-split-splice
                                            _%hd1083010896%_
                                            '0)))
                                      (begin
                                        (let ((_g20923_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g20922_)
                                                     (##values-length _g20922_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g20923_ 2)))
                                              (error "Context expects 2 values"
                                                     _g20923_)))
                                        (let ((_%target1083210902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20922_ 0)))
                                              (_%tl1083410905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g20922_ 1))))
                                          (if (gx#stx-null? _%tl1083410905%_)
                                              (letrec ((_%loop1083510908%_
                                                        (lambda (_%hd1083310912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1083910915%_)
                  (if (gx#stx-pair? _%hd1083310912%_)
                      (let ((_%e1083610918%_ (gx#syntax-e _%hd1083310912%_)))
                        (let ((_%lp-hd1083710922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1083610918%_)))
                              (_%lp-tl1083810925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1083610918%_))))
                          (_%loop1083510908%_
                           _%lp-tl1083810925%_
                           (cons _%lp-hd1083710922%_ _%dispatch1083910915%_))))
                      (let ((_%dispatch1084010928%_
                             (reverse _%dispatch1083910915%_)))
                        (if (gx#stx-pair? _%tl1083110899%_)
                            (let ((_%e1084110932%_
                                   (gx#syntax-e _%tl1083110899%_)))
                              (let ((_%hd1084210936%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1084110932%_)))
                                    (_%tl1084310939%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1084110932%_))))
                                (if (gx#stx-pair? _%tl1084310939%_)
                                    (let ((_%e1084410942%_
                                           (gx#syntax-e _%tl1084310939%_)))
                                      (let ((_%hd1084510946%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1084410942%_)))
                                            (_%tl1084610949%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1084410942%_))))
                                        (if (gx#stx-pair? _%tl1084610949%_)
                                            (let ((_%e1084710952%_
                                                   (gx#syntax-e
                                                    _%tl1084610949%_)))
                                              (let ((_%hd1084810956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1084710952%_)))
                                                    (_%tl1084910959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1084710952%_))))
                                                (if (gx#stx-null?
                                                     _%tl1084910959%_)
                                                    ((lambda (_%L10962%_
                                                              _%L10964%_
                                                              _%L10965%_
                                                              _%L10966%_
                                                              _%L10967%_
                                                              _%L10968%_
                                                              _%L10969%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%L10968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%L10965%_
                                                               '())))
                                             '()))
                                 (cons (cons _%L10967%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%L10964%_ '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%L10969%_ '()))
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
                                         (cons _%L10969%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%L10962%_ '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%L10967%_
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
                                                       (foldr (lambda (_%g1100211005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1100311008%_)
                        (cons _%g1100211005%_ _%g1100311008%_))
                      '()
                      _%L10966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%L10968%_ '()) '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%L10968%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%L10968%_ '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1084810956%_
                                                     _%hd1084510946%_
                                                     _%hd1084210936%_
                                                     _%dispatch1084010928%_
                                                     _%hd1082710886%_
                                                     _%hd1082410876%_
                                                     _%hd1082110866%_)
                                                    (_%g1081110855%_
                                                     _%g1081210859%_))))
                                            (_%g1081110855%_
                                             _%g1081210859%_))))
                                    (_%g1081110855%_ _%g1081210859%_))))
                            (_%g1081110855%_ _%g1081210859%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1083510908%_
                                                 _%target1083210902%_
                                                 '()))
                                              (_%g1081110855%_
                                               _%g1081210859%_)))))
                                    (_%g1081110855%_ _%g1081210859%_))))
                            (_%g1081110855%_ _%g1081210859%_))))
                    (_%g1081110855%_ _%g1081210859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1081110855%_
                                                     _%g1081210859%_))))
                                            (_%g1081110855%_
                                             _%g1081210859%_)))))
                                (_%g1081011011%_
                                 (list _%e10638%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10641%_
                                       _%default10642%_
                                       _%tab10647%_
                                       (vector-length _%tab10647%_))))))
                        (_%generate-char-dispatch/hash9488%_
                         _%e10638%_
                         _%datums10640%_
                         _%dispatch10641%_
                         _%default10642%_))))
                 (_%generate-char-dispatch/hash9488%_
                  (lambda (_%e10416%_
                           _%datums10418%_
                           _%dispatch10419%_
                           _%default10420%_)
                    (let* ((_%indexes10422%_
                            (_%datum-dispatch-index9479%_ _%datums10418%_))
                           (_%tab10425%_
                            (_%generate-hash-dispatch-table9481%_
                             _%indexes10422%_
                             char->integer))
                           (_%g1043010474%_
                            (lambda (_%g1043110470%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1043110470%_)))
                           (_%g1042910634%_
                            (lambda (_%g1043110478%_)
                              (if (gx#stx-pair? _%g1043110478%_)
                                  (let ((_%e1043910481%_
                                         (gx#syntax-e _%g1043110478%_)))
                                    (let ((_%hd1044010485%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1043910481%_)))
                                          (_%tl1044110488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1043910481%_))))
                                      (if (gx#stx-pair? _%tl1044110488%_)
                                          (let ((_%e1044210491%_
                                                 (gx#syntax-e
                                                  _%tl1044110488%_)))
                                            (let ((_%hd1044310495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1044210491%_)))
                                                  (_%tl1044410498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1044210491%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1044410498%_)
                                                  (let ((_%e1044510501%_
                                                         (gx#syntax-e
                                                          _%tl1044410498%_)))
                                                    (let ((_%hd1044610505%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1044510501%_)))
                                                          (_%tl1044710508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1044510501%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1044710508%_)
                                                          (let ((_%e1044810511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1044710508%_)))
                    (let ((_%hd1044910515%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1044810511%_)))
                          (_%tl1045010518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1044810511%_))))
                      (if (gx#stx-pair/null? _%hd1044910515%_)
                          (let ((_g20924_
                                 (gx#syntax-split-splice _%hd1044910515%_ '0)))
                            (begin
                              (let ((_g20925_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20924_)
                                           (##values-length _g20924_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20925_ 2)))
                                    (error "Context expects 2 values"
                                           _g20925_)))
                              (let ((_%target1045110521%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20924_ 0)))
                                    (_%tl1045310524%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20924_ 1))))
                                (if (gx#stx-null? _%tl1045310524%_)
                                    (letrec ((_%loop1045410527%_
                                              (lambda (_%hd1045210531%_
                                                       _%dispatch1045810534%_)
                                                (if (gx#stx-pair?
                                                     _%hd1045210531%_)
                                                    (let ((_%e1045510537%_
                                                           (gx#syntax-e
                                                            _%hd1045210531%_)))
                                                      (let ((_%lp-hd1045610541%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1045510537%_)))
                    (_%lp-tl1045710544%_
                     (let () (declare (not safe)) (##cdr _%e1045510537%_))))
                (_%loop1045410527%_
                 _%lp-tl1045710544%_
                 (cons _%lp-hd1045610541%_ _%dispatch1045810534%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1045910547%_
                                                           (reverse _%dispatch1045810534%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1045010518%_)
                                                          (let ((_%e1046010551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1045010518%_)))
                    (let ((_%hd1046110555%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1046010551%_)))
                          (_%tl1046210558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1046010551%_))))
                      (if (gx#stx-pair? _%tl1046210558%_)
                          (let ((_%e1046310561%_
                                 (gx#syntax-e _%tl1046210558%_)))
                            (let ((_%hd1046410565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1046310561%_)))
                                  (_%tl1046510568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1046310561%_))))
                              (if (gx#stx-pair? _%tl1046510568%_)
                                  (let ((_%e1046610571%_
                                         (gx#syntax-e _%tl1046510568%_)))
                                    (let ((_%hd1046710575%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1046610571%_)))
                                          (_%tl1046810578%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1046610571%_))))
                                      (if (gx#stx-null? _%tl1046810578%_)
                                          ((lambda (_%L10581%_
                                                    _%L10583%_
                                                    _%L10584%_
                                                    _%L10585%_
                                                    _%L10586%_
                                                    _%L10587%_
                                                    _%L10588%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10584%_ '())))
                                   '()))
                       (cons (cons _%L10586%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10583%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%L10588%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%L10588%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%L10581%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%L10586%_
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
                     (cons _%L10588%_ '())))
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
                                             (foldr (lambda (_%g1062510628%_
                                                             _%g1062610631%_)
                                                      (cons _%g1062510628%_
                                                            _%g1062610631%_))
                                                    '()
                                                    _%L10585%_)))
                                 '())))
               (cons (cons _%L10587%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10587%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10587%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1046710575%_
                                           _%hd1046410565%_
                                           _%hd1046110555%_
                                           _%dispatch1045910547%_
                                           _%hd1044610505%_
                                           _%hd1044310495%_
                                           _%hd1044010485%_)
                                          (_%g1043010474%_ _%g1043110478%_))))
                                  (_%g1043010474%_ _%g1043110478%_))))
                          (_%g1043010474%_ _%g1043110478%_))))
                  (_%g1043010474%_ _%g1043110478%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1045410527%_
                                       _%target1045110521%_
                                       '()))
                                    (_%g1043010474%_ _%g1043110478%_)))))
                          (_%g1043010474%_ _%g1043110478%_))))
                  (_%g1043010474%_ _%g1043110478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1043010474%_
                                                   _%g1043110478%_))))
                                          (_%g1043010474%_ _%g1043110478%_))))
                                  (_%g1043010474%_ _%g1043110478%_)))))
                      (_%g1042910634%_
                       (list _%e10416%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10419%_
                             _%default10420%_
                             _%tab10425%_
                             (vector-length _%tab10425%_))))))
                 (_%min-fixnum9489%_
                  (lambda (_%datums10409%_)
                    (foldl (lambda (_%lst10412%_ _%r10414%_)
                             (foldl min _%r10414%_ _%lst10412%_))
                           ##max-fixnum
                           _%datums10409%_)))
                 (_%max-fixnum9490%_
                  (lambda (_%datums10402%_)
                    (foldl (lambda (_%lst10405%_ _%r10407%_)
                             (foldl max _%r10407%_ _%lst10405%_))
                           ##min-fixnum
                           _%datums10402%_)))
                 (_%generate-fixnum-dispatch-table9491%_
                  (lambda (_%indexes10384%_)
                    (let* ((_%ixs10387%_ (map car _%indexes10384%_))
                           (_%len10390%_ (fx1+ (foldl max '0 _%ixs10387%_)))
                           (_%vec10393%_ (make-vector _%len10390%_ '#f)))
                      (for-each
                       (lambda (_%entry10398%_ _%x10400%_)
                         (vector-set!
                          _%vec10393%_
                          _%x10400%_
                          (cdr _%entry10398%_)))
                       _%indexes10384%_
                       _%ixs10387%_)
                      _%vec10393%_)))
                 (_%generate-fixnum-dispatch9492%_
                  (lambda (_%e10118%_
                           _%datums10120%_
                           _%dispatch10121%_
                           _%default10122%_)
                    (if (and (>= (_%min-fixnum9489%_ _%datums10120%_) '0)
                             (< (_%max-fixnum9490%_ _%datums10120%_) '1024))
                        (let* ((_%indexes10124%_
                                (_%datum-dispatch-index9479%_ _%datums10120%_))
                               (_%tab10127%_
                                (_%generate-fixnum-dispatch-table9491%_
                                 _%indexes10124%_))
                               (_%dense?10130%_
                                (andmap values (vector->list _%tab10127%_)))
                               (_%g1013510179%_
                                (lambda (_%g1013610175%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1013610175%_)))
                               (_%g1013410380%_
                                (lambda (_%g1013610183%_)
                                  (if (gx#stx-pair? _%g1013610183%_)
                                      (let ((_%e1014410186%_
                                             (gx#syntax-e _%g1013610183%_)))
                                        (let ((_%hd1014510190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1014410186%_)))
                                              (_%tl1014610193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1014410186%_))))
                                          (if (gx#stx-pair? _%tl1014610193%_)
                                              (let ((_%e1014710196%_
                                                     (gx#syntax-e
                                                      _%tl1014610193%_)))
                                                (let ((_%hd1014810200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1014710196%_)))
                                                      (_%tl1014910203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1014710196%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1014910203%_)
                                                      (let ((_%e1015010206%_
                                                             (gx#syntax-e
                                                              _%tl1014910203%_)))
                                                        (let ((_%hd1015110210%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1015010206%_)))
                      (_%tl1015210213%_
                       (let () (declare (not safe)) (##cdr _%e1015010206%_))))
                  (if (gx#stx-pair? _%tl1015210213%_)
                      (let ((_%e1015310216%_ (gx#syntax-e _%tl1015210213%_)))
                        (let ((_%hd1015410220%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1015310216%_)))
                              (_%tl1015510223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1015310216%_))))
                          (if (gx#stx-pair/null? _%hd1015410220%_)
                              (let ((_g20926_
                                     (gx#syntax-split-splice
                                      _%hd1015410220%_
                                      '0)))
                                (begin
                                  (let ((_g20927_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20926_)
                                               (##values-length _g20926_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20927_ 2)))
                                        (error "Context expects 2 values"
                                               _g20927_)))
                                  (let ((_%target1015610226%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20926_ 0)))
                                        (_%tl1015810229%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g20926_ 1))))
                                    (if (gx#stx-null? _%tl1015810229%_)
                                        (letrec ((_%loop1015910232%_
                                                  (lambda (_%hd1015710236%_
                                                           _%dispatch1016310239%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1015710236%_)
                                                        (let ((_%e1016010242%_
                                                               (gx#syntax-e
                                                                _%hd1015710236%_)))
                                                          (let ((_%lp-hd1016110246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1016010242%_)))
                        (_%lp-tl1016210249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1016010242%_))))
                    (_%loop1015910232%_
                     _%lp-tl1016210249%_
                     (cons _%lp-hd1016110246%_ _%dispatch1016310239%_))))
                (let ((_%dispatch1016410252%_
                       (reverse _%dispatch1016310239%_)))
                  (if (gx#stx-pair? _%tl1015510223%_)
                      (let ((_%e1016510256%_ (gx#syntax-e _%tl1015510223%_)))
                        (let ((_%hd1016610260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1016510256%_)))
                              (_%tl1016710263%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1016510256%_))))
                          (if (gx#stx-pair? _%tl1016710263%_)
                              (let ((_%e1016810266%_
                                     (gx#syntax-e _%tl1016710263%_)))
                                (let ((_%hd1016910270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1016810266%_)))
                                      (_%tl1017010273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1016810266%_))))
                                  (if (gx#stx-pair? _%tl1017010273%_)
                                      (let ((_%e1017110276%_
                                             (gx#syntax-e _%tl1017010273%_)))
                                        (let ((_%hd1017210280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1017110276%_)))
                                              (_%tl1017310283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1017110276%_))))
                                          (if (gx#stx-null? _%tl1017310283%_)
                                              ((lambda (_%L10286%_
                                                        _%L10288%_
                                                        _%L10289%_
                                                        _%L10290%_
                                                        _%L10291%_
                                                        _%L10292%_
                                                        _%L10293%_)
                                                 (let* ((_%g1033210340%_
                                                         (lambda (_%g1033310336%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1033310336%_)))
                                                        (_%g1033110360%_
                                                         (lambda (_%g1033310344%_)
                                                           ((lambda (_%L10347%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%L10292%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%L10289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%L10291%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%L10288%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%L10293%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%L10293%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%L10293%_
                                                            (cons _%L10286%_
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
                          (cons _%L10291%_ (cons _%L10293%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L10347%_ '())))
                                    (cons (cons _%L10292%_ '()) '()))))
                  (cons (cons _%L10292%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1033310344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1033110360%_
                                                    (if _%dense?10130%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1036310366%_ _%g1036410369%_)
                                     (cons _%g1036310366%_ _%g1036410369%_))
                                   '()
                                   _%L10290%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1037110374%_
                                                              _%g1037210377%_)
                                                       (cons _%g1037110374%_
                                                             _%g1037210377%_))
                                                     '()
                                                     _%L10290%_)))
                                  (cons (cons _%L10292%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1017210280%_
                                               _%hd1016910270%_
                                               _%hd1016610260%_
                                               _%dispatch1016410252%_
                                               _%hd1015110210%_
                                               _%hd1014810200%_
                                               _%hd1014510190%_)
                                              (_%g1013510179%_
                                               _%g1013610183%_))))
                                      (_%g1013510179%_ _%g1013610183%_))))
                              (_%g1013510179%_ _%g1013610183%_))))
                      (_%g1013510179%_ _%g1013610183%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1015910232%_
                                           _%target1015610226%_
                                           '()))
                                        (_%g1013510179%_ _%g1013610183%_)))))
                              (_%g1013510179%_ _%g1013610183%_))))
                      (_%g1013510179%_ _%g1013610183%_))))
              (_%g1013510179%_ _%g1013610183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1013510179%_
                                               _%g1013610183%_))))
                                      (_%g1013510179%_ _%g1013610183%_)))))
                          (_%g1013410380%_
                           (list _%e10118%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10121%_
                                 _%default10122%_
                                 _%tab10127%_
                                 (vector-length _%tab10127%_))))
                        (_%generate-fixnum-dispatch/hash9493%_
                         _%e10118%_
                         _%datums10120%_
                         _%dispatch10121%_
                         _%default10122%_))))
                 (_%generate-fixnum-dispatch/hash9493%_
                  (lambda (_%e9896%_
                           _%datums9898%_
                           _%dispatch9899%_
                           _%default9900%_)
                    (let* ((_%indexes9902%_
                            (_%datum-dispatch-index9479%_ _%datums9898%_))
                           (_%tab9905%_
                            (_%generate-hash-dispatch-table9481%_
                             _%indexes9902%_
                             values))
                           (_%g99109954%_
                            (lambda (_%g99119950%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g99119950%_)))
                           (_%g990910114%_
                            (lambda (_%g99119958%_)
                              (if (gx#stx-pair? _%g99119958%_)
                                  (let ((_%e99199961%_
                                         (gx#syntax-e _%g99119958%_)))
                                    (let ((_%hd99209965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e99199961%_)))
                                          (_%tl99219968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e99199961%_))))
                                      (if (gx#stx-pair? _%tl99219968%_)
                                          (let ((_%e99229971%_
                                                 (gx#syntax-e _%tl99219968%_)))
                                            (let ((_%hd99239975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e99229971%_)))
                                                  (_%tl99249978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e99229971%_))))
                                              (if (gx#stx-pair? _%tl99249978%_)
                                                  (let ((_%e99259981%_
                                                         (gx#syntax-e
                                                          _%tl99249978%_)))
                                                    (let ((_%hd99269985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99259981%_)))
                                                          (_%tl99279988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99259981%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99279988%_)
                                                          (let ((_%e99289991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99279988%_)))
                    (let ((_%hd99299995%_
                           (let () (declare (not safe)) (##car _%e99289991%_)))
                          (_%tl99309998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99289991%_))))
                      (if (gx#stx-pair/null? _%hd99299995%_)
                          (let ((_g20928_
                                 (gx#syntax-split-splice _%hd99299995%_ '0)))
                            (begin
                              (let ((_g20929_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g20928_)
                                           (##values-length _g20928_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g20929_ 2)))
                                    (error "Context expects 2 values"
                                           _g20929_)))
                              (let ((_%target993110001%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20928_ 0)))
                                    (_%tl993310004%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g20928_ 1))))
                                (if (gx#stx-null? _%tl993310004%_)
                                    (letrec ((_%loop993410007%_
                                              (lambda (_%hd993210011%_
                                                       _%dispatch993810014%_)
                                                (if (gx#stx-pair?
                                                     _%hd993210011%_)
                                                    (let ((_%e993510017%_
                                                           (gx#syntax-e
                                                            _%hd993210011%_)))
                                                      (let ((_%lp-hd993610021%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e993510017%_)))
                    (_%lp-tl993710024%_
                     (let () (declare (not safe)) (##cdr _%e993510017%_))))
                (_%loop993410007%_
                 _%lp-tl993710024%_
                 (cons _%lp-hd993610021%_ _%dispatch993810014%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch993910027%_
                                                           (reverse _%dispatch993810014%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99309998%_)
                                                          (let ((_%e994010031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99309998%_)))
                    (let ((_%hd994110035%_
                           (let ()
                             (declare (not safe))
                             (##car _%e994010031%_)))
                          (_%tl994210038%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e994010031%_))))
                      (if (gx#stx-pair? _%tl994210038%_)
                          (let ((_%e994310041%_ (gx#syntax-e _%tl994210038%_)))
                            (let ((_%hd994410045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e994310041%_)))
                                  (_%tl994510048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e994310041%_))))
                              (if (gx#stx-pair? _%tl994510048%_)
                                  (let ((_%e994610051%_
                                         (gx#syntax-e _%tl994510048%_)))
                                    (let ((_%hd994710055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e994610051%_)))
                                          (_%tl994810058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e994610051%_))))
                                      (if (gx#stx-null? _%tl994810058%_)
                                          ((lambda (_%L10061%_
                                                    _%L10063%_
                                                    _%L10064%_
                                                    _%L10065%_
                                                    _%L10066%_
                                                    _%L10067%_
                                                    _%L10068%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%L10067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%L10064%_ '())))
                                   '()))
                       (cons (cons _%L10066%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%L10063%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%L10068%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%L10068%_ (cons _%L10061%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%L10066%_
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
                     (cons _%L10068%_ '())))
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
                                             (foldr (lambda (_%g1010510108%_
                                                             _%g1010610111%_)
                                                      (cons _%g1010510108%_
                                                            _%g1010610111%_))
                                                    '()
                                                    _%L10065%_)))
                                 '())))
               (cons (cons _%L10067%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%L10067%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L10067%_ '()) '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd994710055%_
                                           _%hd994410045%_
                                           _%hd994110035%_
                                           _%dispatch993910027%_
                                           _%hd99269985%_
                                           _%hd99239975%_
                                           _%hd99209965%_)
                                          (_%g99109954%_ _%g99119958%_))))
                                  (_%g99109954%_ _%g99119958%_))))
                          (_%g99109954%_ _%g99119958%_))))
                  (_%g99109954%_ _%g99119958%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop993410007%_
                                       _%target993110001%_
                                       '()))
                                    (_%g99109954%_ _%g99119958%_)))))
                          (_%g99109954%_ _%g99119958%_))))
                  (_%g99109954%_ _%g99119958%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g99109954%_
                                                   _%g99119958%_))))
                                          (_%g99109954%_ _%g99119958%_))))
                                  (_%g99109954%_ _%g99119958%_)))))
                      (_%g990910114%_
                       (list _%e9896%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9899%_
                             _%default9900%_
                             _%tab9905%_
                             (vector-length _%tab9905%_))))))
                 (_%generate-generic-dispatch9494%_
                  (lambda (_%e9632%_
                           _%datums9634%_
                           _%dispatch9635%_
                           _%default9636%_)
                    (let ((_g20930_
                           (if (_%eq-datums?9477%_ _%datums9634%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9638%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20930_ 0)))
                              (_%hashf9640%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20930_ 1)))
                              (_%eqf9641%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g20930_ 2))))
                          (let* ((_%indexes9643%_
                                  (_%datum-dispatch-index9479%_
                                   _%datums9634%_))
                                 (_%tab9646%_
                                  (_%generate-hash-dispatch-table9481%_
                                   _%indexes9643%_
                                   _%hash-e9638%_))
                                 (_%g96519703%_
                                  (lambda (_%g96529699%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96529699%_)))
                                 (_%g96509892%_
                                  (lambda (_%g96529707%_)
                                    (if (gx#stx-pair? _%g96529707%_)
                                        (let ((_%e96629710%_
                                               (gx#syntax-e _%g96529707%_)))
                                          (let ((_%hd96639714%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96629710%_)))
                                                (_%tl96649717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96629710%_))))
                                            (if (gx#stx-pair? _%tl96649717%_)
                                                (let ((_%e96659720%_
                                                       (gx#syntax-e
                                                        _%tl96649717%_)))
                                                  (let ((_%hd96669724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96659720%_)))
                                                        (_%tl96679727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96659720%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96679727%_)
                                                        (let ((_%e96689730%_
                                                               (gx#syntax-e
                                                                _%tl96679727%_)))
                                                          (let ((_%hd96699734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96689730%_)))
                        (_%tl96709737%_
                         (let () (declare (not safe)) (##cdr _%e96689730%_))))
                    (if (gx#stx-pair? _%tl96709737%_)
                        (let ((_%e96719740%_ (gx#syntax-e _%tl96709737%_)))
                          (let ((_%hd96729744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96719740%_)))
                                (_%tl96739747%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96719740%_))))
                            (if (gx#stx-pair/null? _%hd96729744%_)
                                (let ((_g20931_
                                       (gx#syntax-split-splice
                                        _%hd96729744%_
                                        '0)))
                                  (begin
                                    (let ((_g20932_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20931_)
                                                 (##values-length _g20931_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20932_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20932_)))
                                    (let ((_%target96749750%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20931_ 0)))
                                          (_%tl96769753%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20931_ 1))))
                                      (if (gx#stx-null? _%tl96769753%_)
                                          (letrec ((_%loop96779756%_
                                                    (lambda (_%hd96759760%_
                                                             _%dispatch96819763%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96759760%_)
                                                          (let ((_%e96789766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96759760%_)))
                    (let ((_%lp-hd96799770%_
                           (let () (declare (not safe)) (##car _%e96789766%_)))
                          (_%lp-tl96809773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96789766%_))))
                      (_%loop96779756%_
                       _%lp-tl96809773%_
                       (cons _%lp-hd96799770%_ _%dispatch96819763%_))))
                  (let ((_%dispatch96829776%_ (reverse _%dispatch96819763%_)))
                    (if (gx#stx-pair? _%tl96739747%_)
                        (let ((_%e96839780%_ (gx#syntax-e _%tl96739747%_)))
                          (let ((_%hd96849784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96839780%_)))
                                (_%tl96859787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96839780%_))))
                            (if (gx#stx-pair? _%tl96859787%_)
                                (let ((_%e96869790%_
                                       (gx#syntax-e _%tl96859787%_)))
                                  (let ((_%hd96879794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96869790%_)))
                                        (_%tl96889797%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96869790%_))))
                                    (if (gx#stx-pair? _%tl96889797%_)
                                        (let ((_%e96899800%_
                                               (gx#syntax-e _%tl96889797%_)))
                                          (let ((_%hd96909804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96899800%_)))
                                                (_%tl96919807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96899800%_))))
                                            (if (gx#stx-pair? _%tl96919807%_)
                                                (let ((_%e96929810%_
                                                       (gx#syntax-e
                                                        _%tl96919807%_)))
                                                  (let ((_%hd96939814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96929810%_)))
                                                        (_%tl96949817%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96929810%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96949817%_)
                                                        (let ((_%e96959820%_
                                                               (gx#syntax-e
                                                                _%tl96949817%_)))
                                                          (let ((_%hd96969824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96959820%_)))
                        (_%tl96979827%_
                         (let () (declare (not safe)) (##cdr _%e96959820%_))))
                    (if (gx#stx-null? _%tl96979827%_)
                        ((lambda (_%L9830%_
                                  _%L9832%_
                                  _%L9833%_
                                  _%L9834%_
                                  _%L9835%_
                                  _%L9836%_
                                  _%L9837%_
                                  _%L9838%_
                                  _%L9839%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%L9838%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L9835%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%L9837%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%L9834%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%L9832%_ (cons _%L9839%_ '())) '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%L9833%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%L9837%_
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
                                               (cons (cons _%L9830%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%L9839%_ '())))
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
                                                 (foldr (lambda (_%g98839886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98849889%_)
                  (cons _%g98839886%_ _%g98849889%_))
                '()
                _%L9836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%L9838%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%L9838%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96969824%_
                         _%hd96939814%_
                         _%hd96909804%_
                         _%hd96879794%_
                         _%hd96849784%_
                         _%dispatch96829776%_
                         _%hd96699734%_
                         _%hd96669724%_
                         _%hd96639714%_)
                        (_%g96519703%_ _%g96529707%_))))
                (_%g96519703%_ _%g96529707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96519703%_
                                                 _%g96529707%_))))
                                        (_%g96519703%_ _%g96529707%_))))
                                (_%g96519703%_ _%g96529707%_))))
                        (_%g96519703%_ _%g96529707%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96779756%_
                                             _%target96749750%_
                                             '()))
                                          (_%g96519703%_ _%g96529707%_)))))
                                (_%g96519703%_ _%g96529707%_))))
                        (_%g96519703%_ _%g96529707%_))))
                (_%g96519703%_ _%g96529707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96519703%_
                                                 _%g96529707%_))))
                                        (_%g96519703%_ _%g96529707%_)))))
                            (_%g96509892%_
                             (list _%e9632%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9635%_
                                   _%default9636%_
                                   _%tab9646%_
                                   (vector-length _%tab9646%_)
                                   _%hashf9640%_
                                   _%eqf9641%_)))))))))
          (let* ((_%g94969520%_
                  (lambda (_%g94979516%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94979516%_)))
                 (_%g94959628%_
                  (lambda (_%g94979524%_)
                    (if (gx#stx-pair? _%g94979524%_)
                        (let ((_%e95009527%_ (gx#syntax-e _%g94979524%_)))
                          (let ((_%hd95019531%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e95009527%_)))
                                (_%tl95029534%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e95009527%_))))
                            (if (gx#stx-pair? _%tl95029534%_)
                                (let ((_%e95039537%_
                                       (gx#syntax-e _%tl95029534%_)))
                                  (let ((_%hd95049541%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e95039537%_)))
                                        (_%tl95059544%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e95039537%_))))
                                    (if (gx#stx-pair/null? _%tl95059544%_)
                                        (let ((_g20933_
                                               (gx#syntax-split-splice
                                                _%tl95059544%_
                                                '0)))
                                          (begin
                                            (let ((_g20934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20933_)
                                                         (##values-length
                                                          _g20933_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20934_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20934_)))
                                            (let ((_%target95069547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20933_
                                                      0)))
                                                  (_%tl95089550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20933_
                                                      1))))
                                              (if (gx#stx-null? _%tl95089550%_)
                                                  (letrec ((_%loop95099553%_
                                                            (lambda (_%hd95079557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause95139560%_)
                      (if (gx#stx-pair? _%hd95079557%_)
                          (let ((_%e95109563%_ (gx#syntax-e _%hd95079557%_)))
                            (let ((_%lp-hd95119567%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e95109563%_)))
                                  (_%lp-tl95129570%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e95109563%_))))
                              (_%loop95099553%_
                               _%lp-tl95129570%_
                               (cons _%lp-hd95119567%_ _%clause95139560%_))))
                          (let ((_%clause95149573%_
                                 (reverse _%clause95139560%_)))
                            ((lambda (_%L9577%_ _%L9579%_)
                               (let ((_g20935_
                                      (_%parse-clauses9470%_
                                       _%L9579%_
                                       (foldr (lambda (_%g95979600%_
                                                       _%g95989603%_)
                                                (cons _%g95979600%_
                                                      _%g95989603%_))
                                              '()
                                              _%L9577%_))))
                                 (begin
                                   (let ((_g20936_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20935_)
                                                (##values-length _g20935_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20936_ 3)))
                                         (error "Context expects 3 values"
                                                _g20936_)))
                                   (let ((_%datums9606%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20935_ 0)))
                                         (_%dispatch9608%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20935_ 1)))
                                         (_%default9609%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20935_ 2))))
                                     (let ((_%datum-count9611%_
                                            (_%count-datums9473%_
                                             _%datums9606%_)))
                                       (if (< _%datum-count9611%_ '6)
                                           (_%generate-simple-case9478%_
                                            _%L9579%_
                                            _%datums9606%_
                                            _%dispatch9608%_
                                            _%default9609%_)
                                           (if (_%char-datums?9475%_
                                                _%datums9606%_)
                                               (_%generate-char-dispatch9487%_
                                                _%L9579%_
                                                _%datums9606%_
                                                _%dispatch9608%_
                                                _%default9609%_)
                                               (if (_%fixnum-datums?9476%_
                                                    _%datums9606%_)
                                                   (_%generate-fixnum-dispatch9492%_
                                                    _%L9579%_
                                                    _%datums9606%_
                                                    _%dispatch9608%_
                                                    _%default9609%_)
                                                   (if (< _%datum-count9611%_
                                                          '12)
                                                       (_%generate-simple-case9478%_
                                                        _%L9579%_
                                                        _%datums9606%_
                                                        _%dispatch9608%_
                                                        _%default9609%_)
                                                       (if (_%symbolic-datums?9474%_
                                                            _%datums9606%_)
                                                           (_%generate-symbolic-dispatch9482%_
                                                            _%L9579%_
                                                            _%datums9606%_
                                                            _%dispatch9608%_
                                                            _%default9609%_)
                                                           (_%generate-generic-dispatch9494%_
                                                            _%L9579%_
                                                            _%datums9606%_
                                                            _%dispatch9608%_
                                                            _%default9609%_)))))))))))
                             _%clause95149573%_
                             _%hd95049541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop95099553%_
                                                     _%target95069547%_
                                                     '()))
                                                  (_%g94969520%_
                                                   _%g94979524%_)))))
                                        (_%g94969520%_ _%g94979524%_))))
                                (_%g94969520%_ _%g94979524%_))))
                        (_%g94969520%_ _%g94979524%_)))))
            (_%g94959628%_ _%stx9467%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12530%_)
        (let* ((_%g1253312551%_
                (lambda (_%g1253412547%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1253412547%_)))
               (_%g1253212623%_
                (lambda (_%g1253412555%_)
                  (if (gx#stx-pair? _%g1253412555%_)
                      (let ((_%e1253712558%_ (gx#syntax-e _%g1253412555%_)))
                        (let ((_%hd1253812562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1253712558%_)))
                              (_%tl1253912565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1253712558%_))))
                          (if (gx#stx-pair? _%tl1253912565%_)
                              (let ((_%e1254012568%_
                                     (gx#syntax-e _%tl1253912565%_)))
                                (let ((_%hd1254112572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1254012568%_)))
                                      (_%tl1254212575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1254012568%_))))
                                  (if (gx#stx-pair? _%tl1254212575%_)
                                      (let ((_%e1254312578%_
                                             (gx#syntax-e _%tl1254212575%_)))
                                        (let ((_%hd1254412582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1254312578%_)))
                                              (_%tl1254512585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1254312578%_))))
                                          (if (gx#stx-null? _%tl1254512585%_)
                                              ((lambda (_%L12588%_ _%L12590%_)
                                                 (let ((_%datum-e12606%_
                                                        (gx#stx-e _%L12590%_)))
                                                   (if (or (symbol? _%datum-e12606%_)
                                                           (keyword?
                                                            _%datum-e12606%_)
                                                           (immediate?
                                                            _%datum-e12606%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%L12590%_ '()))
                           (cons _%L12588%_ '())))
               (if (number? _%datum-e12606%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12590%_ '()))
                               (cons _%L12588%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L12590%_ '()))
                               (cons _%L12588%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1254412582%_
                                               _%hd1254112572%_)
                                              (_%g1253312551%_
                                               _%g1253412555%_))))
                                      (_%g1253312551%_ _%g1253412555%_))))
                              (_%g1253312551%_ _%g1253412555%_))))
                      (_%g1253312551%_ _%g1253412555%_)))))
          (_%g1253212623%_ _%stx12530%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12627%_)
        (let* ((_%g1263112655%_
                (lambda (_%g1263212651%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1263212651%_)))
               (_%g1263012740%_
                (lambda (_%g1263212659%_)
                  (if (gx#stx-pair? _%g1263212659%_)
                      (let ((_%e1263512662%_ (gx#syntax-e _%g1263212659%_)))
                        (let ((_%hd1263612666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1263512662%_)))
                              (_%tl1263712669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1263512662%_))))
                          (if (gx#stx-pair? _%tl1263712669%_)
                              (let ((_%e1263812672%_
                                     (gx#syntax-e _%tl1263712669%_)))
                                (let ((_%hd1263912676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1263812672%_)))
                                      (_%tl1264012679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1263812672%_))))
                                  (if (gx#stx-pair/null? _%tl1264012679%_)
                                      (let ((_g20937_
                                             (gx#syntax-split-splice
                                              _%tl1264012679%_
                                              '0)))
                                        (begin
                                          (let ((_g20938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20937_)
                                                       (##values-length
                                                        _g20937_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20938_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20938_)))
                                          (let ((_%target1264112682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20937_ 0)))
                                                (_%tl1264312685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20937_ 1))))
                                            (if (gx#stx-null? _%tl1264312685%_)
                                                (letrec ((_%loop1264412688%_
                                                          (lambda (_%hd1264212692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1264812695%_)
                    (if (gx#stx-pair? _%hd1264212692%_)
                        (let ((_%e1264512698%_ (gx#syntax-e _%hd1264212692%_)))
                          (let ((_%lp-hd1264612702%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1264512698%_)))
                                (_%lp-tl1264712705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1264512698%_))))
                            (_%loop1264412688%_
                             _%lp-tl1264712705%_
                             (cons _%lp-hd1264612702%_ _%K1264812695%_))))
                        (let ((_%K1264912708%_ (reverse _%K1264812695%_)))
                          ((lambda (_%L12712%_ _%L12714%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%L12714%_
                                               (foldr (lambda (_%g1273112734%_
                                                               _%g1273212737%_)
                                                        (cons _%g1273112734%_
                                                              _%g1273212737%_))
                                                      '()
                                                      _%L12712%_)))))
                           _%K1264912708%_
                           _%hd1263912676%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1264412688%_
                                                   _%target1264112682%_
                                                   '()))
                                                (_%g1263112655%_
                                                 _%g1263212659%_)))))
                                      (_%g1263112655%_ _%g1263212659%_))))
                              (_%g1263112655%_ _%g1263212659%_))))
                      (_%g1263112655%_ _%g1263212659%_)))))
          (_%g1263012740%_ _%$stx12627%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12745%_)
        (let* ((_%__stx1961119612%_ _%stx12745%_)
               (_%g1275212848%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1961119612%_))))
          (let ((_%__kont1961419615%_
                 (lambda (_%L13325%_ _%L13327%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1961619617%_
                 (lambda (_%L13267%_ _%L13269%_ _%L13270%_) _%L13267%_))
                (_%__kont1961819619%_
                 (lambda (_%L13164%_ _%L13166%_ _%L13167%_ _%L13168%_)
                   (let* ((_%g1318913197%_
                           (lambda (_%g1319013193%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1319013193%_)))
                          (_%g1318813216%_
                           (lambda (_%g1319013201%_)
                             ((lambda (_%L13204%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%L13167%_
                                                        (cons _%L13204%_ '())))
                                            (cons _%L13166%_
                                                  (cons _%L13164%_ '())))))
                              _%g1319013201%_))))
                     (_%g1318813216%_ (gx#stx-e _%L13168%_)))))
                (_%__kont1962019621%_
                 (lambda (_%L13014%_
                          _%L13016%_
                          _%L13017%_
                          _%L13018%_
                          _%L13019%_)
                   (let* ((_%g1304313058%_
                           (lambda (_%g1304413054%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1304413054%_)))
                          (_%g1304213103%_
                           (lambda (_%g1304413062%_)
                             (if (gx#stx-pair? _%g1304413062%_)
                                 (let ((_%e1304713065%_
                                        (gx#syntax-e _%g1304413062%_)))
                                   (let ((_%hd1304813069%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1304713065%_)))
                                         (_%tl1304913072%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1304713065%_))))
                                     (if (gx#stx-pair? _%tl1304913072%_)
                                         (let ((_%e1305013075%_
                                                (gx#syntax-e
                                                 _%tl1304913072%_)))
                                           (let ((_%hd1305113079%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1305013075%_)))
                                                 (_%tl1305213082%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1305013075%_))))
                                             (if (gx#stx-null?
                                                  _%tl1305213082%_)
                                                 ((lambda (_%L13085%_
                                                           _%L13087%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%L13018%_ (cons _%L13087%_ '())))
                        (cons _%L13017%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%L13018%_
                                                            (cons _%L13085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%L13016%_
                                                      (cons _%L13014%_ '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1305113079%_
                                                  _%hd1304813069%_)
                                                 (_%g1304313058%_
                                                  _%g1304413062%_))))
                                         (_%g1304313058%_ _%g1304413062%_))))
                                 (_%g1304313058%_ _%g1304413062%_)))))
                     (_%g1304213103%_
                      (list (gx#stx-e _%L13019%_)
                            (fx1+ (gx#stx-e _%L13019%_)))))))
                (_%__kont1962219623%_
                 (lambda (_%L12915%_ _%L12917%_ _%L12918%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%L12918%_
                               (cons _%L12917%_
                                     (foldr (lambda (_%g1293812941%_
                                                     _%g1293912944%_)
                                              (cons _%g1293812941%_
                                                    _%g1293912944%_))
                                            '()
                                            _%L12915%_)))))))
            (let ((_%__match1976819769%_
                   (lambda (_%e1282512855%_
                            _%hd1282612859%_
                            _%tl1282712862%_
                            _%e1282812865%_
                            _%hd1282912869%_
                            _%tl1283012872%_
                            _%e1283112875%_
                            _%hd1283212879%_
                            _%tl1283312882%_
                            _%__splice1962419625%_
                            _%target1283412885%_
                            _%tl1283612888%_)
                     (letrec ((_%loop1283712891%_
                               (lambda (_%hd1283512895%_ _%K1284112898%_)
                                 (if (gx#stx-pair? _%hd1283512895%_)
                                     (let ((_%e1283812901%_
                                            (gx#syntax-e _%hd1283512895%_)))
                                       (let ((_%lp-tl1284012908%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1283812901%_)))
                                             (_%lp-hd1283912905%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1283812901%_))))
                                         (_%loop1283712891%_
                                          _%lp-tl1284012908%_
                                          (cons _%lp-hd1283912905%_
                                                _%K1284112898%_))))
                                     (let ((_%K1284212911%_
                                            (reverse _%K1284112898%_)))
                                       (_%__kont1962219623%_
                                        _%K1284212911%_
                                        _%hd1283212879%_
                                        _%hd1282912869%_))))))
                       (_%loop1283712891%_ _%target1283412885%_ '())))))
              (if (gx#stx-pair? _%__stx1961119612%_)
                  (let ((_%e1275613295%_ (gx#syntax-e _%__stx1961119612%_)))
                    (let ((_%tl1275813302%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1275613295%_)))
                          (_%hd1275713299%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1275613295%_))))
                      (if (gx#stx-pair? _%tl1275813302%_)
                          (let ((_%e1275913305%_
                                 (gx#syntax-e _%tl1275813302%_)))
                            (let ((_%tl1276113312%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1275913305%_)))
                                  (_%hd1276013309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1275913305%_))))
                              (if (gx#stx-pair? _%tl1276113312%_)
                                  (let ((_%e1276213315%_
                                         (gx#syntax-e _%tl1276113312%_)))
                                    (let ((_%tl1276413322%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1276213315%_)))
                                          (_%hd1276313319%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1276213315%_))))
                                      (if (gx#stx-null? _%tl1276413322%_)
                                          (_%__kont1961419615%_
                                           _%hd1276313319%_
                                           _%hd1276013309%_)
                                          (if (gx#stx-pair? _%tl1276413322%_)
                                              (let ((_%e1277713257%_
                                                     (gx#syntax-e
                                                      _%tl1276413322%_)))
                                                (let ((_%tl1277913264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1277713257%_)))
                                                      (_%hd1277813261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1277713257%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1277913264%_)
                                                      (_%__kont1961619617%_
                                                       _%hd1277813261%_
                                                       _%hd1276313319%_
                                                       _%hd1276013309%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1277913264%_)
                                                          (let ((_%e1279613154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1277913264%_)))
                    (let ((_%tl1279813161%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1279613154%_)))
                          (_%hd1279713158%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1279613154%_))))
                      (if (gx#stx-null? _%tl1279813161%_)
                          (_%__kont1961819619%_
                           _%hd1279713158%_
                           _%hd1277813261%_
                           _%hd1276313319%_
                           _%hd1276013309%_)
                          (if (gx#stx-pair? _%tl1279813161%_)
                              (let ((_%e1281913004%_
                                     (gx#syntax-e _%tl1279813161%_)))
                                (let ((_%tl1282113011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1281913004%_)))
                                      (_%hd1282013008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1281913004%_))))
                                  (if (gx#stx-null? _%tl1282113011%_)
                                      (_%__kont1962019621%_
                                       _%hd1282013008%_
                                       _%hd1279713158%_
                                       _%hd1277813261%_
                                       _%hd1276313319%_
                                       _%hd1276013309%_)
                                      (if (gx#stx-pair/null? _%tl1276413322%_)
                                          (let ((_%__splice1962419625%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1276413322%_
                                                  '0)))
                                            (let ((_%tl1283612888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1962419625%_
                                                      '1)))
                                                  (_%target1283412885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1962419625%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1283612888%_)
                                                  (_%__match1976819769%_
                                                   _%e1275613295%_
                                                   _%hd1275713299%_
                                                   _%tl1275813302%_
                                                   _%e1275913305%_
                                                   _%hd1276013309%_
                                                   _%tl1276113312%_
                                                   _%e1276213315%_
                                                   _%hd1276313319%_
                                                   _%tl1276413322%_
                                                   _%__splice1962419625%_
                                                   _%target1283412885%_
                                                   _%tl1283612888%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1275212848%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275212848%_))))))
                              (if (gx#stx-pair/null? _%tl1276413322%_)
                                  (let ((_%__splice1962419625%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1276413322%_
                                          '0)))
                                    (let ((_%tl1283612888%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1962419625%_
                                              '1)))
                                          (_%target1283412885%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1962419625%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1283612888%_)
                                          (_%__match1976819769%_
                                           _%e1275613295%_
                                           _%hd1275713299%_
                                           _%tl1275813302%_
                                           _%e1275913305%_
                                           _%hd1276013309%_
                                           _%tl1276113312%_
                                           _%e1276213315%_
                                           _%hd1276313319%_
                                           _%tl1276413322%_
                                           _%__splice1962419625%_
                                           _%target1283412885%_
                                           _%tl1283612888%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1275212848%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1275212848%_)))))))
                  (if (gx#stx-pair/null? _%tl1276413322%_)
                      (let ((_%__splice1962419625%_
                             (gx#syntax-split-splice->vector
                              _%tl1276413322%_
                              '0)))
                        (let ((_%tl1283612888%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1962419625%_ '1)))
                              (_%target1283412885%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1962419625%_ '0))))
                          (if (gx#stx-null? _%tl1283612888%_)
                              (_%__match1976819769%_
                               _%e1275613295%_
                               _%hd1275713299%_
                               _%tl1275813302%_
                               _%e1275913305%_
                               _%hd1276013309%_
                               _%tl1276113312%_
                               _%e1276213315%_
                               _%hd1276313319%_
                               _%tl1276413322%_
                               _%__splice1962419625%_
                               _%target1283412885%_
                               _%tl1283612888%_)
                              (let ()
                                (declare (not safe))
                                (_%g1275212848%_)))))
                      (let () (declare (not safe)) (_%g1275212848%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1276413322%_)
                                                  (let ((_%__splice1962419625%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1276413322%_
                                                          '0)))
                                                    (let ((_%tl1283612888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1962419625%_
                                                              '1)))
                                                          (_%target1283412885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1962419625%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1283612888%_)
                                                          (_%__match1976819769%_
                                                           _%e1275613295%_
                                                           _%hd1275713299%_
                                                           _%tl1275813302%_
                                                           _%e1275913305%_
                                                           _%hd1276013309%_
                                                           _%tl1276113312%_
                                                           _%e1276213315%_
                                                           _%hd1276313319%_
                                                           _%tl1276413322%_
                                                           _%__splice1962419625%_
                                                           _%target1283412885%_
                                                           _%tl1283612888%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1275212848%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1275212848%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1275212848%_)))))
                          (let () (declare (not safe)) (_%g1275212848%_)))))
                  (let () (declare (not safe)) (_%g1275212848%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13347%_)
        (letrec ((_%split13350%_
                  (lambda (_%lst13711%_ _%mid13713%_)
                    (let _%lp13715%_ ((_%i13718%_ '0)
                                      (_%rest13720%_ _%lst13711%_)
                                      (_%left13721%_ '()))
                      (if (fx< _%i13718%_ _%mid13713%_)
                          (_%lp13715%_
                           (fx1+ _%i13718%_)
                           (cdr _%rest13720%_)
                           (cons (car _%rest13720%_) _%left13721%_))
                          (values (reverse _%left13721%_) _%rest13720%_))))))
          (let* ((_%g1335313381%_
                  (lambda (_%g1335413377%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1335413377%_)))
                 (_%g1335213707%_
                  (lambda (_%g1335413385%_)
                    (if (gx#stx-pair? _%g1335413385%_)
                        (let ((_%e1335813388%_ (gx#syntax-e _%g1335413385%_)))
                          (let ((_%hd1335913392%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1335813388%_)))
                                (_%tl1336013395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1335813388%_))))
                            (if (gx#stx-pair? _%tl1336013395%_)
                                (let ((_%e1336113398%_
                                       (gx#syntax-e _%tl1336013395%_)))
                                  (let ((_%hd1336213402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1336113398%_)))
                                        (_%tl1336313405%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1336113398%_))))
                                    (if (gx#stx-pair? _%tl1336313405%_)
                                        (let ((_%e1336413408%_
                                               (gx#syntax-e _%tl1336313405%_)))
                                          (let ((_%hd1336513412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1336413408%_)))
                                                (_%tl1336613415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1336413408%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1336613415%_)
                                                (let ((_g20939_
                                                       (gx#syntax-split-splice
                                                        _%tl1336613415%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20939_)
                         (##values-length _g20939_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20940_ 2)))
                  (error "Context expects 2 values" _g20940_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1336713418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20939_
                                                              0)))
                                                          (_%tl1336913421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20939_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1336913421%_)
                                                          (letrec ((_%loop1337013424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1336813428%_ _%K1337413431%_)
                              (if (gx#stx-pair? _%hd1336813428%_)
                                  (let ((_%e1337113434%_
                                         (gx#syntax-e _%hd1336813428%_)))
                                    (let ((_%lp-hd1337213438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1337113434%_)))
                                          (_%lp-tl1337313441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1337113434%_))))
                                      (_%loop1337013424%_
                                       _%lp-tl1337313441%_
                                       (cons _%lp-hd1337213438%_
                                             _%K1337413431%_))))
                                  (let ((_%K1337513444%_
                                         (reverse _%K1337413431%_)))
                                    ((lambda (_%L13448%_ _%L13450%_ _%L13451%_)
                                       (let* ((_%len13481%_
                                               (length (foldr (lambda (_%g1347213475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1347313478%_)
                        (cons _%g1347213475%_ _%g1347313478%_))
                      '()
                      _%L13448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13484%_
                                               (quotient _%len13481%_ '2))
                                              (_g20941_
                                               (_%split13350%_
                                                (foldr (lambda (_%g1348613489%_
                                                                _%g1348713492%_)
                                                         (cons _%g1348613489%_
                                                               _%g1348713492%_))
                                                       '()
                                                       _%L13448%_)
                                                _%mid13484%_)))
                                         (begin
                                           (let ((_g20942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g20941_)
                                                        (##values-length
                                                         _g20941_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g20942_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g20942_)))
                                           (let ((_%left13495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g20941_ 0)))
                                                 (_%right13497%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g20941_
                                                     1))))
                                             (let* ((_%g1350113542%_
                                                     (lambda (_%g1350213538%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1350213538%_)))
                                                    (_%g1350013703%_
                                                     (lambda (_%g1350213546%_)
                                                       (if (gx#stx-pair?
                                                            _%g1350213546%_)
                                                           (let ((_%e1350713549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1350213546%_)))
                     (let ((_%hd1350813553%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1350713549%_)))
                           (_%tl1350913556%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1350713549%_))))
                       (if (gx#stx-pair? _%tl1350913556%_)
                           (let ((_%e1351013559%_
                                  (gx#syntax-e _%tl1350913556%_)))
                             (let ((_%hd1351113563%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1351013559%_)))
                                   (_%tl1351213566%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1351013559%_))))
                               (if (gx#stx-pair/null? _%hd1351113563%_)
                                   (let ((_g20943_
                                          (gx#syntax-split-splice
                                           _%hd1351113563%_
                                           '0)))
                                     (begin
                                       (let ((_g20944_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20943_)
                                                    (##values-length _g20943_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20944_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20944_)))
                                       (let ((_%target1351313569%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20943_ 0)))
                                             (_%tl1351513572%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20943_ 1))))
                                         (if (gx#stx-null? _%tl1351513572%_)
                                             (letrec ((_%loop1351613575%_
                                                       (lambda (_%hd1351413579%_
                                                                _%K-left1352013582%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1351413579%_)
                                                             (let ((_%e1351713585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1351413579%_)))
                       (let ((_%lp-hd1351813589%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1351713585%_)))
                             (_%lp-tl1351913592%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1351713585%_))))
                         (_%loop1351613575%_
                          _%lp-tl1351913592%_
                          (cons _%lp-hd1351813589%_ _%K-left1352013582%_))))
                     (let ((_%K-left1352113595%_
                            (reverse _%K-left1352013582%_)))
                       (if (gx#stx-pair? _%tl1351213566%_)
                           (let ((_%e1352213599%_
                                  (gx#syntax-e _%tl1351213566%_)))
                             (let ((_%hd1352313603%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1352213599%_)))
                                   (_%tl1352413606%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1352213599%_))))
                               (if (gx#stx-pair/null? _%hd1352313603%_)
                                   (let ((_g20945_
                                          (gx#syntax-split-splice
                                           _%hd1352313603%_
                                           '0)))
                                     (begin
                                       (let ((_g20946_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20945_)
                                                    (##values-length _g20945_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20946_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20946_)))
                                       (let ((_%target1352513609%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20945_ 0)))
                                             (_%tl1352713612%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20945_ 1))))
                                         (if (gx#stx-null? _%tl1352713612%_)
                                             (letrec ((_%loop1352813615%_
                                                       (lambda (_%hd1352613619%_
                                                                _%K-right1353213622%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1352613619%_)
                                                             (let ((_%e1352913625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1352613619%_)))
                       (let ((_%lp-hd1353013629%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1352913625%_)))
                             (_%lp-tl1353113632%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1352913625%_))))
                         (_%loop1352813615%_
                          _%lp-tl1353113632%_
                          (cons _%lp-hd1353013629%_ _%K-right1353213622%_))))
                     (let ((_%K-right1353313635%_
                            (reverse _%K-right1353213622%_)))
                       (if (gx#stx-pair? _%tl1352413606%_)
                           (let ((_%e1353413639%_
                                  (gx#syntax-e _%tl1352413606%_)))
                             (let ((_%hd1353513643%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1353413639%_)))
                                   (_%tl1353613646%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1353413639%_))))
                               (if (gx#stx-null? _%tl1353613646%_)
                                   ((lambda (_%L13649%_
                                             _%L13651%_
                                             _%L13652%_
                                             _%L13653%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%L13450%_
                                                              (cons _%L13649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%L13451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L13450%_
                                  (foldr (lambda (_%g1368613691%_
                                                  _%g1368713694%_)
                                           (cons _%g1368613691%_
                                                 _%g1368713694%_))
                                         '()
                                         _%L13652%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%L13649%_
                                  (cons _%L13450%_
                                        (foldr (lambda (_%g1368813697%_
                                                        _%g1368913700%_)
                                                 (cons _%g1368813697%_
                                                       _%g1368913700%_))
                                               '()
                                               _%L13651%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1353513643%_
                                    _%K-right1353313635%_
                                    _%K-left1352113595%_
                                    _%hd1350813553%_)
                                   (_%g1350113542%_ _%g1350213546%_))))
                           (_%g1350113542%_ _%g1350213546%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1352813615%_
                                                _%target1352513609%_
                                                '()))
                                             (_%g1350113542%_
                                              _%g1350213546%_)))))
                                   (_%g1350113542%_ _%g1350213546%_))))
                           (_%g1350113542%_ _%g1350213546%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1351613575%_
                                                _%target1351313569%_
                                                '()))
                                             (_%g1350113542%_
                                              _%g1350213546%_)))))
                                   (_%g1350113542%_ _%g1350213546%_))))
                           (_%g1350113542%_ _%g1350213546%_))))
                   (_%g1350113542%_ _%g1350213546%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1350013703%_
                                                (list _%mid13484%_
                                                      _%left13495%_
                                                      _%right13497%_
                                                      (fx+ _%mid13484%_
                                                           (gx#stx-e
                                                            _%L13451%_)))))))))
                                     _%K1337513444%_
                                     _%hd1336513412%_
                                     _%hd1336213402%_))))))
                    (_%loop1337013424%_ _%target1336713418%_ '()))
                  (_%g1335313381%_ _%g1335413385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1335313381%_
                                                 _%g1335413385%_))))
                                        (_%g1335313381%_ _%g1335413385%_))))
                                (_%g1335313381%_ _%g1335413385%_))))
                        (_%g1335313381%_ _%g1335413385%_)))))
            (_%g1335213707%_ _%stx13347%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13727%_)
        (let* ((_%__stx1977119772%_ _%$stx13727%_)
               (_%g1373213763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1977119772%_))))
          (let ((_%__kont1977419775%_ (lambda (_%L13875%_) _%L13875%_))
                (_%__kont1977619777%_
                 (lambda (_%L13820%_ _%L13822%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%L13822%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1383913842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1384013845%_)
                        (cons _%g1383913842%_ _%g1384013845%_))
                      '()
                      _%L13820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1981419815%_
                   (lambda (_%e1374313770%_
                            _%hd1374413774%_
                            _%tl1374513777%_
                            _%e1374613780%_
                            _%hd1374713784%_
                            _%tl1374813787%_
                            _%__splice1977819779%_
                            _%target1374913790%_
                            _%tl1375113793%_)
                     (letrec ((_%loop1375213796%_
                               (lambda (_%hd1375013800%_ _%rest1375613803%_)
                                 (if (gx#stx-pair? _%hd1375013800%_)
                                     (let ((_%e1375313806%_
                                            (gx#syntax-e _%hd1375013800%_)))
                                       (let ((_%lp-tl1375513813%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1375313806%_)))
                                             (_%lp-hd1375413810%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1375313806%_))))
                                         (_%loop1375213796%_
                                          _%lp-tl1375513813%_
                                          (cons _%lp-hd1375413810%_
                                                _%rest1375613803%_))))
                                     (let ((_%rest1375713816%_
                                            (reverse _%rest1375613803%_)))
                                       (_%__kont1977619777%_
                                        _%rest1375713816%_
                                        _%hd1374713784%_))))))
                       (_%loop1375213796%_ _%target1374913790%_ '())))))
              (if (gx#stx-pair? _%__stx1977119772%_)
                  (let ((_%e1373513855%_ (gx#syntax-e _%__stx1977119772%_)))
                    (let ((_%tl1373713862%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1373513855%_)))
                          (_%hd1373613859%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1373513855%_))))
                      (if (gx#stx-pair? _%tl1373713862%_)
                          (let ((_%e1373813865%_
                                 (gx#syntax-e _%tl1373713862%_)))
                            (let ((_%tl1374013872%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1373813865%_)))
                                  (_%hd1373913869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1373813865%_))))
                              (if (gx#stx-null? _%tl1374013872%_)
                                  (_%__kont1977419775%_ _%hd1373913869%_)
                                  (if (gx#stx-pair/null? _%tl1374013872%_)
                                      (let ((_%__splice1977819779%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1374013872%_
                                              '0)))
                                        (let ((_%tl1375113793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1977819779%_
                                                  '1)))
                                              (_%target1374913790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1977819779%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1375113793%_)
                                              (_%__match1981419815%_
                                               _%e1373513855%_
                                               _%hd1373613859%_
                                               _%tl1373713862%_
                                               _%e1373813865%_
                                               _%hd1373913869%_
                                               _%tl1374013872%_
                                               _%__splice1977819779%_
                                               _%target1374913790%_
                                               _%tl1375113793%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1373213763%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1373213763%_))))))
                          (let () (declare (not safe)) (_%g1373213763%_)))))
                  (let () (declare (not safe)) (_%g1373213763%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13893%_)
        (let* ((_%__stx1981719818%_ _%$stx13893%_)
               (_%g1389913952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1981719818%_))))
          (let ((_%__kont1982019821%_
                 (lambda (_%L14154%_ _%L14156%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14156%_ (cons _%L14154%_ '()))
                                     '())
                               (cons _%L14156%_ '())))))
                (_%__kont1982219823%_
                 (lambda (_%L14098%_ _%L14100%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%L14100%_ (cons _%L14098%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%L14100%_)
                                     '())))))
                (_%__kont1982419825%_
                 (lambda (_%L14019%_ _%L14021%_ _%L14022%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%L14022%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%L14021%_
                                                             (foldr (lambda (_%g1404214045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1404314048%_)
                              (cons _%g1404214045%_ _%g1404314048%_))
                            '()
                            _%L14019%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%L14022%_ '()))))))
            (let* ((_%__match1990419905%_
                    (lambda (_%e1392913959%_
                             _%hd1393013963%_
                             _%tl1393113966%_
                             _%e1393213969%_
                             _%hd1393313973%_
                             _%tl1393413976%_
                             _%e1393513979%_
                             _%hd1393613983%_
                             _%tl1393713986%_
                             _%__splice1982619827%_
                             _%target1393813989%_
                             _%tl1394013992%_)
                      (letrec ((_%loop1394113995%_
                                (lambda (_%hd1393913999%_ _%body1394514002%_)
                                  (if (gx#stx-pair? _%hd1393913999%_)
                                      (let ((_%e1394214005%_
                                             (gx#syntax-e _%hd1393913999%_)))
                                        (let ((_%lp-tl1394414012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1394214005%_)))
                                              (_%lp-hd1394314009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1394214005%_))))
                                          (_%loop1394113995%_
                                           _%lp-tl1394414012%_
                                           (cons _%lp-hd1394314009%_
                                                 _%body1394514002%_))))
                                      (let ((_%body1394614015%_
                                             (reverse _%body1394514002%_)))
                                        (let ((_%L14019%_ _%body1394614015%_)
                                              (_%L14021%_ _%tl1393713986%_)
                                              (_%L14022%_ _%hd1393613983%_))
                                          (if (gx#identifier? _%L14022%_)
                                              (_%__kont1982419825%_
                                               _%L14019%_
                                               _%L14021%_
                                               _%L14022%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389913952%_)))))))))
                        (_%loop1394113995%_ _%target1393813989%_ '()))))
                   (_%__match1987819879%_
                    (lambda (_%e1391414058%_
                             _%hd1391514062%_
                             _%tl1391614065%_
                             _%e1391714068%_
                             _%hd1391814072%_
                             _%tl1391914075%_
                             _%e1392014078%_
                             _%hd1392114082%_
                             _%tl1392214085%_
                             _%e1392314088%_
                             _%hd1392414092%_
                             _%tl1392514095%_)
                      (let ((_%L14098%_ _%hd1392414092%_)
                            (_%L14100%_ _%tl1392214085%_))
                        (if (gx#identifier-list? _%L14100%_)
                            (_%__kont1982219823%_ _%L14098%_ _%L14100%_)
                            (if (gx#stx-pair/null? _%tl1391914075%_)
                                (let ((_%__splice1982619827%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1391914075%_
                                        '0)))
                                  (let ((_%tl1394013992%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1982619827%_
                                            '1)))
                                        (_%target1393813989%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1982619827%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1394013992%_)
                                        (_%__match1990419905%_
                                         _%e1391414058%_
                                         _%hd1391514062%_
                                         _%tl1391614065%_
                                         _%e1391714068%_
                                         _%hd1391814072%_
                                         _%tl1391914075%_
                                         _%e1392014078%_
                                         _%hd1392114082%_
                                         _%tl1392214085%_
                                         _%__splice1982619827%_
                                         _%target1393813989%_
                                         _%tl1394013992%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1389913952%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1389913952%_)))))))
                   (_%__match1984819849%_
                    (lambda (_%e1390314124%_
                             _%hd1390414128%_
                             _%tl1390514131%_
                             _%e1390614134%_
                             _%hd1390714138%_
                             _%tl1390814141%_
                             _%e1390914144%_
                             _%hd1391014148%_
                             _%tl1391114151%_)
                      (let ((_%L14154%_ _%hd1391014148%_)
                            (_%L14156%_ _%hd1390714138%_))
                        (if (gx#identifier? _%L14156%_)
                            (_%__kont1982019821%_ _%L14154%_ _%L14156%_)
                            (if (gx#stx-pair? _%hd1390714138%_)
                                (let ((_%e1392014078%_
                                       (gx#syntax-e _%hd1390714138%_)))
                                  (let ((_%tl1392214085%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1392014078%_)))
                                        (_%hd1392114082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1392014078%_))))
                                    (if (gx#identifier? _%hd1392114082%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g20947_|
                                             _%hd1392114082%_)
                                            (_%__match1987819879%_
                                             _%e1390314124%_
                                             _%hd1390414128%_
                                             _%tl1390514131%_
                                             _%e1390614134%_
                                             _%hd1390714138%_
                                             _%tl1390814141%_
                                             _%e1392014078%_
                                             _%hd1392114082%_
                                             _%tl1392214085%_
                                             _%e1390914144%_
                                             _%hd1391014148%_
                                             _%tl1391114151%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1390814141%_)
                                                (let ((_%__splice1982619827%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1390814141%_
                                                        '0)))
                                                  (let ((_%tl1394013992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1982619827%_
                                                            '1)))
                                                        (_%target1393813989%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1982619827%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1394013992%_)
                                                        (_%__match1990419905%_
                                                         _%e1390314124%_
                                                         _%hd1390414128%_
                                                         _%tl1390514131%_
                                                         _%e1390614134%_
                                                         _%hd1390714138%_
                                                         _%tl1390814141%_
                                                         _%e1392014078%_
                                                         _%hd1392114082%_
                                                         _%tl1392214085%_
                                                         _%__splice1982619827%_
                                                         _%target1393813989%_
                                                         _%tl1394013992%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1389913952%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1389913952%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1390814141%_)
                                            (let ((_%__splice1982619827%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1390814141%_
                                                    '0)))
                                              (let ((_%tl1394013992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1982619827%_
                                                        '1)))
                                                    (_%target1393813989%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1982619827%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1394013992%_)
                                                    (_%__match1990419905%_
                                                     _%e1390314124%_
                                                     _%hd1390414128%_
                                                     _%tl1390514131%_
                                                     _%e1390614134%_
                                                     _%hd1390714138%_
                                                     _%tl1390814141%_
                                                     _%e1392014078%_
                                                     _%hd1392114082%_
                                                     _%tl1392214085%_
                                                     _%__splice1982619827%_
                                                     _%target1393813989%_
                                                     _%tl1394013992%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1389913952%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1389913952%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1389913952%_))))))))
              (if (gx#stx-pair? _%__stx1981719818%_)
                  (let ((_%e1390314124%_ (gx#syntax-e _%__stx1981719818%_)))
                    (let ((_%tl1390514131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1390314124%_)))
                          (_%hd1390414128%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1390314124%_))))
                      (if (gx#stx-pair? _%tl1390514131%_)
                          (let ((_%e1390614134%_
                                 (gx#syntax-e _%tl1390514131%_)))
                            (let ((_%tl1390814141%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1390614134%_)))
                                  (_%hd1390714138%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1390614134%_))))
                              (if (gx#stx-pair? _%tl1390814141%_)
                                  (let ((_%e1390914144%_
                                         (gx#syntax-e _%tl1390814141%_)))
                                    (let ((_%tl1391114151%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1390914144%_)))
                                          (_%hd1391014148%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1390914144%_))))
                                      (if (gx#stx-null? _%tl1391114151%_)
                                          (_%__match1984819849%_
                                           _%e1390314124%_
                                           _%hd1390414128%_
                                           _%tl1390514131%_
                                           _%e1390614134%_
                                           _%hd1390714138%_
                                           _%tl1390814141%_
                                           _%e1390914144%_
                                           _%hd1391014148%_
                                           _%tl1391114151%_)
                                          (if (gx#stx-pair? _%hd1390714138%_)
                                              (let ((_%e1392014078%_
                                                     (gx#syntax-e
                                                      _%hd1390714138%_)))
                                                (let ((_%tl1392214085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1392014078%_)))
                                                      (_%hd1392114082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1392014078%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1390814141%_)
                                                      (let ((_%__splice1982619827%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1390814141%_
                                                              '0)))
                                                        (let ((_%tl1394013992%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1982619827%_ '1)))
                      (_%target1393813989%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1982619827%_ '0))))
                  (if (gx#stx-null? _%tl1394013992%_)
                      (_%__match1990419905%_
                       _%e1390314124%_
                       _%hd1390414128%_
                       _%tl1390514131%_
                       _%e1390614134%_
                       _%hd1390714138%_
                       _%tl1390814141%_
                       _%e1392014078%_
                       _%hd1392114082%_
                       _%tl1392214085%_
                       _%__splice1982619827%_
                       _%target1393813989%_
                       _%tl1394013992%_)
                      (let () (declare (not safe)) (_%g1389913952%_)))))
              (let () (declare (not safe)) (_%g1389913952%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389913952%_))))))
                                  (if (gx#stx-pair? _%hd1390714138%_)
                                      (let ((_%e1392014078%_
                                             (gx#syntax-e _%hd1390714138%_)))
                                        (let ((_%tl1392214085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1392014078%_)))
                                              (_%hd1392114082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1392014078%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1390814141%_)
                                              (let ((_%__splice1982619827%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1390814141%_
                                                      '0)))
                                                (let ((_%tl1394013992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1982619827%_
                                                          '1)))
                                                      (_%target1393813989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1982619827%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1394013992%_)
                                                      (_%__match1990419905%_
                                                       _%e1390314124%_
                                                       _%hd1390414128%_
                                                       _%tl1390514131%_
                                                       _%e1390614134%_
                                                       _%hd1390714138%_
                                                       _%tl1390814141%_
                                                       _%e1392014078%_
                                                       _%hd1392114082%_
                                                       _%tl1392214085%_
                                                       _%__splice1982619827%_
                                                       _%target1393813989%_
                                                       _%tl1394013992%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1389913952%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1389913952%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1389913952%_))))))
                          (let () (declare (not safe)) (_%g1389913952%_)))))
                  (let () (declare (not safe)) (_%g1389913952%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14176%_)
        (letrec ((_%let-bind?14179%_
                  (lambda (_%x15102%_)
                    (let* ((_%__stx1990719908%_ _%x15102%_)
                           (_%g1510715126%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1990719908%_))))
                      (let ((_%__kont1991019911%_
                             (lambda (_%L15194%_ _%L15196%_)
                               (_%let-head?14182%_ _%L15196%_)))
                            (_%__kont1991219913%_ (lambda (_%L15154%_) '#t))
                            (_%__kont1991419915%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx1990719908%_)
                            (let ((_%e1511115174%_
                                   (gx#syntax-e _%__stx1990719908%_)))
                              (let ((_%tl1511315181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1511115174%_)))
                                    (_%hd1511215178%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1511115174%_))))
                                (if (gx#stx-pair? _%tl1511315181%_)
                                    (let ((_%e1511415184%_
                                           (gx#syntax-e _%tl1511315181%_)))
                                      (let ((_%tl1511615191%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1511415184%_)))
                                            (_%hd1511515188%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1511415184%_))))
                                        (if (gx#stx-null? _%tl1511615191%_)
                                            (_%__kont1991019911%_
                                             _%hd1511515188%_
                                             _%hd1511215178%_)
                                            (_%__kont1991419915%_))))
                                    (if (gx#stx-null? _%tl1511315181%_)
                                        (_%__kont1991219913%_ _%hd1511215178%_)
                                        (_%__kont1991419915%_)))))
                            (_%__kont1991419915%_))))))
                 (_%let-bind14181%_
                  (lambda (_%x15004%_)
                    (let* ((_%__stx1994119942%_ _%x15004%_)
                           (_%g1500815027%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1994119942%_))))
                      (let ((_%__kont1994419945%_
                             (lambda (_%L15083%_ _%L15085%_) _%x15004%_))
                            (_%__kont1994619947%_
                             (lambda (_%L15044%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%L15044%_ '())))))
                        (if (gx#stx-pair? _%__stx1994119942%_)
                            (let ((_%e1501215063%_
                                   (gx#syntax-e _%__stx1994119942%_)))
                              (let ((_%tl1501415070%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1501215063%_)))
                                    (_%hd1501315067%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1501215063%_))))
                                (if (gx#stx-pair? _%tl1501415070%_)
                                    (let ((_%e1501515073%_
                                           (gx#syntax-e _%tl1501415070%_)))
                                      (let ((_%tl1501715080%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1501515073%_)))
                                            (_%hd1501615077%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1501515073%_))))
                                        (if (gx#stx-null? _%tl1501715080%_)
                                            (_%__kont1994419945%_
                                             _%hd1501615077%_
                                             _%hd1501315067%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1500815027%_)))))
                                    (if (gx#stx-null? _%tl1501415070%_)
                                        (_%__kont1994619947%_ _%hd1501315067%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1500815027%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1500815027%_)))))))
                 (_%let-head?14182%_
                  (lambda (_%x14944%_)
                    (let* ((_%__stx1997319974%_ _%x14944%_)
                           (_%g1494814959%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1997319974%_))))
                      (let ((_%__kont1997619977%_
                             (lambda (_%L14987%_)
                               (gx#stx-andmap gx#identifier? _%L14987%_)))
                            (_%__kont1997819979%_
                             (lambda () (gx#identifier? _%x14944%_))))
                        (if (gx#stx-pair? _%__stx1997319974%_)
                            (let ((_%e1495114977%_
                                   (gx#syntax-e _%__stx1997319974%_)))
                              (let ((_%tl1495314984%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1495114977%_)))
                                    (_%hd1495214981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1495114977%_))))
                                (if (gx#identifier? _%hd1495214981%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20948_|
                                         _%hd1495214981%_)
                                        (_%__kont1997619977%_ _%tl1495314984%_)
                                        (_%__kont1997819979%_))
                                    (_%__kont1997819979%_))))
                            (_%__kont1997819979%_))))))
                 (_%let-head14183%_
                  (lambda (_%x14884%_)
                    (let* ((_%__stx1999319994%_ _%x14884%_)
                           (_%g1488814899%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1999319994%_))))
                      (let ((_%__kont1999619997%_
                             (lambda (_%L14927%_) _%L14927%_))
                            (_%__kont1999819999%_
                             (lambda () (list _%x14884%_))))
                        (if (gx#stx-pair? _%__stx1999319994%_)
                            (let ((_%e1489114917%_
                                   (gx#syntax-e _%__stx1999319994%_)))
                              (let ((_%tl1489314924%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1489114917%_)))
                                    (_%hd1489214921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1489114917%_))))
                                (if (gx#identifier? _%hd1489214921%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g20949_|
                                         _%hd1489214921%_)
                                        (_%__kont1999619997%_ _%tl1489314924%_)
                                        (_%__kont1999819999%_))
                                    (_%__kont1999819999%_))))
                            (_%__kont1999819999%_)))))))
          (let* ((_%__stx2001320014%_ _%stx14176%_)
                 (_%g1418714259%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2001320014%_))))
            (let ((_%__kont2001620017%_
                   (lambda (_%L14857%_ _%L14859%_ _%L14860%_ _%L14861%_)
                     (cons _%L14861%_
                           (cons (cons (cons _%L14860%_ (cons _%L14859%_ '()))
                                       '())
                                 _%L14857%_))))
                  (_%__kont2001820019%_
                   (lambda (_%L14779%_ _%L14781%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%L14781%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1480114804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1480214807%_)
                    (cons _%g1480114804%_ _%g1480214807%_))
                  '()
                  _%L14779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2002220023%_
                   (lambda (_%L14346%_ _%L14348%_)
                     (let* ((_%g1437914405%_
                             (lambda (_%g1438014401%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1438014401%_)))
                            (_%g1437814690%_
                             (lambda (_%g1438014409%_)
                               (if (gx#stx-pair/null? _%g1438014409%_)
                                   (let ((_g20950_
                                          (gx#syntax-split-splice
                                           _%g1438014409%_
                                           '0)))
                                     (begin
                                       (let ((_g20951_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20950_)
                                                    (##values-length _g20950_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20951_ 2)))
                                             (error "Context expects 2 values"
                                                    _g20951_)))
                                       (let ((_%target1438314412%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20950_ 0)))
                                             (_%tl1438514415%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20950_ 1))))
                                         (if (gx#stx-null? _%tl1438514415%_)
                                             (letrec ((_%loop1438614418%_
                                                       (lambda (_%hd1438414422%_
                                                                _%e1439014425%_
                                                                _%hd1439114427%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1438414422%_)
                                                             (let ((_%e1438714430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1438414422%_)))
                       (let ((_%lp-hd1438814434%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1438714430%_)))
                             (_%lp-tl1438914437%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1438714430%_))))
                         (if (gx#stx-pair? _%lp-hd1438814434%_)
                             (let ((_%e1439414440%_
                                    (gx#syntax-e _%lp-hd1438814434%_)))
                               (let ((_%hd1439514444%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1439414440%_)))
                                     (_%tl1439614447%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1439414440%_))))
                                 (if (gx#stx-pair? _%tl1439614447%_)
                                     (let ((_%e1439714450%_
                                            (gx#syntax-e _%tl1439614447%_)))
                                       (let ((_%hd1439814454%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1439714450%_)))
                                             (_%tl1439914457%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1439714450%_))))
                                         (if (gx#stx-null? _%tl1439914457%_)
                                             (_%loop1438614418%_
                                              _%lp-tl1438914437%_
                                              (cons _%hd1439814454%_
                                                    _%e1439014425%_)
                                              (cons _%hd1439514444%_
                                                    _%hd1439114427%_))
                                             (_%g1437914405%_
                                              _%g1438014409%_))))
                                     (_%g1437914405%_ _%g1438014409%_))))
                             (_%g1437914405%_ _%g1438014409%_))))
                     (let ((_%e1439214460%_ (reverse _%e1439014425%_))
                           (_%hd1439314463%_ (reverse _%hd1439114427%_)))
                       ((lambda (_%L14466%_ _%L14468%_)
                          (let* ((_%g1448414501%_
                                  (lambda (_%g1448514497%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1448514497%_)))
                                 (_%g1448314678%_
                                  (lambda (_%g1448514505%_)
                                    (if (gx#stx-pair/null? _%g1448514505%_)
                                        (let ((_g20952_
                                               (gx#syntax-split-splice
                                                _%g1448514505%_
                                                '0)))
                                          (begin
                                            (let ((_g20953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20952_)
                                                         (##values-length
                                                          _g20952_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20953_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20953_)))
                                            (let ((_%target1448714508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20952_
                                                      0)))
                                                  (_%tl1448914511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20952_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1448914511%_)
                                                  (letrec ((_%loop1449014514%_
                                                            (lambda (_%hd1448814518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1449414521%_)
                      (if (gx#stx-pair? _%hd1448814518%_)
                          (let ((_%e1449114524%_
                                 (gx#syntax-e _%hd1448814518%_)))
                            (let ((_%lp-hd1449214528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1449114524%_)))
                                  (_%lp-tl1449314531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1449114524%_))))
                              (_%loop1449014514%_
                               _%lp-tl1449314531%_
                               (cons _%lp-hd1449214528%_ _%$e1449414521%_))))
                          (let ((_%$e1449514534%_ (reverse _%$e1449414521%_)))
                            ((lambda (_%L14538%_)
                               (let* ((_%g1455514572%_
                                       (lambda (_%g1455614568%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1455614568%_)))
                                      (_%g1455414666%_
                                       (lambda (_%g1455614576%_)
                                         (if (gx#stx-pair/null?
                                              _%g1455614576%_)
                                             (let ((_g20954_
                                                    (gx#syntax-split-splice
                                                     _%g1455614576%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20955_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20954_)
                                                              (##values-length
                                                               _g20954_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1455814579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20954_
                                                           0)))
                                                       (_%tl1456014582%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20954_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1456014582%_)
                                                       (letrec ((_%loop1456114585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1455914589%_ _%hd-bind1456514592%_)
                           (if (gx#stx-pair? _%hd1455914589%_)
                               (let ((_%e1456214595%_
                                      (gx#syntax-e _%hd1455914589%_)))
                                 (let ((_%lp-hd1456314599%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1456214595%_)))
                                       (_%lp-tl1456414602%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1456214595%_))))
                                   (_%loop1456114585%_
                                    _%lp-tl1456414602%_
                                    (cons _%lp-hd1456314599%_
                                          _%hd-bind1456514592%_))))
                               (let ((_%hd-bind1456614605%_
                                      (reverse _%hd-bind1456514592%_)))
                                 ((lambda (_%L14609%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L14466%_
                                                   _%L14538%_)
                                                  (foldr (lambda (_%g1462714638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1462814641%_
                          _%g1462914643%_)
                   (cons (cons (cons _%g1462814641%_ '())
                               (cons _%g1462714638%_ '()))
                         _%g1462914643%_))
                 '()
                 _%L14466%_
                 _%L14538%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1463014646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1463114649%_)
                             (cons _%g1463014646%_ _%g1463114649%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%L14538%_
                                                _%L14609%_)
                                               (foldr (lambda (_%g1463214652%_
                                                               _%g1463314655%_
                                                               _%g1463414657%_)
                                                        (cons (cons _%g1463314655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1463214652%_ '()))
                      _%g1463414657%_))
              '()
              _%L14538%_
              _%L14609%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1463514660%_
                                                             _%g1463614663%_)
                                                      (cons _%g1463514660%_
                                                            _%g1463614663%_))
                                                    '()
                                                    _%L14346%_)))
                                 '())
                           _%L14538%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1456614605%_))))))
                 (_%loop1456114585%_ _%target1455814579%_ '()))
               (_%g1455514572%_ _%g1455614576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1455514572%_
                                              _%g1455614576%_)))))
                                 (_%g1455414666%_
                                  (gx#stx-map
                                   _%let-head14183%_
                                   (foldr (lambda (_%g1466914672%_
                                                   _%g1467014675%_)
                                            (cons _%g1466914672%_
                                                  _%g1467014675%_))
                                          '()
                                          _%L14468%_)))))
                             _%$e1449514534%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1449014514%_
                                                     _%target1448714508%_
                                                     '()))
                                                  (_%g1448414501%_
                                                   _%g1448514505%_)))))
                                        (_%g1448414501%_ _%g1448514505%_)))))
                            (_%g1448314678%_
                             (gx#gentemps
                              (foldr (lambda (_%g1468114684%_ _%g1468214687%_)
                                       (cons _%g1468114684%_ _%g1468214687%_))
                                     '()
                                     _%L14468%_)))))
                        _%e1439214460%_
                        _%hd1439314463%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1438614418%_
                                                _%target1438314412%_
                                                '()
                                                '()))
                                             (_%g1437914405%_
                                              _%g1438014409%_)))))
                                   (_%g1437914405%_ _%g1438014409%_)))))
                       (_%g1437814690%_
                        (gx#stx-map
                         _%let-bind14181%_
                         (foldr (lambda (_%g1469314696%_ _%g1469414699%_)
                                  (cons _%g1469314696%_ _%g1469414699%_))
                                '()
                                _%L14348%_)))))))
              (let* ((_%__match2011020111%_
                      (lambda (_%e1423014266%_
                               _%hd1423114270%_
                               _%tl1423214273%_
                               _%e1423314276%_
                               _%hd1423414280%_
                               _%tl1423514283%_
                               _%__splice2002420025%_
                               _%target1423614286%_
                               _%tl1423814289%_)
                        (letrec ((_%loop1423914292%_
                                  (lambda (_%hd1423714296%_ _%bind1424314299%_)
                                    (if (gx#stx-pair? _%hd1423714296%_)
                                        (let ((_%e1424014302%_
                                               (gx#syntax-e _%hd1423714296%_)))
                                          (let ((_%lp-tl1424214309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1424014302%_)))
                                                (_%lp-hd1424114306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1424014302%_))))
                                            (_%loop1423914292%_
                                             _%lp-tl1424214309%_
                                             (cons _%lp-hd1424114306%_
                                                   _%bind1424314299%_))))
                                        (let ((_%bind1424414312%_
                                               (reverse _%bind1424314299%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1423514283%_)
                                              (let ((_%__splice2002620027%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1423514283%_
                                                      '0)))
                                                (let ((_%tl1424714319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2002620027%_
                                                          '1)))
                                                      (_%target1424514316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2002620027%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1424714319%_)
                                                      (letrec ((_%loop1424814322%_
                                                                (lambda (_%hd1424614326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1425214329%_)
                          (if (gx#stx-pair? _%hd1424614326%_)
                              (let ((_%e1424914332%_
                                     (gx#syntax-e _%hd1424614326%_)))
                                (let ((_%lp-tl1425114339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1424914332%_)))
                                      (_%lp-hd1425014336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1424914332%_))))
                                  (_%loop1424814322%_
                                   _%lp-tl1425114339%_
                                   (cons _%lp-hd1425014336%_
                                         _%body1425214329%_))))
                              (let ((_%body1425314342%_
                                     (reverse _%body1425214329%_)))
                                (let ((_%L14346%_ _%body1425314342%_)
                                      (_%L14348%_ _%bind1424414312%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14179%_
                                       (foldr (lambda (_%g1437014373%_
                                                       _%g1437114376%_)
                                                (cons _%g1437014373%_
                                                      _%g1437114376%_))
                                              '()
                                              _%L14348%_))
                                      (_%__kont2002220023%_
                                       _%L14346%_
                                       _%L14348%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418714259%_)))))))))
                (_%loop1424814322%_ _%target1424514316%_ '()))
              (let () (declare (not safe)) (_%g1418714259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418714259%_))))))))
                          (_%loop1423914292%_ _%target1423614286%_ '()))))
                     (_%__match2009020091%_
                      (lambda (_%e1420714709%_
                               _%hd1420814713%_
                               _%tl1420914716%_
                               _%e1421014719%_
                               _%hd1421114723%_
                               _%tl1421214726%_
                               _%e1421314729%_
                               _%hd1421414733%_
                               _%tl1421514736%_
                               _%e1421614739%_
                               _%hd1421714743%_
                               _%tl1421814746%_
                               _%__splice2002020021%_
                               _%target1421914749%_
                               _%tl1422114752%_)
                        (letrec ((_%loop1422214755%_
                                  (lambda (_%hd1422014759%_ _%body1422614762%_)
                                    (if (gx#stx-pair? _%hd1422014759%_)
                                        (let ((_%e1422314765%_
                                               (gx#syntax-e _%hd1422014759%_)))
                                          (let ((_%lp-tl1422514772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1422314765%_)))
                                                (_%lp-hd1422414769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1422314765%_))))
                                            (_%loop1422214755%_
                                             _%lp-tl1422514772%_
                                             (cons _%lp-hd1422414769%_
                                                   _%body1422614762%_))))
                                        (let ((_%body1422714775%_
                                               (reverse _%body1422614762%_)))
                                          (_%__kont2001820019%_
                                           _%body1422714775%_
                                           _%hd1421714743%_))))))
                          (_%loop1422214755%_ _%target1421914749%_ '()))))
                     (_%__match2005420055%_
                      (lambda (_%e1419314817%_
                               _%hd1419414821%_
                               _%tl1419514824%_
                               _%e1419614827%_
                               _%hd1419714831%_
                               _%tl1419814834%_
                               _%e1419914837%_
                               _%hd1420014841%_
                               _%tl1420114844%_
                               _%e1420214847%_
                               _%hd1420314851%_
                               _%tl1420414854%_)
                        (let ((_%L14857%_ _%tl1419814834%_)
                              (_%L14859%_ _%hd1420314851%_)
                              (_%L14860%_ _%hd1420014841%_)
                              (_%L14861%_ _%hd1419414821%_))
                          (if (_%let-head?14182%_ _%L14860%_)
                              (_%__kont2001620017%_
                               _%L14857%_
                               _%L14859%_
                               _%L14860%_
                               _%L14861%_)
                              (if (gx#stx-pair? _%hd1420014841%_)
                                  (let ((_%e1421614739%_
                                         (gx#syntax-e _%hd1420014841%_)))
                                    (let ((_%tl1421814746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1421614739%_)))
                                          (_%hd1421714743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1421614739%_))))
                                      (if (gx#stx-pair/null? _%hd1419714831%_)
                                          (let ((_%__splice2002420025%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1419714831%_
                                                  '0)))
                                            (let ((_%tl1423814289%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2002420025%_
                                                      '1)))
                                                  (_%target1423614286%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2002420025%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1423814289%_)
                                                  (_%__match2011020111%_
                                                   _%e1419314817%_
                                                   _%hd1419414821%_
                                                   _%tl1419514824%_
                                                   _%e1419614827%_
                                                   _%hd1419714831%_
                                                   _%tl1419814834%_
                                                   _%__splice2002420025%_
                                                   _%target1423614286%_
                                                   _%tl1423814289%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1418714259%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1418714259%_)))))
                                  (if (gx#stx-pair/null? _%hd1419714831%_)
                                      (let ((_%__splice2002420025%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1419714831%_
                                              '0)))
                                        (let ((_%tl1423814289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2002420025%_
                                                  '1)))
                                              (_%target1423614286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2002420025%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1423814289%_)
                                              (_%__match2011020111%_
                                               _%e1419314817%_
                                               _%hd1419414821%_
                                               _%tl1419514824%_
                                               _%e1419614827%_
                                               _%hd1419714831%_
                                               _%tl1419814834%_
                                               _%__splice2002420025%_
                                               _%target1423614286%_
                                               _%tl1423814289%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1418714259%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1418714259%_)))))))))
                (if (gx#stx-pair? _%__stx2001320014%_)
                    (let ((_%e1419314817%_ (gx#syntax-e _%__stx2001320014%_)))
                      (let ((_%tl1419514824%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1419314817%_)))
                            (_%hd1419414821%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1419314817%_))))
                        (if (gx#stx-pair? _%tl1419514824%_)
                            (let ((_%e1419614827%_
                                   (gx#syntax-e _%tl1419514824%_)))
                              (let ((_%tl1419814834%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1419614827%_)))
                                    (_%hd1419714831%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1419614827%_))))
                                (if (gx#stx-pair? _%hd1419714831%_)
                                    (let ((_%e1419914837%_
                                           (gx#syntax-e _%hd1419714831%_)))
                                      (let ((_%tl1420114844%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1419914837%_)))
                                            (_%hd1420014841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1419914837%_))))
                                        (if (gx#stx-pair? _%tl1420114844%_)
                                            (let ((_%e1420214847%_
                                                   (gx#syntax-e
                                                    _%tl1420114844%_)))
                                              (let ((_%tl1420414854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1420214847%_)))
                                                    (_%hd1420314851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1420214847%_))))
                                                (if (gx#stx-null?
                                                     _%tl1420414854%_)
                                                    (_%__match2005420055%_
                                                     _%e1419314817%_
                                                     _%hd1419414821%_
                                                     _%tl1419514824%_
                                                     _%e1419614827%_
                                                     _%hd1419714831%_
                                                     _%tl1419814834%_
                                                     _%e1419914837%_
                                                     _%hd1420014841%_
                                                     _%tl1420114844%_
                                                     _%e1420214847%_
                                                     _%hd1420314851%_
                                                     _%tl1420414854%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1420014841%_)
                                                        (let ((_%e1421614739%_
                                                               (gx#syntax-e
                                                                _%hd1420014841%_)))
                                                          (let ((_%tl1421814746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1421614739%_)))
                        (_%hd1421714743%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1421614739%_))))
                    (if (gx#stx-pair/null? _%hd1419714831%_)
                        (let ((_%__splice2002420025%_
                               (gx#syntax-split-splice->vector
                                _%hd1419714831%_
                                '0)))
                          (let ((_%tl1423814289%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002420025%_ '1)))
                                (_%target1423614286%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002420025%_ '0))))
                            (if (gx#stx-null? _%tl1423814289%_)
                                (_%__match2011020111%_
                                 _%e1419314817%_
                                 _%hd1419414821%_
                                 _%tl1419514824%_
                                 _%e1419614827%_
                                 _%hd1419714831%_
                                 _%tl1419814834%_
                                 _%__splice2002420025%_
                                 _%target1423614286%_
                                 _%tl1423814289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1418714259%_)))))
                        (let () (declare (not safe)) (_%g1418714259%_)))))
                (if (gx#stx-pair/null? _%hd1419714831%_)
                    (let ((_%__splice2002420025%_
                           (gx#syntax-split-splice->vector
                            _%hd1419714831%_
                            '0)))
                      (let ((_%tl1423814289%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002420025%_ '1)))
                            (_%target1423614286%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002420025%_ '0))))
                        (if (gx#stx-null? _%tl1423814289%_)
                            (_%__match2011020111%_
                             _%e1419314817%_
                             _%hd1419414821%_
                             _%tl1419514824%_
                             _%e1419614827%_
                             _%hd1419714831%_
                             _%tl1419814834%_
                             _%__splice2002420025%_
                             _%target1423614286%_
                             _%tl1423814289%_)
                            (let () (declare (not safe)) (_%g1418714259%_)))))
                    (let () (declare (not safe)) (_%g1418714259%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1420014841%_)
                                                (let ((_%e1421614739%_
                                                       (gx#syntax-e
                                                        _%hd1420014841%_)))
                                                  (let ((_%tl1421814746%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1421614739%_)))
                                                        (_%hd1421714743%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1421614739%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1421814746%_)
                                                        (if (gx#stx-null?
                                                             _%tl1420114844%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1419814834%_)
                        (let ((_%__splice2002020021%_
                               (gx#syntax-split-splice->vector
                                _%tl1419814834%_
                                '0)))
                          (let ((_%tl1422114752%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002020021%_ '1)))
                                (_%target1421914749%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002020021%_ '0))))
                            (if (gx#stx-null? _%tl1422114752%_)
                                (_%__match2009020091%_
                                 _%e1419314817%_
                                 _%hd1419414821%_
                                 _%tl1419514824%_
                                 _%e1419614827%_
                                 _%hd1419714831%_
                                 _%tl1419814834%_
                                 _%e1419914837%_
                                 _%hd1420014841%_
                                 _%tl1420114844%_
                                 _%e1421614739%_
                                 _%hd1421714743%_
                                 _%tl1421814746%_
                                 _%__splice2002020021%_
                                 _%target1421914749%_
                                 _%tl1422114752%_)
                                (if (gx#stx-pair/null? _%hd1419714831%_)
                                    (let ((_%__splice2002420025%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1419714831%_
                                            '0)))
                                      (let ((_%tl1423814289%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2002420025%_
                                                '1)))
                                            (_%target1423614286%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2002420025%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1423814289%_)
                                            (_%__match2011020111%_
                                             _%e1419314817%_
                                             _%hd1419414821%_
                                             _%tl1419514824%_
                                             _%e1419614827%_
                                             _%hd1419714831%_
                                             _%tl1419814834%_
                                             _%__splice2002420025%_
                                             _%target1423614286%_
                                             _%tl1423814289%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1418714259%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1418714259%_))))))
                        (if (gx#stx-pair/null? _%hd1419714831%_)
                            (let ((_%__splice2002420025%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1419714831%_
                                    '0)))
                              (let ((_%tl1423814289%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2002420025%_
                                        '1)))
                                    (_%target1423614286%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2002420025%_
                                        '0))))
                                (if (gx#stx-null? _%tl1423814289%_)
                                    (_%__match2011020111%_
                                     _%e1419314817%_
                                     _%hd1419414821%_
                                     _%tl1419514824%_
                                     _%e1419614827%_
                                     _%hd1419714831%_
                                     _%tl1419814834%_
                                     _%__splice2002420025%_
                                     _%target1423614286%_
                                     _%tl1423814289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1418714259%_)))))
                            (let () (declare (not safe)) (_%g1418714259%_))))
                    (if (gx#stx-pair/null? _%hd1419714831%_)
                        (let ((_%__splice2002420025%_
                               (gx#syntax-split-splice->vector
                                _%hd1419714831%_
                                '0)))
                          (let ((_%tl1423814289%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002420025%_ '1)))
                                (_%target1423614286%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2002420025%_ '0))))
                            (if (gx#stx-null? _%tl1423814289%_)
                                (_%__match2011020111%_
                                 _%e1419314817%_
                                 _%hd1419414821%_
                                 _%tl1419514824%_
                                 _%e1419614827%_
                                 _%hd1419714831%_
                                 _%tl1419814834%_
                                 _%__splice2002420025%_
                                 _%target1423614286%_
                                 _%tl1423814289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1418714259%_)))))
                        (let () (declare (not safe)) (_%g1418714259%_))))
                (if (gx#stx-pair/null? _%hd1419714831%_)
                    (let ((_%__splice2002420025%_
                           (gx#syntax-split-splice->vector
                            _%hd1419714831%_
                            '0)))
                      (let ((_%tl1423814289%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002420025%_ '1)))
                            (_%target1423614286%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2002420025%_ '0))))
                        (if (gx#stx-null? _%tl1423814289%_)
                            (_%__match2011020111%_
                             _%e1419314817%_
                             _%hd1419414821%_
                             _%tl1419514824%_
                             _%e1419614827%_
                             _%hd1419714831%_
                             _%tl1419814834%_
                             _%__splice2002420025%_
                             _%target1423614286%_
                             _%tl1423814289%_)
                            (let () (declare (not safe)) (_%g1418714259%_)))))
                    (let () (declare (not safe)) (_%g1418714259%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1419714831%_)
                                                    (let ((_%__splice2002420025%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1419714831%_
                                                            '0)))
                                                      (let ((_%tl1423814289%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2002420025%_ '1)))
                    (_%target1423614286%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2002420025%_ '0))))
                (if (gx#stx-null? _%tl1423814289%_)
                    (_%__match2011020111%_
                     _%e1419314817%_
                     _%hd1419414821%_
                     _%tl1419514824%_
                     _%e1419614827%_
                     _%hd1419714831%_
                     _%tl1419814834%_
                     _%__splice2002420025%_
                     _%target1423614286%_
                     _%tl1423814289%_)
                    (let () (declare (not safe)) (_%g1418714259%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1418714259%_)))))))
                                    (if (gx#stx-pair/null? _%hd1419714831%_)
                                        (let ((_%__splice2002420025%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1419714831%_
                                                '0)))
                                          (let ((_%tl1423814289%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2002420025%_
                                                    '1)))
                                                (_%target1423614286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2002420025%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1423814289%_)
                                                (_%__match2011020111%_
                                                 _%e1419314817%_
                                                 _%hd1419414821%_
                                                 _%tl1419514824%_
                                                 _%e1419614827%_
                                                 _%hd1419714831%_
                                                 _%tl1419814834%_
                                                 _%__splice2002420025%_
                                                 _%target1423614286%_
                                                 _%tl1423814289%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1418714259%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1418714259%_))))))
                            (let () (declare (not safe)) (_%g1418714259%_)))))
                    (let () (declare (not safe)) (_%g1418714259%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15219%_)
        (let* ((_%__stx2011320114%_ _%$stx15219%_)
               (_%g1522515276%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2011320114%_))))
          (let ((_%__kont2011620117%_ (lambda () '#t))
                (_%__kont2011820119%_
                 (lambda (_%L15434%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1545015453%_ _%g1545115456%_)
                                        (cons _%g1545015453%_ _%g1545115456%_))
                                      '()
                                      _%L15434%_)))))
                (_%__kont2012220123%_
                 (lambda (_%L15343%_ _%L15345%_ _%L15346%_ _%L15347%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%L15346%_ '())
                               (cons (cons _%L15347%_
                                           (cons _%L15345%_
                                                 (foldr (lambda (_%g1536815371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1536915374%_)
                  (cons _%g1536815371%_ _%g1536915374%_))
                '()
                _%L15343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2019020191%_
                    (lambda (_%e1525315283%_
                             _%hd1525415287%_
                             _%tl1525515290%_
                             _%e1525615293%_
                             _%hd1525715297%_
                             _%tl1525815300%_
                             _%e1525915303%_
                             _%hd1526015307%_
                             _%tl1526115310%_
                             _%__splice2012420125%_
                             _%target1526215313%_
                             _%tl1526415316%_)
                      (letrec ((_%loop1526515319%_
                                (lambda (_%hd1526315323%_ _%body1526915326%_)
                                  (if (gx#stx-pair? _%hd1526315323%_)
                                      (let ((_%e1526615329%_
                                             (gx#syntax-e _%hd1526315323%_)))
                                        (let ((_%lp-tl1526815336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1526615329%_)))
                                              (_%lp-hd1526715333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1526615329%_))))
                                          (_%loop1526515319%_
                                           _%lp-tl1526815336%_
                                           (cons _%lp-hd1526715333%_
                                                 _%body1526915326%_))))
                                      (let ((_%body1527015339%_
                                             (reverse _%body1526915326%_)))
                                        (_%__kont2012220123%_
                                         _%body1527015339%_
                                         _%tl1526115310%_
                                         _%hd1526015307%_
                                         _%hd1525415287%_))))))
                        (_%loop1526515319%_ _%target1526215313%_ '()))))
                   (_%__match2016420165%_
                    (lambda (_%e1523415384%_
                             _%hd1523515388%_
                             _%tl1523615391%_
                             _%e1523715394%_
                             _%hd1523815398%_
                             _%tl1523915401%_
                             _%__splice2012020121%_
                             _%target1524015404%_
                             _%tl1524215407%_)
                      (letrec ((_%loop1524315410%_
                                (lambda (_%hd1524115414%_ _%body1524715417%_)
                                  (if (gx#stx-pair? _%hd1524115414%_)
                                      (let ((_%e1524415420%_
                                             (gx#syntax-e _%hd1524115414%_)))
                                        (let ((_%lp-tl1524615427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1524415420%_)))
                                              (_%lp-hd1524515424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1524415420%_))))
                                          (_%loop1524315410%_
                                           _%lp-tl1524615427%_
                                           (cons _%lp-hd1524515424%_
                                                 _%body1524715417%_))))
                                      (let ((_%body1524815430%_
                                             (reverse _%body1524715417%_)))
                                        (_%__kont2011820119%_
                                         _%body1524815430%_))))))
                        (_%loop1524315410%_ _%target1524015404%_ '())))))
              (if (gx#stx-pair? _%__stx2011320114%_)
                  (let ((_%e1522715466%_ (gx#syntax-e _%__stx2011320114%_)))
                    (let ((_%tl1522915473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1522715466%_)))
                          (_%hd1522815470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1522715466%_))))
                      (if (gx#stx-pair? _%tl1522915473%_)
                          (let ((_%e1523015476%_
                                 (gx#syntax-e _%tl1522915473%_)))
                            (let ((_%tl1523215483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1523015476%_)))
                                  (_%hd1523115480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1523015476%_))))
                              (if (gx#stx-null? _%hd1523115480%_)
                                  (if (gx#stx-null? _%tl1523215483%_)
                                      (_%__kont2011620117%_)
                                      (if (gx#stx-pair/null? _%tl1523215483%_)
                                          (let ((_%__splice2012020121%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1523215483%_
                                                  '0)))
                                            (let ((_%tl1524215407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2012020121%_
                                                      '1)))
                                                  (_%target1524015404%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2012020121%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1524215407%_)
                                                  (_%__match2016420165%_
                                                   _%e1522715466%_
                                                   _%hd1522815470%_
                                                   _%tl1522915473%_
                                                   _%e1523015476%_
                                                   _%hd1523115480%_
                                                   _%tl1523215483%_
                                                   _%__splice2012020121%_
                                                   _%target1524015404%_
                                                   _%tl1524215407%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1522515276%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1522515276%_))))
                                  (if (gx#stx-pair? _%hd1523115480%_)
                                      (let ((_%e1525915303%_
                                             (gx#syntax-e _%hd1523115480%_)))
                                        (let ((_%tl1526115310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1525915303%_)))
                                              (_%hd1526015307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1525915303%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1523215483%_)
                                              (let ((_%__splice2012420125%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1523215483%_
                                                      '0)))
                                                (let ((_%tl1526415316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2012420125%_
                                                          '1)))
                                                      (_%target1526215313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2012420125%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1526415316%_)
                                                      (_%__match2019020191%_
                                                       _%e1522715466%_
                                                       _%hd1522815470%_
                                                       _%tl1522915473%_
                                                       _%e1523015476%_
                                                       _%hd1523115480%_
                                                       _%tl1523215483%_
                                                       _%e1525915303%_
                                                       _%hd1526015307%_
                                                       _%tl1526115310%_
                                                       _%__splice2012420125%_
                                                       _%target1526215313%_
                                                       _%tl1526415316%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1522515276%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1522515276%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1522515276%_))))))
                          (let () (declare (not safe)) (_%g1522515276%_)))))
                  (let () (declare (not safe)) (_%g1522515276%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15496%_)
        (let* ((_%__stx2019320194%_ _%$stx15496%_)
               (_%g1550715585%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2019320194%_))))
          (let ((_%__kont2019620197%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2019820199%_
                 (lambda (_%L15916%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L15916%_ '()))))
                (_%__kont2020020201%_
                 (lambda (_%L15864%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%L15864%_ '()))))
                (_%__kont2020220203%_ (lambda (_%L15811%_) _%L15811%_))
                (_%__kont2020420205%_
                 (lambda (_%L15753%_ _%L15755%_) _%L15755%_))
                (_%__kont2020620207%_
                 (lambda (_%L15695%_ _%L15697%_ _%L15698%_ _%L15699%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%L15699%_ _%L15695%_)
                                     (cons _%L15698%_ '()))))))
                (_%__kont2020820209%_
                 (lambda (_%L15641%_ _%L15643%_ _%L15644%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%L15643%_
                               (cons (cons _%L15644%_ _%L15641%_) '())))))
                (_%__kont2021020211%_ (lambda (_%L15602%_) _%L15602%_)))
            (let* ((_%__match2033220333%_
                    (lambda (_%e1555815665%_
                             _%hd1555915669%_
                             _%tl1556015672%_
                             _%e1556115675%_
                             _%hd1556215679%_
                             _%tl1556315682%_
                             _%e1556415685%_
                             _%hd1556515689%_
                             _%tl1556615692%_)
                      (let ((_%L15695%_ _%tl1556615692%_)
                            (_%L15697%_ _%hd1556515689%_)
                            (_%L15698%_ _%hd1556215679%_)
                            (_%L15699%_ _%hd1555915669%_))
                        (if (gx#ellipsis? _%L15697%_)
                            (_%__kont2020620207%_
                             _%L15695%_
                             _%L15697%_
                             _%L15698%_
                             _%L15699%_)
                            (_%__kont2020820209%_
                             _%tl1556315682%_
                             _%hd1556215679%_
                             _%hd1555915669%_)))))
                   (_%__match2031420315%_
                    (lambda (_%e1554515723%_
                             _%hd1554615727%_
                             _%tl1554715730%_
                             _%e1554815733%_
                             _%hd1554915737%_
                             _%tl1555015740%_
                             _%e1555115743%_
                             _%hd1555215747%_
                             _%tl1555315750%_)
                      (let ((_%L15753%_ _%hd1555215747%_)
                            (_%L15755%_ _%hd1554915737%_))
                        (if (gx#ellipsis? _%L15753%_)
                            (_%__kont2020420205%_ _%L15753%_ _%L15755%_)
                            (_%__match2033220333%_
                             _%e1554515723%_
                             _%hd1554615727%_
                             _%tl1554715730%_
                             _%e1554815733%_
                             _%hd1554915737%_
                             _%tl1555015740%_
                             _%e1555115743%_
                             _%hd1555215747%_
                             _%tl1555315750%_))))))
              (if (gx#stx-pair? _%__stx2019320194%_)
                  (let ((_%e1550915938%_ (gx#syntax-e _%__stx2019320194%_)))
                    (let ((_%tl1551115945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1550915938%_)))
                          (_%hd1551015942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1550915938%_))))
                      (if (gx#stx-null? _%tl1551115945%_)
                          (_%__kont2019620197%_)
                          (if (gx#stx-pair? _%tl1551115945%_)
                              (let ((_%e1551615896%_
                                     (gx#syntax-e _%tl1551115945%_)))
                                (let ((_%tl1551815903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1551615896%_)))
                                      (_%hd1551715900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1551615896%_))))
                                  (if (gx#identifier? _%hd1551715900%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20956_|
                                           _%hd1551715900%_)
                                          (if (gx#stx-pair? _%tl1551815903%_)
                                              (let ((_%e1551915906%_
                                                     (gx#syntax-e
                                                      _%tl1551815903%_)))
                                                (let ((_%tl1552115913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1551915906%_)))
                                                      (_%hd1552015910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1551915906%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1552115913%_)
                                                      (_%__kont2019820199%_
                                                       _%hd1552015910%_)
                                                      (_%__match2033220333%_
                                                       _%e1550915938%_
                                                       _%hd1551015942%_
                                                       _%tl1551115945%_
                                                       _%e1551615896%_
                                                       _%hd1551715900%_
                                                       _%tl1551815903%_
                                                       _%e1551915906%_
                                                       _%hd1552015910%_
                                                       _%tl1552115913%_))))
                                              (_%__kont2020820209%_
                                               _%tl1551815903%_
                                               _%hd1551715900%_
                                               _%hd1551015942%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20957_|
                                               _%hd1551715900%_)
                                              (if (gx#stx-pair?
                                                   _%tl1551815903%_)
                                                  (let ((_%e1552915854%_
                                                         (gx#syntax-e
                                                          _%tl1551815903%_)))
                                                    (let ((_%tl1553115861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1552915854%_)))
                                                          (_%hd1553015858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1552915854%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1553115861%_)
                                                          (_%__kont2020020201%_
                                                           _%hd1553015858%_)
                                                          (_%__match2033220333%_
                                                           _%e1550915938%_
                                                           _%hd1551015942%_
                                                           _%tl1551115945%_
                                                           _%e1551615896%_
                                                           _%hd1551715900%_
                                                           _%tl1551815903%_
                                                           _%e1552915854%_
                                                           _%hd1553015858%_
                                                           _%tl1553115861%_))))
                                                  (_%__kont2020820209%_
                                                   _%tl1551815903%_
                                                   _%hd1551715900%_
                                                   _%hd1551015942%_))
                                              (if (gx#stx-pair?
                                                   _%tl1551815903%_)
                                                  (let ((_%e1555115743%_
                                                         (gx#syntax-e
                                                          _%tl1551815903%_)))
                                                    (let ((_%tl1555315750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1555115743%_)))
                                                          (_%hd1555215747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1555115743%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1555315750%_)
                                                          (_%__match2031420315%_
                                                           _%e1550915938%_
                                                           _%hd1551015942%_
                                                           _%tl1551115945%_
                                                           _%e1551615896%_
                                                           _%hd1551715900%_
                                                           _%tl1551815903%_
                                                           _%e1555115743%_
                                                           _%hd1555215747%_
                                                           _%tl1555315750%_)
                                                          (_%__match2033220333%_
                                                           _%e1550915938%_
                                                           _%hd1551015942%_
                                                           _%tl1551115945%_
                                                           _%e1551615896%_
                                                           _%hd1551715900%_
                                                           _%tl1551815903%_
                                                           _%e1555115743%_
                                                           _%hd1555215747%_
                                                           _%tl1555315750%_))))
                                                  (_%__kont2020820209%_
                                                   _%tl1551815903%_
                                                   _%hd1551715900%_
                                                   _%hd1551015942%_))))
                                      (if (gx#stx-datum? _%hd1551715900%_)
                                          (let ((_%e1553915797%_
                                                 (gx#stx-e _%hd1551715900%_)))
                                            (if (equal? _%e1553915797%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1551815903%_)
                                                    (let ((_%e1554015801%_
                                                           (gx#syntax-e
                                                            _%tl1551815903%_)))
                                                      (let ((_%tl1554215808%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1554015801%_)))
                    (_%hd1554115805%_
                     (let () (declare (not safe)) (##car _%e1554015801%_))))
                (if (gx#stx-null? _%tl1554215808%_)
                    (_%__kont2020220203%_ _%hd1554115805%_)
                    (_%__match2033220333%_
                     _%e1550915938%_
                     _%hd1551015942%_
                     _%tl1551115945%_
                     _%e1551615896%_
                     _%hd1551715900%_
                     _%tl1551815903%_
                     _%e1554015801%_
                     _%hd1554115805%_
                     _%tl1554215808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2020820209%_
                                                     _%tl1551815903%_
                                                     _%hd1551715900%_
                                                     _%hd1551015942%_))
                                                (if (gx#stx-pair?
                                                     _%tl1551815903%_)
                                                    (let ((_%e1555115743%_
                                                           (gx#syntax-e
                                                            _%tl1551815903%_)))
                                                      (let ((_%tl1555315750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1555115743%_)))
                    (_%hd1555215747%_
                     (let () (declare (not safe)) (##car _%e1555115743%_))))
                (if (gx#stx-null? _%tl1555315750%_)
                    (_%__match2031420315%_
                     _%e1550915938%_
                     _%hd1551015942%_
                     _%tl1551115945%_
                     _%e1551615896%_
                     _%hd1551715900%_
                     _%tl1551815903%_
                     _%e1555115743%_
                     _%hd1555215747%_
                     _%tl1555315750%_)
                    (_%__match2033220333%_
                     _%e1550915938%_
                     _%hd1551015942%_
                     _%tl1551115945%_
                     _%e1551615896%_
                     _%hd1551715900%_
                     _%tl1551815903%_
                     _%e1555115743%_
                     _%hd1555215747%_
                     _%tl1555315750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2020820209%_
                                                     _%tl1551815903%_
                                                     _%hd1551715900%_
                                                     _%hd1551015942%_))))
                                          (if (gx#stx-pair? _%tl1551815903%_)
                                              (let ((_%e1555115743%_
                                                     (gx#syntax-e
                                                      _%tl1551815903%_)))
                                                (let ((_%tl1555315750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1555115743%_)))
                                                      (_%hd1555215747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1555115743%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1555315750%_)
                                                      (_%__match2031420315%_
                                                       _%e1550915938%_
                                                       _%hd1551015942%_
                                                       _%tl1551115945%_
                                                       _%e1551615896%_
                                                       _%hd1551715900%_
                                                       _%tl1551815903%_
                                                       _%e1555115743%_
                                                       _%hd1555215747%_
                                                       _%tl1555315750%_)
                                                      (_%__match2033220333%_
                                                       _%e1550915938%_
                                                       _%hd1551015942%_
                                                       _%tl1551115945%_
                                                       _%e1551615896%_
                                                       _%hd1551715900%_
                                                       _%tl1551815903%_
                                                       _%e1555115743%_
                                                       _%hd1555215747%_
                                                       _%tl1555315750%_))))
                                              (_%__kont2020820209%_
                                               _%tl1551815903%_
                                               _%hd1551715900%_
                                               _%hd1551015942%_))))))
                              (_%__kont2021020211%_ _%tl1551115945%_)))))
                  (let () (declare (not safe)) (_%g1550715585%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15956%_)
        (letrec ((_%simple-quote?15959%_
                  (lambda (_%e16651%_)
                    (let* ((_%__stx2035320354%_ _%e16651%_)
                           (_%g1665916696%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2035320354%_))))
                      (let ((_%__kont2035620357%_ (lambda () '#f))
                            (_%__kont2035820359%_ (lambda () '#f))
                            (_%__kont2036020361%_
                             (lambda (_%L16810%_ _%L16812%_)
                               (if (_%simple-quote?15959%_ _%L16812%_)
                                   (_%simple-quote?15959%_ _%L16810%_)
                                   '#f)))
                            (_%__kont2036220363%_
                             (lambda (_%L16771%_)
                               (_%simple-quote?15959%_
                                (foldr (lambda (_%g1678416787%_
                                                _%g1678516790%_)
                                         (cons _%g1678416787%_
                                               _%g1678516790%_))
                                       '()
                                       _%L16771%_))))
                            (_%__kont2036620367%_
                             (lambda (_%L16718%_)
                               (_%simple-quote?15959%_ _%L16718%_)))
                            (_%__kont2036820369%_ (lambda () '#t)))
                        (let* ((_%g1665716730%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2035320354%_)
                                      (let ((_%e1669016714%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2035320354%_))))
                                        (_%__kont2036620367%_ _%e1669016714%_))
                                      (_%__kont2036820369%_))))
                               (_%__match2042420425%_
                                (lambda (_%e1667916737%_
                                         _%__splice2036420365%_
                                         _%target1668016741%_
                                         _%tl1668216744%_)
                                  (letrec ((_%loop1668316747%_
                                            (lambda (_%hd1668116751%_
                                                     _%e1668716754%_)
                                              (if (gx#stx-pair?
                                                   _%hd1668116751%_)
                                                  (let ((_%e1668416757%_
                                                         (gx#syntax-e
                                                          _%hd1668116751%_)))
                                                    (let ((_%lp-tl1668616764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1668416757%_)))
                                                          (_%lp-hd1668516761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1668416757%_))))
                                                      (_%loop1668316747%_
                                                       _%lp-tl1668616764%_
                                                       (cons _%lp-hd1668516761%_
                                                             _%e1668716754%_))))
                                                  (let ((_%e1668816767%_
                                                         (reverse _%e1668716754%_)))
                                                    (_%__kont2036220363%_
                                                     _%e1668816767%_))))))
                                    (_%loop1668316747%_
                                     _%target1668016741%_
                                     '()))))
                               (_%g1665616793%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2035320354%_)
                                      (let ((_%e1667916737%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2035320354%_))))
                                        (if (gx#stx-pair/null? _%e1667916737%_)
                                            (let ((_%__splice2036420365%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1667916737%_
                                                    '0)))
                                              (let ((_%tl1668216744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2036420365%_
                                                        '1)))
                                                    (_%target1668016741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2036420365%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1668216744%_)
                                                    (_%__match2042420425%_
                                                     _%e1667916737%_
                                                     _%__splice2036420365%_
                                                     _%target1668016741%_
                                                     _%tl1668216744%_)
                                                    (_%__kont2036820369%_))))
                                            (_%__kont2036820369%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1665716730%_))))))
                          (if (gx#stx-pair? _%__stx2035320354%_)
                              (let ((_%e1666116861%_
                                     (gx#syntax-e _%__stx2035320354%_)))
                                (let ((_%tl1666316868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1666116861%_)))
                                      (_%hd1666216865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1666116861%_))))
                                  (if (gx#identifier? _%hd1666216865%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20958_|
                                           _%hd1666216865%_)
                                          (if (gx#stx-pair? _%tl1666316868%_)
                                              (let ((_%e1666416871%_
                                                     (gx#syntax-e
                                                      _%tl1666316868%_)))
                                                (let ((_%tl1666616878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1666416871%_)))
                                                      (_%hd1666516875%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1666416871%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1666616878%_)
                                                      (_%__kont2035620357%_)
                                                      (_%__kont2036020361%_
                                                       _%tl1666316868%_
                                                       _%hd1666216865%_))))
                                              (_%__kont2036020361%_
                                               _%tl1666316868%_
                                               _%hd1666216865%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20959_|
                                               _%hd1666216865%_)
                                              (if (gx#stx-pair?
                                                   _%tl1666316868%_)
                                                  (let ((_%e1667016840%_
                                                         (gx#syntax-e
                                                          _%tl1666316868%_)))
                                                    (let ((_%tl1667216847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1667016840%_)))
                                                          (_%hd1667116844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1667016840%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1667216847%_)
                                                          (_%__kont2035820359%_)
                                                          (_%__kont2036020361%_
                                                           _%tl1666316868%_
                                                           _%hd1666216865%_))))
                                                  (_%__kont2036020361%_
                                                   _%tl1666316868%_
                                                   _%hd1666216865%_))
                                              (_%__kont2036020361%_
                                               _%tl1666316868%_
                                               _%hd1666216865%_)))
                                      (_%__kont2036020361%_
                                       _%tl1666316868%_
                                       _%hd1666216865%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1665616793%_))))))))
                 (_%generate15961%_
                  (lambda (_%e16023%_ _%d16025%_)
                    (let* ((_%__stx2043120432%_ _%e16023%_)
                           (_%g1603416092%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2043120432%_))))
                      (let ((_%__kont2043420435%_
                             (lambda (_%L16603%_)
                               (let* ((_%g1661616624%_
                                       (lambda (_%g1661716620%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1661716620%_)))
                                      (_%g1661516643%_
                                       (lambda (_%g1661716628%_)
                                         ((lambda (_%L16631%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%L16631%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1661716628%_))))
                                 (_%g1661516643%_
                                  (_%generate15961%_
                                   _%L16603%_
                                   (fx1+ _%d16025%_))))))
                            (_%__kont2043620437%_
                             (lambda (_%L16532%_)
                               (if (fxzero? _%d16025%_)
                                   _%L16532%_
                                   (let* ((_%g1654516553%_
                                           (lambda (_%g1654616549%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1654616549%_)))
                                          (_%g1654416572%_
                                           (lambda (_%g1654616557%_)
                                             ((lambda (_%L16560%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%L16560%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1654616557%_))))
                                     (_%g1654416572%_
                                      (_%generate15961%_
                                       _%L16532%_
                                       (fx1- _%d16025%_)))))))
                            (_%__kont2043820439%_
                             (lambda (_%L16461%_)
                               (if (fxzero? _%d16025%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%L16461%_ '()))))
                                   (let* ((_%g1647416482%_
                                           (lambda (_%g1647516478%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1647516478%_)))
                                          (_%g1647316501%_
                                           (lambda (_%g1647516486%_)
                                             ((lambda (_%L16489%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%L16489%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1647516486%_))))
                                     (_%g1647316501%_
                                      (_%generate15961%_
                                       _%L16461%_
                                       (fx1- _%d16025%_)))))))
                            (_%__kont2044020441%_
                             (lambda (_%L16386%_ _%L16388%_)
                               (let* ((_%g1640316411%_
                                       (lambda (_%g1640416407%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1640416407%_)))
                                      (_%g1640216430%_
                                       (lambda (_%g1640416415%_)
                                         ((lambda (_%L16418%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%L16418%_
                                                              (cons _%L16388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1640416415%_))))
                                 (_%g1640216430%_
                                  (_%generate15961%_ _%L16386%_ _%d16025%_)))))
                            (_%__kont2044220443%_
                             (lambda (_%L16272%_ _%L16274%_)
                               (let* ((_%g1628516300%_
                                       (lambda (_%g1628616296%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1628616296%_)))
                                      (_%g1628416345%_
                                       (lambda (_%g1628616304%_)
                                         (if (gx#stx-pair? _%g1628616304%_)
                                             (let ((_%e1628916307%_
                                                    (gx#syntax-e
                                                     _%g1628616304%_)))
                                               (let ((_%hd1629016311%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1628916307%_)))
                                                     (_%tl1629116314%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1628916307%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1629116314%_)
                                                     (let ((_%e1629216317%_
                                                            (gx#syntax-e
                                                             _%tl1629116314%_)))
                                                       (let ((_%hd1629316321%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1629216317%_)))
                     (_%tl1629416324%_
                      (let () (declare (not safe)) (##cdr _%e1629216317%_))))
                 (if (gx#stx-null? _%tl1629416324%_)
                     ((lambda (_%L16327%_ _%L16329%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%L16329%_ (cons _%L16327%_ '()))))
                      _%hd1629316321%_
                      _%hd1629016311%_)
                     (_%g1628516300%_ _%g1628616304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1628516300%_
                                                      _%g1628616304%_))))
                                             (_%g1628516300%_
                                              _%g1628616304%_)))))
                                 (_%g1628416345%_
                                  (list (_%generate15961%_
                                         _%L16274%_
                                         _%d16025%_)
                                        (_%generate15961%_
                                         _%L16272%_
                                         _%d16025%_))))))
                            (_%__kont2044420445%_
                             (lambda (_%L16202%_)
                               (let* ((_%g1621616224%_
                                       (lambda (_%g1621716220%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1621716220%_)))
                                      (_%g1621516243%_
                                       (lambda (_%g1621716228%_)
                                         ((lambda (_%L16231%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%L16231%_ '())))
                                          _%g1621716228%_))))
                                 (_%g1621516243%_
                                  (_%generate15961%_
                                   (foldr (lambda (_%g1624616249%_
                                                   _%g1624716252%_)
                                            (cons _%g1624616249%_
                                                  _%g1624716252%_))
                                          '()
                                          _%L16202%_)
                                   _%d16025%_)))))
                            (_%__kont2044820449%_
                             (lambda (_%L16120%_)
                               (let* ((_%g1613016138%_
                                       (lambda (_%g1613116134%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1613116134%_)))
                                      (_%g1612916157%_
                                       (lambda (_%g1613116142%_)
                                         ((lambda (_%L16145%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%L16145%_ '())))
                                          _%g1613116142%_))))
                                 (_%g1612916157%_
                                  (_%generate15961%_ _%L16120%_ _%d16025%_)))))
                            (_%__kont2045020451%_
                             (lambda (_%L16099%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L16099%_ '())))))
                        (let* ((_%g1603216161%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2043120432%_)
                                      (let ((_%e1608516116%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2043120432%_))))
                                        (_%__kont2044820449%_ _%e1608516116%_))
                                      (_%__kont2045020451%_
                                       _%__stx2043120432%_))))
                               (_%__match2055020551%_
                                (lambda (_%e1607416168%_
                                         _%__splice2044620447%_
                                         _%target1607516172%_
                                         _%tl1607716175%_)
                                  (letrec ((_%loop1607816178%_
                                            (lambda (_%hd1607616182%_
                                                     _%e1608216185%_)
                                              (if (gx#stx-pair?
                                                   _%hd1607616182%_)
                                                  (let ((_%e1607916188%_
                                                         (gx#syntax-e
                                                          _%hd1607616182%_)))
                                                    (let ((_%lp-tl1608116195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1607916188%_)))
                                                          (_%lp-hd1608016192%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1607916188%_))))
                                                      (_%loop1607816178%_
                                                       _%lp-tl1608116195%_
                                                       (cons _%lp-hd1608016192%_
                                                             _%e1608216185%_))))
                                                  (let ((_%e1608316198%_
                                                         (reverse _%e1608216185%_)))
                                                    (_%__kont2044420445%_
                                                     _%e1608316198%_))))))
                                    (_%loop1607816178%_
                                     _%target1607516172%_
                                     '()))))
                               (_%g1603116255%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2043120432%_)
                                      (let ((_%e1607416168%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2043120432%_))))
                                        (if (gx#stx-pair/null? _%e1607416168%_)
                                            (let ((_%__splice2044620447%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1607416168%_
                                                    '0)))
                                              (let ((_%tl1607716175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044620447%_
                                                        '1)))
                                                    (_%target1607516172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044620447%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1607716175%_)
                                                    (_%__match2055020551%_
                                                     _%e1607416168%_
                                                     _%__splice2044620447%_
                                                     _%target1607516172%_
                                                     _%tl1607716175%_)
                                                    (_%__kont2045020451%_
                                                     _%__stx2043120432%_))))
                                            (_%__kont2045020451%_
                                             _%__stx2043120432%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1603216161%_))))))
                          (if (gx#stx-pair? _%__stx2043120432%_)
                              (let ((_%e1603716583%_
                                     (gx#syntax-e _%__stx2043120432%_)))
                                (let ((_%tl1603916590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1603716583%_)))
                                      (_%hd1603816587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1603716583%_))))
                                  (if (gx#identifier? _%hd1603816587%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g20960_|
                                           _%hd1603816587%_)
                                          (if (gx#stx-pair? _%tl1603916590%_)
                                              (let ((_%e1604016593%_
                                                     (gx#syntax-e
                                                      _%tl1603916590%_)))
                                                (let ((_%tl1604216600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1604016593%_)))
                                                      (_%hd1604116597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1604016593%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1604216600%_)
                                                      (_%__kont2043420435%_
                                                       _%hd1604116597%_)
                                                      (_%__kont2044220443%_
                                                       _%tl1603916590%_
                                                       _%hd1603816587%_))))
                                              (_%__kont2044220443%_
                                               _%tl1603916590%_
                                               _%hd1603816587%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g20961_|
                                               _%hd1603816587%_)
                                              (if (gx#stx-pair?
                                                   _%tl1603916590%_)
                                                  (let ((_%e1604716522%_
                                                         (gx#syntax-e
                                                          _%tl1603916590%_)))
                                                    (let ((_%tl1604916529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1604716522%_)))
                                                          (_%hd1604816526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1604716522%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1604916529%_)
                                                          (_%__kont2043620437%_
                                                           _%hd1604816526%_)
                                                          (_%__kont2044220443%_
                                                           _%tl1603916590%_
                                                           _%hd1603816587%_))))
                                                  (_%__kont2044220443%_
                                                   _%tl1603916590%_
                                                   _%hd1603816587%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20962_|
                                                   _%hd1603816587%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1603916590%_)
                                                      (let ((_%e1605416451%_
                                                             (gx#syntax-e
                                                              _%tl1603916590%_)))
                                                        (let ((_%tl1605616458%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1605416451%_)))
                      (_%hd1605516455%_
                       (let () (declare (not safe)) (##car _%e1605416451%_))))
                  (if (gx#stx-null? _%tl1605616458%_)
                      (_%__kont2043820439%_ _%hd1605516455%_)
                      (_%__kont2044220443%_
                       _%tl1603916590%_
                       _%hd1603816587%_))))
              (_%__kont2044220443%_ _%tl1603916590%_ _%hd1603816587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2044220443%_
                                                   _%tl1603916590%_
                                                   _%hd1603816587%_))))
                                      (if (gx#stx-pair? _%hd1603816587%_)
                                          (let ((_%e1606216366%_
                                                 (gx#syntax-e
                                                  _%hd1603816587%_)))
                                            (let ((_%tl1606416373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1606216366%_)))
                                                  (_%hd1606316370%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1606216366%_))))
                                              (if (gx#identifier?
                                                   _%hd1606316370%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g20963_|
                                                       _%hd1606316370%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1606416373%_)
                                                          (let ((_%e1606516376%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1606416373%_)))
                    (let ((_%tl1606716383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1606516376%_)))
                          (_%hd1606616380%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1606516376%_))))
                      (if (gx#stx-null? _%tl1606716383%_)
                          (if (fxzero? _%d16025%_)
                              (let ((_%L16386%_ _%tl1603916590%_)
                                    (_%L16388%_ _%hd1606616380%_))
                                (_%__kont2044020441%_ _%L16386%_ _%L16388%_))
                              (_%__kont2044220443%_
                               _%tl1603916590%_
                               _%hd1603816587%_))
                          (_%__kont2044220443%_
                           _%tl1603916590%_
                           _%hd1603816587%_))))
                  (_%__kont2044220443%_ _%tl1603916590%_ _%hd1603816587%_))
              (_%__kont2044220443%_ _%tl1603916590%_ _%hd1603816587%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2044220443%_
                                                   _%tl1603916590%_
                                                   _%hd1603816587%_))))
                                          (_%__kont2044220443%_
                                           _%tl1603916590%_
                                           _%hd1603816587%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1603116255%_)))))))))
          (let* ((_%g1596315977%_
                  (lambda (_%g1596415973%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1596415973%_)))
                 (_%g1596216019%_
                  (lambda (_%g1596415981%_)
                    (if (gx#stx-pair? _%g1596415981%_)
                        (let ((_%e1596615984%_ (gx#syntax-e _%g1596415981%_)))
                          (let ((_%hd1596715988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1596615984%_)))
                                (_%tl1596815991%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1596615984%_))))
                            (if (gx#stx-pair? _%tl1596815991%_)
                                (let ((_%e1596915994%_
                                       (gx#syntax-e _%tl1596815991%_)))
                                  (let ((_%hd1597015998%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1596915994%_)))
                                        (_%tl1597116001%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1596915994%_))))
                                    (if (gx#stx-null? _%tl1597116001%_)
                                        ((lambda (_%L16004%_)
                                           (if (_%simple-quote?15959%_
                                                _%L16004%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%L16004%_ '()))
                                               (_%generate15961%_
                                                _%L16004%_
                                                '0)))
                                         _%hd1597015998%_)
                                        (_%g1596315977%_ _%g1596415981%_))))
                                (_%g1596315977%_ _%g1596415981%_))))
                        (_%g1596315977%_ _%g1596415981%_)))))
            (_%g1596216019%_ _%stx15956%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16891%_)
        (let* ((_%__stx2055720558%_ _%$stx16891%_)
               (_%g1689716931%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2055720558%_))))
          (let ((_%__kont2056020561%_
                 (lambda (_%L17063%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17063%_ '()))))
                (_%__kont2056220563%_
                 (lambda (_%L17019%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17019%_ '()))))
                (_%__kont2056420565%_
                 (lambda (_%L16958%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L16958%_ '())))
                               '())))))
            (let ((_%__match2058020581%_
                   (lambda (_%e1690017043%_
                            _%hd1690117047%_
                            _%tl1690217050%_
                            _%e1690317053%_
                            _%hd1690417057%_
                            _%tl1690517060%_)
                     (let ((_%L17063%_ _%hd1690417057%_))
                       (if (gx#stx-datum? _%L17063%_)
                           (_%__kont2056020561%_ _%L17063%_)
                           (if (gx#stx-pair? _%hd1690417057%_)
                               (let ((_%e1691316999%_
                                      (gx#syntax-e _%hd1690417057%_)))
                                 (let ((_%tl1691517006%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1691316999%_)))
                                       (_%hd1691417003%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1691316999%_))))
                                   (if (gx#identifier? _%hd1691417003%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g20964_|
                                            _%hd1691417003%_)
                                           (if (gx#stx-pair? _%tl1691517006%_)
                                               (let ((_%e1691617009%_
                                                      (gx#syntax-e
                                                       _%tl1691517006%_)))
                                                 (let ((_%tl1691817016%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1691617009%_)))
                                                       (_%hd1691717013%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1691617009%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1691817016%_)
                                                       (_%__kont2056220563%_
                                                        _%hd1691717013%_)
                                                       (_%__kont2056420565%_
                                                        _%hd1690417057%_))))
                                               (_%__kont2056420565%_
                                                _%hd1690417057%_))
                                           (_%__kont2056420565%_
                                            _%hd1690417057%_))
                                       (_%__kont2056420565%_
                                        _%hd1690417057%_))))
                               (_%__kont2056420565%_ _%hd1690417057%_)))))))
              (if (gx#stx-pair? _%__stx2055720558%_)
                  (let ((_%e1690017043%_ (gx#syntax-e _%__stx2055720558%_)))
                    (let ((_%tl1690217050%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1690017043%_)))
                          (_%hd1690117047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1690017043%_))))
                      (if (gx#stx-pair? _%tl1690217050%_)
                          (let ((_%e1690317053%_
                                 (gx#syntax-e _%tl1690217050%_)))
                            (let ((_%tl1690517060%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1690317053%_)))
                                  (_%hd1690417057%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1690317053%_))))
                              (if (gx#stx-null? _%tl1690517060%_)
                                  (_%__match2058020581%_
                                   _%e1690017043%_
                                   _%hd1690117047%_
                                   _%tl1690217050%_
                                   _%e1690317053%_
                                   _%hd1690417057%_
                                   _%tl1690517060%_)
                                  (if (gx#stx-pair? _%hd1690417057%_)
                                      (let ((_%e1691316999%_
                                             (gx#syntax-e _%hd1690417057%_)))
                                        (let ((_%tl1691517006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1691316999%_)))
                                              (_%hd1691417003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1691316999%_))))
                                          (if (gx#identifier? _%hd1691417003%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20964_|
                                                   _%hd1691417003%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1691517006%_)
                                                      (let ((_%e1691617009%_
                                                             (gx#syntax-e
                                                              _%tl1691517006%_)))
                                                        (let ((_%tl1691817016%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1691617009%_)))
                      (_%hd1691717013%_
                       (let () (declare (not safe)) (##car _%e1691617009%_))))
                  (let () (declare (not safe)) (_%g1689716931%_))))
              (let () (declare (not safe)) (_%g1689716931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1689716931%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1689716931%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1689716931%_))))))
                          (let () (declare (not safe)) (_%g1689716931%_)))))
                  (let () (declare (not safe)) (_%g1689716931%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17080%_)
        (let* ((_%__stx2062920630%_ _%$stx17080%_)
               (_%g1708617120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2062920630%_))))
          (let ((_%__kont2063220633%_
                 (lambda (_%L17252%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17252%_ '()))))
                (_%__kont2063420635%_
                 (lambda (_%L17208%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _%L17208%_ '()))))
                (_%__kont2063620637%_
                 (lambda (_%L17147%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%L17147%_ '())))
                               '())))))
            (let ((_%__match2065220653%_
                   (lambda (_%e1708917232%_
                            _%hd1709017236%_
                            _%tl1709117239%_
                            _%e1709217242%_
                            _%hd1709317246%_
                            _%tl1709417249%_)
                     (let ((_%L17252%_ _%hd1709317246%_))
                       (if (gx#stx-datum? _%L17252%_)
                           (_%__kont2063220633%_ _%L17252%_)
                           (if (gx#stx-pair? _%hd1709317246%_)
                               (let ((_%e1710217188%_
                                      (gx#syntax-e _%hd1709317246%_)))
                                 (let ((_%tl1710417195%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1710217188%_)))
                                       (_%hd1710317192%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1710217188%_))))
                                   (if (gx#identifier? _%hd1710317192%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g20965_|
                                            _%hd1710317192%_)
                                           (if (gx#stx-pair? _%tl1710417195%_)
                                               (let ((_%e1710517198%_
                                                      (gx#syntax-e
                                                       _%tl1710417195%_)))
                                                 (let ((_%tl1710717205%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1710517198%_)))
                                                       (_%hd1710617202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1710517198%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1710717205%_)
                                                       (_%__kont2063420635%_
                                                        _%hd1710617202%_)
                                                       (_%__kont2063620637%_
                                                        _%hd1709317246%_))))
                                               (_%__kont2063620637%_
                                                _%hd1709317246%_))
                                           (_%__kont2063620637%_
                                            _%hd1709317246%_))
                                       (_%__kont2063620637%_
                                        _%hd1709317246%_))))
                               (_%__kont2063620637%_ _%hd1709317246%_)))))))
              (if (gx#stx-pair? _%__stx2062920630%_)
                  (let ((_%e1708917232%_ (gx#syntax-e _%__stx2062920630%_)))
                    (let ((_%tl1709117239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1708917232%_)))
                          (_%hd1709017236%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1708917232%_))))
                      (if (gx#stx-pair? _%tl1709117239%_)
                          (let ((_%e1709217242%_
                                 (gx#syntax-e _%tl1709117239%_)))
                            (let ((_%tl1709417249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1709217242%_)))
                                  (_%hd1709317246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1709217242%_))))
                              (if (gx#stx-null? _%tl1709417249%_)
                                  (_%__match2065220653%_
                                   _%e1708917232%_
                                   _%hd1709017236%_
                                   _%tl1709117239%_
                                   _%e1709217242%_
                                   _%hd1709317246%_
                                   _%tl1709417249%_)
                                  (if (gx#stx-pair? _%hd1709317246%_)
                                      (let ((_%e1710217188%_
                                             (gx#syntax-e _%hd1709317246%_)))
                                        (let ((_%tl1710417195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1710217188%_)))
                                              (_%hd1710317192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1710217188%_))))
                                          (if (gx#identifier? _%hd1710317192%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g20965_|
                                                   _%hd1710317192%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1710417195%_)
                                                      (let ((_%e1710517198%_
                                                             (gx#syntax-e
                                                              _%tl1710417195%_)))
                                                        (let ((_%tl1710717205%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1710517198%_)))
                      (_%hd1710617202%_
                       (let () (declare (not safe)) (##car _%e1710517198%_))))
                  (let () (declare (not safe)) (_%g1708617120%_))))
              (let () (declare (not safe)) (_%g1708617120%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1708617120%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1708617120%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1708617120%_))))))
                          (let () (declare (not safe)) (_%g1708617120%_)))))
                  (let () (declare (not safe)) (_%g1708617120%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17269%_)
        (letrec ((_%generate17272%_
                  (lambda (_%rest17391%_)
                    (let _%lp17394%_ ((_%rest17397%_ _%rest17391%_)
                                      (_%hd17399%_ '())
                                      (_%body17400%_ '()))
                      (let* ((_%__stx2072120722%_ _%rest17397%_)
                             (_%g1740317415%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2072120722%_))))
                        (let ((_%__kont2072420725%_
                               (lambda (_%L17443%_ _%L17445%_)
                                 (let* ((_%__stx2070120702%_ _%L17445%_)
                                        (_%g1746217469%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2070120702%_))))
                                   (let ((_%__kont2070420705%_
                                          (lambda ()
                                            (let ((_%arg17505%_ (gx#genident)))
                                              (_%lp17394%_
                                               _%L17443%_
                                               (cons _%arg17505%_ _%hd17399%_)
                                               (cons _%arg17505%_
                                                     _%body17400%_)))))
                                         (_%__kont2070620707%_
                                          (lambda ()
                                            (if (gx#stx-null? _%L17443%_)
                                                (let ((_%tail17491%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17491%_
                         _%hd17399%_)
                  (foldl cons (list _%tail17491%_) _%body17400%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17269%_
                                                 _%L17445%_))))
                                         (_%__kont2070820709%_
                                          (lambda ()
                                            (_%lp17394%_
                                             _%L17443%_
                                             _%hd17399%_
                                             (cons _%L17445%_
                                                   _%body17400%_)))))
                                     (if (gx#identifier? _%__stx2070120702%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g20966_|
                                              _%__stx2070120702%_)
                                             (_%__kont2070420705%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g20967_|
                                                  _%__stx2070120702%_)
                                                 (_%__kont2070620707%_)
                                                 (_%__kont2070820709%_)))
                                         (_%__kont2070820709%_))))))
                              (_%__kont2072620727%_
                               (lambda ()
                                 (values (reverse _%hd17399%_)
                                         (reverse _%body17400%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2072120722%_)
                              (let ((_%e1740717433%_
                                     (gx#syntax-e _%__stx2072120722%_)))
                                (let ((_%tl1740917440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1740717433%_)))
                                      (_%hd1740817437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1740717433%_))))
                                  (_%__kont2072420725%_
                                   _%tl1740917440%_
                                   _%hd1740817437%_)))
                              (_%__kont2072620727%_))))))))
          (let* ((_%g1727517286%_
                  (lambda (_%g1727617282%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1727617282%_)))
                 (_%g1727417387%_
                  (lambda (_%g1727617290%_)
                    (if (gx#stx-pair? _%g1727617290%_)
                        (let ((_%e1727817293%_ (gx#syntax-e _%g1727617290%_)))
                          (let ((_%hd1727917297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1727817293%_)))
                                (_%tl1728017300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1727817293%_))))
                            ((lambda (_%L17303%_)
                               (if (and (gx#stx-list? _%L17303%_)
                                        (not (gx#stx-null? _%L17303%_)))
                                   (let ((_g20968_
                                          (_%generate17272%_ _%L17303%_)))
                                     (begin
                                       (let ((_g20969_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g20968_)
                                                    (##values-length _g20968_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g20969_ 3)))
                                             (error "Context expects 3 values"
                                                    _g20969_)))
                                       (let ((_%hd17316%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20968_ 0)))
                                             (_%body17318%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20968_ 1)))
                                             (_%tail?17319%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g20968_ 2))))
                                         (let* ((_%g1732117329%_
                                                 (lambda (_%g1732217325%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1732217325%_)))
                                                (_%g1732017383%_
                                                 (lambda (_%g1732217333%_)
                                                   ((lambda (_%L17336%_)
                                                      (let* ((_%g1734917357%_
                                                              (lambda (_%g1735017353%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1735017353%_)))
                     (_%g1734817379%_
                      (lambda (_%g1735017361%_)
                        ((lambda (_%L17364%_)
                           (if _%tail?17319%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17336%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%L17364%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%L17336%_ (cons _%L17364%_ '())))))
                         _%g1735017361%_))))
                (_%g1734817379%_ _%body17318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1732217333%_))))
                                           (_%g1732017383%_ _%hd17316%_)))))
                                   (_%g1727517286%_ _%g1727617290%_)))
                             _%tl1728017300%_)))
                        (_%g1727517286%_ _%g1727617290%_)))))
            (_%g1727417387%_ _%stx17269%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17517%_)
        (let ((_%g1752017527%_
               (lambda (_%g1752117523%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1752117523%_))))
          (_%g1752017527%_ _%$stx17517%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17531%_)
        (let ((_%g1753417541%_
               (lambda (_%g1753517537%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1753517537%_))))
          (_%g1753417541%_ _%$stx17531%_))))))

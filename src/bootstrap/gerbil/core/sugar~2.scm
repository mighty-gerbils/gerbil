(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21047_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21048_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21049_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21077_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21078_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21079_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21086_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21087_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21088_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21089_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21090_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21091_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21092_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21093_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21094_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21095_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21096_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21097_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5400%_)
        (letrec ((_%simple-lambda?5403%_
                  (lambda (_%hd8787%_)
                    (gx#stx-andmap gx#identifier? _%hd8787%_)))
                 (_%opt-lambda?5405%_
                  (lambda (_%hd8639%_)
                    (let _%lp8642%_ ((_%rest8645%_ _%hd8639%_)
                                     (_%opt?8647%_ '#f))
                      (let* ((_%__stx1916519166%_ _%rest8645%_)
                             (_%g86508662%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1916519166%_))))
                        (let ((_%__kont1916819169%_
                               (lambda (_%g86528694%_ _%g86538696%_)
                                 (let* ((_%__stx1914119142%_ _%g86538696%_)
                                        (_%g87128726%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1914119142%_))))
                                   (let ((_%__kont1914419145%_
                                          (lambda (_%g87148764%_)
                                            (_%lp8642%_ _%g86528694%_ '#t)))
                                         (_%__kont1914619147%_
                                          (lambda ()
                                            (if (gx#identifier? _%g86538696%_)
                                                (if (not _%opt?8647%_)
                                                    (_%lp8642%_
                                                     _%g86528694%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1916219163%_
                                            (lambda (_%e87158744%_
                                                     _%hd87168748%_
                                                     _%tl87178751%_
                                                     _%e87188754%_
                                                     _%hd87198758%_
                                                     _%tl87208761%_)
                                              (let ((_%g87148764%_
                                                     _%hd87168748%_))
                                                (if (gx#identifier?
                                                     _%g87148764%_)
                                                    (_%__kont1914419145%_
                                                     _%g87148764%_)
                                                    (_%__kont1914619147%_))))))
                                       (if (gx#stx-pair? _%__stx1914119142%_)
                                           (let ((_%e87158744%_
                                                  (gx#syntax-e
                                                   _%__stx1914119142%_)))
                                             (let ((_%tl87178751%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87158744%_)))
                                                   (_%hd87168748%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87158744%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87178751%_)
                                                   (let ((_%e87188754%_
                                                          (gx#syntax-e
                                                           _%tl87178751%_)))
                                                     (let ((_%tl87208761%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87188754%_)))
                                                           (_%hd87198758%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87188754%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87208761%_)
                                                           (_%__match1916219163%_
                                                            _%e87158744%_
                                                            _%hd87168748%_
                                                            _%tl87178751%_
                                                            _%e87188754%_
                                                            _%hd87198758%_
                                                            _%tl87208761%_)
                                                           (_%__kont1914619147%_))))
                                                   (_%__kont1914619147%_))))
                                           (_%__kont1914619147%_)))))))
                              (_%__kont1917019171%_
                               (lambda ()
                                 (if _%opt?8647%_
                                     (let ((_%$e8673%_
                                            (gx#stx-null? _%rest8645%_)))
                                       (if _%$e8673%_
                                           _%$e8673%_
                                           (gx#identifier? _%rest8645%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1916519166%_)
                              (let ((_%e86548684%_
                                     (gx#syntax-e _%__stx1916519166%_)))
                                (let ((_%tl86568691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86548684%_)))
                                      (_%hd86558688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86548684%_))))
                                  (_%__kont1916819169%_
                                   _%tl86568691%_
                                   _%hd86558688%_)))
                              (_%__kont1917019171%_)))))))
                 (_%opt-lambda-split5406%_
                  (lambda (_%hd8491%_)
                    (let _%lp8494%_ ((_%rest8497%_ _%hd8491%_)
                                     (_%pre8499%_ '())
                                     (_%opt8500%_ '()))
                      (let* ((_%__stx1920519206%_ _%rest8497%_)
                             (_%g85038515%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1920519206%_))))
                        (let ((_%__kont1920819209%_
                               (lambda (_%g85058543%_ _%g85068545%_)
                                 (let* ((_%__stx1918119182%_ _%g85068545%_)
                                        (_%g85618576%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1918119182%_))))
                                   (let ((_%__kont1918419185%_
                                          (lambda (_%g85638614%_ _%g85648616%_)
                                            (_%lp8494%_
                                             _%g85058543%_
                                             _%pre8499%_
                                             (cons (cons _%g85648616%_
                                                         _%g85638614%_)
                                                   _%opt8500%_))))
                                         (_%__kont1918619187%_
                                          (lambda ()
                                            (_%lp8494%_
                                             _%g85058543%_
                                             (cons _%g85068545%_ _%pre8499%_)
                                             _%opt8500%_))))
                                     (if (gx#stx-pair? _%__stx1918119182%_)
                                         (let ((_%e85658594%_
                                                (gx#syntax-e
                                                 _%__stx1918119182%_)))
                                           (let ((_%tl85678601%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85658594%_)))
                                                 (_%hd85668598%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85658594%_))))
                                             (if (gx#stx-pair? _%tl85678601%_)
                                                 (let ((_%e85688604%_
                                                        (gx#syntax-e
                                                         _%tl85678601%_)))
                                                   (let ((_%tl85708611%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85688604%_)))
                                                         (_%hd85698608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85688604%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85708611%_)
                                                         (_%__kont1918419185%_
                                                          _%hd85698608%_
                                                          _%hd85668598%_)
                                                         (_%__kont1918619187%_))))
                                                 (_%__kont1918619187%_))))
                                         (_%__kont1918619187%_))))))
                              (_%__kont1921019211%_
                               (lambda ()
                                 (values (reverse _%pre8499%_)
                                         (reverse _%opt8500%_)
                                         _%rest8497%_))))
                          (if (gx#stx-pair? _%__stx1920519206%_)
                              (let ((_%e85078533%_
                                     (gx#syntax-e _%__stx1920519206%_)))
                                (let ((_%tl85098540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85078533%_)))
                                      (_%hd85088537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85078533%_))))
                                  (_%__kont1920819209%_
                                   _%tl85098540%_
                                   _%hd85088537%_)))
                              (_%__kont1921019211%_)))))))
                 (_%kw-lambda?5407%_
                  (lambda (_%hd8159%_)
                    (let _%lp8162%_ ((_%rest8165%_ _%hd8159%_)
                                     (_%opt?8167%_ '#f)
                                     (_%key?8168%_ '#f))
                      (let* ((_%__stx1926919270%_ _%rest8165%_)
                             (_%g81738203%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1926919270%_))))
                        (let ((_%__kont1927219273%_
                               (lambda (_%g81758398%_
                                        _%g81768400%_
                                        _%g81778401%_)
                                 (let* ((_%__stx1924519246%_ _%g81768400%_)
                                        (_%g84168430%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1924519246%_))))
                                   (let ((_%__kont1924819249%_
                                          (lambda (_%g84188468%_)
                                            (if (gx#identifier? _%g84188468%_)
                                                (_%lp8162%_
                                                 _%g81758398%_
                                                 _%opt?8167%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1925019251%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81768400%_)
                                                (_%lp8162%_
                                                 _%g81758398%_
                                                 _%opt?8167%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1924519246%_)
                                         (let ((_%e84198448%_
                                                (gx#syntax-e
                                                 _%__stx1924519246%_)))
                                           (let ((_%tl84218455%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84198448%_)))
                                                 (_%hd84208452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84198448%_))))
                                             (if (gx#stx-pair? _%tl84218455%_)
                                                 (let ((_%e84228458%_
                                                        (gx#syntax-e
                                                         _%tl84218455%_)))
                                                   (let ((_%tl84248465%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84228458%_)))
                                                         (_%hd84238462%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84228458%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84248465%_)
                                                         (_%__kont1924819249%_
                                                          _%hd84208452%_)
                                                         (_%__kont1925019251%_))))
                                                 (_%__kont1925019251%_))))
                                         (_%__kont1925019251%_))))))
                              (_%__kont1927419275%_
                               (lambda (_%g81848355%_ _%g81858357%_)
                                 (if (gx#identifier? _%g81858357%_)
                                     (_%lp8162%_
                                      _%g81848355%_
                                      _%opt?8167%_
                                      '#t)
                                     '#f)))
                              (_%__kont1927619277%_
                               (lambda (_%g81938235%_ _%g81948237%_)
                                 (let* ((_%__stx1922119222%_ _%g81948237%_)
                                        (_%g82538267%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1922119222%_))))
                                   (let ((_%__kont1922419225%_
                                          (lambda (_%g82558305%_)
                                            (if (gx#identifier? _%g82558305%_)
                                                (_%lp8162%_
                                                 _%g81938235%_
                                                 '#t
                                                 _%key?8168%_)
                                                '#f)))
                                         (_%__kont1922619227%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81948237%_)
                                                (if (not _%opt?8167%_)
                                                    (_%lp8162%_
                                                     _%g81938235%_
                                                     '#f
                                                     _%key?8168%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1922119222%_)
                                         (let ((_%e82568285%_
                                                (gx#syntax-e
                                                 _%__stx1922119222%_)))
                                           (let ((_%tl82588292%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82568285%_)))
                                                 (_%hd82578289%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82568285%_))))
                                             (if (gx#stx-pair? _%tl82588292%_)
                                                 (let ((_%e82598295%_
                                                        (gx#syntax-e
                                                         _%tl82588292%_)))
                                                   (let ((_%tl82618302%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82598295%_)))
                                                         (_%hd82608299%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82598295%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82618302%_)
                                                         (_%__kont1922419225%_
                                                          _%hd82578289%_)
                                                         (_%__kont1922619227%_))))
                                                 (_%__kont1922619227%_))))
                                         (_%__kont1922619227%_))))))
                              (_%__kont1927819279%_
                               (lambda ()
                                 (if _%key?8168%_
                                     (let ((_%$e8214%_
                                            (gx#stx-null? _%rest8165%_)))
                                       (if _%$e8214%_
                                           _%$e8214%_
                                           (gx#identifier? _%rest8165%_)))
                                     '#f))))
                          (let ((_%__match1929219293%_
                                 (lambda (_%e81788378%_
                                          _%hd81798382%_
                                          _%tl81808385%_
                                          _%e81818388%_
                                          _%hd81828392%_
                                          _%tl81838395%_)
                                   (let ((_%g81758398%_ _%tl81838395%_)
                                         (_%g81768400%_ _%hd81828392%_)
                                         (_%g81778401%_ _%hd81798382%_))
                                     (if (gx#stx-keyword? _%g81778401%_)
                                         (_%__kont1927219273%_
                                          _%g81758398%_
                                          _%g81768400%_
                                          _%g81778401%_)
                                         (if (gx#stx-datum? _%hd81798382%_)
                                             (let ((_%e81898341%_
                                                    (gx#stx-e _%hd81798382%_)))
                                               (if (equal? _%e81898341%_
                                                           '#!key)
                                                   (_%__kont1927419275%_
                                                    _%tl81838395%_
                                                    _%hd81828392%_)
                                                   (_%__kont1927619277%_
                                                    _%tl81808385%_
                                                    _%hd81798382%_)))
                                             (_%__kont1927619277%_
                                              _%tl81808385%_
                                              _%hd81798382%_)))))))
                            (if (gx#stx-pair? _%__stx1926919270%_)
                                (let ((_%e81788378%_
                                       (gx#syntax-e _%__stx1926919270%_)))
                                  (let ((_%tl81808385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81788378%_)))
                                        (_%hd81798382%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81788378%_))))
                                    (if (gx#stx-pair? _%tl81808385%_)
                                        (let ((_%e81818388%_
                                               (gx#syntax-e _%tl81808385%_)))
                                          (let ((_%tl81838395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81818388%_)))
                                                (_%hd81828392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81818388%_))))
                                            (_%__match1929219293%_
                                             _%e81788378%_
                                             _%hd81798382%_
                                             _%tl81808385%_
                                             _%e81818388%_
                                             _%hd81828392%_
                                             _%tl81838395%_)))
                                        (if (gx#stx-datum? _%hd81798382%_)
                                            (let ((_%e81898341%_
                                                   (gx#stx-e _%hd81798382%_)))
                                              (_%__kont1927619277%_
                                               _%tl81808385%_
                                               _%hd81798382%_))
                                            (_%__kont1927619277%_
                                             _%tl81808385%_
                                             _%hd81798382%_)))))
                                (_%__kont1927819279%_))))))))
                 (_%kw-lambda-split5408%_
                  (lambda (_%hd7892%_)
                    (let _%lp7895%_ ((_%rest7898%_ _%hd7892%_)
                                     (_%kwvar7900%_ '#f)
                                     (_%kwargs7901%_ '())
                                     (_%args7902%_ '()))
                      (let* ((_%__stx1934319344%_ _%rest7898%_)
                             (_%g79077937%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1934319344%_))))
                        (let ((_%__kont1934619347%_
                               (lambda (_%g79098056%_
                                        _%g79108058%_
                                        _%g79118059%_)
                                 (let ((_%key8073%_ (gx#stx-e _%g79118059%_)))
                                   (if (find (lambda (_%kwarg8076%_)
                                               (eq? _%key8073%_
                                                    (car _%kwarg8076%_)))
                                             _%kwargs7901%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5400%_
                                        _%hd7892%_
                                        _%key8073%_)
                                       (let* ((_%__stx1931919320%_
                                               _%g79108058%_)
                                              (_%g80808095%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1931919320%_))))
                                         (let ((_%__kont1932219323%_
                                                (lambda (_%g80828133%_
                                                         _%g80838135%_)
                                                  (_%lp7895%_
                                                   _%g79098056%_
                                                   _%kwvar7900%_
                                                   (cons (list _%key8073%_
                                                               _%g80838135%_
                                                               _%g80828133%_)
                                                         _%kwargs7901%_)
                                                   _%args7902%_)))
                                               (_%__kont1932419325%_
                                                (lambda ()
                                                  (_%lp7895%_
                                                   _%g79098056%_
                                                   _%kwvar7900%_
                                                   (cons (list _%key8073%_
                                                               _%g79108058%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%g79118059%_ '()))))
                 _%kwargs7901%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7902%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1931919320%_)
                                               (let ((_%e80848113%_
                                                      (gx#syntax-e
                                                       _%__stx1931919320%_)))
                                                 (let ((_%tl80868120%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80848113%_)))
                                                       (_%hd80858117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80848113%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80868120%_)
                                                       (let ((_%e80878123%_
                                                              (gx#syntax-e
                                                               _%tl80868120%_)))
                                                         (let ((_%tl80898130%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80878123%_)))
                       (_%hd80888127%_
                        (let () (declare (not safe)) (##car _%e80878123%_))))
                   (if (gx#stx-null? _%tl80898130%_)
                       (_%__kont1932219323%_ _%hd80888127%_ _%hd80858117%_)
                       (_%__kont1932419325%_))))
               (_%__kont1932419325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1932419325%_))))))))
                              (_%__kont1934819349%_
                               (lambda (_%g79188013%_ _%g79198015%_)
                                 (if _%kwvar7900%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5400%_
                                      _%hd7892%_
                                      _%g79198015%_)
                                     (_%lp7895%_
                                      _%g79188013%_
                                      _%g79198015%_
                                      _%kwargs7901%_
                                      _%args7902%_))))
                              (_%__kont1935019351%_
                               (lambda (_%g79277965%_ _%g79287967%_)
                                 (_%lp7895%_
                                  _%g79277965%_
                                  _%kwvar7900%_
                                  _%kwargs7901%_
                                  (cons _%g79287967%_ _%args7902%_))))
                              (_%__kont1935219353%_
                               (lambda ()
                                 (values _%kwvar7900%_
                                         (reverse _%kwargs7901%_)
                                         (foldl cons
                                                _%rest7898%_
                                                _%args7902%_)))))
                          (let ((_%__match1936619367%_
                                 (lambda (_%e79128036%_
                                          _%hd79138040%_
                                          _%tl79148043%_
                                          _%e79158046%_
                                          _%hd79168050%_
                                          _%tl79178053%_)
                                   (let ((_%g79098056%_ _%tl79178053%_)
                                         (_%g79108058%_ _%hd79168050%_)
                                         (_%g79118059%_ _%hd79138040%_))
                                     (if (gx#stx-keyword? _%g79118059%_)
                                         (_%__kont1934619347%_
                                          _%g79098056%_
                                          _%g79108058%_
                                          _%g79118059%_)
                                         (if (gx#stx-datum? _%hd79138040%_)
                                             (let ((_%e79237999%_
                                                    (gx#stx-e _%hd79138040%_)))
                                               (if (equal? _%e79237999%_
                                                           '#!key)
                                                   (_%__kont1934819349%_
                                                    _%tl79178053%_
                                                    _%hd79168050%_)
                                                   (_%__kont1935019351%_
                                                    _%tl79148043%_
                                                    _%hd79138040%_)))
                                             (_%__kont1935019351%_
                                              _%tl79148043%_
                                              _%hd79138040%_)))))))
                            (if (gx#stx-pair? _%__stx1934319344%_)
                                (let ((_%e79128036%_
                                       (gx#syntax-e _%__stx1934319344%_)))
                                  (let ((_%tl79148043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79128036%_)))
                                        (_%hd79138040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79128036%_))))
                                    (if (gx#stx-pair? _%tl79148043%_)
                                        (let ((_%e79158046%_
                                               (gx#syntax-e _%tl79148043%_)))
                                          (let ((_%tl79178053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79158046%_)))
                                                (_%hd79168050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79158046%_))))
                                            (_%__match1936619367%_
                                             _%e79128036%_
                                             _%hd79138040%_
                                             _%tl79148043%_
                                             _%e79158046%_
                                             _%hd79168050%_
                                             _%tl79178053%_)))
                                        (if (gx#stx-datum? _%hd79138040%_)
                                            (let ((_%e79237999%_
                                                   (gx#stx-e _%hd79138040%_)))
                                              (_%__kont1935019351%_
                                               _%tl79148043%_
                                               _%hd79138040%_))
                                            (_%__kont1935019351%_
                                             _%tl79148043%_
                                             _%hd79138040%_)))))
                                (_%__kont1935219353%_))))))))
                 (_%check-duplicate-bindings5409%_
                  (lambda (_%hd7584%_)
                    (let _%lp7587%_ ((_%rest7590%_ _%hd7584%_)
                                     (_%ids7592%_ '()))
                      (let* ((_%__stx1941719418%_ _%rest7590%_)
                             (_%g75957607%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1941719418%_))))
                        (let ((_%__kont1942019421%_
                               (lambda (_%g75977635%_ _%g75987637%_)
                                 (if (gx#identifier? _%g75987637%_)
                                     (_%lp7587%_
                                      _%g75977635%_
                                      (cons _%g75987637%_ _%ids7592%_))
                                     (if (gx#stx-pair? _%g75987637%_)
                                         (let* ((_%g76567670%_
                                                 (lambda (_%g76577666%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76577666%_)))
                                                (_%g76557712%_
                                                 (lambda (_%g76577674%_)
                                                   (if (gx#stx-pair?
                                                        _%g76577674%_)
                                                       (let ((_%e76597677%_
                                                              (gx#syntax-e
                                                               _%g76577674%_)))
                                                         (let ((_%hd76607681%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76597677%_)))
                       (_%tl76617684%_
                        (let () (declare (not safe)) (##cdr _%e76597677%_))))
                   (if (gx#stx-pair? _%tl76617684%_)
                       (let ((_%e76627687%_ (gx#syntax-e _%tl76617684%_)))
                         (let ((_%hd76637691%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76627687%_)))
                               (_%tl76647694%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76627687%_))))
                           (if (gx#stx-null? _%tl76647694%_)
                               ((lambda (_%g76587697%_)
                                  (_%lp7587%_
                                   _%g75977635%_
                                   (cons _%g76587697%_ _%ids7592%_)))
                                _%hd76607681%_)
                               (_%g76567670%_ _%g76577674%_))))
                       (_%g76567670%_ _%g76577674%_))))
               (_%g76567670%_ _%g76577674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76557712%_ _%g75987637%_))
                                         (if (gx#stx-keyword? _%g75987637%_)
                                             (let* ((_%g77187730%_
                                                     (lambda (_%g77197726%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77197726%_)))
                                                    (_%g77177833%_
                                                     (lambda (_%g77197734%_)
                                                       (if (gx#stx-pair?
                                                            _%g77197734%_)
                                                           (let ((_%e77227737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77197734%_)))
                     (let ((_%hd77237741%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77227737%_)))
                           (_%tl77247744%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77227737%_))))
                       ((lambda (_%g77207747%_ _%g77217749%_)
                          (let* ((_%__stx1939319394%_ _%g77217749%_)
                                 (_%g77627776%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1939319394%_))))
                            (let ((_%__kont1939619397%_
                                   (lambda (_%g77647814%_)
                                     (_%lp7587%_
                                      _%g77207747%_
                                      (cons _%g77647814%_ _%ids7592%_))))
                                  (_%__kont1939819399%_
                                   (lambda ()
                                     (_%lp7587%_
                                      _%g77207747%_
                                      (cons _%g77217749%_ _%ids7592%_)))))
                              (if (gx#stx-pair? _%__stx1939319394%_)
                                  (let ((_%e77657794%_
                                         (gx#syntax-e _%__stx1939319394%_)))
                                    (let ((_%tl77677801%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77657794%_)))
                                          (_%hd77667798%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77657794%_))))
                                      (if (gx#stx-pair? _%tl77677801%_)
                                          (let ((_%e77687804%_
                                                 (gx#syntax-e _%tl77677801%_)))
                                            (let ((_%tl77707811%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77687804%_)))
                                                  (_%hd77697808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77687804%_))))
                                              (if (gx#stx-null? _%tl77707811%_)
                                                  (_%__kont1939619397%_
                                                   _%hd77667798%_)
                                                  (_%__kont1939819399%_))))
                                          (_%__kont1939819399%_))))
                                  (_%__kont1939819399%_)))))
                        _%tl77247744%_
                        _%hd77237741%_)))
                   (_%g77187730%_ _%g77197734%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77177833%_ _%g75977635%_))
                                             (if (eq? (gx#stx-e _%g75987637%_)
                                                      '#!key)
                                                 (let* ((_%g78397851%_
                                                         (lambda (_%g78407847%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78407847%_)))
                                                        (_%g78387882%_
                                                         (lambda (_%g78407855%_)
                                                           (if (gx#stx-pair?
                                                                _%g78407855%_)
                                                               (let ((_%e78437858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78407855%_)))
                         (let ((_%hd78447862%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78437858%_)))
                               (_%tl78457865%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78437858%_))))
                           ((lambda (_%g78417868%_ _%g78427870%_)
                              (_%lp7587%_
                               _%g78417868%_
                               (cons _%g78427870%_ _%ids7592%_)))
                            _%tl78457865%_
                            _%hd78447862%_)))
                       (_%g78397851%_ _%g78407855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78387882%_
                                                    _%g75977635%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5400%_
                                                        _%rest7590%_)))))))
                              (_%__kont1942219423%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7590%_)
                                      _%ids7592%_
                                      (cons _%rest7590%_ _%ids7592%_))
                                  _%stx5400%_))))
                          (if (gx#stx-pair? _%__stx1941719418%_)
                              (let ((_%e75997625%_
                                     (gx#syntax-e _%__stx1941719418%_)))
                                (let ((_%tl76017632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75997625%_)))
                                      (_%hd76007629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75997625%_))))
                                  (_%__kont1942019421%_
                                   _%tl76017632%_
                                   _%hd76007629%_)))
                              (_%__kont1942219423%_)))))))
                 (_%generate-opt-primary5410%_
                  (lambda (_%pre7380%_ _%opt7382%_ _%tail7383%_ _%body7384%_)
                    (let* ((_%g73867427%_
                            (lambda (_%g73877423%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73877423%_)))
                           (_%g73857580%_
                            (lambda (_%g73877431%_)
                              (if (gx#stx-pair? _%g73877431%_)
                                  (let ((_%e73927434%_
                                         (gx#syntax-e _%g73877431%_)))
                                    (let ((_%hd73937438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e73927434%_)))
                                          (_%tl73947441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e73927434%_))))
                                      (if (gx#stx-pair/null? _%hd73937438%_)
                                          (let ((_g21012_
                                                 (gx#syntax-split-splice
                                                  _%hd73937438%_
                                                  '0)))
                                            (begin
                                              (let ((_g21013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21012_)
                                                           (##values-length
                                                            _g21012_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21013_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21013_)))
                                              (let ((_%target73957444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21012_
                                                        0)))
                                                    (_%tl73977447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21012_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73977447%_)
                                                    (letrec ((_%loop73987450%_
                                                              (lambda (_%hd73967454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre74027457%_)
                        (if (gx#stx-pair? _%hd73967454%_)
                            (let ((_%e73997459%_ (gx#syntax-e _%hd73967454%_)))
                              (let ((_%lp-hd74007463%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e73997459%_)))
                                    (_%lp-tl74017466%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e73997459%_))))
                                (_%loop73987450%_
                                 _%lp-tl74017466%_
                                 (cons _%lp-hd74007463%_ _%pre74027457%_))))
                            (let ((_%pre74037469%_ (reverse _%pre74027457%_)))
                              (if (gx#stx-pair? _%tl73947441%_)
                                  (let ((_%e74047472%_
                                         (gx#syntax-e _%tl73947441%_)))
                                    (let ((_%hd74057476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74047472%_)))
                                          (_%tl74067479%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74047472%_))))
                                      (if (gx#stx-pair/null? _%hd74057476%_)
                                          (let ((_g21014_
                                                 (gx#syntax-split-splice
                                                  _%hd74057476%_
                                                  '0)))
                                            (begin
                                              (let ((_g21015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g21014_)
                                                           (##values-length
                                                            _g21014_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g21015_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g21015_)))
                                              (let ((_%target74077482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21014_
                                                        0)))
                                                    (_%tl74097485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g21014_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74097485%_)
                                                    (letrec ((_%loop74107488%_
                                                              (lambda (_%hd74087492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74147495%_)
                        (if (gx#stx-pair? _%hd74087492%_)
                            (let ((_%e74117497%_ (gx#syntax-e _%hd74087492%_)))
                              (let ((_%lp-hd74127501%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74117497%_)))
                                    (_%lp-tl74137504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74117497%_))))
                                (_%loop74107488%_
                                 _%lp-tl74137504%_
                                 (cons _%lp-hd74127501%_ _%opt74147495%_))))
                            (let ((_%opt74157507%_ (reverse _%opt74147495%_)))
                              (if (gx#stx-pair? _%tl74067479%_)
                                  (let ((_%e74167510%_
                                         (gx#syntax-e _%tl74067479%_)))
                                    (let ((_%hd74177514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74167510%_)))
                                          (_%tl74187517%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74167510%_))))
                                      (if (gx#stx-pair? _%tl74187517%_)
                                          (let ((_%e74197520%_
                                                 (gx#syntax-e _%tl74187517%_)))
                                            (let ((_%hd74207524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74197520%_)))
                                                  (_%tl74217527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74197520%_))))
                                              (if (gx#stx-null? _%tl74217527%_)
                                                  ((lambda (_%g73887530%_
                                                            _%g73897532%_
                                                            _%g73907533%_
                                                            _%g73917534%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75637568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75647571%_)
                                  (cons _%g75637568%_ _%g75647571%_))
                                (foldr (lambda (_%g75657574%_ _%g75667577%_)
                                         (cons _%g75657574%_ _%g75667577%_))
                                       _%g73897532%_
                                       _%g73907533%_)
                                _%g73917534%_)
                         _%g73887530%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74207524%_
                                                   _%hd74177514%_
                                                   _%opt74157507%_
                                                   _%pre74037469%_)
                                                  (_%g73867427%_
                                                   _%g73877431%_))))
                                          (_%g73867427%_ _%g73877431%_))))
                                  (_%g73867427%_ _%g73877431%_)))))))
              (_%loop74107488%_ _%target74077482%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73867427%_
                                                     _%g73877431%_)))))
                                          (_%g73867427%_ _%g73877431%_))))
                                  (_%g73867427%_ _%g73877431%_)))))))
              (_%loop73987450%_ _%target73957444%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g73867427%_
                                                     _%g73877431%_)))))
                                          (_%g73867427%_ _%g73877431%_))))
                                  (_%g73867427%_ _%g73877431%_)))))
                      (_%g73857580%_
                       (list _%pre7380%_
                             (map car _%opt7382%_)
                             _%tail7383%_
                             _%body7384%_)))))
                 (_%generate-opt-dispatch5411%_
                  (lambda (_%primary7374%_
                           _%pre7376%_
                           _%opt7377%_
                           _%tail7378%_)
                    (cons (list _%pre7376%_
                                (_%generate-opt-clause5413%_
                                 _%primary7374%_
                                 _%pre7376%_
                                 _%opt7377%_))
                          (_%generate-opt-dispatch*5412%_
                           _%primary7374%_
                           _%pre7376%_
                           _%opt7377%_
                           _%tail7378%_))))
                 (_%generate-opt-dispatch*5412%_
                  (lambda (_%primary6931%_
                           _%pre6933%_
                           _%opt6934%_
                           _%tail6935%_)
                    (let _%recur6937%_ ((_%opt-rest6940%_ _%opt6934%_)
                                        (_%right6942%_ '()))
                      (if (pair? _%opt-rest6940%_)
                          (let* ((_%hd6946%_ (caar _%opt-rest6940%_))
                                 (_%rest6949%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6940%_)))
                                 (_%right*6952%_
                                  (cons _%hd6946%_ _%right6942%_))
                                 (_%g69556972%_
                                  (lambda (_%g69566968%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69566968%_)))
                                 (_%g69547152%_
                                  (lambda (_%g69566976%_)
                                    (if (gx#stx-pair/null? _%g69566976%_)
                                        (let ((_g21016_
                                               (gx#syntax-split-splice
                                                _%g69566976%_
                                                '0)))
                                          (begin
                                            (let ((_g21017_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21016_)
                                                         (##values-length
                                                          _g21016_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21017_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21017_)))
                                            (let ((_%target69586979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21016_
                                                      0)))
                                                  (_%tl69606982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21016_
                                                      1))))
                                              (if (gx#stx-null? _%tl69606982%_)
                                                  (letrec ((_%loop69616985%_
                                                            (lambda (_%hd69596989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69656992%_)
                      (if (gx#stx-pair? _%hd69596989%_)
                          (let ((_%e69626994%_ (gx#syntax-e _%hd69596989%_)))
                            (let ((_%lp-hd69636998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69626994%_)))
                                  (_%lp-tl69647001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69626994%_))))
                              (_%loop69616985%_
                               _%lp-tl69647001%_
                               (cons _%lp-hd69636998%_ _%pre-bind69656992%_))))
                          (let ((_%pre-bind69667004%_
                                 (reverse _%pre-bind69656992%_)))
                            ((lambda (_%g69577007%_)
                               (let* ((_%g70297046%_
                                       (lambda (_%g70307042%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70307042%_)))
                                      (_%g70287148%_
                                       (lambda (_%g70307050%_)
                                         (if (gx#stx-pair/null? _%g70307050%_)
                                             (let ((_g21018_
                                                    (gx#syntax-split-splice
                                                     _%g70307050%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21019_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21018_)
                                                              (##values-length
                                                               _g21018_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70327053%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21018_
                                                           0)))
                                                       (_%tl70347056%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21018_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70347056%_)
                                                       (letrec ((_%loop70357059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70337063%_ _%opt-bind70397066%_)
                           (if (gx#stx-pair? _%hd70337063%_)
                               (let ((_%e70367068%_
                                      (gx#syntax-e _%hd70337063%_)))
                                 (let ((_%lp-hd70377072%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70367068%_)))
                                       (_%lp-tl70387075%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70367068%_))))
                                   (_%loop70357059%_
                                    _%lp-tl70387075%_
                                    (cons _%lp-hd70377072%_
                                          _%opt-bind70397066%_))))
                               (let ((_%opt-bind70407078%_
                                      (reverse _%opt-bind70397066%_)))
                                 ((lambda (_%g70317081%_)
                                    (let* ((_%g70987106%_
                                            (lambda (_%g70997102%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g70997102%_)))
                                           (_%g70977144%_
                                            (lambda (_%g70997110%_)
                                              ((lambda (_%g71007113%_)
                                                 (cons (list (foldr (lambda (_%g71277132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71287135%_)
                              (cons _%g71277132%_ _%g71287135%_))
                            (foldr (lambda (_%g71297138%_ _%g71307141%_)
                                     (cons _%g71297138%_ _%g71307141%_))
                                   (cons _%g71007113%_ '())
                                   _%g70317081%_)
                            _%g69577007%_)
                     (_%generate-opt-clause5413%_
                      _%primary6931%_
                      (foldr cons (reverse _%right*6952%_) _%pre6933%_)
                      _%rest6949%_))
               (_%recur6937%_ _%rest6949%_ _%right*6952%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g70997110%_))))
                                      (_%g70977144%_ _%hd6946%_)))
                                  _%opt-bind70407078%_))))))
                 (_%loop70357059%_ _%target70327053%_ '()))
               (_%g70297046%_ _%g70307050%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70297046%_ _%g70307050%_)))))
                                 (_%g70287148%_ (reverse _%right6942%_))))
                             _%pre-bind69667004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69616985%_
                                                     _%target69586979%_
                                                     '()))
                                                  (_%g69556972%_
                                                   _%g69566976%_)))))
                                        (_%g69556972%_ _%g69566976%_)))))
                            (_%g69547152%_ _%pre6933%_))
                          (if (gx#stx-null? _%tail6935%_)
                              '()
                              (let* ((_%g71607201%_
                                      (lambda (_%g71617197%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71617197%_)))
                                     (_%g71597370%_
                                      (lambda (_%g71617205%_)
                                        (if (gx#stx-pair? _%g71617205%_)
                                            (let ((_%e71667208%_
                                                   (gx#syntax-e
                                                    _%g71617205%_)))
                                              (let ((_%hd71677212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71667208%_)))
                                                    (_%tl71687215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71667208%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71677212%_)
                                                    (let ((_g21020_
                                                           (gx#syntax-split-splice
                                                            _%hd71677212%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21020_)
                             (##values-length _g21020_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21021_ 2)))
                      (error "Context expects 2 values" _g21021_)))
                (let ((_%target71697218%_
                       (let () (declare (not safe)) (##values-ref _g21020_ 0)))
                      (_%tl71717221%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21020_ 1))))
                  (if (gx#stx-null? _%tl71717221%_)
                      (letrec ((_%loop71727224%_
                                (lambda (_%hd71707228%_ _%pre71767231%_)
                                  (if (gx#stx-pair? _%hd71707228%_)
                                      (let ((_%e71737233%_
                                             (gx#syntax-e _%hd71707228%_)))
                                        (let ((_%lp-hd71747237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71737233%_)))
                                              (_%lp-tl71757240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71737233%_))))
                                          (_%loop71727224%_
                                           _%lp-tl71757240%_
                                           (cons _%lp-hd71747237%_
                                                 _%pre71767231%_))))
                                      (let ((_%pre71777243%_
                                             (reverse _%pre71767231%_)))
                                        (if (gx#stx-pair? _%tl71687215%_)
                                            (let ((_%e71787246%_
                                                   (gx#syntax-e
                                                    _%tl71687215%_)))
                                              (let ((_%hd71797250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71787246%_)))
                                                    (_%tl71807253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71787246%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71797250%_)
                                                    (let ((_g21022_
                                                           (gx#syntax-split-splice
                                                            _%hd71797250%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21023_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g21022_)
                             (##values-length _g21022_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21023_ 2)))
                      (error "Context expects 2 values" _g21023_)))
                (let ((_%target71817256%_
                       (let () (declare (not safe)) (##values-ref _g21022_ 0)))
                      (_%tl71837259%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g21022_ 1))))
                  (if (gx#stx-null? _%tl71837259%_)
                      (letrec ((_%loop71847262%_
                                (lambda (_%hd71827266%_ _%opt71887269%_)
                                  (if (gx#stx-pair? _%hd71827266%_)
                                      (let ((_%e71857271%_
                                             (gx#syntax-e _%hd71827266%_)))
                                        (let ((_%lp-hd71867275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71857271%_)))
                                              (_%lp-tl71877278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71857271%_))))
                                          (_%loop71847262%_
                                           _%lp-tl71877278%_
                                           (cons _%lp-hd71867275%_
                                                 _%opt71887269%_))))
                                      (let ((_%opt71897281%_
                                             (reverse _%opt71887269%_)))
                                        (if (gx#stx-pair? _%tl71807253%_)
                                            (let ((_%e71907284%_
                                                   (gx#syntax-e
                                                    _%tl71807253%_)))
                                              (let ((_%hd71917288%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71907284%_)))
                                                    (_%tl71927291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71907284%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71927291%_)
                                                    (let ((_%e71937294%_
                                                           (gx#syntax-e
                                                            _%tl71927291%_)))
                                                      (let ((_%hd71947298%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71937294%_)))
                    (_%tl71957301%_
                     (let () (declare (not safe)) (##cdr _%e71937294%_))))
                (if (gx#stx-null? _%tl71957301%_)
                    ((lambda (_%g71627304%_
                              _%g71637306%_
                              _%g71647307%_
                              _%g71657308%_)
                       (list (list (foldr (lambda (_%g73377342%_ _%g73387345%_)
                                            (cons _%g73377342%_ _%g73387345%_))
                                          (foldr (lambda (_%g73397348%_
                                                          _%g73407351%_)
                                                   (cons _%g73397348%_
                                                         _%g73407351%_))
                                                 _%g71637306%_
                                                 _%g71647307%_)
                                          _%g71657308%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%g71627304%_
                                                (foldr (lambda (_%g73537358%_
                                                                _%g73547361%_)
                                                         (cons _%g73537358%_
                                                               _%g73547361%_))
                                                       (foldr (lambda (_%g73557364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73567367%_)
                        (cons _%g73557364%_ _%g73567367%_))
                      (cons _%g71637306%_ '())
                      _%g71647307%_)
               _%g71657308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5400%_)))))
                     _%hd71947298%_
                     _%hd71917288%_
                     _%opt71897281%_
                     _%pre71777243%_)
                    (_%g71607201%_ _%g71617205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71607201%_
                                                     _%g71617205%_))))
                                            (_%g71607201%_ _%g71617205%_)))))))
                        (_%loop71847262%_ _%target71817256%_ '()))
                      (_%g71607201%_ _%g71617205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71607201%_
                                                     _%g71617205%_))))
                                            (_%g71607201%_ _%g71617205%_)))))))
                        (_%loop71727224%_ _%target71697218%_ '()))
                      (_%g71607201%_ _%g71617205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71607201%_
                                                     _%g71617205%_))))
                                            (_%g71607201%_ _%g71617205%_)))))
                                (_%g71597370%_
                                 (list _%pre6933%_
                                       (reverse _%right6942%_)
                                       _%tail6935%_
                                       _%primary6931%_))))))))
                 (_%generate-opt-clause5413%_
                  (lambda (_%primary6633%_ _%pre6635%_ _%opt6636%_)
                    (let _%recur6638%_ ((_%opt-rest6641%_ _%opt6636%_)
                                        (_%right6643%_ '()))
                      (if (pair? _%opt-rest6641%_)
                          (let* ((_%hd6645%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6641%_)))
                                 (_%rest6648%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6641%_)))
                                 (_%g66516659%_
                                  (lambda (_%g66526655%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66526655%_)))
                                 (_%g66506748%_
                                  (lambda (_%g66526663%_)
                                    ((lambda (_%g66536666%_)
                                       (let* ((_%g66826690%_
                                               (lambda (_%g66836686%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66836686%_)))
                                              (_%g66816744%_
                                               (lambda (_%g66836694%_)
                                                 ((lambda (_%g66846697%_)
                                                    (let* ((_%g67106718%_
                                                            (lambda (_%g67116714%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67116714%_)))
                                                           (_%g67096740%_
                                                            (lambda (_%g67116722%_)
                                                              ((lambda (_%g67126725%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%g66536666%_ '())
                                                 (cons _%g66846697%_ '()))
                                           '())
                                     (cons _%g67126725%_ '()))))
                       _%g67116722%_))))
              (_%g67096740%_
               (_%recur6638%_
                _%rest6648%_
                (cons _%g66536666%_ _%right6643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66836694%_))))
                                         (_%g66816744%_ (cdr _%hd6645%_))))
                                     _%g66526663%_))))
                            (_%g66506748%_ (car _%hd6645%_)))
                          (let* ((_%g67526789%_
                                  (lambda (_%g67536785%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67536785%_)))
                                 (_%g67516927%_
                                  (lambda (_%g67536793%_)
                                    (if (gx#stx-pair? _%g67536793%_)
                                        (let ((_%e67576796%_
                                               (gx#syntax-e _%g67536793%_)))
                                          (let ((_%hd67586800%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67576796%_)))
                                                (_%tl67596803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67576796%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67586800%_)
                                                (let ((_g21024_
                                                       (gx#syntax-split-splice
                                                        _%hd67586800%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21024_)
                         (##values-length _g21024_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21025_ 2)))
                  (error "Context expects 2 values" _g21025_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67606806%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21024_
                                                              0)))
                                                          (_%tl67626809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21024_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67626809%_)
                                                          (letrec ((_%loop67636812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67616816%_ _%pre67676819%_)
                              (if (gx#stx-pair? _%hd67616816%_)
                                  (let ((_%e67646821%_
                                         (gx#syntax-e _%hd67616816%_)))
                                    (let ((_%lp-hd67656825%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67646821%_)))
                                          (_%lp-tl67666828%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67646821%_))))
                                      (_%loop67636812%_
                                       _%lp-tl67666828%_
                                       (cons _%lp-hd67656825%_
                                             _%pre67676819%_))))
                                  (let ((_%pre67686831%_
                                         (reverse _%pre67676819%_)))
                                    (if (gx#stx-pair? _%tl67596803%_)
                                        (let ((_%e67696834%_
                                               (gx#syntax-e _%tl67596803%_)))
                                          (let ((_%hd67706838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67696834%_)))
                                                (_%tl67716841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67696834%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67706838%_)
                                                (let ((_g21026_
                                                       (gx#syntax-split-splice
                                                        _%hd67706838%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21026_)
                         (##values-length _g21026_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21027_ 2)))
                  (error "Context expects 2 values" _g21027_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67726844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21026_
                                                              0)))
                                                          (_%tl67746847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21026_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67746847%_)
                                                          (letrec ((_%loop67756850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67736854%_ _%opt67796857%_)
                              (if (gx#stx-pair? _%hd67736854%_)
                                  (let ((_%e67766859%_
                                         (gx#syntax-e _%hd67736854%_)))
                                    (let ((_%lp-hd67776863%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67766859%_)))
                                          (_%lp-tl67786866%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67766859%_))))
                                      (_%loop67756850%_
                                       _%lp-tl67786866%_
                                       (cons _%lp-hd67776863%_
                                             _%opt67796857%_))))
                                  (let ((_%opt67806869%_
                                         (reverse _%opt67796857%_)))
                                    (if (gx#stx-pair? _%tl67716841%_)
                                        (let ((_%e67816872%_
                                               (gx#syntax-e _%tl67716841%_)))
                                          (let ((_%hd67826876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67816872%_)))
                                                (_%tl67836879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67816872%_))))
                                            (if (gx#stx-null? _%tl67836879%_)
                                                ((lambda (_%g67546882%_
                                                          _%g67556884%_
                                                          _%g67566885%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%g67546882%_
                                                          (foldr (lambda (_%g69106915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69116918%_)
                           (cons _%g69106915%_ _%g69116918%_))
                         (foldr (lambda (_%g69126921%_ _%g69136924%_)
                                  (cons _%g69126921%_ _%g69136924%_))
                                '()
                                _%g67556884%_)
                         _%g67566885%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5400%_)))
                                                 _%hd67826876%_
                                                 _%opt67806869%_
                                                 _%pre67686831%_)
                                                (_%g67526789%_
                                                 _%g67536793%_))))
                                        (_%g67526789%_ _%g67536793%_)))))))
                    (_%loop67756850%_ _%target67726844%_ '()))
                  (_%g67526789%_ _%g67536793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67526789%_
                                                 _%g67536793%_))))
                                        (_%g67526789%_ _%g67536793%_)))))))
                    (_%loop67636812%_ _%target67606806%_ '()))
                  (_%g67526789%_ _%g67536793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67526789%_
                                                 _%g67536793%_))))
                                        (_%g67526789%_ _%g67536793%_)))))
                            (_%g67516927%_
                             (list _%pre6635%_
                                   (reverse _%right6643%_)
                                   _%primary6633%_)))))))
                 (_%generate-kw-primary5414%_
                  (lambda (_%key6013%_
                           _%kwargs6015%_
                           _%args6016%_
                           _%body6017%_)
                    (letrec ((_%make-body6019%_
                              (lambda (_%kwargs6502%_ _%kwvals6504%_)
                                (if (pair? _%kwargs6502%_)
                                    (let* ((_%kwarg6506%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6502%_)))
                                           (_%var6509%_ (cadr _%kwarg6506%_))
                                           (_%default6512%_
                                            (caddr _%kwarg6506%_))
                                           (_%kwval6515%_ (car _%kwvals6504%_))
                                           (_%rest-kwargs6518%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6502%_)))
                                           (_%rest-kwvals6521%_
                                            (cdr _%kwvals6504%_))
                                           (_%g65266549%_
                                            (lambda (_%g65276545%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65276545%_)))
                                           (_%g65256629%_
                                            (lambda (_%g65276553%_)
                                              (if (gx#stx-pair? _%g65276553%_)
                                                  (let ((_%e65326556%_
                                                         (gx#syntax-e
                                                          _%g65276553%_)))
                                                    (let ((_%hd65336560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65326556%_)))
                                                          (_%tl65346563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65326556%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65346563%_)
                                                          (let ((_%e65356566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65346563%_)))
                    (let ((_%hd65366570%_
                           (let () (declare (not safe)) (##car _%e65356566%_)))
                          (_%tl65376573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65356566%_))))
                      (if (gx#stx-pair? _%tl65376573%_)
                          (let ((_%e65386576%_ (gx#syntax-e _%tl65376573%_)))
                            (let ((_%hd65396580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65386576%_)))
                                  (_%tl65406583%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65386576%_))))
                              (if (gx#stx-pair? _%tl65406583%_)
                                  (let ((_%e65416586%_
                                         (gx#syntax-e _%tl65406583%_)))
                                    (let ((_%hd65426590%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65416586%_)))
                                          (_%tl65436593%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65416586%_))))
                                      (if (gx#stx-null? _%tl65436593%_)
                                          ((lambda (_%g65286596%_
                                                    _%g65296598%_
                                                    _%g65306599%_
                                                    _%g65316600%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%g65316600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%g65306599%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g65296598%_
                                                     (cons _%g65306599%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%g65286596%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65426590%_
                                           _%hd65396580%_
                                           _%hd65366570%_
                                           _%hd65336560%_)
                                          (_%g65266549%_ _%g65276553%_))))
                                  (_%g65266549%_ _%g65276553%_))))
                          (_%g65266549%_ _%g65276553%_))))
                  (_%g65266549%_ _%g65276553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65266549%_
                                                   _%g65276553%_)))))
                                      (_%g65256629%_
                                       (list _%var6509%_
                                             _%kwval6515%_
                                             _%default6512%_
                                             (_%make-body6019%_
                                              _%rest-kwargs6518%_
                                              _%rest-kwvals6521%_))))
                                    (cons 'begin _%body6017%_))))
                             (_%make-main6021%_
                              (lambda ()
                                (let* ((_%g63126320%_
                                        (lambda (_%g63136316%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63136316%_)))
                                       (_%g63116494%_
                                        (lambda (_%g63136324%_)
                                          ((lambda (_%g63146327%_)
                                             (let* ((_%g63396356%_
                                                     (lambda (_%g63406352%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63406352%_)))
                                                    (_%g63386490%_
                                                     (lambda (_%g63406360%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63406360%_)
                                                           (let ((_g21028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63406360%_ '0)))
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
                             (error "Context expects 2 values" _g21029_)))
                       (let ((_%target63426363%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21028_ 0)))
                             (_%tl63446366%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21028_ 1))))
                         (if (gx#stx-null? _%tl63446366%_)
                             (letrec ((_%loop63456369%_
                                       (lambda (_%hd63436373%_
                                                _%kwval63496376%_)
                                         (if (gx#stx-pair? _%hd63436373%_)
                                             (let ((_%e63466378%_
                                                    (gx#syntax-e
                                                     _%hd63436373%_)))
                                               (let ((_%lp-hd63476382%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63466378%_)))
                                                     (_%lp-tl63486385%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63466378%_))))
                                                 (_%loop63456369%_
                                                  _%lp-tl63486385%_
                                                  (cons _%lp-hd63476382%_
                                                        _%kwval63496376%_))))
                                             (let ((_%kwval63506388%_
                                                    (reverse _%kwval63496376%_)))
                                               ((lambda (_%g63416391%_)
                                                  (let* ((_%g64086416%_
                                                          (lambda (_%g64096412%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g64096412%_)))
                                                         (_%g64076486%_
                                                          (lambda (_%g64096420%_)
                                                            ((lambda (_%g64106423%_)
                                                               (let* ((_%g64366444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64376440%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64376440%_)))
                              (_%g64356474%_
                               (lambda (_%g64376448%_)
                                 ((lambda (_%g64386451%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%g63146327%_
                                                       (foldr (lambda (_%g64656468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64666471%_)
                        (cons _%g64656468%_ _%g64666471%_))
                      _%g64106423%_
                      _%g63416391%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g64386451%_ '())))
                                     (gx#stx-source _%stx5400%_)))
                                  _%g64376448%_))))
                         (_%g64356474%_
                          (_%make-body6019%_
                           _%kwargs6015%_
                           (foldr (lambda (_%g64776480%_ _%g64786483%_)
                                    (cons _%g64776480%_ _%g64786483%_))
                                  '()
                                  _%g63416391%_)))))
                     _%g64096420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g64076486%_
                                                     _%args6016%_)))
                                                _%kwval63506388%_))))))
                               (_%loop63456369%_ _%target63426363%_ '()))
                             (_%g63396356%_ _%g63406360%_)))))
                   (_%g63396356%_ _%g63406360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63386490%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6015%_)))))
                                           _%g63136324%_))))
                                  (_%g63116494%_
                                   (let ((_%$e6498%_ _%key6013%_))
                                     (if _%$e6498%_
                                         _%$e6498%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6022%_
                              (lambda (_%main6122%_)
                                (let* ((_%g61256133%_
                                        (lambda (_%g61266129%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61266129%_)))
                                       (_%g61246302%_
                                        (lambda (_%g61266137%_)
                                          ((lambda (_%g61276140%_)
                                             (let* ((_%g61526169%_
                                                     (lambda (_%g61536165%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61536165%_)))
                                                    (_%g61516263%_
                                                     (lambda (_%g61536173%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61536173%_)
                                                           (let ((_g21030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61536173%_ '0)))
                     (begin
                       (let ((_g21031_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g21030_)
                                    (##values-length _g21030_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g21031_ 2)))
                             (error "Context expects 2 values" _g21031_)))
                       (let ((_%target61556176%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21030_ 0)))
                             (_%tl61576179%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21030_ 1))))
                         (if (gx#stx-null? _%tl61576179%_)
                             (letrec ((_%loop61586182%_
                                       (lambda (_%hd61566186%_
                                                _%get-kw61626189%_)
                                         (if (gx#stx-pair? _%hd61566186%_)
                                             (let ((_%e61596191%_
                                                    (gx#syntax-e
                                                     _%hd61566186%_)))
                                               (let ((_%lp-hd61606195%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61596191%_)))
                                                     (_%lp-tl61616198%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61596191%_))))
                                                 (_%loop61586182%_
                                                  _%lp-tl61616198%_
                                                  (cons _%lp-hd61606195%_
                                                        _%get-kw61626189%_))))
                                             (let ((_%get-kw61636201%_
                                                    (reverse _%get-kw61626189%_)))
                                               ((lambda (_%g61546204%_)
                                                  (let* ((_%g62216229%_
                                                          (lambda (_%g62226225%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62226225%_)))
                                                         (_%g62206259%_
                                                          (lambda (_%g62226233%_)
                                                            ((lambda (_%g62236236%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%g61276140%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%g62236236%_
                                                      (cons _%g61276140%_
                                                            (foldr (lambda (_%g62506253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62516256%_)
                             (cons _%g62506253%_ _%g62516256%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%g61546204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5400%_)))
                     _%g62226233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62206259%_
                                                     _%main6122%_)))
                                                _%get-kw61636201%_))))))
                               (_%loop61586182%_ _%target61556176%_ '()))
                             (_%g61526169%_ _%g61536173%_)))))
                   (_%g61526169%_ _%g61536173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61516263%_
                                                (map (lambda (_%kwarg6267%_)
                                                       (let* ((_%g62706278%_
                                                               (lambda (_%g62716274%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62716274%_)))
                      (_%g62696298%_
                       (lambda (_%g62716282%_)
                         ((lambda (_%g62726285%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%g61276140%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g62726285%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62716282%_))))
                 (_%g62696298%_ (car _%kwarg6267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6015%_))))
                                           _%g61266137%_))))
                                  (_%g61246302%_
                                   (let ((_%$e6306%_ _%key6013%_))
                                     (if _%$e6306%_
                                         _%$e6306%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60246032%_
                              (lambda (_%g60256028%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60256028%_)))
                             (_%g60236118%_
                              (lambda (_%g60256036%_)
                                ((lambda (_%g60266039%_)
                                   (let* ((_%g60526060%_
                                           (lambda (_%g60536056%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60536056%_)))
                                          (_%g60516114%_
                                           (lambda (_%g60536064%_)
                                             ((lambda (_%g60546067%_)
                                                (let* ((_%g60806088%_
                                                        (lambda (_%g60816084%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60816084%_)))
                                                       (_%g60796110%_
                                                        (lambda (_%g60816092%_)
                                                          ((lambda (_%g60826095%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%g60266039%_ '())
                                             (cons _%g60826095%_ '()))
                                       '())
                                 (cons _%g60546067%_ '()))))
                   _%g60816092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60796110%_
                                                   (_%make-main6021%_))))
                                              _%g60536064%_))))
                                     (_%g60516114%_
                                      (_%make-dispatch6022%_ _%g60266039%_))))
                                 _%g60256036%_))))
                        (_%g60236118%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5415%_
                  (lambda (_%primary5926%_ _%kwargs5928%_ _%strict?5929%_)
                    (let* ((_%g59315950%_
                            (lambda (_%g59325946%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59325946%_)))
                           (_%g59306009%_
                            (lambda (_%g59325954%_)
                              (if (gx#stx-pair? _%g59325954%_)
                                  (let ((_%e59365957%_
                                         (gx#syntax-e _%g59325954%_)))
                                    (let ((_%hd59375961%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59365957%_)))
                                          (_%tl59385964%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59365957%_))))
                                      (if (gx#stx-pair? _%tl59385964%_)
                                          (let ((_%e59395967%_
                                                 (gx#syntax-e _%tl59385964%_)))
                                            (let ((_%hd59405971%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59395967%_)))
                                                  (_%tl59415974%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59395967%_))))
                                              (if (gx#stx-pair? _%tl59415974%_)
                                                  (let ((_%e59425977%_
                                                         (gx#syntax-e
                                                          _%tl59415974%_)))
                                                    (let ((_%hd59435981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59425977%_)))
                                                          (_%tl59445984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59425977%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59445984%_)
                                                          ((lambda (_%g59335987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g59345989%_
                            _%g59355990%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g59335987%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g59355990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g59345989%_ (cons _%g59335987%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59435981%_
                   _%hd59405971%_
                   _%hd59375961%_)
                  (_%g59315950%_ _%g59325954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59315950%_
                                                   _%g59325954%_))))
                                          (_%g59315950%_ _%g59325954%_))))
                                  (_%g59315950%_ _%g59325954%_)))))
                      (_%g59306009%_
                       (list (if _%strict?5929%_
                                 (_%generate-kw-table5416%_
                                  (map car _%kwargs5928%_))
                                 '#f)
                             _%primary5926%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5416%_
                  (lambda (_%kws5900%_)
                    (let _%rehash5903%_ ((_%pht5906%_
                                          (let ((__tmp21036
                                                 (length _%kws5900%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp21036 '#f))))
                      (let _%lp5909%_ ((_%rest5912%_ _%kws5900%_))
                        (if (pair? _%rest5912%_)
                            (let* ((_%key5915%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5912%_)))
                                   (_%rest5918%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5912%_)))
                                   (_%pos5921%_
                                    (let ((__tmp21033
                                           (keyword-hash _%key5915%_))
                                          (__tmp21032
                                           (vector-length _%pht5906%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp21033 __tmp21032))))
                              (if (vector-ref _%pht5906%_ _%pos5921%_)
                                  (if (let ((__tmp21034
                                             (vector-length _%pht5906%_)))
                                        (declare (not safe))
                                        (##fx< __tmp21034 '8192))
                                      (_%rehash5903%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp21035
                                                (vector-length _%pht5906%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp21035))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5900%_))
                                  (begin
                                    (vector-set!
                                     _%pht5906%_
                                     _%pos5921%_
                                     _%key5915%_)
                                    (_%lp5909%_ _%rest5918%_))))
                            _%pht5906%_))))))
          (let* ((_%__stx1943319434%_ _%stx5400%_)
                 (_%g54205451%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1943319434%_))))
            (let ((_%__kont1943619437%_
                   (lambda (_%g54225881%_ _%g54235883%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g54235883%_ _%g54225881%_))))
                  (_%__kont1943819439%_
                   (lambda (_%g54305655%_ _%g54315657%_)
                     (let ((_g21037_ (_%opt-lambda-split5406%_ _%g54315657%_)))
                       (begin
                         (let ((_g21038_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g21037_)
                                      (##values-length _g21037_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g21038_ 3)))
                               (error "Context expects 3 values" _g21038_)))
                         (let ((_%pre5670%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21037_ 0)))
                               (_%opt5672%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21037_ 1)))
                               (_%tail5673%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21037_ 2))))
                           (let* ((_%g56755683%_
                                   (lambda (_%g56765679%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56765679%_)))
                                  (_%g56745850%_
                                   (lambda (_%g56765687%_)
                                     ((lambda (_%g56775690%_)
                                        (let* ((_%g57035711%_
                                                (lambda (_%g57045707%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g57045707%_)))
                                               (_%g57025846%_
                                                (lambda (_%g57045715%_)
                                                  ((lambda (_%g57055718%_)
                                                     (let* ((_%g57315748%_
                                                             (lambda (_%g57325744%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57325744%_)))
                                                            (_%g57305842%_
                                                             (lambda (_%g57325752%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57325752%_)
                           (let ((_g21039_
                                  (gx#syntax-split-splice _%g57325752%_ '0)))
                             (begin
                               (let ((_g21040_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g21039_)
                                            (##values-length _g21039_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g21040_ 2)))
                                     (error "Context expects 2 values"
                                            _g21040_)))
                               (let ((_%target57345755%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21039_ 0)))
                                     (_%tl57365758%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21039_ 1))))
                                 (if (gx#stx-null? _%tl57365758%_)
                                     (letrec ((_%loop57375761%_
                                               (lambda (_%hd57355765%_
                                                        _%clause57415768%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57355765%_)
                                                     (let ((_%e57385770%_
                                                            (gx#syntax-e
                                                             _%hd57355765%_)))
                                                       (let ((_%lp-hd57395774%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57385770%_)))
                     (_%lp-tl57405777%_
                      (let () (declare (not safe)) (##cdr _%e57385770%_))))
                 (_%loop57375761%_
                  _%lp-tl57405777%_
                  (cons _%lp-hd57395774%_ _%clause57415768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57425780%_
                                                            (reverse _%clause57415768%_)))
                                                       ((lambda (_%g57335783%_)
                                                          (let* ((_%g58005808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g58015804%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g58015804%_)))
                         (_%g57995830%_
                          (lambda (_%g58015812%_)
                            ((lambda (_%g58025815%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%g56775690%_ '())
                                                       (cons _%g57055718%_
                                                             '()))
                                                 '())
                                           (cons _%g58025815%_ '()))))
                             _%g58015812%_))))
                    (_%g57995830%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58335836%_ _%g58345839%_)
                                     (cons _%g58335836%_ _%g58345839%_))
                                   '()
                                   _%g57335783%_))
                      (gx#stx-source _%stx5400%_)))))
                _%clause57425780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57375761%_
                                        _%target57345755%_
                                        '()))
                                     (_%g57315748%_ _%g57325752%_)))))
                           (_%g57315748%_ _%g57325752%_)))))
               (_%g57305842%_
                (_%generate-opt-dispatch5411%_
                 _%g56775690%_
                 _%pre5670%_
                 _%opt5672%_
                 _%tail5673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g57045715%_))))
                                          (_%g57025846%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5410%_
                                             _%pre5670%_
                                             _%opt5672%_
                                             _%tail5673%_
                                             _%g54305655%_)
                                            (gx#stx-source _%stx5400%_)))))
                                      _%g56765687%_))))
                             (_%g56745850%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1944019441%_
                   (lambda (_%g54385478%_ _%g54395480%_)
                     (let* ((_%g54965503%_
                             (lambda (_%g54975499%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54975499%_)))
                            (_%g54955624%_
                             (lambda (_%g54975507%_)
                               ((lambda ()
                                  (let ((_g21041_
                                         (_%kw-lambda-split5408%_
                                          _%g54395480%_)))
                                    (begin
                                      (let ((_g21042_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21041_)
                                                   (##values-length _g21041_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21042_ 3)))
                                            (error "Context expects 3 values"
                                                   _g21042_)))
                                      (let ((_%key5516%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21041_ 0)))
                                            (_%kwargs5518%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21041_ 1)))
                                            (_%args5519%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21041_ 2))))
                                        (let* ((_%g55215529%_
                                                (lambda (_%g55225525%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55225525%_)))
                                               (_%g55205620%_
                                                (lambda (_%g55225533%_)
                                                  ((lambda (_%g55235536%_)
                                                     (let* ((_%g55545562%_
                                                             (lambda (_%g55555558%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55555558%_)))
                                                            (_%g55535616%_
                                                             (lambda (_%g55555566%_)
                                                               ((lambda (_%g55565569%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55825590%_
                                  (lambda (_%g55835586%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55835586%_)))
                                 (_%g55815612%_
                                  (lambda (_%g55835594%_)
                                    ((lambda (_%g55845597%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%g55235536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%g55565569%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g55845597%_ '()))))
                                     _%g55835594%_))))
                            (_%g55815612%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5415%_
                               _%g55235536%_
                               _%kwargs5518%_
                               (not _%key5516%_))
                              (gx#stx-source _%stx5400%_)))))
                        _%g55555566%_))))
               (_%g55535616%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5414%_
                  _%key5516%_
                  _%kwargs5518%_
                  _%args5519%_
                  _%g54385478%_)
                 (gx#stx-source _%stx5400%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55225533%_))))
                                          (_%g55205620%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54955624%_
                        (_%check-duplicate-bindings5409%_ _%g54395480%_))))))
              (let* ((_%__match1947819479%_
                      (lambda (_%e54405458%_
                               _%hd54415462%_
                               _%tl54425465%_
                               _%e54435468%_
                               _%hd54445472%_
                               _%tl54455475%_)
                        (let ((_%g54385478%_ _%tl54455475%_)
                              (_%g54395480%_ _%hd54445472%_))
                          (if (_%kw-lambda?5407%_ _%g54395480%_)
                              (_%__kont1944019441%_
                               _%g54385478%_
                               _%g54395480%_)
                              (let () (declare (not safe)) (_%g54205451%_))))))
                     (_%__match1946619467%_
                      (lambda (_%e54325635%_
                               _%hd54335639%_
                               _%tl54345642%_
                               _%e54355645%_
                               _%hd54365649%_
                               _%tl54375652%_)
                        (let ((_%g54305655%_ _%tl54375652%_)
                              (_%g54315657%_ _%hd54365649%_))
                          (if (_%opt-lambda?5405%_ _%g54315657%_)
                              (_%__kont1943819439%_
                               _%g54305655%_
                               _%g54315657%_)
                              (_%__match1947819479%_
                               _%e54325635%_
                               _%hd54335639%_
                               _%tl54345642%_
                               _%e54355645%_
                               _%hd54365649%_
                               _%tl54375652%_)))))
                     (_%__match1945419455%_
                      (lambda (_%e54245861%_
                               _%hd54255865%_
                               _%tl54265868%_
                               _%e54275871%_
                               _%hd54285875%_
                               _%tl54295878%_)
                        (let ((_%g54225881%_ _%tl54295878%_)
                              (_%g54235883%_ _%hd54285875%_))
                          (if (_%simple-lambda?5403%_ _%g54235883%_)
                              (_%__kont1943619437%_
                               _%g54225881%_
                               _%g54235883%_)
                              (_%__match1946619467%_
                               _%e54245861%_
                               _%hd54255865%_
                               _%tl54265868%_
                               _%e54275871%_
                               _%hd54285875%_
                               _%tl54295878%_))))))
                (if (gx#stx-pair? _%__stx1943319434%_)
                    (let ((_%e54245861%_ (gx#syntax-e _%__stx1943319434%_)))
                      (let ((_%tl54265868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54245861%_)))
                            (_%hd54255865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54245861%_))))
                        (if (gx#stx-pair? _%tl54265868%_)
                            (let ((_%e54275871%_ (gx#syntax-e _%tl54265868%_)))
                              (let ((_%tl54295878%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54275871%_)))
                                    (_%hd54285875%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54275871%_))))
                                (_%__match1945419455%_
                                 _%e54245861%_
                                 _%hd54255865%_
                                 _%tl54265868%_
                                 _%e54275871%_
                                 _%hd54285875%_
                                 _%tl54295878%_)))
                            (let () (declare (not safe)) (_%g54205451%_)))))
                    (let () (declare (not safe)) (_%g54205451%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8803%_)
        (let* ((_%__stx1948119482%_ _%$stx8803%_)
               (_%g88098873%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1948119482%_))))
          (let ((_%__kont1948419485%_
                 (lambda (_%g88119099%_
                          _%g88129101%_
                          _%g88139102%_
                          _%g88149103%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g88149103%_ _%g88139102%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88129101%_
                                                 (foldr (lambda (_%g91259128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91269131%_)
                  (cons _%g91259128%_ _%g91269131%_))
                '()
                _%g88119099%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1948819489%_
                 (lambda (_%g88368993%_ _%g88378995%_ _%g88388996%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88388996%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88378995%_
                                                 (foldr (lambda (_%g90159018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g90169021%_)
                  (cons _%g90159018%_ _%g90169021%_))
                '()
                _%g88368993%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1949219493%_
                 (lambda (_%g88578910%_ _%g88588912%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88588912%_ '())
                               (cons _%g88578910%_ '()))))))
            (let* ((_%__match1957219573%_
                    (lambda (_%e88598880%_
                             _%hd88608884%_
                             _%tl88618887%_
                             _%e88628890%_
                             _%hd88638894%_
                             _%tl88648897%_
                             _%e88658900%_
                             _%hd88668904%_
                             _%tl88678907%_)
                      (let ((_%g88578910%_ _%hd88668904%_)
                            (_%g88588912%_ _%hd88638894%_))
                        (if (gx#identifier? _%g88588912%_)
                            (_%__kont1949219493%_ _%g88578910%_ _%g88588912%_)
                            (let () (declare (not safe)) (_%g88098873%_))))))
                   (_%__match1956419565%_
                    (lambda (_%e88598880%_
                             _%hd88608884%_
                             _%tl88618887%_
                             _%e88628890%_
                             _%hd88638894%_
                             _%tl88648897%_)
                      (if (gx#stx-pair? _%tl88648897%_)
                          (let ((_%e88658900%_ (gx#syntax-e _%tl88648897%_)))
                            (let ((_%tl88678907%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88658900%_)))
                                  (_%hd88668904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88658900%_))))
                              (if (gx#stx-null? _%tl88678907%_)
                                  (_%__match1957219573%_
                                   _%e88598880%_
                                   _%hd88608884%_
                                   _%tl88618887%_
                                   _%e88628890%_
                                   _%hd88638894%_
                                   _%tl88648897%_
                                   _%e88658900%_
                                   _%hd88668904%_
                                   _%tl88678907%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88098873%_)))))
                          (let () (declare (not safe)) (_%g88098873%_)))))
                   (_%__match1955219553%_
                    (lambda (_%e88398935%_
                             _%hd88408939%_
                             _%tl88418942%_
                             _%e88428945%_
                             _%hd88438949%_
                             _%tl88448952%_
                             _%e88458955%_
                             _%hd88468959%_
                             _%tl88478962%_
                             _%__splice1949019491%_
                             _%target88488965%_
                             _%tl88508968%_)
                      (letrec ((_%loop88518971%_
                                (lambda (_%hd88498975%_ _%body88558978%_)
                                  (if (gx#stx-pair? _%hd88498975%_)
                                      (let ((_%e88528980%_
                                             (gx#syntax-e _%hd88498975%_)))
                                        (let ((_%lp-tl88548987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88528980%_)))
                                              (_%lp-hd88538984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88528980%_))))
                                          (_%loop88518971%_
                                           _%lp-tl88548987%_
                                           (cons _%lp-hd88538984%_
                                                 _%body88558978%_))))
                                      (let ((_%body88568990%_
                                             (reverse _%body88558978%_)))
                                        (let ((_%g88368993%_ _%body88568990%_)
                                              (_%g88378995%_ _%tl88478962%_)
                                              (_%g88388996%_ _%hd88468959%_))
                                          (if (gx#identifier? _%g88388996%_)
                                              (_%__kont1948819489%_
                                               _%g88368993%_
                                               _%g88378995%_
                                               _%g88388996%_)
                                              (_%__match1956419565%_
                                               _%e88398935%_
                                               _%hd88408939%_
                                               _%tl88418942%_
                                               _%e88428945%_
                                               _%hd88438949%_
                                               _%tl88448952%_))))))))
                        (_%loop88518971%_ _%target88488965%_ '()))))
                   (_%__match1952619527%_
                    (lambda (_%e88159031%_
                             _%hd88169035%_
                             _%tl88179038%_
                             _%e88189041%_
                             _%hd88199045%_
                             _%tl88209048%_
                             _%e88219051%_
                             _%hd88229055%_
                             _%tl88239058%_
                             _%e88249061%_
                             _%hd88259065%_
                             _%tl88269068%_
                             _%__splice1948619487%_
                             _%target88279071%_
                             _%tl88299074%_)
                      (letrec ((_%loop88309077%_
                                (lambda (_%hd88289081%_ _%body88349084%_)
                                  (if (gx#stx-pair? _%hd88289081%_)
                                      (let ((_%e88319086%_
                                             (gx#syntax-e _%hd88289081%_)))
                                        (let ((_%lp-tl88339093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88319086%_)))
                                              (_%lp-hd88329090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88319086%_))))
                                          (_%loop88309077%_
                                           _%lp-tl88339093%_
                                           (cons _%lp-hd88329090%_
                                                 _%body88349084%_))))
                                      (let ((_%body88359096%_
                                             (reverse _%body88349084%_)))
                                        (_%__kont1948419485%_
                                         _%body88359096%_
                                         _%tl88239058%_
                                         _%tl88269068%_
                                         _%hd88259065%_))))))
                        (_%loop88309077%_ _%target88279071%_ '())))))
              (if (gx#stx-pair? _%__stx1948119482%_)
                  (let ((_%e88159031%_ (gx#syntax-e _%__stx1948119482%_)))
                    (let ((_%tl88179038%_
                           (let () (declare (not safe)) (##cdr _%e88159031%_)))
                          (_%hd88169035%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88159031%_))))
                      (if (gx#stx-pair? _%tl88179038%_)
                          (let ((_%e88189041%_ (gx#syntax-e _%tl88179038%_)))
                            (let ((_%tl88209048%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88189041%_)))
                                  (_%hd88199045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88189041%_))))
                              (if (gx#stx-pair? _%hd88199045%_)
                                  (let ((_%e88219051%_
                                         (gx#syntax-e _%hd88199045%_)))
                                    (let ((_%tl88239058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88219051%_)))
                                          (_%hd88229055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88219051%_))))
                                      (if (gx#stx-pair? _%hd88229055%_)
                                          (let ((_%e88249061%_
                                                 (gx#syntax-e _%hd88229055%_)))
                                            (let ((_%tl88269068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88249061%_)))
                                                  (_%hd88259065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88249061%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88209048%_)
                                                  (let ((_%__splice1948619487%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88209048%_
                                                          '0)))
                                                    (let ((_%tl88299074%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1948619487%_
                                                              '1)))
                                                          (_%target88279071%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1948619487%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88299074%_)
                                                          (_%__match1952619527%_
                                                           _%e88159031%_
                                                           _%hd88169035%_
                                                           _%tl88179038%_
                                                           _%e88189041%_
                                                           _%hd88199045%_
                                                           _%tl88209048%_
                                                           _%e88219051%_
                                                           _%hd88229055%_
                                                           _%tl88239058%_
                                                           _%e88249061%_
                                                           _%hd88259065%_
                                                           _%tl88269068%_
                                                           _%__splice1948619487%_
                                                           _%target88279071%_
                                                           _%tl88299074%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88209048%_)
                                                              (let ((_%e88658900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88209048%_)))
                        (let ((_%tl88678907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88658900%_)))
                              (_%hd88668904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88658900%_))))
                          (if (gx#stx-null? _%tl88678907%_)
                              (_%__match1957219573%_
                               _%e88159031%_
                               _%hd88169035%_
                               _%tl88179038%_
                               _%e88189041%_
                               _%hd88199045%_
                               _%tl88209048%_
                               _%e88658900%_
                               _%hd88668904%_
                               _%tl88678907%_)
                              (let () (declare (not safe)) (_%g88098873%_)))))
                      (let () (declare (not safe)) (_%g88098873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88209048%_)
                                                      (let ((_%e88658900%_
                                                             (gx#syntax-e
                                                              _%tl88209048%_)))
                                                        (let ((_%tl88678907%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88658900%_)))
                      (_%hd88668904%_
                       (let () (declare (not safe)) (##car _%e88658900%_))))
                  (if (gx#stx-null? _%tl88678907%_)
                      (_%__match1957219573%_
                       _%e88159031%_
                       _%hd88169035%_
                       _%tl88179038%_
                       _%e88189041%_
                       _%hd88199045%_
                       _%tl88209048%_
                       _%e88658900%_
                       _%hd88668904%_
                       _%tl88678907%_)
                      (let () (declare (not safe)) (_%g88098873%_)))))
              (let () (declare (not safe)) (_%g88098873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl88209048%_)
                                              (let ((_%__splice1949019491%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl88209048%_
                                                      '0)))
                                                (let ((_%tl88508968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1949019491%_
                                                          '1)))
                                                      (_%target88488965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1949019491%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl88508968%_)
                                                      (_%__match1955219553%_
                                                       _%e88159031%_
                                                       _%hd88169035%_
                                                       _%tl88179038%_
                                                       _%e88189041%_
                                                       _%hd88199045%_
                                                       _%tl88209048%_
                                                       _%e88219051%_
                                                       _%hd88229055%_
                                                       _%tl88239058%_
                                                       _%__splice1949019491%_
                                                       _%target88488965%_
                                                       _%tl88508968%_)
                                                      (if (gx#stx-pair?
                                                           _%tl88209048%_)
                                                          (let ((_%e88658900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88209048%_)))
                    (let ((_%tl88678907%_
                           (let () (declare (not safe)) (##cdr _%e88658900%_)))
                          (_%hd88668904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88658900%_))))
                      (if (gx#stx-null? _%tl88678907%_)
                          (_%__match1957219573%_
                           _%e88159031%_
                           _%hd88169035%_
                           _%tl88179038%_
                           _%e88189041%_
                           _%hd88199045%_
                           _%tl88209048%_
                           _%e88658900%_
                           _%hd88668904%_
                           _%tl88678907%_)
                          (let () (declare (not safe)) (_%g88098873%_)))))
                  (let () (declare (not safe)) (_%g88098873%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _%tl88209048%_)
                                                  (let ((_%e88658900%_
                                                         (gx#syntax-e
                                                          _%tl88209048%_)))
                                                    (let ((_%tl88678907%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e88658900%_)))
                                                          (_%hd88668904%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e88658900%_))))
                                                      (if (gx#stx-null?
                                                           _%tl88678907%_)
                                                          (_%__match1957219573%_
                                                           _%e88159031%_
                                                           _%hd88169035%_
                                                           _%tl88179038%_
                                                           _%e88189041%_
                                                           _%hd88199045%_
                                                           _%tl88209048%_
                                                           _%e88658900%_
                                                           _%hd88668904%_
                                                           _%tl88678907%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88098873%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88098873%_)))))))
                                  (if (gx#stx-pair? _%tl88209048%_)
                                      (let ((_%e88658900%_
                                             (gx#syntax-e _%tl88209048%_)))
                                        (let ((_%tl88678907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88658900%_)))
                                              (_%hd88668904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88658900%_))))
                                          (if (gx#stx-null? _%tl88678907%_)
                                              (_%__match1957219573%_
                                               _%e88159031%_
                                               _%hd88169035%_
                                               _%tl88179038%_
                                               _%e88189041%_
                                               _%hd88199045%_
                                               _%tl88209048%_
                                               _%e88658900%_
                                               _%hd88668904%_
                                               _%tl88678907%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g88098873%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88098873%_))))))
                          (let () (declare (not safe)) (_%g88098873%_)))))
                  (let () (declare (not safe)) (_%g88098873%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9140%_)
        (let* ((_%g91449168%_
                (lambda (_%g91459164%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g91459164%_)))
               (_%g91439251%_
                (lambda (_%g91459172%_)
                  (if (gx#stx-pair? _%g91459172%_)
                      (let ((_%e91489175%_ (gx#syntax-e _%g91459172%_)))
                        (let ((_%hd91499179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e91489175%_)))
                              (_%tl91509182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e91489175%_))))
                          (if (gx#stx-pair? _%tl91509182%_)
                              (let ((_%e91519185%_
                                     (gx#syntax-e _%tl91509182%_)))
                                (let ((_%hd91529189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e91519185%_)))
                                      (_%tl91539192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e91519185%_))))
                                  (if (gx#stx-pair/null? _%tl91539192%_)
                                      (let ((_g21043_
                                             (gx#syntax-split-splice
                                              _%tl91539192%_
                                              '0)))
                                        (begin
                                          (let ((_g21044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21043_)
                                                       (##values-length
                                                        _g21043_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21044_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21044_)))
                                          (let ((_%target91549195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21043_ 0)))
                                                (_%tl91569198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21043_ 1))))
                                            (if (gx#stx-null? _%tl91569198%_)
                                                (letrec ((_%loop91579201%_
                                                          (lambda (_%hd91559205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses91619208%_)
                    (if (gx#stx-pair? _%hd91559205%_)
                        (let ((_%e91589210%_ (gx#syntax-e _%hd91559205%_)))
                          (let ((_%lp-hd91599214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e91589210%_)))
                                (_%lp-tl91609217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e91589210%_))))
                            (_%loop91579201%_
                             _%lp-tl91609217%_
                             (cons _%lp-hd91599214%_ _%clauses91619208%_))))
                        (let ((_%clauses91629220%_
                               (reverse _%clauses91619208%_)))
                          ((lambda (_%g91469223%_ _%g91479225%_)
                             (if (gx#identifier? _%g91479225%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%g91479225%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g92429245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g92439248%_)
                          (cons _%g92429245%_ _%g92439248%_))
                        '()
                        _%g91469223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g91449168%_ _%g91459172%_)))
                           _%clauses91629220%_
                           _%hd91529189%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop91579201%_
                                                   _%target91549195%_
                                                   '()))
                                                (_%g91449168%_
                                                 _%g91459172%_)))))
                                      (_%g91449168%_ _%g91459172%_))))
                              (_%g91449168%_ _%g91459172%_))))
                      (_%g91449168%_ _%g91459172%_)))))
          (_%g91439251%_ _%$stx9140%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9256%_)
        (let* ((_%g92609278%_
                (lambda (_%g92619274%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g92619274%_)))
               (_%g92599333%_
                (lambda (_%g92619282%_)
                  (if (gx#stx-pair? _%g92619282%_)
                      (let ((_%e92649285%_ (gx#syntax-e _%g92619282%_)))
                        (let ((_%hd92659289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e92649285%_)))
                              (_%tl92669292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e92649285%_))))
                          (if (gx#stx-pair? _%tl92669292%_)
                              (let ((_%e92679295%_
                                     (gx#syntax-e _%tl92669292%_)))
                                (let ((_%hd92689299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e92679295%_)))
                                      (_%tl92699302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e92679295%_))))
                                  (if (gx#stx-pair? _%tl92699302%_)
                                      (let ((_%e92709305%_
                                             (gx#syntax-e _%tl92699302%_)))
                                        (let ((_%hd92719309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e92709305%_)))
                                              (_%tl92729312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e92709305%_))))
                                          (if (gx#stx-null? _%tl92729312%_)
                                              ((lambda (_%g92629315%_
                                                        _%g92639317%_)
                                                 (if (gx#identifier-list?
                                                      _%g92639317%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%g92639317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g92629315%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g92609278%_
                                                      _%g92619282%_)))
                                               _%hd92719309%_
                                               _%hd92689299%_)
                                              (_%g92609278%_ _%g92619282%_))))
                                      (_%g92609278%_ _%g92619282%_))))
                              (_%g92609278%_ _%g92619282%_))))
                      (_%g92609278%_ _%g92619282%_)))))
          (_%g92599333%_ _%$stx9256%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9337%_)
        (let* ((_%g93419365%_
                (lambda (_%g93429361%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g93429361%_)))
               (_%g93409448%_
                (lambda (_%g93429369%_)
                  (if (gx#stx-pair? _%g93429369%_)
                      (let ((_%e93459372%_ (gx#syntax-e _%g93429369%_)))
                        (let ((_%hd93469376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e93459372%_)))
                              (_%tl93479379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e93459372%_))))
                          (if (gx#stx-pair? _%tl93479379%_)
                              (let ((_%e93489382%_
                                     (gx#syntax-e _%tl93479379%_)))
                                (let ((_%hd93499386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e93489382%_)))
                                      (_%tl93509389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e93489382%_))))
                                  (if (gx#stx-pair/null? _%tl93509389%_)
                                      (let ((_g21045_
                                             (gx#syntax-split-splice
                                              _%tl93509389%_
                                              '0)))
                                        (begin
                                          (let ((_g21046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21045_)
                                                       (##values-length
                                                        _g21045_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21046_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21046_)))
                                          (let ((_%target93519392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21045_ 0)))
                                                (_%tl93539395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21045_ 1))))
                                            (if (gx#stx-null? _%tl93539395%_)
                                                (letrec ((_%loop93549398%_
                                                          (lambda (_%hd93529402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause93589405%_)
                    (if (gx#stx-pair? _%hd93529402%_)
                        (let ((_%e93559407%_ (gx#syntax-e _%hd93529402%_)))
                          (let ((_%lp-hd93569411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e93559407%_)))
                                (_%lp-tl93579414%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e93559407%_))))
                            (_%loop93549398%_
                             _%lp-tl93579414%_
                             (cons _%lp-hd93569411%_ _%clause93589405%_))))
                        (let ((_%clause93599417%_
                               (reverse _%clause93589405%_)))
                          ((lambda (_%g93439420%_ _%g93449422%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%g93449422%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g94399442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g94409445%_)
                            (cons _%g94399442%_ _%g94409445%_))
                          '()
                          _%g93439420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause93599417%_
                           _%hd93499386%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop93549398%_
                                                   _%target93519392%_
                                                   '()))
                                                (_%g93419365%_
                                                 _%g93429369%_)))))
                                      (_%g93419365%_ _%g93429369%_))))
                              (_%g93419365%_ _%g93429369%_))))
                      (_%g93419365%_ _%g93429369%_)))))
          (_%g93409448%_ _%$stx9337%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9453%_)
        (letrec ((_%parse-clauses9456%_
                  (lambda (_%e11913%_ _%clauses11915%_)
                    (let _%lp11917%_ ((_%rest11920%_ _%clauses11915%_)
                                      (_%datums11922%_ '())
                                      (_%dispatch11923%_ '())
                                      (_%default11924%_ '#f))
                      (let* ((_%__stx1967119672%_ _%rest11920%_)
                             (_%g1192711939%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1967119672%_))))
                        (let ((_%__kont1967419675%_
                               (lambda (_%g1192911971%_ _%g1193011973%_)
                                 (let* ((_%__stx1957519576%_ _%g1193011973%_)
                                        (_%g1199112064%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1957519576%_))))
                                   (let ((_%__kont1957819579%_
                                          (lambda (_%g1199312421%_)
                                            (if (gx#stx-null? _%g1192911971%_)
                                                (let* ((_%g1243612444%_
                                                        (lambda (_%g1243712440%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1243712440%_)))
                                                       (_%g1243512463%_
                                                        (lambda (_%g1243712448%_)
                                                          ((lambda (_%g1243812451%_)
                                                             (_%lp11917%_
                                                              '()
                                                              _%datums11922%_
                                                              _%dispatch11923%_
                                                              (cons _%g1199312421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1243812451%_ '()))))
                   _%g1243712448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1243512463%_ _%e11913%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9453%_
                                                 _%g1193011973%_))))
                                         (_%__kont1958019581%_
                                          (lambda (_%g1200312361%_)
                                            (if (gx#stx-null? _%g1192911971%_)
                                                (_%lp11917%_
                                                 '()
                                                 _%datums11922%_
                                                 _%dispatch11923%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1237512378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1237612381%_)
                        (cons _%g1237512378%_ _%g1237612381%_))
                      '()
                      _%g1200312361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9453%_
                                                 _%g1193011973%_))))
                                         (_%__kont1958419585%_
                                          (lambda (_%g1201612248%_
                                                   _%g1201712250%_)
                                            (if (null? (foldr (lambda (_%g1226812271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1226912274%_)
                        (cons _%g1226812271%_ _%g1226912274%_))
                      '()
                      _%g1201712250%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11917%_
                                                 _%g1192911971%_
                                                 _%datums11922%_
                                                 _%dispatch11923%_
                                                 _%default11924%_)
                                                (let* ((_%g1227712285%_
                                                        (lambda (_%g1227812281%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1227812281%_)))
                                                       (_%g1227612312%_
                                                        (lambda (_%g1227812289%_)
                                                          ((lambda (_%g1227912292%_)
                                                             (_%lp11917%_
                                                              _%g1192911971%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1230312306%_
                                                 _%g1230412309%_)
                                          (cons _%g1230312306%_
                                                _%g1230412309%_))
                                        '()
                                        _%g1201712250%_))
                            _%datums11922%_)
                      (cons (cons _%g1201612248%_ (cons _%g1227912292%_ '()))
                            _%dispatch11923%_)
                      _%default11924%_))
                   _%g1227812289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1227612312%_
                                                   _%e11913%_)))))
                                         (_%__kont1958819589%_
                                          (lambda (_%g1203612137%_
                                                   _%g1203712139%_)
                                            (if (null? (foldr (lambda (_%g1215812161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1215912164%_)
                        (cons _%g1215812161%_ _%g1215912164%_))
                      '()
                      _%g1203712139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp11917%_
                                                 _%g1192911971%_
                                                 _%datums11922%_
                                                 _%dispatch11923%_
                                                 _%default11924%_)
                                                (_%lp11917%_
                                                 _%g1192911971%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1216612169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1216712172%_)
                             (cons _%g1216612169%_ _%g1216712172%_))
                           '()
                           _%g1203712139%_))
               _%datums11922%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1217412177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1217512180%_)
                              (cons _%g1217412177%_ _%g1217512180%_))
                            '()
                            _%g1203612137%_))
               _%dispatch11923%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default11924%_)))))
                                     (let* ((_%__match1966819669%_
                                             (lambda (_%e1203812071%_
                                                      _%hd1203912075%_
                                                      _%tl1204012078%_
                                                      _%__splice1959019591%_
                                                      _%target1204112081%_
                                                      _%tl1204312084%_)
                                               (letrec ((_%loop1204412087%_
                                                         (lambda (_%hd1204212091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1204812094%_)
                   (if (gx#stx-pair? _%hd1204212091%_)
                       (let ((_%e1204512096%_ (gx#syntax-e _%hd1204212091%_)))
                         (let ((_%lp-tl1204712103%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1204512096%_)))
                               (_%lp-hd1204612100%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1204512096%_))))
                           (_%loop1204412087%_
                            _%lp-tl1204712103%_
                            (cons _%lp-hd1204612100%_ _%datum1204812094%_))))
                       (let ((_%datum1204912106%_
                              (reverse _%datum1204812094%_)))
                         (if (gx#stx-pair/null? _%tl1204012078%_)
                             (let ((_%__splice1959219593%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1204012078%_
                                     '0)))
                               (let ((_%tl1205212112%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1959219593%_
                                         '1)))
                                     (_%target1205012109%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1959219593%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1205212112%_)
                                     (letrec ((_%loop1205312115%_
                                               (lambda (_%hd1205112119%_
                                                        _%body1205712122%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1205112119%_)
                                                     (let ((_%e1205412124%_
                                                            (gx#syntax-e
                                                             _%hd1205112119%_)))
                                                       (let ((_%lp-tl1205612131%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1205412124%_)))
                     (_%lp-hd1205512128%_
                      (let () (declare (not safe)) (##car _%e1205412124%_))))
                 (_%loop1205312115%_
                  _%lp-tl1205612131%_
                  (cons _%lp-hd1205512128%_ _%body1205712122%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1205812134%_
                                                            (reverse _%body1205712122%_)))
                                                       (_%__kont1958819589%_
                                                        _%body1205812134%_
                                                        _%datum1204912106%_))))))
                                       (_%loop1205312115%_
                                        _%target1205012109%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1199112064%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1199112064%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1204412087%_
                                                  _%target1204112081%_
                                                  '()))))
                                            (_%__match1965419655%_
                                             (lambda (_%e1201812190%_
                                                      _%hd1201912194%_
                                                      _%tl1202012197%_
                                                      _%__splice1958619587%_
                                                      _%target1202112200%_
                                                      _%tl1202312203%_)
                                               (letrec ((_%loop1202412206%_
                                                         (lambda (_%hd1202212210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1202812213%_)
                   (if (gx#stx-pair? _%hd1202212210%_)
                       (let ((_%e1202512215%_ (gx#syntax-e _%hd1202212210%_)))
                         (let ((_%lp-tl1202712222%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1202512215%_)))
                               (_%lp-hd1202612219%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1202512215%_))))
                           (_%loop1202412206%_
                            _%lp-tl1202712222%_
                            (cons _%lp-hd1202612219%_ _%datum1202812213%_))))
                       (let ((_%datum1202912225%_
                              (reverse _%datum1202812213%_)))
                         (if (gx#stx-pair? _%tl1202012197%_)
                             (let ((_%e1203012228%_
                                    (gx#syntax-e _%tl1202012197%_)))
                               (let ((_%tl1203212235%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1203012228%_)))
                                     (_%hd1203112232%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1203012228%_))))
                                 (if (gx#identifier? _%hd1203112232%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21047_|
                                          _%hd1203112232%_)
                                         (if (gx#stx-pair? _%tl1203212235%_)
                                             (let ((_%e1203312238%_
                                                    (gx#syntax-e
                                                     _%tl1203212235%_)))
                                               (let ((_%tl1203512245%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1203312238%_)))
                                                     (_%hd1203412242%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1203312238%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1203512245%_)
                                                     (_%__kont1958419585%_
                                                      _%hd1203412242%_
                                                      _%datum1202912225%_)
                                                     (_%__match1966819669%_
                                                      _%e1201812190%_
                                                      _%hd1201912194%_
                                                      _%tl1202012197%_
                                                      _%__splice1958619587%_
                                                      _%target1202112200%_
                                                      _%tl1202312203%_))))
                                             (_%__match1966819669%_
                                              _%e1201812190%_
                                              _%hd1201912194%_
                                              _%tl1202012197%_
                                              _%__splice1958619587%_
                                              _%target1202112200%_
                                              _%tl1202312203%_))
                                         (_%__match1966819669%_
                                          _%e1201812190%_
                                          _%hd1201912194%_
                                          _%tl1202012197%_
                                          _%__splice1958619587%_
                                          _%target1202112200%_
                                          _%tl1202312203%_))
                                     (_%__match1966819669%_
                                      _%e1201812190%_
                                      _%hd1201912194%_
                                      _%tl1202012197%_
                                      _%__splice1958619587%_
                                      _%target1202112200%_
                                      _%tl1202312203%_))))
                             (_%__match1966819669%_
                              _%e1201812190%_
                              _%hd1201912194%_
                              _%tl1202012197%_
                              _%__splice1958619587%_
                              _%target1202112200%_
                              _%tl1202312203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1202412206%_
                                                  _%target1202112200%_
                                                  '()))))
                                            (_%__match1964019641%_
                                             (lambda (_%e1200412323%_
                                                      _%hd1200512327%_
                                                      _%tl1200612330%_
                                                      _%__splice1958219583%_
                                                      _%target1200712333%_
                                                      _%tl1200912336%_)
                                               (letrec ((_%loop1201012339%_
                                                         (lambda (_%hd1200812343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1201412346%_)
                   (if (gx#stx-pair? _%hd1200812343%_)
                       (let ((_%e1201112348%_ (gx#syntax-e _%hd1200812343%_)))
                         (let ((_%lp-tl1201312355%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1201112348%_)))
                               (_%lp-hd1201212352%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1201112348%_))))
                           (_%loop1201012339%_
                            _%lp-tl1201312355%_
                            (cons _%lp-hd1201212352%_ _%body1201412346%_))))
                       (let ((_%body1201512358%_ (reverse _%body1201412346%_)))
                         (_%__kont1958019581%_ _%body1201512358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1201012339%_
                                                  _%target1200712333%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1957519576%_)
                                           (let ((_%e1199412391%_
                                                  (gx#syntax-e
                                                   _%__stx1957519576%_)))
                                             (let ((_%tl1199612398%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1199412391%_)))
                                                   (_%hd1199512395%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1199412391%_))))
                                               (if (gx#identifier?
                                                    _%hd1199512395%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21048_|
                                                        _%hd1199512395%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1199612398%_)
                                                           (let ((_%e1199712401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1199612398%_)))
                     (let ((_%tl1199912408%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1199712401%_)))
                           (_%hd1199812405%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1199712401%_))))
                       (if (gx#identifier? _%hd1199812405%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21049_|
                                _%hd1199812405%_)
                               (if (gx#stx-pair? _%tl1199912408%_)
                                   (let ((_%e1200012411%_
                                          (gx#syntax-e _%tl1199912408%_)))
                                     (let ((_%tl1200212418%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1200012411%_)))
                                           (_%hd1200112415%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1200012411%_))))
                                       (if (gx#stx-null? _%tl1200212418%_)
                                           (_%__kont1957819579%_
                                            _%hd1200112415%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1199612398%_)
                                               (let ((_%__splice1958219583%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1199612398%_
                                                       '0)))
                                                 (let ((_%tl1200912336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1958219583%_
                                                           '1)))
                                                       (_%target1200712333%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1958219583%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1200912336%_)
                                                       (_%__match1964019641%_
                                                        _%e1199412391%_
                                                        _%hd1199512395%_
                                                        _%tl1199612398%_
                                                        _%__splice1958219583%_
                                                        _%target1200712333%_
                                                        _%tl1200912336%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1199512395%_)
                                                           (let ((_%__splice1958619587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1199512395%_
                           '0)))
                     (let ((_%tl1202312203%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1958619587%_ '1)))
                           (_%target1202112200%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1958619587%_ '0))))
                       (if (gx#stx-null? _%tl1202312203%_)
                           (_%__match1965419655%_
                            _%e1199412391%_
                            _%hd1199512395%_
                            _%tl1199612398%_
                            _%__splice1958619587%_
                            _%target1202112200%_
                            _%tl1202312203%_)
                           (let () (declare (not safe)) (_%g1199112064%_)))))
                   (let () (declare (not safe)) (_%g1199112064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1199512395%_)
                                                   (let ((_%__splice1958619587%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1199512395%_
                                                           '0)))
                                                     (let ((_%tl1202312203%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1958619587%_
                                                               '1)))
                                                           (_%target1202112200%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1958619587%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1202312203%_)
                                                           (_%__match1965419655%_
                                                            _%e1199412391%_
                                                            _%hd1199512395%_
                                                            _%tl1199612398%_
                                                            _%__splice1958619587%_
                                                            _%target1202112200%_
                                                            _%tl1202312203%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1199112064%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1199112064%_)))))))
                                   (if (gx#stx-pair/null? _%tl1199612398%_)
                                       (let ((_%__splice1958219583%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1199612398%_
                                               '0)))
                                         (let ((_%tl1200912336%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1958219583%_
                                                   '1)))
                                               (_%target1200712333%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1958219583%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1200912336%_)
                                               (_%__match1964019641%_
                                                _%e1199412391%_
                                                _%hd1199512395%_
                                                _%tl1199612398%_
                                                _%__splice1958219583%_
                                                _%target1200712333%_
                                                _%tl1200912336%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1199512395%_)
                                                   (let ((_%__splice1958619587%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1199512395%_
                                                           '0)))
                                                     (let ((_%tl1202312203%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1958619587%_
                                                               '1)))
                                                           (_%target1202112200%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1958619587%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1202312203%_)
                                                           (_%__match1965419655%_
                                                            _%e1199412391%_
                                                            _%hd1199512395%_
                                                            _%tl1199612398%_
                                                            _%__splice1958619587%_
                                                            _%target1202112200%_
                                                            _%tl1202312203%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1199112064%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1199112064%_))))))
                                       (if (gx#stx-pair/null? _%hd1199512395%_)
                                           (let ((_%__splice1958619587%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1199512395%_
                                                   '0)))
                                             (let ((_%tl1202312203%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1958619587%_
                                                       '1)))
                                                   (_%target1202112200%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1958619587%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1202312203%_)
                                                   (_%__match1965419655%_
                                                    _%e1199412391%_
                                                    _%hd1199512395%_
                                                    _%tl1199612398%_
                                                    _%__splice1958619587%_
                                                    _%target1202112200%_
                                                    _%tl1202312203%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1199112064%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1199112064%_)))))
                               (if (gx#stx-pair/null? _%tl1199612398%_)
                                   (let ((_%__splice1958219583%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1199612398%_
                                           '0)))
                                     (let ((_%tl1200912336%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958219583%_
                                               '1)))
                                           (_%target1200712333%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958219583%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1200912336%_)
                                           (_%__match1964019641%_
                                            _%e1199412391%_
                                            _%hd1199512395%_
                                            _%tl1199612398%_
                                            _%__splice1958219583%_
                                            _%target1200712333%_
                                            _%tl1200912336%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1199512395%_)
                                               (let ((_%__splice1958619587%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1199512395%_
                                                       '0)))
                                                 (let ((_%tl1202312203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1958619587%_
                                                           '1)))
                                                       (_%target1202112200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1958619587%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1202312203%_)
                                                       (_%__match1965419655%_
                                                        _%e1199412391%_
                                                        _%hd1199512395%_
                                                        _%tl1199612398%_
                                                        _%__splice1958619587%_
                                                        _%target1202112200%_
                                                        _%tl1202312203%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1199112064%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1199112064%_))))))
                                   (if (gx#stx-pair/null? _%hd1199512395%_)
                                       (let ((_%__splice1958619587%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1199512395%_
                                               '0)))
                                         (let ((_%tl1202312203%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1958619587%_
                                                   '1)))
                                               (_%target1202112200%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1958619587%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1202312203%_)
                                               (_%__match1965419655%_
                                                _%e1199412391%_
                                                _%hd1199512395%_
                                                _%tl1199612398%_
                                                _%__splice1958619587%_
                                                _%target1202112200%_
                                                _%tl1202312203%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1199112064%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1199112064%_)))))
                           (if (gx#stx-pair/null? _%tl1199612398%_)
                               (let ((_%__splice1958219583%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1199612398%_
                                       '0)))
                                 (let ((_%tl1200912336%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1958219583%_
                                           '1)))
                                       (_%target1200712333%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1958219583%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1200912336%_)
                                       (_%__match1964019641%_
                                        _%e1199412391%_
                                        _%hd1199512395%_
                                        _%tl1199612398%_
                                        _%__splice1958219583%_
                                        _%target1200712333%_
                                        _%tl1200912336%_)
                                       (if (gx#stx-pair/null? _%hd1199512395%_)
                                           (let ((_%__splice1958619587%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1199512395%_
                                                   '0)))
                                             (let ((_%tl1202312203%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1958619587%_
                                                       '1)))
                                                   (_%target1202112200%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1958619587%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1202312203%_)
                                                   (_%__match1965419655%_
                                                    _%e1199412391%_
                                                    _%hd1199512395%_
                                                    _%tl1199612398%_
                                                    _%__splice1958619587%_
                                                    _%target1202112200%_
                                                    _%tl1202312203%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1199112064%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1199112064%_))))))
                               (if (gx#stx-pair/null? _%hd1199512395%_)
                                   (let ((_%__splice1958619587%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1199512395%_
                                           '0)))
                                     (let ((_%tl1202312203%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958619587%_
                                               '1)))
                                           (_%target1202112200%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958619587%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1202312203%_)
                                           (_%__match1965419655%_
                                            _%e1199412391%_
                                            _%hd1199512395%_
                                            _%tl1199612398%_
                                            _%__splice1958619587%_
                                            _%target1202112200%_
                                            _%tl1202312203%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1199112064%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1199112064%_)))))))
                   (if (gx#stx-pair/null? _%tl1199612398%_)
                       (let ((_%__splice1958219583%_
                              (gx#syntax-split-splice->vector
                               _%tl1199612398%_
                               '0)))
                         (let ((_%tl1200912336%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1958219583%_ '1)))
                               (_%target1200712333%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1958219583%_ '0))))
                           (if (gx#stx-null? _%tl1200912336%_)
                               (_%__match1964019641%_
                                _%e1199412391%_
                                _%hd1199512395%_
                                _%tl1199612398%_
                                _%__splice1958219583%_
                                _%target1200712333%_
                                _%tl1200912336%_)
                               (if (gx#stx-pair/null? _%hd1199512395%_)
                                   (let ((_%__splice1958619587%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1199512395%_
                                           '0)))
                                     (let ((_%tl1202312203%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958619587%_
                                               '1)))
                                           (_%target1202112200%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1958619587%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1202312203%_)
                                           (_%__match1965419655%_
                                            _%e1199412391%_
                                            _%hd1199512395%_
                                            _%tl1199612398%_
                                            _%__splice1958619587%_
                                            _%target1202112200%_
                                            _%tl1202312203%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1199112064%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1199112064%_))))))
                       (if (gx#stx-pair/null? _%hd1199512395%_)
                           (let ((_%__splice1958619587%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1199512395%_
                                   '0)))
                             (let ((_%tl1202312203%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1958619587%_
                                       '1)))
                                   (_%target1202112200%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1958619587%_
                                       '0))))
                               (if (gx#stx-null? _%tl1202312203%_)
                                   (_%__match1965419655%_
                                    _%e1199412391%_
                                    _%hd1199512395%_
                                    _%tl1199612398%_
                                    _%__splice1958619587%_
                                    _%target1202112200%_
                                    _%tl1202312203%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1199112064%_)))))
                           (let () (declare (not safe)) (_%g1199112064%_)))))
               (if (gx#stx-pair/null? _%hd1199512395%_)
                   (let ((_%__splice1958619587%_
                          (gx#syntax-split-splice->vector
                           _%hd1199512395%_
                           '0)))
                     (let ((_%tl1202312203%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1958619587%_ '1)))
                           (_%target1202112200%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1958619587%_ '0))))
                       (if (gx#stx-null? _%tl1202312203%_)
                           (_%__match1965419655%_
                            _%e1199412391%_
                            _%hd1199512395%_
                            _%tl1199612398%_
                            _%__splice1958619587%_
                            _%target1202112200%_
                            _%tl1202312203%_)
                           (let () (declare (not safe)) (_%g1199112064%_)))))
                   (let () (declare (not safe)) (_%g1199112064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1199512395%_)
                                                       (let ((_%__splice1958619587%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1199512395%_
                                                               '0)))
                                                         (let ((_%tl1202312203%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1958619587%_ '1)))
                       (_%target1202112200%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1958619587%_ '0))))
                   (if (gx#stx-null? _%tl1202312203%_)
                       (_%__match1965419655%_
                        _%e1199412391%_
                        _%hd1199512395%_
                        _%tl1199612398%_
                        _%__splice1958619587%_
                        _%target1202112200%_
                        _%tl1202312203%_)
                       (let () (declare (not safe)) (_%g1199112064%_)))))
               (let () (declare (not safe)) (_%g1199112064%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1199112064%_))))))))
                              (_%__kont1967619677%_
                               (lambda ()
                                 (_%check-duplicate-datums9458%_
                                  _%datums11922%_)
                                 (values (reverse _%datums11922%_)
                                         (reverse _%dispatch11923%_)
                                         (let ((_%$e11950%_ _%default11924%_))
                                           (if _%$e11950%_
                                               _%$e11950%_
                                               '#!void))))))
                          (let ((_%g1192611954%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1967119672%_)
                                       (_%__kont1967619677%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1192711939%_))))))
                            (if (gx#stx-pair? _%__stx1967119672%_)
                                (let ((_%e1193111961%_
                                       (gx#syntax-e _%__stx1967119672%_)))
                                  (let ((_%tl1193311968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1193111961%_)))
                                        (_%hd1193211965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1193111961%_))))
                                    (_%__kont1967419675%_
                                     _%tl1193311968%_
                                     _%hd1193211965%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1192611954%_)))))))))
                 (_%check-duplicate-datums9458%_
                  (lambda (_%datums11901%_)
                    (let ((_%ht11904%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst11907%_)
                         (for-each
                          (lambda (_%datum11910%_)
                            (if (hash-get _%ht11904%_ _%datum11910%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9453%_
                                 _%datum11910%_)
                                (hash-put! _%ht11904%_ _%datum11910%_ '#t)))
                          _%lst11907%_))
                       _%datums11901%_))))
                 (_%count-datums9459%_
                  (lambda (_%datums11894%_)
                    (foldl (lambda (_%lst11897%_ _%r11899%_)
                             (+ (length _%lst11897%_) _%r11899%_))
                           '0
                           _%datums11894%_)))
                 (_%symbolic-datums?9460%_
                  (lambda (_%datums11888%_)
                    (andmap (lambda (_%lst11891%_)
                              (andmap symbol? _%lst11891%_))
                            _%datums11888%_)))
                 (_%char-datums?9461%_
                  (lambda (_%datums11882%_)
                    (andmap (lambda (_%lst11885%_) (andmap char? _%lst11885%_))
                            _%datums11882%_)))
                 (_%fixnum-datums?9462%_
                  (lambda (_%datums11876%_)
                    (andmap (lambda (_%lst11879%_)
                              (andmap fixnum? _%lst11879%_))
                            _%datums11876%_)))
                 (_%eq-datums?9463%_
                  (lambda (_%datums11859%_)
                    (andmap (lambda (_%lst11862%_)
                              (andmap (lambda (_%x11865%_)
                                        (let ((_%$e11868%_
                                               (symbol? _%x11865%_)))
                                          (if _%$e11868%_
                                              _%$e11868%_
                                              (let ((_%$e11872%_
                                                     (keyword? _%x11865%_)))
                                                (if _%$e11872%_
                                                    _%$e11872%_
                                                    (immediate?
                                                     _%x11865%_))))))
                                      _%lst11862%_))
                            _%datums11859%_)))
                 (_%generate-simple-case9464%_
                  (lambda (_%e11625%_
                           _%datums11627%_
                           _%dispatch11628%_
                           _%default11629%_)
                    (let* ((_%g1163111639%_
                            (lambda (_%g1163211635%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1163211635%_)))
                           (_%g1163011855%_
                            (lambda (_%g1163211643%_)
                              ((lambda (_%g1163311646%_)
                                 (let _%recur11658%_ ((_%datums11661%_
                                                       _%datums11627%_)
                                                      (_%dispatch11663%_
                                                       _%dispatch11628%_))
                                   (let* ((_%__stx1968919690%_ _%datums11661%_)
                                          (_%g1166611687%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1968919690%_))))
                                     (let ((_%__kont1969219693%_
                                            (lambda (_%g1166811743%_
                                                     _%g1166911745%_)
                                              (let* ((_%g1176511777%_
                                                      (lambda (_%g1176611773%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1176611773%_)))
                                                     (_%g1176411847%_
                                                      (lambda (_%g1176611781%_)
                                                        (if (gx#stx-pair?
                                                             _%g1176611781%_)
                                                            (let ((_%e1176911784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1176611781%_)))
                      (let ((_%hd1177011788%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1176911784%_)))
                            (_%tl1177111791%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1176911784%_))))
                        ((lambda (_%g1176711794%_ _%g1176811796%_)
                           (let* ((_%g1180811816%_
                                   (lambda (_%g1180911812%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1180911812%_)))
                                  (_%g1180711843%_
                                   (lambda (_%g1180911820%_)
                                     ((lambda (_%g1181011823%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1183411837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1183511840%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1183411837%_
                                             (cons _%g1163311646%_ '())))
                                 _%g1183511840%_))
                         '()
                         _%g1166911745%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g1176811796%_
                                                          (cons _%g1181011823%_
                                                                '())))))
                                      _%g1180911820%_))))
                             (_%g1180711843%_
                              (_%recur11658%_
                               _%g1166811743%_
                               _%g1176711794%_))))
                         _%tl1177111791%_
                         _%hd1177011788%_)))
                    (_%g1176511777%_ _%g1176611781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1176411847%_
                                                 _%dispatch11663%_))))
                                           (_%__kont1969619697%_
                                            (lambda () _%default11629%_)))
                                       (let ((_%__match1971219713%_
                                              (lambda (_%e1167011705%_
                                                       _%hd1167111709%_
                                                       _%tl1167211712%_
                                                       _%__splice1969419695%_
                                                       _%target1167311715%_
                                                       _%tl1167511718%_)
                                                (letrec ((_%loop1167611721%_
                                                          (lambda (_%hd1167411725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1168011728%_)
                    (if (gx#stx-pair? _%hd1167411725%_)
                        (let ((_%e1167711730%_ (gx#syntax-e _%hd1167411725%_)))
                          (let ((_%lp-tl1167911737%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1167711730%_)))
                                (_%lp-hd1167811734%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1167711730%_))))
                            (_%loop1167611721%_
                             _%lp-tl1167911737%_
                             (cons _%lp-hd1167811734%_ _%datum1168011728%_))))
                        (let ((_%datum1168111740%_
                               (reverse _%datum1168011728%_)))
                          (_%__kont1969219693%_
                           _%tl1167211712%_
                           _%datum1168111740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1167611721%_
                                                   _%target1167311715%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1968919690%_)
                                             (let ((_%e1167011705%_
                                                    (gx#syntax-e
                                                     _%__stx1968919690%_)))
                                               (let ((_%tl1167211712%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1167011705%_)))
                                                     (_%hd1167111709%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1167011705%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1167111709%_)
                                                     (let ((_%__splice1969419695%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1167111709%_
                                                             '0)))
                                                       (let ((_%tl1167511718%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1969419695%_ '1)))
                     (_%target1167311715%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1969419695%_ '0))))
                 (if (gx#stx-null? _%tl1167511718%_)
                     (_%__match1971219713%_
                      _%e1167011705%_
                      _%hd1167111709%_
                      _%tl1167211712%_
                      _%__splice1969419695%_
                      _%target1167311715%_
                      _%tl1167511718%_)
                     (_%__kont1969619697%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1969619697%_))))
                                             (_%__kont1969619697%_)))))))
                               _%g1163211643%_))))
                      (_%g1163011855%_ _%e11625%_))))
                 (_%datum-dispatch-index9465%_
                  (lambda (_%datums11499%_)
                    (let _%lp11502%_ ((_%rest11505%_ _%datums11499%_)
                                      (_%ix11507%_ '0)
                                      (_%r11508%_ '()))
                      (let* ((_%__stx1971519716%_ _%rest11505%_)
                             (_%g1151111532%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1971519716%_))))
                        (let ((_%__kont1971819719%_
                               (lambda (_%g1151311588%_ _%g1151411590%_)
                                 (_%lp11502%_
                                  _%g1151311588%_
                                  (fx1+ _%ix11507%_)
                                  (foldl (lambda (_%x11609%_ _%r11611%_)
                                           (cons (cons _%x11609%_ _%ix11507%_)
                                                 _%r11611%_))
                                         _%r11508%_
                                         (foldr (lambda (_%g1161211615%_
                                                         _%g1161311618%_)
                                                  (cons _%g1161211615%_
                                                        _%g1161311618%_))
                                                '()
                                                _%g1151411590%_)))))
                              (_%__kont1972219723%_ (lambda () _%r11508%_)))
                          (let ((_%__match1973819739%_
                                 (lambda (_%e1151511550%_
                                          _%hd1151611554%_
                                          _%tl1151711557%_
                                          _%__splice1972019721%_
                                          _%target1151811560%_
                                          _%tl1152011563%_)
                                   (letrec ((_%loop1152111566%_
                                             (lambda (_%hd1151911570%_
                                                      _%datum1152511573%_)
                                               (if (gx#stx-pair?
                                                    _%hd1151911570%_)
                                                   (let ((_%e1152211575%_
                                                          (gx#syntax-e
                                                           _%hd1151911570%_)))
                                                     (let ((_%lp-tl1152411582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1152211575%_)))
                                                           (_%lp-hd1152311579%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1152211575%_))))
                                                       (_%loop1152111566%_
                                                        _%lp-tl1152411582%_
                                                        (cons _%lp-hd1152311579%_
                                                              _%datum1152511573%_))))
                                                   (let ((_%datum1152611585%_
                                                          (reverse _%datum1152511573%_)))
                                                     (_%__kont1971819719%_
                                                      _%tl1151711557%_
                                                      _%datum1152611585%_))))))
                                     (_%loop1152111566%_
                                      _%target1151811560%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1971519716%_)
                                (let ((_%e1151511550%_
                                       (gx#syntax-e _%__stx1971519716%_)))
                                  (let ((_%tl1151711557%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1151511550%_)))
                                        (_%hd1151611554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1151511550%_))))
                                    (if (gx#stx-pair/null? _%hd1151611554%_)
                                        (let ((_%__splice1972019721%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1151611554%_
                                                '0)))
                                          (let ((_%tl1152011563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1972019721%_
                                                    '1)))
                                                (_%target1151811560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1972019721%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1152011563%_)
                                                (_%__match1973819739%_
                                                 _%e1151511550%_
                                                 _%hd1151611554%_
                                                 _%tl1151711557%_
                                                 _%__splice1972019721%_
                                                 _%target1151811560%_
                                                 _%tl1152011563%_)
                                                (_%__kont1972219723%_))))
                                        (_%__kont1972219723%_))))
                                (_%__kont1972219723%_))))))))
                 (_%duplicate-indexes?9466%_
                  (lambda (_%xs11480%_)
                    (let ((_%ht11483%_ (make-hash-table-eq)))
                      (let _%lp11486%_ ((_%rest11489%_ _%xs11480%_))
                        (if (pair? _%rest11489%_)
                            (let* ((_%ix11492%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11489%_)))
                                   (_%$e11495%_
                                    (hash-get _%ht11483%_ _%ix11492%_)))
                              (if _%$e11495%_
                                  _%$e11495%_
                                  (begin
                                    (hash-put! _%ht11483%_ _%ix11492%_ '#t)
                                    (_%lp11486%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11489%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9467%_
                  (lambda (_%indexes11449%_ _%hash-e11451%_)
                    (let _%lp11453%_ ((_%len11456%_
                                       (* '2 (length _%indexes11449%_))))
                      (let* ((_%hs11462%_
                              (map (lambda (_%x11459%_)
                                     (_%hash-e11451%_ (car _%x11459%_)))
                                   _%indexes11449%_))
                             (_%xs11468%_
                              (map (lambda (_%h11465%_)
                                     (fxmodulo _%h11465%_ _%len11456%_))
                                   _%hs11462%_)))
                        (if (_%duplicate-indexes?9466%_ _%xs11468%_)
                            (if (< _%len11456%_ '131072)
                                (_%lp11453%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11456%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9453%_
                                 _%indexes11449%_))
                            (let ((_%tab11473%_
                                   (make-vector _%len11456%_ '#f)))
                              (for-each
                               (lambda (_%entry11476%_ _%x11478%_)
                                 (vector-set!
                                  _%tab11473%_
                                  _%x11478%_
                                  _%entry11476%_))
                               _%indexes11449%_
                               _%xs11468%_)
                              _%tab11473%_))))))
                 (_%generate-symbolic-dispatch9468%_
                  (lambda (_%e11054%_
                           _%datums11056%_
                           _%dispatch11057%_
                           _%default11058%_)
                    (let* ((_%indexes11060%_
                            (_%datum-dispatch-index9465%_ _%datums11056%_))
                           (_%tab11063%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes11060%_
                             symbol-hash)))
                      (if (= (length _%dispatch11057%_) '1)
                          (let* ((_%tab11071%_
                                  (vector-map
                                   (lambda (_%x11068%_)
                                     (if _%x11068%_ (car _%x11068%_) '#f))
                                   _%tab11063%_))
                                 (_%g1107411112%_
                                  (lambda (_%g1107511108%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1107511108%_)))
                                 (_%g1107311243%_
                                  (lambda (_%g1107511116%_)
                                    (if (gx#stx-pair? _%g1107511116%_)
                                        (let ((_%e1108311119%_
                                               (gx#syntax-e _%g1107511116%_)))
                                          (let ((_%hd1108411123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1108311119%_)))
                                                (_%tl1108511126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1108311119%_))))
                                            (if (gx#stx-pair? _%tl1108511126%_)
                                                (let ((_%e1108611129%_
                                                       (gx#syntax-e
                                                        _%tl1108511126%_)))
                                                  (let ((_%hd1108711133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1108611129%_)))
                                                        (_%tl1108811136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1108611129%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1108811136%_)
                                                        (let ((_%e1108911139%_
                                                               (gx#syntax-e
                                                                _%tl1108811136%_)))
                                                          (let ((_%hd1109011143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1108911139%_)))
                        (_%tl1109111146%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1108911139%_))))
                    (if (gx#stx-pair? _%tl1109111146%_)
                        (let ((_%e1109211149%_ (gx#syntax-e _%tl1109111146%_)))
                          (let ((_%hd1109311153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1109211149%_)))
                                (_%tl1109411156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1109211149%_))))
                            (if (gx#stx-pair? _%hd1109311153%_)
                                (let ((_%e1109511159%_
                                       (gx#syntax-e _%hd1109311153%_)))
                                  (let ((_%hd1109611163%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1109511159%_)))
                                        (_%tl1109711166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1109511159%_))))
                                    (if (gx#stx-null? _%tl1109711166%_)
                                        (if (gx#stx-pair? _%tl1109411156%_)
                                            (let ((_%e1109811169%_
                                                   (gx#syntax-e
                                                    _%tl1109411156%_)))
                                              (let ((_%hd1109911173%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1109811169%_)))
                                                    (_%tl1110011176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1109811169%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1110011176%_)
                                                    (let ((_%e1110111179%_
                                                           (gx#syntax-e
                                                            _%tl1110011176%_)))
                                                      (let ((_%hd1110211183%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1110111179%_)))
                    (_%tl1110311186%_
                     (let () (declare (not safe)) (##cdr _%e1110111179%_))))
                (if (gx#stx-pair? _%tl1110311186%_)
                    (let ((_%e1110411189%_ (gx#syntax-e _%tl1110311186%_)))
                      (let ((_%hd1110511193%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1110411189%_)))
                            (_%tl1110611196%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1110411189%_))))
                        (if (gx#stx-null? _%tl1110611196%_)
                            ((lambda (_%g1107611199%_
                                      _%g1107711201%_
                                      _%g1107811202%_
                                      _%g1107911203%_
                                      _%g1108011204%_
                                      _%g1108111205%_
                                      _%g1108211206%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g1108111205%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%g1107811202%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g1108011204%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1107711201%_ '()))
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
                           (cons _%g1108211206%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%g1108211206%_
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
                                   (cons _%g1107611199%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%g1108011204%_
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
                             (cons _%g1108211206%_ '())))
                 (cons _%g1107911203%_ (cons (cons _%g1108111205%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%g1108111205%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1110511193%_
                             _%hd1110211183%_
                             _%hd1109911173%_
                             _%hd1109611163%_
                             _%hd1109011143%_
                             _%hd1108711133%_
                             _%hd1108411123%_)
                            (_%g1107411112%_ _%g1107511116%_))))
                    (_%g1107411112%_ _%g1107511116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1107411112%_
                                                     _%g1107511116%_))))
                                            (_%g1107411112%_ _%g1107511116%_))
                                        (_%g1107411112%_ _%g1107511116%_))))
                                (_%g1107411112%_ _%g1107511116%_))))
                        (_%g1107411112%_ _%g1107511116%_))))
                (_%g1107411112%_ _%g1107511116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1107411112%_
                                                 _%g1107511116%_))))
                                        (_%g1107411112%_ _%g1107511116%_)))))
                            (_%g1107311243%_
                             (list _%e11054%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11057%_
                                   _%default11058%_
                                   _%tab11071%_
                                   (vector-length _%tab11071%_))))
                          (let* ((_%g1124711291%_
                                  (lambda (_%g1124811287%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1124811287%_)))
                                 (_%g1124611445%_
                                  (lambda (_%g1124811295%_)
                                    (if (gx#stx-pair? _%g1124811295%_)
                                        (let ((_%e1125611298%_
                                               (gx#syntax-e _%g1124811295%_)))
                                          (let ((_%hd1125711302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1125611298%_)))
                                                (_%tl1125811305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1125611298%_))))
                                            (if (gx#stx-pair? _%tl1125811305%_)
                                                (let ((_%e1125911308%_
                                                       (gx#syntax-e
                                                        _%tl1125811305%_)))
                                                  (let ((_%hd1126011312%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1125911308%_)))
                                                        (_%tl1126111315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1125911308%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1126111315%_)
                                                        (let ((_%e1126211318%_
                                                               (gx#syntax-e
                                                                _%tl1126111315%_)))
                                                          (let ((_%hd1126311322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1126211318%_)))
                        (_%tl1126411325%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1126211318%_))))
                    (if (gx#stx-pair? _%tl1126411325%_)
                        (let ((_%e1126511328%_ (gx#syntax-e _%tl1126411325%_)))
                          (let ((_%hd1126611332%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1126511328%_)))
                                (_%tl1126711335%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1126511328%_))))
                            (if (gx#stx-pair/null? _%hd1126611332%_)
                                (let ((_g21050_
                                       (gx#syntax-split-splice
                                        _%hd1126611332%_
                                        '0)))
                                  (begin
                                    (let ((_g21051_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21050_)
                                                 (##values-length _g21050_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21051_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21051_)))
                                    (let ((_%target1126811338%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21050_ 0)))
                                          (_%tl1127011341%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21050_ 1))))
                                      (if (gx#stx-null? _%tl1127011341%_)
                                          (letrec ((_%loop1127111344%_
                                                    (lambda (_%hd1126911348%_
                                                             _%dispatch1127511351%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1126911348%_)
                                                          (let ((_%e1127211353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1126911348%_)))
                    (let ((_%lp-hd1127311357%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1127211353%_)))
                          (_%lp-tl1127411360%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1127211353%_))))
                      (_%loop1127111344%_
                       _%lp-tl1127411360%_
                       (cons _%lp-hd1127311357%_ _%dispatch1127511351%_))))
                  (let ((_%dispatch1127611363%_
                         (reverse _%dispatch1127511351%_)))
                    (if (gx#stx-pair? _%tl1126711335%_)
                        (let ((_%e1127711366%_ (gx#syntax-e _%tl1126711335%_)))
                          (let ((_%hd1127811370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1127711366%_)))
                                (_%tl1127911373%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1127711366%_))))
                            (if (gx#stx-pair? _%tl1127911373%_)
                                (let ((_%e1128011376%_
                                       (gx#syntax-e _%tl1127911373%_)))
                                  (let ((_%hd1128111380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1128011376%_)))
                                        (_%tl1128211383%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1128011376%_))))
                                    (if (gx#stx-pair? _%tl1128211383%_)
                                        (let ((_%e1128311386%_
                                               (gx#syntax-e _%tl1128211383%_)))
                                          (let ((_%hd1128411390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1128311386%_)))
                                                (_%tl1128511393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1128311386%_))))
                                            (if (gx#stx-null? _%tl1128511393%_)
                                                ((lambda (_%g1124911396%_
                                                          _%g1125011398%_
                                                          _%g1125111399%_
                                                          _%g1125211400%_
                                                          _%g1125311401%_
                                                          _%g1125411402%_
                                                          _%g1125511403%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%g1125411402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%g1125111399%_
                                                           '())))
                                         '()))
                             (cons (cons _%g1125311401%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1125011398%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%g1125511403%_ '()))
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
                                           (cons _%g1125511403%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%g1124911396%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%g1125311401%_
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
                           (cons _%g1125511403%_ '())))
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
                                                   (foldr (lambda (_%g1143611439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1143711442%_)
                    (cons _%g1143611439%_ _%g1143711442%_))
                  '()
                  _%g1125211400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%g1125411402%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1125411402%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1125411402%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1128411390%_
                                                 _%hd1128111380%_
                                                 _%hd1127811370%_
                                                 _%dispatch1127611363%_
                                                 _%hd1126311322%_
                                                 _%hd1126011312%_
                                                 _%hd1125711302%_)
                                                (_%g1124711291%_
                                                 _%g1124811295%_))))
                                        (_%g1124711291%_ _%g1124811295%_))))
                                (_%g1124711291%_ _%g1124811295%_))))
                        (_%g1124711291%_ _%g1124811295%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1127111344%_
                                             _%target1126811338%_
                                             '()))
                                          (_%g1124711291%_ _%g1124811295%_)))))
                                (_%g1124711291%_ _%g1124811295%_))))
                        (_%g1124711291%_ _%g1124811295%_))))
                (_%g1124711291%_ _%g1124811295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1124711291%_
                                                 _%g1124811295%_))))
                                        (_%g1124711291%_ _%g1124811295%_)))))
                            (_%g1124611445%_
                             (list _%e11054%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11057%_
                                   _%default11058%_
                                   _%tab11063%_
                                   (vector-length _%tab11063%_))))))))
                 (_%max-char9469%_
                  (lambda (_%datums11043%_)
                    (foldl (lambda (_%lst11046%_ _%r11048%_)
                             (foldl (lambda (_%char11050%_ _%r11052%_)
                                      (max (char->integer _%char11050%_)
                                           _%r11052%_))
                                    _%r11048%_
                                    _%lst11046%_))
                           '0
                           _%datums11043%_)))
                 (_%generate-char-dispatch-table9470%_
                  (lambda (_%indexes11022%_)
                    (let* ((_%ixs11028%_
                            (map (lambda (_%x11025%_)
                                   (char->integer (car _%x11025%_)))
                                 _%indexes11022%_))
                           (_%len11031%_ (fx1+ (foldl max '0 _%ixs11028%_)))
                           (_%vec11034%_ (make-vector _%len11031%_ '#f)))
                      (for-each
                       (lambda (_%entry11039%_ _%x11041%_)
                         (vector-set!
                          _%vec11034%_
                          _%x11041%_
                          (cdr _%entry11039%_)))
                       _%indexes11022%_
                       _%ixs11028%_)
                      _%vec11034%_)))
                 (_%simple-char-range?9471%_
                  (lambda (_%tab10998%_)
                    (let ((_%end11001%_ (vector-length _%tab10998%_)))
                      (let _%lp11004%_ ((_%i11007%_ '0))
                        (let ((_%ix11010%_
                               (vector-ref _%tab10998%_ _%i11007%_)))
                          (if _%ix11010%_
                              (let _%lp211013%_ ((_%i11016%_
                                                  (fx1+ _%i11007%_)))
                                (if (fx< _%i11016%_ _%end11001%_)
                                    (let ((_%ix*11019%_
                                           (vector-ref
                                            _%tab10998%_
                                            _%i11016%_)))
                                      (if (eq? _%ix11010%_ _%ix*11019%_)
                                          (_%lp211013%_ (fx1+ _%i11016%_))
                                          '#f))
                                    '#t))
                              (_%lp11004%_ (fx1+ _%i11007%_))))))))
                 (_%char-range-start9472%_
                  (lambda (_%tab10989%_)
                    (let _%lp10992%_ ((_%i10995%_ '0))
                      (if (vector-ref _%tab10989%_ _%i10995%_)
                          _%i10995%_
                          (_%lp10992%_ (fx1+ _%i10995%_))))))
                 (_%generate-char-dispatch9473%_
                  (lambda (_%e10614%_
                           _%datums10616%_
                           _%dispatch10617%_
                           _%default10618%_)
                    (if (< (_%max-char9469%_ _%datums10616%_) '128)
                        (let* ((_%indexes10620%_
                                (_%datum-dispatch-index9465%_ _%datums10616%_))
                               (_%tab10623%_
                                (_%generate-char-dispatch-table9470%_
                                 _%indexes10620%_)))
                          (if (_%simple-char-range?9471%_ _%tab10623%_)
                              (let ((_%start10628%_
                                     (_%char-range-start9472%_ _%tab10623%_))
                                    (_%end10630%_
                                     (vector-length _%tab10623%_)))
                                (let* ((_%g1063210666%_
                                        (lambda (_%g1063310662%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1063310662%_)))
                                       (_%g1063110783%_
                                        (lambda (_%g1063310670%_)
                                          (if (gx#stx-pair? _%g1063310670%_)
                                              (let ((_%e1064010673%_
                                                     (gx#syntax-e
                                                      _%g1063310670%_)))
                                                (let ((_%hd1064110677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1064010673%_)))
                                                      (_%tl1064210680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1064010673%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1064210680%_)
                                                      (let ((_%e1064310683%_
                                                             (gx#syntax-e
                                                              _%tl1064210680%_)))
                                                        (let ((_%hd1064410687%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1064310683%_)))
                      (_%tl1064510690%_
                       (let () (declare (not safe)) (##cdr _%e1064310683%_))))
                  (if (gx#stx-pair? _%tl1064510690%_)
                      (let ((_%e1064610693%_ (gx#syntax-e _%tl1064510690%_)))
                        (let ((_%hd1064710697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1064610693%_)))
                              (_%tl1064810700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1064610693%_))))
                          (if (gx#stx-pair? _%hd1064710697%_)
                              (let ((_%e1064910703%_
                                     (gx#syntax-e _%hd1064710697%_)))
                                (let ((_%hd1065010707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1064910703%_)))
                                      (_%tl1065110710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1064910703%_))))
                                  (if (gx#stx-null? _%tl1065110710%_)
                                      (if (gx#stx-pair? _%tl1064810700%_)
                                          (let ((_%e1065210713%_
                                                 (gx#syntax-e
                                                  _%tl1064810700%_)))
                                            (let ((_%hd1065310717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1065210713%_)))
                                                  (_%tl1065410720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1065210713%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1065410720%_)
                                                  (let ((_%e1065510723%_
                                                         (gx#syntax-e
                                                          _%tl1065410720%_)))
                                                    (let ((_%hd1065610727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1065510723%_)))
                                                          (_%tl1065710730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1065510723%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1065710730%_)
                                                          (let ((_%e1065810733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1065710730%_)))
                    (let ((_%hd1065910737%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1065810733%_)))
                          (_%tl1066010740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1065810733%_))))
                      (if (gx#stx-null? _%tl1066010740%_)
                          ((lambda (_%g1063410743%_
                                    _%g1063510745%_
                                    _%g1063610746%_
                                    _%g1063710747%_
                                    _%g1063810748%_
                                    _%g1063910749%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%g1063810748%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1063610746%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%g1063910749%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%g1063910749%_
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
                                       (cons _%g1063510745%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%g1063410743%_ '())))
                                 '())))
               (cons _%g1063710747%_ (cons (cons _%g1063810748%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%g1063810748%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1065910737%_
                           _%hd1065610727%_
                           _%hd1065310717%_
                           _%hd1065010707%_
                           _%hd1064410687%_
                           _%hd1064110677%_)
                          (_%g1063210666%_ _%g1063310670%_))))
                  (_%g1063210666%_ _%g1063310670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1063210666%_
                                                   _%g1063310670%_))))
                                          (_%g1063210666%_ _%g1063310670%_))
                                      (_%g1063210666%_ _%g1063310670%_))))
                              (_%g1063210666%_ _%g1063310670%_))))
                      (_%g1063210666%_ _%g1063310670%_))))
              (_%g1063210666%_ _%g1063310670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1063210666%_
                                               _%g1063310670%_)))))
                                  (_%g1063110783%_
                                   (list _%e10614%_
                                         (gx#genident 'default)
                                         _%dispatch10617%_
                                         _%default10618%_
                                         _%start10628%_
                                         _%end10630%_))))
                              (let* ((_%g1078710831%_
                                      (lambda (_%g1078810827%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1078810827%_)))
                                     (_%g1078610985%_
                                      (lambda (_%g1078810835%_)
                                        (if (gx#stx-pair? _%g1078810835%_)
                                            (let ((_%e1079610838%_
                                                   (gx#syntax-e
                                                    _%g1078810835%_)))
                                              (let ((_%hd1079710842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1079610838%_)))
                                                    (_%tl1079810845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1079610838%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1079810845%_)
                                                    (let ((_%e1079910848%_
                                                           (gx#syntax-e
                                                            _%tl1079810845%_)))
                                                      (let ((_%hd1080010852%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1079910848%_)))
                    (_%tl1080110855%_
                     (let () (declare (not safe)) (##cdr _%e1079910848%_))))
                (if (gx#stx-pair? _%tl1080110855%_)
                    (let ((_%e1080210858%_ (gx#syntax-e _%tl1080110855%_)))
                      (let ((_%hd1080310862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1080210858%_)))
                            (_%tl1080410865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1080210858%_))))
                        (if (gx#stx-pair? _%tl1080410865%_)
                            (let ((_%e1080510868%_
                                   (gx#syntax-e _%tl1080410865%_)))
                              (let ((_%hd1080610872%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1080510868%_)))
                                    (_%tl1080710875%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1080510868%_))))
                                (if (gx#stx-pair/null? _%hd1080610872%_)
                                    (let ((_g21052_
                                           (gx#syntax-split-splice
                                            _%hd1080610872%_
                                            '0)))
                                      (begin
                                        (let ((_g21053_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21052_)
                                                     (##values-length _g21052_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21053_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21053_)))
                                        (let ((_%target1080810878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21052_ 0)))
                                              (_%tl1081010881%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21052_ 1))))
                                          (if (gx#stx-null? _%tl1081010881%_)
                                              (letrec ((_%loop1081110884%_
                                                        (lambda (_%hd1080910888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1081510891%_)
                  (if (gx#stx-pair? _%hd1080910888%_)
                      (let ((_%e1081210893%_ (gx#syntax-e _%hd1080910888%_)))
                        (let ((_%lp-hd1081310897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1081210893%_)))
                              (_%lp-tl1081410900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1081210893%_))))
                          (_%loop1081110884%_
                           _%lp-tl1081410900%_
                           (cons _%lp-hd1081310897%_ _%dispatch1081510891%_))))
                      (let ((_%dispatch1081610903%_
                             (reverse _%dispatch1081510891%_)))
                        (if (gx#stx-pair? _%tl1080710875%_)
                            (let ((_%e1081710906%_
                                   (gx#syntax-e _%tl1080710875%_)))
                              (let ((_%hd1081810910%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1081710906%_)))
                                    (_%tl1081910913%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1081710906%_))))
                                (if (gx#stx-pair? _%tl1081910913%_)
                                    (let ((_%e1082010916%_
                                           (gx#syntax-e _%tl1081910913%_)))
                                      (let ((_%hd1082110920%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1082010916%_)))
                                            (_%tl1082210923%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1082010916%_))))
                                        (if (gx#stx-pair? _%tl1082210923%_)
                                            (let ((_%e1082310926%_
                                                   (gx#syntax-e
                                                    _%tl1082210923%_)))
                                              (let ((_%hd1082410930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1082310926%_)))
                                                    (_%tl1082510933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1082310926%_))))
                                                (if (gx#stx-null?
                                                     _%tl1082510933%_)
                                                    ((lambda (_%g1078910936%_
                                                              _%g1079010938%_
                                                              _%g1079110939%_
                                                              _%g1079210940%_
                                                              _%g1079310941%_
                                                              _%g1079410942%_
                                                              _%g1079510943%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%g1079410942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%g1079110939%_
                                                               '())))
                                             '()))
                                 (cons (cons _%g1079310941%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g1079010938%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%g1079510943%_ '()))
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
                                         (cons _%g1079510943%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%g1078910936%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%g1079310941%_
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
                                                       (foldr (lambda (_%g1097610979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1097710982%_)
                        (cons _%g1097610979%_ _%g1097710982%_))
                      '()
                      _%g1079210940%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1079410942%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1079410942%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%g1079410942%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1082410930%_
                                                     _%hd1082110920%_
                                                     _%hd1081810910%_
                                                     _%dispatch1081610903%_
                                                     _%hd1080310862%_
                                                     _%hd1080010852%_
                                                     _%hd1079710842%_)
                                                    (_%g1078710831%_
                                                     _%g1078810835%_))))
                                            (_%g1078710831%_
                                             _%g1078810835%_))))
                                    (_%g1078710831%_ _%g1078810835%_))))
                            (_%g1078710831%_ _%g1078810835%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1081110884%_
                                                 _%target1080810878%_
                                                 '()))
                                              (_%g1078710831%_
                                               _%g1078810835%_)))))
                                    (_%g1078710831%_ _%g1078810835%_))))
                            (_%g1078710831%_ _%g1078810835%_))))
                    (_%g1078710831%_ _%g1078810835%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1078710831%_
                                                     _%g1078810835%_))))
                                            (_%g1078710831%_
                                             _%g1078810835%_)))))
                                (_%g1078610985%_
                                 (list _%e10614%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10617%_
                                       _%default10618%_
                                       _%tab10623%_
                                       (vector-length _%tab10623%_))))))
                        (_%generate-char-dispatch/hash9474%_
                         _%e10614%_
                         _%datums10616%_
                         _%dispatch10617%_
                         _%default10618%_))))
                 (_%generate-char-dispatch/hash9474%_
                  (lambda (_%e10394%_
                           _%datums10396%_
                           _%dispatch10397%_
                           _%default10398%_)
                    (let* ((_%indexes10400%_
                            (_%datum-dispatch-index9465%_ _%datums10396%_))
                           (_%tab10403%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes10400%_
                             char->integer))
                           (_%g1040810452%_
                            (lambda (_%g1040910448%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1040910448%_)))
                           (_%g1040710610%_
                            (lambda (_%g1040910456%_)
                              (if (gx#stx-pair? _%g1040910456%_)
                                  (let ((_%e1041710459%_
                                         (gx#syntax-e _%g1040910456%_)))
                                    (let ((_%hd1041810463%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1041710459%_)))
                                          (_%tl1041910466%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1041710459%_))))
                                      (if (gx#stx-pair? _%tl1041910466%_)
                                          (let ((_%e1042010469%_
                                                 (gx#syntax-e
                                                  _%tl1041910466%_)))
                                            (let ((_%hd1042110473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1042010469%_)))
                                                  (_%tl1042210476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1042010469%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1042210476%_)
                                                  (let ((_%e1042310479%_
                                                         (gx#syntax-e
                                                          _%tl1042210476%_)))
                                                    (let ((_%hd1042410483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1042310479%_)))
                                                          (_%tl1042510486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1042310479%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1042510486%_)
                                                          (let ((_%e1042610489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1042510486%_)))
                    (let ((_%hd1042710493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1042610489%_)))
                          (_%tl1042810496%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1042610489%_))))
                      (if (gx#stx-pair/null? _%hd1042710493%_)
                          (let ((_g21054_
                                 (gx#syntax-split-splice _%hd1042710493%_ '0)))
                            (begin
                              (let ((_g21055_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21054_)
                                           (##values-length _g21054_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21055_ 2)))
                                    (error "Context expects 2 values"
                                           _g21055_)))
                              (let ((_%target1042910499%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21054_ 0)))
                                    (_%tl1043110502%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21054_ 1))))
                                (if (gx#stx-null? _%tl1043110502%_)
                                    (letrec ((_%loop1043210505%_
                                              (lambda (_%hd1043010509%_
                                                       _%dispatch1043610512%_)
                                                (if (gx#stx-pair?
                                                     _%hd1043010509%_)
                                                    (let ((_%e1043310514%_
                                                           (gx#syntax-e
                                                            _%hd1043010509%_)))
                                                      (let ((_%lp-hd1043410518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1043310514%_)))
                    (_%lp-tl1043510521%_
                     (let () (declare (not safe)) (##cdr _%e1043310514%_))))
                (_%loop1043210505%_
                 _%lp-tl1043510521%_
                 (cons _%lp-hd1043410518%_ _%dispatch1043610512%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1043710524%_
                                                           (reverse _%dispatch1043610512%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1042810496%_)
                                                          (let ((_%e1043810527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1042810496%_)))
                    (let ((_%hd1043910531%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1043810527%_)))
                          (_%tl1044010534%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1043810527%_))))
                      (if (gx#stx-pair? _%tl1044010534%_)
                          (let ((_%e1044110537%_
                                 (gx#syntax-e _%tl1044010534%_)))
                            (let ((_%hd1044210541%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1044110537%_)))
                                  (_%tl1044310544%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1044110537%_))))
                              (if (gx#stx-pair? _%tl1044310544%_)
                                  (let ((_%e1044410547%_
                                         (gx#syntax-e _%tl1044310544%_)))
                                    (let ((_%hd1044510551%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1044410547%_)))
                                          (_%tl1044610554%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1044410547%_))))
                                      (if (gx#stx-null? _%tl1044610554%_)
                                          ((lambda (_%g1041010557%_
                                                    _%g1041110559%_
                                                    _%g1041210560%_
                                                    _%g1041310561%_
                                                    _%g1041410562%_
                                                    _%g1041510563%_
                                                    _%g1041610564%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1041510563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1041210560%_ '())))
                                   '()))
                       (cons (cons _%g1041410562%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1041110559%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%g1041610564%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%g1041610564%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%g1041010557%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%g1041410562%_
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
                     (cons _%g1041610564%_ '())))
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
                                             (foldr (lambda (_%g1060110604%_
                                                             _%g1060210607%_)
                                                      (cons _%g1060110604%_
                                                            _%g1060210607%_))
                                                    '()
                                                    _%g1041310561%_)))
                                 '())))
               (cons (cons _%g1041510563%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1041510563%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1041510563%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1044510551%_
                                           _%hd1044210541%_
                                           _%hd1043910531%_
                                           _%dispatch1043710524%_
                                           _%hd1042410483%_
                                           _%hd1042110473%_
                                           _%hd1041810463%_)
                                          (_%g1040810452%_ _%g1040910456%_))))
                                  (_%g1040810452%_ _%g1040910456%_))))
                          (_%g1040810452%_ _%g1040910456%_))))
                  (_%g1040810452%_ _%g1040910456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1043210505%_
                                       _%target1042910499%_
                                       '()))
                                    (_%g1040810452%_ _%g1040910456%_)))))
                          (_%g1040810452%_ _%g1040910456%_))))
                  (_%g1040810452%_ _%g1040910456%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1040810452%_
                                                   _%g1040910456%_))))
                                          (_%g1040810452%_ _%g1040910456%_))))
                                  (_%g1040810452%_ _%g1040910456%_)))))
                      (_%g1040710610%_
                       (list _%e10394%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10397%_
                             _%default10398%_
                             _%tab10403%_
                             (vector-length _%tab10403%_))))))
                 (_%min-fixnum9475%_
                  (lambda (_%datums10387%_)
                    (foldl (lambda (_%lst10390%_ _%r10392%_)
                             (foldl min _%r10392%_ _%lst10390%_))
                           ##max-fixnum
                           _%datums10387%_)))
                 (_%max-fixnum9476%_
                  (lambda (_%datums10380%_)
                    (foldl (lambda (_%lst10383%_ _%r10385%_)
                             (foldl max _%r10385%_ _%lst10383%_))
                           ##min-fixnum
                           _%datums10380%_)))
                 (_%generate-fixnum-dispatch-table9477%_
                  (lambda (_%indexes10362%_)
                    (let* ((_%ixs10365%_ (map car _%indexes10362%_))
                           (_%len10368%_ (fx1+ (foldl max '0 _%ixs10365%_)))
                           (_%vec10371%_ (make-vector _%len10368%_ '#f)))
                      (for-each
                       (lambda (_%entry10376%_ _%x10378%_)
                         (vector-set!
                          _%vec10371%_
                          _%x10378%_
                          (cdr _%entry10376%_)))
                       _%indexes10362%_
                       _%ixs10365%_)
                      _%vec10371%_)))
                 (_%generate-fixnum-dispatch9478%_
                  (lambda (_%e10098%_
                           _%datums10100%_
                           _%dispatch10101%_
                           _%default10102%_)
                    (if (and (>= (_%min-fixnum9475%_ _%datums10100%_) '0)
                             (< (_%max-fixnum9476%_ _%datums10100%_) '1024))
                        (let* ((_%indexes10104%_
                                (_%datum-dispatch-index9465%_ _%datums10100%_))
                               (_%tab10107%_
                                (_%generate-fixnum-dispatch-table9477%_
                                 _%indexes10104%_))
                               (_%dense?10110%_
                                (andmap values (vector->list _%tab10107%_)))
                               (_%g1011510159%_
                                (lambda (_%g1011610155%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1011610155%_)))
                               (_%g1011410358%_
                                (lambda (_%g1011610163%_)
                                  (if (gx#stx-pair? _%g1011610163%_)
                                      (let ((_%e1012410166%_
                                             (gx#syntax-e _%g1011610163%_)))
                                        (let ((_%hd1012510170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1012410166%_)))
                                              (_%tl1012610173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1012410166%_))))
                                          (if (gx#stx-pair? _%tl1012610173%_)
                                              (let ((_%e1012710176%_
                                                     (gx#syntax-e
                                                      _%tl1012610173%_)))
                                                (let ((_%hd1012810180%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1012710176%_)))
                                                      (_%tl1012910183%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1012710176%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1012910183%_)
                                                      (let ((_%e1013010186%_
                                                             (gx#syntax-e
                                                              _%tl1012910183%_)))
                                                        (let ((_%hd1013110190%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1013010186%_)))
                      (_%tl1013210193%_
                       (let () (declare (not safe)) (##cdr _%e1013010186%_))))
                  (if (gx#stx-pair? _%tl1013210193%_)
                      (let ((_%e1013310196%_ (gx#syntax-e _%tl1013210193%_)))
                        (let ((_%hd1013410200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1013310196%_)))
                              (_%tl1013510203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1013310196%_))))
                          (if (gx#stx-pair/null? _%hd1013410200%_)
                              (let ((_g21056_
                                     (gx#syntax-split-splice
                                      _%hd1013410200%_
                                      '0)))
                                (begin
                                  (let ((_g21057_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21056_)
                                               (##values-length _g21056_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21057_ 2)))
                                        (error "Context expects 2 values"
                                               _g21057_)))
                                  (let ((_%target1013610206%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21056_ 0)))
                                        (_%tl1013810209%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21056_ 1))))
                                    (if (gx#stx-null? _%tl1013810209%_)
                                        (letrec ((_%loop1013910212%_
                                                  (lambda (_%hd1013710216%_
                                                           _%dispatch1014310219%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1013710216%_)
                                                        (let ((_%e1014010221%_
                                                               (gx#syntax-e
                                                                _%hd1013710216%_)))
                                                          (let ((_%lp-hd1014110225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1014010221%_)))
                        (_%lp-tl1014210228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1014010221%_))))
                    (_%loop1013910212%_
                     _%lp-tl1014210228%_
                     (cons _%lp-hd1014110225%_ _%dispatch1014310219%_))))
                (let ((_%dispatch1014410231%_
                       (reverse _%dispatch1014310219%_)))
                  (if (gx#stx-pair? _%tl1013510203%_)
                      (let ((_%e1014510234%_ (gx#syntax-e _%tl1013510203%_)))
                        (let ((_%hd1014610238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1014510234%_)))
                              (_%tl1014710241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1014510234%_))))
                          (if (gx#stx-pair? _%tl1014710241%_)
                              (let ((_%e1014810244%_
                                     (gx#syntax-e _%tl1014710241%_)))
                                (let ((_%hd1014910248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1014810244%_)))
                                      (_%tl1015010251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1014810244%_))))
                                  (if (gx#stx-pair? _%tl1015010251%_)
                                      (let ((_%e1015110254%_
                                             (gx#syntax-e _%tl1015010251%_)))
                                        (let ((_%hd1015210258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1015110254%_)))
                                              (_%tl1015310261%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1015110254%_))))
                                          (if (gx#stx-null? _%tl1015310261%_)
                                              ((lambda (_%g1011710264%_
                                                        _%g1011810266%_
                                                        _%g1011910267%_
                                                        _%g1012010268%_
                                                        _%g1012110269%_
                                                        _%g1012210270%_
                                                        _%g1012310271%_)
                                                 (let* ((_%g1031010318%_
                                                         (lambda (_%g1031110314%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1031110314%_)))
                                                        (_%g1030910338%_
                                                         (lambda (_%g1031110322%_)
                                                           ((lambda (_%g1031210325%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%g1012210270%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%g1011910267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%g1012110269%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g1011810266%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%g1012310271%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%g1012310271%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%g1012310271%_
                                                            (cons _%g1011710264%_
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
                          (cons _%g1012110269%_ (cons _%g1012310271%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1031210325%_ '())))
                                    (cons (cons _%g1012210270%_ '()) '()))))
                  (cons (cons _%g1012210270%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1031110322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1030910338%_
                                                    (if _%dense?10110%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1034110344%_ _%g1034210347%_)
                                     (cons _%g1034110344%_ _%g1034210347%_))
                                   '()
                                   _%g1012010268%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1034910352%_
                                                              _%g1035010355%_)
                                                       (cons _%g1034910352%_
                                                             _%g1035010355%_))
                                                     '()
                                                     _%g1012010268%_)))
                                  (cons (cons _%g1012210270%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1015210258%_
                                               _%hd1014910248%_
                                               _%hd1014610238%_
                                               _%dispatch1014410231%_
                                               _%hd1013110190%_
                                               _%hd1012810180%_
                                               _%hd1012510170%_)
                                              (_%g1011510159%_
                                               _%g1011610163%_))))
                                      (_%g1011510159%_ _%g1011610163%_))))
                              (_%g1011510159%_ _%g1011610163%_))))
                      (_%g1011510159%_ _%g1011610163%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1013910212%_
                                           _%target1013610206%_
                                           '()))
                                        (_%g1011510159%_ _%g1011610163%_)))))
                              (_%g1011510159%_ _%g1011610163%_))))
                      (_%g1011510159%_ _%g1011610163%_))))
              (_%g1011510159%_ _%g1011610163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1011510159%_
                                               _%g1011610163%_))))
                                      (_%g1011510159%_ _%g1011610163%_)))))
                          (_%g1011410358%_
                           (list _%e10098%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10101%_
                                 _%default10102%_
                                 _%tab10107%_
                                 (vector-length _%tab10107%_))))
                        (_%generate-fixnum-dispatch/hash9479%_
                         _%e10098%_
                         _%datums10100%_
                         _%dispatch10101%_
                         _%default10102%_))))
                 (_%generate-fixnum-dispatch/hash9479%_
                  (lambda (_%e9878%_
                           _%datums9880%_
                           _%dispatch9881%_
                           _%default9882%_)
                    (let* ((_%indexes9884%_
                            (_%datum-dispatch-index9465%_ _%datums9880%_))
                           (_%tab9887%_
                            (_%generate-hash-dispatch-table9467%_
                             _%indexes9884%_
                             values))
                           (_%g98929936%_
                            (lambda (_%g98939932%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g98939932%_)))
                           (_%g989110094%_
                            (lambda (_%g98939940%_)
                              (if (gx#stx-pair? _%g98939940%_)
                                  (let ((_%e99019943%_
                                         (gx#syntax-e _%g98939940%_)))
                                    (let ((_%hd99029947%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e99019943%_)))
                                          (_%tl99039950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e99019943%_))))
                                      (if (gx#stx-pair? _%tl99039950%_)
                                          (let ((_%e99049953%_
                                                 (gx#syntax-e _%tl99039950%_)))
                                            (let ((_%hd99059957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e99049953%_)))
                                                  (_%tl99069960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e99049953%_))))
                                              (if (gx#stx-pair? _%tl99069960%_)
                                                  (let ((_%e99079963%_
                                                         (gx#syntax-e
                                                          _%tl99069960%_)))
                                                    (let ((_%hd99089967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e99079963%_)))
                                                          (_%tl99099970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e99079963%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl99099970%_)
                                                          (let ((_%e99109973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99099970%_)))
                    (let ((_%hd99119977%_
                           (let () (declare (not safe)) (##car _%e99109973%_)))
                          (_%tl99129980%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e99109973%_))))
                      (if (gx#stx-pair/null? _%hd99119977%_)
                          (let ((_g21058_
                                 (gx#syntax-split-splice _%hd99119977%_ '0)))
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
                              (let ((_%target99139983%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21058_ 0)))
                                    (_%tl99159986%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21058_ 1))))
                                (if (gx#stx-null? _%tl99159986%_)
                                    (letrec ((_%loop99169989%_
                                              (lambda (_%hd99149993%_
                                                       _%dispatch99209996%_)
                                                (if (gx#stx-pair?
                                                     _%hd99149993%_)
                                                    (let ((_%e99179998%_
                                                           (gx#syntax-e
                                                            _%hd99149993%_)))
                                                      (let ((_%lp-hd991810002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e99179998%_)))
                    (_%lp-tl991910005%_
                     (let () (declare (not safe)) (##cdr _%e99179998%_))))
                (_%loop99169989%_
                 _%lp-tl991910005%_
                 (cons _%lp-hd991810002%_ _%dispatch99209996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch992110008%_
                                                           (reverse _%dispatch99209996%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl99129980%_)
                                                          (let ((_%e992210011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl99129980%_)))
                    (let ((_%hd992310015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e992210011%_)))
                          (_%tl992410018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e992210011%_))))
                      (if (gx#stx-pair? _%tl992410018%_)
                          (let ((_%e992510021%_ (gx#syntax-e _%tl992410018%_)))
                            (let ((_%hd992610025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e992510021%_)))
                                  (_%tl992710028%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e992510021%_))))
                              (if (gx#stx-pair? _%tl992710028%_)
                                  (let ((_%e992810031%_
                                         (gx#syntax-e _%tl992710028%_)))
                                    (let ((_%hd992910035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e992810031%_)))
                                          (_%tl993010038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e992810031%_))))
                                      (if (gx#stx-null? _%tl993010038%_)
                                          ((lambda (_%g989410041%_
                                                    _%g989510043%_
                                                    _%g989610044%_
                                                    _%g989710045%_
                                                    _%g989810046%_
                                                    _%g989910047%_
                                                    _%g990010048%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g989910047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g989610044%_ '())))
                                   '()))
                       (cons (cons _%g989810046%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g989510043%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%g990010048%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%g990010048%_
                                           (cons _%g989410041%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%g989810046%_
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
                     (cons _%g990010048%_ '())))
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
                                             (foldr (lambda (_%g1008510088%_
                                                             _%g1008610091%_)
                                                      (cons _%g1008510088%_
                                                            _%g1008610091%_))
                                                    '()
                                                    _%g989710045%_)))
                                 '())))
               (cons (cons _%g989910047%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g989910047%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g989910047%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd992910035%_
                                           _%hd992610025%_
                                           _%hd992310015%_
                                           _%dispatch992110008%_
                                           _%hd99089967%_
                                           _%hd99059957%_
                                           _%hd99029947%_)
                                          (_%g98929936%_ _%g98939940%_))))
                                  (_%g98929936%_ _%g98939940%_))))
                          (_%g98929936%_ _%g98939940%_))))
                  (_%g98929936%_ _%g98939940%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop99169989%_
                                       _%target99139983%_
                                       '()))
                                    (_%g98929936%_ _%g98939940%_)))))
                          (_%g98929936%_ _%g98939940%_))))
                  (_%g98929936%_ _%g98939940%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g98929936%_
                                                   _%g98939940%_))))
                                          (_%g98929936%_ _%g98939940%_))))
                                  (_%g98929936%_ _%g98939940%_)))))
                      (_%g989110094%_
                       (list _%e9878%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch9881%_
                             _%default9882%_
                             _%tab9887%_
                             (vector-length _%tab9887%_))))))
                 (_%generate-generic-dispatch9480%_
                  (lambda (_%e9616%_
                           _%datums9618%_
                           _%dispatch9619%_
                           _%default9620%_)
                    (let ((_g21060_
                           (if (_%eq-datums?9463%_ _%datums9618%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9622%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21060_ 0)))
                              (_%hashf9624%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21060_ 1)))
                              (_%eqf9625%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21060_ 2))))
                          (let* ((_%indexes9627%_
                                  (_%datum-dispatch-index9465%_
                                   _%datums9618%_))
                                 (_%tab9630%_
                                  (_%generate-hash-dispatch-table9467%_
                                   _%indexes9627%_
                                   _%hash-e9622%_))
                                 (_%g96359687%_
                                  (lambda (_%g96369683%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g96369683%_)))
                                 (_%g96349874%_
                                  (lambda (_%g96369691%_)
                                    (if (gx#stx-pair? _%g96369691%_)
                                        (let ((_%e96469694%_
                                               (gx#syntax-e _%g96369691%_)))
                                          (let ((_%hd96479698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96469694%_)))
                                                (_%tl96489701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96469694%_))))
                                            (if (gx#stx-pair? _%tl96489701%_)
                                                (let ((_%e96499704%_
                                                       (gx#syntax-e
                                                        _%tl96489701%_)))
                                                  (let ((_%hd96509708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96499704%_)))
                                                        (_%tl96519711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96499704%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96519711%_)
                                                        (let ((_%e96529714%_
                                                               (gx#syntax-e
                                                                _%tl96519711%_)))
                                                          (let ((_%hd96539718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96529714%_)))
                        (_%tl96549721%_
                         (let () (declare (not safe)) (##cdr _%e96529714%_))))
                    (if (gx#stx-pair? _%tl96549721%_)
                        (let ((_%e96559724%_ (gx#syntax-e _%tl96549721%_)))
                          (let ((_%hd96569728%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96559724%_)))
                                (_%tl96579731%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96559724%_))))
                            (if (gx#stx-pair/null? _%hd96569728%_)
                                (let ((_g21061_
                                       (gx#syntax-split-splice
                                        _%hd96569728%_
                                        '0)))
                                  (begin
                                    (let ((_g21062_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21061_)
                                                 (##values-length _g21061_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21062_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21062_)))
                                    (let ((_%target96589734%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21061_ 0)))
                                          (_%tl96609737%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21061_ 1))))
                                      (if (gx#stx-null? _%tl96609737%_)
                                          (letrec ((_%loop96619740%_
                                                    (lambda (_%hd96599744%_
                                                             _%dispatch96659747%_)
                                                      (if (gx#stx-pair?
                                                           _%hd96599744%_)
                                                          (let ((_%e96629749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd96599744%_)))
                    (let ((_%lp-hd96639753%_
                           (let () (declare (not safe)) (##car _%e96629749%_)))
                          (_%lp-tl96649756%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e96629749%_))))
                      (_%loop96619740%_
                       _%lp-tl96649756%_
                       (cons _%lp-hd96639753%_ _%dispatch96659747%_))))
                  (let ((_%dispatch96669759%_ (reverse _%dispatch96659747%_)))
                    (if (gx#stx-pair? _%tl96579731%_)
                        (let ((_%e96679762%_ (gx#syntax-e _%tl96579731%_)))
                          (let ((_%hd96689766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96679762%_)))
                                (_%tl96699769%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96679762%_))))
                            (if (gx#stx-pair? _%tl96699769%_)
                                (let ((_%e96709772%_
                                       (gx#syntax-e _%tl96699769%_)))
                                  (let ((_%hd96719776%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e96709772%_)))
                                        (_%tl96729779%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e96709772%_))))
                                    (if (gx#stx-pair? _%tl96729779%_)
                                        (let ((_%e96739782%_
                                               (gx#syntax-e _%tl96729779%_)))
                                          (let ((_%hd96749786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e96739782%_)))
                                                (_%tl96759789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e96739782%_))))
                                            (if (gx#stx-pair? _%tl96759789%_)
                                                (let ((_%e96769792%_
                                                       (gx#syntax-e
                                                        _%tl96759789%_)))
                                                  (let ((_%hd96779796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e96769792%_)))
                                                        (_%tl96789799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e96769792%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl96789799%_)
                                                        (let ((_%e96799802%_
                                                               (gx#syntax-e
                                                                _%tl96789799%_)))
                                                          (let ((_%hd96809806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e96799802%_)))
                        (_%tl96819809%_
                         (let () (declare (not safe)) (##cdr _%e96799802%_))))
                    (if (gx#stx-null? _%tl96819809%_)
                        ((lambda (_%g96379812%_
                                  _%g96389814%_
                                  _%g96399815%_
                                  _%g96409816%_
                                  _%g96419817%_
                                  _%g96429818%_
                                  _%g96439819%_
                                  _%g96449820%_
                                  _%g96459821%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%g96449820%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g96419817%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%g96439819%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%g96409816%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%g96389814%_
                                         (cons _%g96459821%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%g96399815%_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g96439819%_
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
                                               (cons (cons _%g96379812%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%g96459821%_ '())))
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
                                                 (foldr (lambda (_%g98659868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g98669871%_)
                  (cons _%g98659868%_ _%g98669871%_))
                '()
                _%g96429818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%g96449820%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g96449820%_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd96809806%_
                         _%hd96779796%_
                         _%hd96749786%_
                         _%hd96719776%_
                         _%hd96689766%_
                         _%dispatch96669759%_
                         _%hd96539718%_
                         _%hd96509708%_
                         _%hd96479698%_)
                        (_%g96359687%_ _%g96369691%_))))
                (_%g96359687%_ _%g96369691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96359687%_
                                                 _%g96369691%_))))
                                        (_%g96359687%_ _%g96369691%_))))
                                (_%g96359687%_ _%g96369691%_))))
                        (_%g96359687%_ _%g96369691%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop96619740%_
                                             _%target96589734%_
                                             '()))
                                          (_%g96359687%_ _%g96369691%_)))))
                                (_%g96359687%_ _%g96369691%_))))
                        (_%g96359687%_ _%g96369691%_))))
                (_%g96359687%_ _%g96369691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g96359687%_
                                                 _%g96369691%_))))
                                        (_%g96359687%_ _%g96369691%_)))))
                            (_%g96349874%_
                             (list _%e9616%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9619%_
                                   _%default9620%_
                                   _%tab9630%_
                                   (vector-length _%tab9630%_)
                                   _%hashf9624%_
                                   _%eqf9625%_)))))))))
          (let* ((_%g94829506%_
                  (lambda (_%g94839502%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g94839502%_)))
                 (_%g94819612%_
                  (lambda (_%g94839510%_)
                    (if (gx#stx-pair? _%g94839510%_)
                        (let ((_%e94869513%_ (gx#syntax-e _%g94839510%_)))
                          (let ((_%hd94879517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94869513%_)))
                                (_%tl94889520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94869513%_))))
                            (if (gx#stx-pair? _%tl94889520%_)
                                (let ((_%e94899523%_
                                       (gx#syntax-e _%tl94889520%_)))
                                  (let ((_%hd94909527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e94899523%_)))
                                        (_%tl94919530%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e94899523%_))))
                                    (if (gx#stx-pair/null? _%tl94919530%_)
                                        (let ((_g21063_
                                               (gx#syntax-split-splice
                                                _%tl94919530%_
                                                '0)))
                                          (begin
                                            (let ((_g21064_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21063_)
                                                         (##values-length
                                                          _g21063_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21064_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21064_)))
                                            (let ((_%target94929533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21063_
                                                      0)))
                                                  (_%tl94949536%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21063_
                                                      1))))
                                              (if (gx#stx-null? _%tl94949536%_)
                                                  (letrec ((_%loop94959539%_
                                                            (lambda (_%hd94939543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause94999546%_)
                      (if (gx#stx-pair? _%hd94939543%_)
                          (let ((_%e94969548%_ (gx#syntax-e _%hd94939543%_)))
                            (let ((_%lp-hd94979552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e94969548%_)))
                                  (_%lp-tl94989555%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e94969548%_))))
                              (_%loop94959539%_
                               _%lp-tl94989555%_
                               (cons _%lp-hd94979552%_ _%clause94999546%_))))
                          (let ((_%clause95009558%_
                                 (reverse _%clause94999546%_)))
                            ((lambda (_%g94849561%_ _%g94859563%_)
                               (let ((_g21065_
                                      (_%parse-clauses9456%_
                                       _%g94859563%_
                                       (foldr (lambda (_%g95819584%_
                                                       _%g95829587%_)
                                                (cons _%g95819584%_
                                                      _%g95829587%_))
                                              '()
                                              _%g94849561%_))))
                                 (begin
                                   (let ((_g21066_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21065_)
                                                (##values-length _g21065_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21066_ 3)))
                                         (error "Context expects 3 values"
                                                _g21066_)))
                                   (let ((_%datums9590%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21065_ 0)))
                                         (_%dispatch9592%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21065_ 1)))
                                         (_%default9593%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21065_ 2))))
                                     (let ((_%datum-count9595%_
                                            (_%count-datums9459%_
                                             _%datums9590%_)))
                                       (if (< _%datum-count9595%_ '6)
                                           (_%generate-simple-case9464%_
                                            _%g94859563%_
                                            _%datums9590%_
                                            _%dispatch9592%_
                                            _%default9593%_)
                                           (if (_%char-datums?9461%_
                                                _%datums9590%_)
                                               (_%generate-char-dispatch9473%_
                                                _%g94859563%_
                                                _%datums9590%_
                                                _%dispatch9592%_
                                                _%default9593%_)
                                               (if (_%fixnum-datums?9462%_
                                                    _%datums9590%_)
                                                   (_%generate-fixnum-dispatch9478%_
                                                    _%g94859563%_
                                                    _%datums9590%_
                                                    _%dispatch9592%_
                                                    _%default9593%_)
                                                   (if (< _%datum-count9595%_
                                                          '12)
                                                       (_%generate-simple-case9464%_
                                                        _%g94859563%_
                                                        _%datums9590%_
                                                        _%dispatch9592%_
                                                        _%default9593%_)
                                                       (if (_%symbolic-datums?9460%_
                                                            _%datums9590%_)
                                                           (_%generate-symbolic-dispatch9468%_
                                                            _%g94859563%_
                                                            _%datums9590%_
                                                            _%dispatch9592%_
                                                            _%default9593%_)
                                                           (_%generate-generic-dispatch9480%_
                                                            _%g94859563%_
                                                            _%datums9590%_
                                                            _%dispatch9592%_
                                                            _%default9593%_)))))))))))
                             _%clause95009558%_
                             _%hd94909527%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop94959539%_
                                                     _%target94929533%_
                                                     '()))
                                                  (_%g94829506%_
                                                   _%g94839510%_)))))
                                        (_%g94829506%_ _%g94839510%_))))
                                (_%g94829506%_ _%g94839510%_))))
                        (_%g94829506%_ _%g94839510%_)))))
            (_%g94819612%_ _%stx9453%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12490%_)
        (let* ((_%g1249312511%_
                (lambda (_%g1249412507%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1249412507%_)))
               (_%g1249212583%_
                (lambda (_%g1249412515%_)
                  (if (gx#stx-pair? _%g1249412515%_)
                      (let ((_%e1249712518%_ (gx#syntax-e _%g1249412515%_)))
                        (let ((_%hd1249812522%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1249712518%_)))
                              (_%tl1249912525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1249712518%_))))
                          (if (gx#stx-pair? _%tl1249912525%_)
                              (let ((_%e1250012528%_
                                     (gx#syntax-e _%tl1249912525%_)))
                                (let ((_%hd1250112532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1250012528%_)))
                                      (_%tl1250212535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1250012528%_))))
                                  (if (gx#stx-pair? _%tl1250212535%_)
                                      (let ((_%e1250312538%_
                                             (gx#syntax-e _%tl1250212535%_)))
                                        (let ((_%hd1250412542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1250312538%_)))
                                              (_%tl1250512545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1250312538%_))))
                                          (if (gx#stx-null? _%tl1250512545%_)
                                              ((lambda (_%g1249512548%_
                                                        _%g1249612550%_)
                                                 (let ((_%datum-e12566%_
                                                        (gx#stx-e
                                                         _%g1249612550%_)))
                                                   (if (or (symbol? _%datum-e12566%_)
                                                           (keyword?
                                                            _%datum-e12566%_)
                                                           (immediate?
                                                            _%datum-e12566%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1249612550%_ '()))
                           (cons _%g1249512548%_ '())))
               (if (number? _%datum-e12566%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1249612550%_ '()))
                               (cons _%g1249512548%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1249612550%_ '()))
                               (cons _%g1249512548%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1250412542%_
                                               _%hd1250112532%_)
                                              (_%g1249312511%_
                                               _%g1249412515%_))))
                                      (_%g1249312511%_ _%g1249412515%_))))
                              (_%g1249312511%_ _%g1249412515%_))))
                      (_%g1249312511%_ _%g1249412515%_)))))
          (_%g1249212583%_ _%stx12490%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12587%_)
        (let* ((_%g1259112615%_
                (lambda (_%g1259212611%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1259212611%_)))
               (_%g1259012698%_
                (lambda (_%g1259212619%_)
                  (if (gx#stx-pair? _%g1259212619%_)
                      (let ((_%e1259512622%_ (gx#syntax-e _%g1259212619%_)))
                        (let ((_%hd1259612626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1259512622%_)))
                              (_%tl1259712629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1259512622%_))))
                          (if (gx#stx-pair? _%tl1259712629%_)
                              (let ((_%e1259812632%_
                                     (gx#syntax-e _%tl1259712629%_)))
                                (let ((_%hd1259912636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1259812632%_)))
                                      (_%tl1260012639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1259812632%_))))
                                  (if (gx#stx-pair/null? _%tl1260012639%_)
                                      (let ((_g21067_
                                             (gx#syntax-split-splice
                                              _%tl1260012639%_
                                              '0)))
                                        (begin
                                          (let ((_g21068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21067_)
                                                       (##values-length
                                                        _g21067_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21068_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21068_)))
                                          (let ((_%target1260112642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21067_ 0)))
                                                (_%tl1260312645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21067_ 1))))
                                            (if (gx#stx-null? _%tl1260312645%_)
                                                (letrec ((_%loop1260412648%_
                                                          (lambda (_%hd1260212652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1260812655%_)
                    (if (gx#stx-pair? _%hd1260212652%_)
                        (let ((_%e1260512657%_ (gx#syntax-e _%hd1260212652%_)))
                          (let ((_%lp-hd1260612661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1260512657%_)))
                                (_%lp-tl1260712664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1260512657%_))))
                            (_%loop1260412648%_
                             _%lp-tl1260712664%_
                             (cons _%lp-hd1260612661%_ _%K1260812655%_))))
                        (let ((_%K1260912667%_ (reverse _%K1260812655%_)))
                          ((lambda (_%g1259312670%_ _%g1259412672%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%g1259412672%_
                                               (foldr (lambda (_%g1268912692%_
                                                               _%g1269012695%_)
                                                        (cons _%g1268912692%_
                                                              _%g1269012695%_))
                                                      '()
                                                      _%g1259312670%_)))))
                           _%K1260912667%_
                           _%hd1259912636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1260412648%_
                                                   _%target1260112642%_
                                                   '()))
                                                (_%g1259112615%_
                                                 _%g1259212619%_)))))
                                      (_%g1259112615%_ _%g1259212619%_))))
                              (_%g1259112615%_ _%g1259212619%_))))
                      (_%g1259112615%_ _%g1259212619%_)))))
          (_%g1259012698%_ _%$stx12587%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12703%_)
        (let* ((_%__stx1974119742%_ _%stx12703%_)
               (_%g1271012806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1974119742%_))))
          (let ((_%__kont1974419745%_
                 (lambda (_%g1271213281%_ _%g1271313283%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1974619747%_
                 (lambda (_%g1272313223%_ _%g1272413225%_ _%g1272513226%_)
                   _%g1272313223%_))
                (_%__kont1974819749%_
                 (lambda (_%g1273813120%_
                          _%g1273913122%_
                          _%g1274013123%_
                          _%g1274113124%_)
                   (let* ((_%g1314513153%_
                           (lambda (_%g1314613149%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1314613149%_)))
                          (_%g1314413172%_
                           (lambda (_%g1314613157%_)
                             ((lambda (_%g1314713160%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%g1274013123%_
                                                        (cons _%g1314713160%_
                                                              '())))
                                            (cons _%g1273913122%_
                                                  (cons _%g1273813120%_
                                                        '())))))
                              _%g1314613157%_))))
                     (_%g1314413172%_ (gx#stx-e _%g1274113124%_)))))
                (_%__kont1975019751%_
                 (lambda (_%g1275712970%_
                          _%g1275812972%_
                          _%g1275912973%_
                          _%g1276012974%_
                          _%g1276112975%_)
                   (let* ((_%g1299913014%_
                           (lambda (_%g1300013010%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1300013010%_)))
                          (_%g1299813059%_
                           (lambda (_%g1300013018%_)
                             (if (gx#stx-pair? _%g1300013018%_)
                                 (let ((_%e1300313021%_
                                        (gx#syntax-e _%g1300013018%_)))
                                   (let ((_%hd1300413025%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1300313021%_)))
                                         (_%tl1300513028%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1300313021%_))))
                                     (if (gx#stx-pair? _%tl1300513028%_)
                                         (let ((_%e1300613031%_
                                                (gx#syntax-e
                                                 _%tl1300513028%_)))
                                           (let ((_%hd1300713035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1300613031%_)))
                                                 (_%tl1300813038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1300613031%_))))
                                             (if (gx#stx-null?
                                                  _%tl1300813038%_)
                                                 ((lambda (_%g1300113041%_
                                                           _%g1300213043%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%g1276012974%_
                                    (cons _%g1300213043%_ '())))
                        (cons _%g1275912973%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%g1276012974%_
                                                            (cons _%g1300113041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1275812972%_
                                                      (cons _%g1275712970%_
                                                            '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1300713035%_
                                                  _%hd1300413025%_)
                                                 (_%g1299913014%_
                                                  _%g1300013018%_))))
                                         (_%g1299913014%_ _%g1300013018%_))))
                                 (_%g1299913014%_ _%g1300013018%_)))))
                     (_%g1299813059%_
                      (list (gx#stx-e _%g1276112975%_)
                            (fx1+ (gx#stx-e _%g1276112975%_)))))))
                (_%__kont1975219753%_
                 (lambda (_%g1278012871%_ _%g1278112873%_ _%g1278212874%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1278212874%_
                               (cons _%g1278112873%_
                                     (foldr (lambda (_%g1289412897%_
                                                     _%g1289512900%_)
                                              (cons _%g1289412897%_
                                                    _%g1289512900%_))
                                            '()
                                            _%g1278012871%_)))))))
            (let ((_%__match1989819899%_
                   (lambda (_%e1278312813%_
                            _%hd1278412817%_
                            _%tl1278512820%_
                            _%e1278612823%_
                            _%hd1278712827%_
                            _%tl1278812830%_
                            _%e1278912833%_
                            _%hd1279012837%_
                            _%tl1279112840%_
                            _%__splice1975419755%_
                            _%target1279212843%_
                            _%tl1279412846%_)
                     (letrec ((_%loop1279512849%_
                               (lambda (_%hd1279312853%_ _%K1279912856%_)
                                 (if (gx#stx-pair? _%hd1279312853%_)
                                     (let ((_%e1279612858%_
                                            (gx#syntax-e _%hd1279312853%_)))
                                       (let ((_%lp-tl1279812865%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1279612858%_)))
                                             (_%lp-hd1279712862%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1279612858%_))))
                                         (_%loop1279512849%_
                                          _%lp-tl1279812865%_
                                          (cons _%lp-hd1279712862%_
                                                _%K1279912856%_))))
                                     (let ((_%K1280012868%_
                                            (reverse _%K1279912856%_)))
                                       (_%__kont1975219753%_
                                        _%K1280012868%_
                                        _%hd1279012837%_
                                        _%hd1278712827%_))))))
                       (_%loop1279512849%_ _%target1279212843%_ '())))))
              (if (gx#stx-pair? _%__stx1974119742%_)
                  (let ((_%e1271413251%_ (gx#syntax-e _%__stx1974119742%_)))
                    (let ((_%tl1271613258%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1271413251%_)))
                          (_%hd1271513255%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1271413251%_))))
                      (if (gx#stx-pair? _%tl1271613258%_)
                          (let ((_%e1271713261%_
                                 (gx#syntax-e _%tl1271613258%_)))
                            (let ((_%tl1271913268%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1271713261%_)))
                                  (_%hd1271813265%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1271713261%_))))
                              (if (gx#stx-pair? _%tl1271913268%_)
                                  (let ((_%e1272013271%_
                                         (gx#syntax-e _%tl1271913268%_)))
                                    (let ((_%tl1272213278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1272013271%_)))
                                          (_%hd1272113275%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1272013271%_))))
                                      (if (gx#stx-null? _%tl1272213278%_)
                                          (_%__kont1974419745%_
                                           _%hd1272113275%_
                                           _%hd1271813265%_)
                                          (if (gx#stx-pair? _%tl1272213278%_)
                                              (let ((_%e1273513213%_
                                                     (gx#syntax-e
                                                      _%tl1272213278%_)))
                                                (let ((_%tl1273713220%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1273513213%_)))
                                                      (_%hd1273613217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1273513213%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1273713220%_)
                                                      (_%__kont1974619747%_
                                                       _%hd1273613217%_
                                                       _%hd1272113275%_
                                                       _%hd1271813265%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1273713220%_)
                                                          (let ((_%e1275413110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1273713220%_)))
                    (let ((_%tl1275613117%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1275413110%_)))
                          (_%hd1275513114%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1275413110%_))))
                      (if (gx#stx-null? _%tl1275613117%_)
                          (_%__kont1974819749%_
                           _%hd1275513114%_
                           _%hd1273613217%_
                           _%hd1272113275%_
                           _%hd1271813265%_)
                          (if (gx#stx-pair? _%tl1275613117%_)
                              (let ((_%e1277712960%_
                                     (gx#syntax-e _%tl1275613117%_)))
                                (let ((_%tl1277912967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1277712960%_)))
                                      (_%hd1277812964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1277712960%_))))
                                  (if (gx#stx-null? _%tl1277912967%_)
                                      (_%__kont1975019751%_
                                       _%hd1277812964%_
                                       _%hd1275513114%_
                                       _%hd1273613217%_
                                       _%hd1272113275%_
                                       _%hd1271813265%_)
                                      (if (gx#stx-pair/null? _%tl1272213278%_)
                                          (let ((_%__splice1975419755%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1272213278%_
                                                  '0)))
                                            (let ((_%tl1279412846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1975419755%_
                                                      '1)))
                                                  (_%target1279212843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1975419755%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1279412846%_)
                                                  (_%__match1989819899%_
                                                   _%e1271413251%_
                                                   _%hd1271513255%_
                                                   _%tl1271613258%_
                                                   _%e1271713261%_
                                                   _%hd1271813265%_
                                                   _%tl1271913268%_
                                                   _%e1272013271%_
                                                   _%hd1272113275%_
                                                   _%tl1272213278%_
                                                   _%__splice1975419755%_
                                                   _%target1279212843%_
                                                   _%tl1279412846%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1271012806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1271012806%_))))))
                              (if (gx#stx-pair/null? _%tl1272213278%_)
                                  (let ((_%__splice1975419755%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1272213278%_
                                          '0)))
                                    (let ((_%tl1279412846%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1975419755%_
                                              '1)))
                                          (_%target1279212843%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1975419755%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1279412846%_)
                                          (_%__match1989819899%_
                                           _%e1271413251%_
                                           _%hd1271513255%_
                                           _%tl1271613258%_
                                           _%e1271713261%_
                                           _%hd1271813265%_
                                           _%tl1271913268%_
                                           _%e1272013271%_
                                           _%hd1272113275%_
                                           _%tl1272213278%_
                                           _%__splice1975419755%_
                                           _%target1279212843%_
                                           _%tl1279412846%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1271012806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1271012806%_)))))))
                  (if (gx#stx-pair/null? _%tl1272213278%_)
                      (let ((_%__splice1975419755%_
                             (gx#syntax-split-splice->vector
                              _%tl1272213278%_
                              '0)))
                        (let ((_%tl1279412846%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1975419755%_ '1)))
                              (_%target1279212843%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1975419755%_ '0))))
                          (if (gx#stx-null? _%tl1279412846%_)
                              (_%__match1989819899%_
                               _%e1271413251%_
                               _%hd1271513255%_
                               _%tl1271613258%_
                               _%e1271713261%_
                               _%hd1271813265%_
                               _%tl1271913268%_
                               _%e1272013271%_
                               _%hd1272113275%_
                               _%tl1272213278%_
                               _%__splice1975419755%_
                               _%target1279212843%_
                               _%tl1279412846%_)
                              (let ()
                                (declare (not safe))
                                (_%g1271012806%_)))))
                      (let () (declare (not safe)) (_%g1271012806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1272213278%_)
                                                  (let ((_%__splice1975419755%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1272213278%_
                                                          '0)))
                                                    (let ((_%tl1279412846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1975419755%_
                                                              '1)))
                                                          (_%target1279212843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1975419755%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1279412846%_)
                                                          (_%__match1989819899%_
                                                           _%e1271413251%_
                                                           _%hd1271513255%_
                                                           _%tl1271613258%_
                                                           _%e1271713261%_
                                                           _%hd1271813265%_
                                                           _%tl1271913268%_
                                                           _%e1272013271%_
                                                           _%hd1272113275%_
                                                           _%tl1272213278%_
                                                           _%__splice1975419755%_
                                                           _%target1279212843%_
                                                           _%tl1279412846%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1271012806%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1271012806%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1271012806%_)))))
                          (let () (declare (not safe)) (_%g1271012806%_)))))
                  (let () (declare (not safe)) (_%g1271012806%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13303%_)
        (letrec ((_%split13306%_
                  (lambda (_%lst13661%_ _%mid13663%_)
                    (let _%lp13665%_ ((_%i13668%_ '0)
                                      (_%rest13670%_ _%lst13661%_)
                                      (_%left13671%_ '()))
                      (if (fx< _%i13668%_ _%mid13663%_)
                          (_%lp13665%_
                           (fx1+ _%i13668%_)
                           (cdr _%rest13670%_)
                           (cons (car _%rest13670%_) _%left13671%_))
                          (values (reverse _%left13671%_) _%rest13670%_))))))
          (let* ((_%g1330913337%_
                  (lambda (_%g1331013333%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1331013333%_)))
                 (_%g1330813657%_
                  (lambda (_%g1331013341%_)
                    (if (gx#stx-pair? _%g1331013341%_)
                        (let ((_%e1331413344%_ (gx#syntax-e _%g1331013341%_)))
                          (let ((_%hd1331513348%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1331413344%_)))
                                (_%tl1331613351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1331413344%_))))
                            (if (gx#stx-pair? _%tl1331613351%_)
                                (let ((_%e1331713354%_
                                       (gx#syntax-e _%tl1331613351%_)))
                                  (let ((_%hd1331813358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1331713354%_)))
                                        (_%tl1331913361%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1331713354%_))))
                                    (if (gx#stx-pair? _%tl1331913361%_)
                                        (let ((_%e1332013364%_
                                               (gx#syntax-e _%tl1331913361%_)))
                                          (let ((_%hd1332113368%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1332013364%_)))
                                                (_%tl1332213371%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1332013364%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1332213371%_)
                                                (let ((_g21069_
                                                       (gx#syntax-split-splice
                                                        _%tl1332213371%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21069_)
                         (##values-length _g21069_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21070_ 2)))
                  (error "Context expects 2 values" _g21070_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1332313374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21069_
                                                              0)))
                                                          (_%tl1332513377%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21069_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1332513377%_)
                                                          (letrec ((_%loop1332613380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1332413384%_ _%K1333013387%_)
                              (if (gx#stx-pair? _%hd1332413384%_)
                                  (let ((_%e1332713389%_
                                         (gx#syntax-e _%hd1332413384%_)))
                                    (let ((_%lp-hd1332813393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1332713389%_)))
                                          (_%lp-tl1332913396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1332713389%_))))
                                      (_%loop1332613380%_
                                       _%lp-tl1332913396%_
                                       (cons _%lp-hd1332813393%_
                                             _%K1333013387%_))))
                                  (let ((_%K1333113399%_
                                         (reverse _%K1333013387%_)))
                                    ((lambda (_%g1331113402%_
                                              _%g1331213404%_
                                              _%g1331313405%_)
                                       (let* ((_%len13435%_
                                               (length (foldr (lambda (_%g1342613429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1342713432%_)
                        (cons _%g1342613429%_ _%g1342713432%_))
                      '()
                      _%g1331113402%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13438%_
                                               (quotient _%len13435%_ '2))
                                              (_g21071_
                                               (_%split13306%_
                                                (foldr (lambda (_%g1344013443%_
                                                                _%g1344113446%_)
                                                         (cons _%g1344013443%_
                                                               _%g1344113446%_))
                                                       '()
                                                       _%g1331113402%_)
                                                _%mid13438%_)))
                                         (begin
                                           (let ((_g21072_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21071_)
                                                        (##values-length
                                                         _g21071_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21072_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21072_)))
                                           (let ((_%left13449%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g21071_ 0)))
                                                 (_%right13451%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g21071_
                                                     1))))
                                             (let* ((_%g1345513496%_
                                                     (lambda (_%g1345613492%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1345613492%_)))
                                                    (_%g1345413653%_
                                                     (lambda (_%g1345613500%_)
                                                       (if (gx#stx-pair?
                                                            _%g1345613500%_)
                                                           (let ((_%e1346113503%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1345613500%_)))
                     (let ((_%hd1346213507%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1346113503%_)))
                           (_%tl1346313510%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1346113503%_))))
                       (if (gx#stx-pair? _%tl1346313510%_)
                           (let ((_%e1346413513%_
                                  (gx#syntax-e _%tl1346313510%_)))
                             (let ((_%hd1346513517%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1346413513%_)))
                                   (_%tl1346613520%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1346413513%_))))
                               (if (gx#stx-pair/null? _%hd1346513517%_)
                                   (let ((_g21073_
                                          (gx#syntax-split-splice
                                           _%hd1346513517%_
                                           '0)))
                                     (begin
                                       (let ((_g21074_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21073_)
                                                    (##values-length _g21073_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21074_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21074_)))
                                       (let ((_%target1346713523%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21073_ 0)))
                                             (_%tl1346913526%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21073_ 1))))
                                         (if (gx#stx-null? _%tl1346913526%_)
                                             (letrec ((_%loop1347013529%_
                                                       (lambda (_%hd1346813533%_
                                                                _%K-left1347413536%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1346813533%_)
                                                             (let ((_%e1347113538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1346813533%_)))
                       (let ((_%lp-hd1347213542%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1347113538%_)))
                             (_%lp-tl1347313545%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1347113538%_))))
                         (_%loop1347013529%_
                          _%lp-tl1347313545%_
                          (cons _%lp-hd1347213542%_ _%K-left1347413536%_))))
                     (let ((_%K-left1347513548%_
                            (reverse _%K-left1347413536%_)))
                       (if (gx#stx-pair? _%tl1346613520%_)
                           (let ((_%e1347613551%_
                                  (gx#syntax-e _%tl1346613520%_)))
                             (let ((_%hd1347713555%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1347613551%_)))
                                   (_%tl1347813558%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1347613551%_))))
                               (if (gx#stx-pair/null? _%hd1347713555%_)
                                   (let ((_g21075_
                                          (gx#syntax-split-splice
                                           _%hd1347713555%_
                                           '0)))
                                     (begin
                                       (let ((_g21076_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21075_)
                                                    (##values-length _g21075_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21076_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21076_)))
                                       (let ((_%target1347913561%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21075_ 0)))
                                             (_%tl1348113564%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21075_ 1))))
                                         (if (gx#stx-null? _%tl1348113564%_)
                                             (letrec ((_%loop1348213567%_
                                                       (lambda (_%hd1348013571%_
                                                                _%K-right1348613574%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1348013571%_)
                                                             (let ((_%e1348313576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1348013571%_)))
                       (let ((_%lp-hd1348413580%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1348313576%_)))
                             (_%lp-tl1348513583%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1348313576%_))))
                         (_%loop1348213567%_
                          _%lp-tl1348513583%_
                          (cons _%lp-hd1348413580%_ _%K-right1348613574%_))))
                     (let ((_%K-right1348713586%_
                            (reverse _%K-right1348613574%_)))
                       (if (gx#stx-pair? _%tl1347813558%_)
                           (let ((_%e1348813589%_
                                  (gx#syntax-e _%tl1347813558%_)))
                             (let ((_%hd1348913593%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1348813589%_)))
                                   (_%tl1349013596%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1348813589%_))))
                               (if (gx#stx-null? _%tl1349013596%_)
                                   ((lambda (_%g1345713599%_
                                             _%g1345813601%_
                                             _%g1345913602%_
                                             _%g1346013603%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%g1331213404%_
                                                              (cons _%g1345713599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%g1331313405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1331213404%_
                                  (foldr (lambda (_%g1363613641%_
                                                  _%g1363713644%_)
                                           (cons _%g1363613641%_
                                                 _%g1363713644%_))
                                         '()
                                         _%g1345913602%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%g1345713599%_
                                  (cons _%g1331213404%_
                                        (foldr (lambda (_%g1363813647%_
                                                        _%g1363913650%_)
                                                 (cons _%g1363813647%_
                                                       _%g1363913650%_))
                                               '()
                                               _%g1345813601%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1348913593%_
                                    _%K-right1348713586%_
                                    _%K-left1347513548%_
                                    _%hd1346213507%_)
                                   (_%g1345513496%_ _%g1345613500%_))))
                           (_%g1345513496%_ _%g1345613500%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1348213567%_
                                                _%target1347913561%_
                                                '()))
                                             (_%g1345513496%_
                                              _%g1345613500%_)))))
                                   (_%g1345513496%_ _%g1345613500%_))))
                           (_%g1345513496%_ _%g1345613500%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1347013529%_
                                                _%target1346713523%_
                                                '()))
                                             (_%g1345513496%_
                                              _%g1345613500%_)))))
                                   (_%g1345513496%_ _%g1345613500%_))))
                           (_%g1345513496%_ _%g1345613500%_))))
                   (_%g1345513496%_ _%g1345613500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1345413653%_
                                                (list _%mid13438%_
                                                      _%left13449%_
                                                      _%right13451%_
                                                      (fx+ _%mid13438%_
                                                           (gx#stx-e
                                                            _%g1331313405%_)))))))))
                                     _%K1333113399%_
                                     _%hd1332113368%_
                                     _%hd1331813358%_))))))
                    (_%loop1332613380%_ _%target1332313374%_ '()))
                  (_%g1330913337%_ _%g1331013341%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1330913337%_
                                                 _%g1331013341%_))))
                                        (_%g1330913337%_ _%g1331013341%_))))
                                (_%g1330913337%_ _%g1331013341%_))))
                        (_%g1330913337%_ _%g1331013341%_)))))
            (_%g1330813657%_ _%stx13303%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13677%_)
        (let* ((_%__stx1990119902%_ _%$stx13677%_)
               (_%g1368213713%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1990119902%_))))
          (let ((_%__kont1990419905%_
                 (lambda (_%g1368413823%_) _%g1368413823%_))
                (_%__kont1990619907%_
                 (lambda (_%g1369113768%_ _%g1369213770%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1369213770%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1378713790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1378813793%_)
                        (cons _%g1378713790%_ _%g1378813793%_))
                      '()
                      _%g1369113768%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1994419945%_
                   (lambda (_%e1369313720%_
                            _%hd1369413724%_
                            _%tl1369513727%_
                            _%e1369613730%_
                            _%hd1369713734%_
                            _%tl1369813737%_
                            _%__splice1990819909%_
                            _%target1369913740%_
                            _%tl1370113743%_)
                     (letrec ((_%loop1370213746%_
                               (lambda (_%hd1370013750%_ _%rest1370613753%_)
                                 (if (gx#stx-pair? _%hd1370013750%_)
                                     (let ((_%e1370313755%_
                                            (gx#syntax-e _%hd1370013750%_)))
                                       (let ((_%lp-tl1370513762%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1370313755%_)))
                                             (_%lp-hd1370413759%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1370313755%_))))
                                         (_%loop1370213746%_
                                          _%lp-tl1370513762%_
                                          (cons _%lp-hd1370413759%_
                                                _%rest1370613753%_))))
                                     (let ((_%rest1370713765%_
                                            (reverse _%rest1370613753%_)))
                                       (_%__kont1990619907%_
                                        _%rest1370713765%_
                                        _%hd1369713734%_))))))
                       (_%loop1370213746%_ _%target1369913740%_ '())))))
              (if (gx#stx-pair? _%__stx1990119902%_)
                  (let ((_%e1368513803%_ (gx#syntax-e _%__stx1990119902%_)))
                    (let ((_%tl1368713810%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1368513803%_)))
                          (_%hd1368613807%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1368513803%_))))
                      (if (gx#stx-pair? _%tl1368713810%_)
                          (let ((_%e1368813813%_
                                 (gx#syntax-e _%tl1368713810%_)))
                            (let ((_%tl1369013820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1368813813%_)))
                                  (_%hd1368913817%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1368813813%_))))
                              (if (gx#stx-null? _%tl1369013820%_)
                                  (_%__kont1990419905%_ _%hd1368913817%_)
                                  (if (gx#stx-pair/null? _%tl1369013820%_)
                                      (let ((_%__splice1990819909%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1369013820%_
                                              '0)))
                                        (let ((_%tl1370113743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1990819909%_
                                                  '1)))
                                              (_%target1369913740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1990819909%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1370113743%_)
                                              (_%__match1994419945%_
                                               _%e1368513803%_
                                               _%hd1368613807%_
                                               _%tl1368713810%_
                                               _%e1368813813%_
                                               _%hd1368913817%_
                                               _%tl1369013820%_
                                               _%__splice1990819909%_
                                               _%target1369913740%_
                                               _%tl1370113743%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1368213713%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1368213713%_))))))
                          (let () (declare (not safe)) (_%g1368213713%_)))))
                  (let () (declare (not safe)) (_%g1368213713%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx13841%_)
        (let* ((_%__stx1994719948%_ _%$stx13841%_)
               (_%g1384713900%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1994719948%_))))
          (let ((_%__kont1995019951%_
                 (lambda (_%g1384914100%_ _%g1385014102%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1385014102%_
                                           (cons _%g1384914100%_ '()))
                                     '())
                               (cons _%g1385014102%_ '())))))
                (_%__kont1995219953%_
                 (lambda (_%g1386014044%_ _%g1386114046%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1386114046%_
                                           (cons _%g1386014044%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1386114046%_)
                                     '())))))
                (_%__kont1995419955%_
                 (lambda (_%g1387413965%_ _%g1387513967%_ _%g1387613968%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1387613968%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1387513967%_
                                                             (foldr (lambda (_%g1398813991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1398913994%_)
                              (cons _%g1398813991%_ _%g1398913994%_))
                            '()
                            _%g1387413965%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1387613968%_ '()))))))
            (let* ((_%__match2003420035%_
                    (lambda (_%e1387713907%_
                             _%hd1387813911%_
                             _%tl1387913914%_
                             _%e1388013917%_
                             _%hd1388113921%_
                             _%tl1388213924%_
                             _%e1388313927%_
                             _%hd1388413931%_
                             _%tl1388513934%_
                             _%__splice1995619957%_
                             _%target1388613937%_
                             _%tl1388813940%_)
                      (letrec ((_%loop1388913943%_
                                (lambda (_%hd1388713947%_ _%body1389313950%_)
                                  (if (gx#stx-pair? _%hd1388713947%_)
                                      (let ((_%e1389013952%_
                                             (gx#syntax-e _%hd1388713947%_)))
                                        (let ((_%lp-tl1389213959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1389013952%_)))
                                              (_%lp-hd1389113956%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1389013952%_))))
                                          (_%loop1388913943%_
                                           _%lp-tl1389213959%_
                                           (cons _%lp-hd1389113956%_
                                                 _%body1389313950%_))))
                                      (let ((_%body1389413962%_
                                             (reverse _%body1389313950%_)))
                                        (let ((_%g1387413965%_
                                               _%body1389413962%_)
                                              (_%g1387513967%_
                                               _%tl1388513934%_)
                                              (_%g1387613968%_
                                               _%hd1388413931%_))
                                          (if (gx#identifier? _%g1387613968%_)
                                              (_%__kont1995419955%_
                                               _%g1387413965%_
                                               _%g1387513967%_
                                               _%g1387613968%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384713900%_)))))))))
                        (_%loop1388913943%_ _%target1388613937%_ '()))))
                   (_%__match2000820009%_
                    (lambda (_%e1386214004%_
                             _%hd1386314008%_
                             _%tl1386414011%_
                             _%e1386514014%_
                             _%hd1386614018%_
                             _%tl1386714021%_
                             _%e1386814024%_
                             _%hd1386914028%_
                             _%tl1387014031%_
                             _%e1387114034%_
                             _%hd1387214038%_
                             _%tl1387314041%_)
                      (let ((_%g1386014044%_ _%hd1387214038%_)
                            (_%g1386114046%_ _%tl1387014031%_))
                        (if (gx#identifier-list? _%g1386114046%_)
                            (_%__kont1995219953%_
                             _%g1386014044%_
                             _%g1386114046%_)
                            (if (gx#stx-pair/null? _%tl1386714021%_)
                                (let ((_%__splice1995619957%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1386714021%_
                                        '0)))
                                  (let ((_%tl1388813940%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1995619957%_
                                            '1)))
                                        (_%target1388613937%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1995619957%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1388813940%_)
                                        (_%__match2003420035%_
                                         _%e1386214004%_
                                         _%hd1386314008%_
                                         _%tl1386414011%_
                                         _%e1386514014%_
                                         _%hd1386614018%_
                                         _%tl1386714021%_
                                         _%e1386814024%_
                                         _%hd1386914028%_
                                         _%tl1387014031%_
                                         _%__splice1995619957%_
                                         _%target1388613937%_
                                         _%tl1388813940%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1384713900%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1384713900%_)))))))
                   (_%__match1997819979%_
                    (lambda (_%e1385114070%_
                             _%hd1385214074%_
                             _%tl1385314077%_
                             _%e1385414080%_
                             _%hd1385514084%_
                             _%tl1385614087%_
                             _%e1385714090%_
                             _%hd1385814094%_
                             _%tl1385914097%_)
                      (let ((_%g1384914100%_ _%hd1385814094%_)
                            (_%g1385014102%_ _%hd1385514084%_))
                        (if (gx#identifier? _%g1385014102%_)
                            (_%__kont1995019951%_
                             _%g1384914100%_
                             _%g1385014102%_)
                            (if (gx#stx-pair? _%hd1385514084%_)
                                (let ((_%e1386814024%_
                                       (gx#syntax-e _%hd1385514084%_)))
                                  (let ((_%tl1387014031%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1386814024%_)))
                                        (_%hd1386914028%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1386814024%_))))
                                    (if (gx#identifier? _%hd1386914028%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21077_|
                                             _%hd1386914028%_)
                                            (_%__match2000820009%_
                                             _%e1385114070%_
                                             _%hd1385214074%_
                                             _%tl1385314077%_
                                             _%e1385414080%_
                                             _%hd1385514084%_
                                             _%tl1385614087%_
                                             _%e1386814024%_
                                             _%hd1386914028%_
                                             _%tl1387014031%_
                                             _%e1385714090%_
                                             _%hd1385814094%_
                                             _%tl1385914097%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1385614087%_)
                                                (let ((_%__splice1995619957%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1385614087%_
                                                        '0)))
                                                  (let ((_%tl1388813940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1995619957%_
                                                            '1)))
                                                        (_%target1388613937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1995619957%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1388813940%_)
                                                        (_%__match2003420035%_
                                                         _%e1385114070%_
                                                         _%hd1385214074%_
                                                         _%tl1385314077%_
                                                         _%e1385414080%_
                                                         _%hd1385514084%_
                                                         _%tl1385614087%_
                                                         _%e1386814024%_
                                                         _%hd1386914028%_
                                                         _%tl1387014031%_
                                                         _%__splice1995619957%_
                                                         _%target1388613937%_
                                                         _%tl1388813940%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1384713900%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1384713900%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1385614087%_)
                                            (let ((_%__splice1995619957%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1385614087%_
                                                    '0)))
                                              (let ((_%tl1388813940%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1995619957%_
                                                        '1)))
                                                    (_%target1388613937%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1995619957%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1388813940%_)
                                                    (_%__match2003420035%_
                                                     _%e1385114070%_
                                                     _%hd1385214074%_
                                                     _%tl1385314077%_
                                                     _%e1385414080%_
                                                     _%hd1385514084%_
                                                     _%tl1385614087%_
                                                     _%e1386814024%_
                                                     _%hd1386914028%_
                                                     _%tl1387014031%_
                                                     _%__splice1995619957%_
                                                     _%target1388613937%_
                                                     _%tl1388813940%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1384713900%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1384713900%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1384713900%_))))))))
              (if (gx#stx-pair? _%__stx1994719948%_)
                  (let ((_%e1385114070%_ (gx#syntax-e _%__stx1994719948%_)))
                    (let ((_%tl1385314077%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1385114070%_)))
                          (_%hd1385214074%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1385114070%_))))
                      (if (gx#stx-pair? _%tl1385314077%_)
                          (let ((_%e1385414080%_
                                 (gx#syntax-e _%tl1385314077%_)))
                            (let ((_%tl1385614087%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1385414080%_)))
                                  (_%hd1385514084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1385414080%_))))
                              (if (gx#stx-pair? _%tl1385614087%_)
                                  (let ((_%e1385714090%_
                                         (gx#syntax-e _%tl1385614087%_)))
                                    (let ((_%tl1385914097%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1385714090%_)))
                                          (_%hd1385814094%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1385714090%_))))
                                      (if (gx#stx-null? _%tl1385914097%_)
                                          (_%__match1997819979%_
                                           _%e1385114070%_
                                           _%hd1385214074%_
                                           _%tl1385314077%_
                                           _%e1385414080%_
                                           _%hd1385514084%_
                                           _%tl1385614087%_
                                           _%e1385714090%_
                                           _%hd1385814094%_
                                           _%tl1385914097%_)
                                          (if (gx#stx-pair? _%hd1385514084%_)
                                              (let ((_%e1386814024%_
                                                     (gx#syntax-e
                                                      _%hd1385514084%_)))
                                                (let ((_%tl1387014031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1386814024%_)))
                                                      (_%hd1386914028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1386814024%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1385614087%_)
                                                      (let ((_%__splice1995619957%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1385614087%_
                                                              '0)))
                                                        (let ((_%tl1388813940%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1995619957%_ '1)))
                      (_%target1388613937%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1995619957%_ '0))))
                  (if (gx#stx-null? _%tl1388813940%_)
                      (_%__match2003420035%_
                       _%e1385114070%_
                       _%hd1385214074%_
                       _%tl1385314077%_
                       _%e1385414080%_
                       _%hd1385514084%_
                       _%tl1385614087%_
                       _%e1386814024%_
                       _%hd1386914028%_
                       _%tl1387014031%_
                       _%__splice1995619957%_
                       _%target1388613937%_
                       _%tl1388813940%_)
                      (let () (declare (not safe)) (_%g1384713900%_)))))
              (let () (declare (not safe)) (_%g1384713900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384713900%_))))))
                                  (if (gx#stx-pair? _%hd1385514084%_)
                                      (let ((_%e1386814024%_
                                             (gx#syntax-e _%hd1385514084%_)))
                                        (let ((_%tl1387014031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1386814024%_)))
                                              (_%hd1386914028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1386814024%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1385614087%_)
                                              (let ((_%__splice1995619957%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1385614087%_
                                                      '0)))
                                                (let ((_%tl1388813940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1995619957%_
                                                          '1)))
                                                      (_%target1388613937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1995619957%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1388813940%_)
                                                      (_%__match2003420035%_
                                                       _%e1385114070%_
                                                       _%hd1385214074%_
                                                       _%tl1385314077%_
                                                       _%e1385414080%_
                                                       _%hd1385514084%_
                                                       _%tl1385614087%_
                                                       _%e1386814024%_
                                                       _%hd1386914028%_
                                                       _%tl1387014031%_
                                                       _%__splice1995619957%_
                                                       _%target1388613937%_
                                                       _%tl1388813940%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1384713900%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1384713900%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1384713900%_))))))
                          (let () (declare (not safe)) (_%g1384713900%_)))))
                  (let () (declare (not safe)) (_%g1384713900%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14122%_)
        (letrec ((_%let-bind?14125%_
                  (lambda (_%x15034%_)
                    (let* ((_%__stx2003720038%_ _%x15034%_)
                           (_%g1503915058%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2003720038%_))))
                      (let ((_%__kont2004020041%_
                             (lambda (_%g1504115126%_ _%g1504215128%_)
                               (_%let-head?14128%_ _%g1504215128%_)))
                            (_%__kont2004220043%_
                             (lambda (_%g1504915086%_) '#t))
                            (_%__kont2004420045%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2003720038%_)
                            (let ((_%e1504315106%_
                                   (gx#syntax-e _%__stx2003720038%_)))
                              (let ((_%tl1504515113%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1504315106%_)))
                                    (_%hd1504415110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1504315106%_))))
                                (if (gx#stx-pair? _%tl1504515113%_)
                                    (let ((_%e1504615116%_
                                           (gx#syntax-e _%tl1504515113%_)))
                                      (let ((_%tl1504815123%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1504615116%_)))
                                            (_%hd1504715120%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1504615116%_))))
                                        (if (gx#stx-null? _%tl1504815123%_)
                                            (_%__kont2004020041%_
                                             _%hd1504715120%_
                                             _%hd1504415110%_)
                                            (_%__kont2004420045%_))))
                                    (if (gx#stx-null? _%tl1504515113%_)
                                        (_%__kont2004220043%_ _%hd1504415110%_)
                                        (_%__kont2004420045%_)))))
                            (_%__kont2004420045%_))))))
                 (_%let-bind14127%_
                  (lambda (_%x14936%_)
                    (let* ((_%__stx2007120072%_ _%x14936%_)
                           (_%g1494014959%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2007120072%_))))
                      (let ((_%__kont2007420075%_
                             (lambda (_%g1494215015%_ _%g1494315017%_)
                               _%x14936%_))
                            (_%__kont2007620077%_
                             (lambda (_%g1495014976%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1495014976%_ '())))))
                        (if (gx#stx-pair? _%__stx2007120072%_)
                            (let ((_%e1494414995%_
                                   (gx#syntax-e _%__stx2007120072%_)))
                              (let ((_%tl1494615002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1494414995%_)))
                                    (_%hd1494514999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1494414995%_))))
                                (if (gx#stx-pair? _%tl1494615002%_)
                                    (let ((_%e1494715005%_
                                           (gx#syntax-e _%tl1494615002%_)))
                                      (let ((_%tl1494915012%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1494715005%_)))
                                            (_%hd1494815009%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1494715005%_))))
                                        (if (gx#stx-null? _%tl1494915012%_)
                                            (_%__kont2007420075%_
                                             _%hd1494815009%_
                                             _%hd1494514999%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1494014959%_)))))
                                    (if (gx#stx-null? _%tl1494615002%_)
                                        (_%__kont2007620077%_ _%hd1494514999%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1494014959%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1494014959%_)))))))
                 (_%let-head?14128%_
                  (lambda (_%x14876%_)
                    (let* ((_%__stx2010320104%_ _%x14876%_)
                           (_%g1488014891%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2010320104%_))))
                      (let ((_%__kont2010620107%_
                             (lambda (_%g1488214919%_)
                               (gx#stx-andmap gx#identifier? _%g1488214919%_)))
                            (_%__kont2010820109%_
                             (lambda () (gx#identifier? _%x14876%_))))
                        (if (gx#stx-pair? _%__stx2010320104%_)
                            (let ((_%e1488314909%_
                                   (gx#syntax-e _%__stx2010320104%_)))
                              (let ((_%tl1488514916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1488314909%_)))
                                    (_%hd1488414913%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1488314909%_))))
                                (if (gx#identifier? _%hd1488414913%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21078_|
                                         _%hd1488414913%_)
                                        (_%__kont2010620107%_ _%tl1488514916%_)
                                        (_%__kont2010820109%_))
                                    (_%__kont2010820109%_))))
                            (_%__kont2010820109%_))))))
                 (_%let-head14129%_
                  (lambda (_%x14816%_)
                    (let* ((_%__stx2012320124%_ _%x14816%_)
                           (_%g1482014831%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2012320124%_))))
                      (let ((_%__kont2012620127%_
                             (lambda (_%g1482214859%_) _%g1482214859%_))
                            (_%__kont2012820129%_
                             (lambda () (list _%x14816%_))))
                        (if (gx#stx-pair? _%__stx2012320124%_)
                            (let ((_%e1482314849%_
                                   (gx#syntax-e _%__stx2012320124%_)))
                              (let ((_%tl1482514856%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1482314849%_)))
                                    (_%hd1482414853%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1482314849%_))))
                                (if (gx#identifier? _%hd1482414853%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21079_|
                                         _%hd1482414853%_)
                                        (_%__kont2012620127%_ _%tl1482514856%_)
                                        (_%__kont2012820129%_))
                                    (_%__kont2012820129%_))))
                            (_%__kont2012820129%_)))))))
          (let* ((_%__stx2014320144%_ _%stx14122%_)
                 (_%g1413314205%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2014320144%_))))
            (let ((_%__kont2014620147%_
                   (lambda (_%g1413514789%_
                            _%g1413614791%_
                            _%g1413714792%_
                            _%g1413814793%_)
                     (cons _%g1413814793%_
                           (cons (cons (cons _%g1413714792%_
                                             (cons _%g1413614791%_ '()))
                                       '())
                                 _%g1413514789%_))))
                  (_%__kont2014820149%_
                   (lambda (_%g1415114711%_ _%g1415214713%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1415214713%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1473314736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1473414739%_)
                    (cons _%g1473314736%_ _%g1473414739%_))
                  '()
                  _%g1415114711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2015220153%_
                   (lambda (_%g1417414288%_ _%g1417514290%_)
                     (let* ((_%g1432114347%_
                             (lambda (_%g1432214343%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1432214343%_)))
                            (_%g1432014624%_
                             (lambda (_%g1432214351%_)
                               (if (gx#stx-pair/null? _%g1432214351%_)
                                   (let ((_g21080_
                                          (gx#syntax-split-splice
                                           _%g1432214351%_
                                           '0)))
                                     (begin
                                       (let ((_g21081_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21080_)
                                                    (##values-length _g21080_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21081_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21081_)))
                                       (let ((_%target1432514354%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21080_ 0)))
                                             (_%tl1432714357%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21080_ 1))))
                                         (if (gx#stx-null? _%tl1432714357%_)
                                             (letrec ((_%loop1432814360%_
                                                       (lambda (_%hd1432614364%_
                                                                _%e1433214367%_
                                                                _%hd1433314368%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1432614364%_)
                                                             (let ((_%e1432914370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1432614364%_)))
                       (let ((_%lp-hd1433014374%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1432914370%_)))
                             (_%lp-tl1433114377%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1432914370%_))))
                         (if (gx#stx-pair? _%lp-hd1433014374%_)
                             (let ((_%e1433614380%_
                                    (gx#syntax-e _%lp-hd1433014374%_)))
                               (let ((_%hd1433714384%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1433614380%_)))
                                     (_%tl1433814387%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1433614380%_))))
                                 (if (gx#stx-pair? _%tl1433814387%_)
                                     (let ((_%e1433914390%_
                                            (gx#syntax-e _%tl1433814387%_)))
                                       (let ((_%hd1434014394%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1433914390%_)))
                                             (_%tl1434114397%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1433914390%_))))
                                         (if (gx#stx-null? _%tl1434114397%_)
                                             (_%loop1432814360%_
                                              _%lp-tl1433114377%_
                                              (cons _%hd1434014394%_
                                                    _%e1433214367%_)
                                              (cons _%hd1433714384%_
                                                    _%hd1433314368%_))
                                             (_%g1432114347%_
                                              _%g1432214351%_))))
                                     (_%g1432114347%_ _%g1432214351%_))))
                             (_%g1432114347%_ _%g1432214351%_))))
                     (let ((_%e1433414400%_ (reverse _%e1433214367%_))
                           (_%hd1433514402%_ (reverse _%hd1433314368%_)))
                       ((lambda (_%g1432314404%_ _%g1432414406%_)
                          (let* ((_%g1442214439%_
                                  (lambda (_%g1442314435%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1442314435%_)))
                                 (_%g1442114612%_
                                  (lambda (_%g1442314443%_)
                                    (if (gx#stx-pair/null? _%g1442314443%_)
                                        (let ((_g21082_
                                               (gx#syntax-split-splice
                                                _%g1442314443%_
                                                '0)))
                                          (begin
                                            (let ((_g21083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21082_)
                                                         (##values-length
                                                          _g21082_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21083_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21083_)))
                                            (let ((_%target1442514446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21082_
                                                      0)))
                                                  (_%tl1442714449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21082_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1442714449%_)
                                                  (letrec ((_%loop1442814452%_
                                                            (lambda (_%hd1442614456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1443214459%_)
                      (if (gx#stx-pair? _%hd1442614456%_)
                          (let ((_%e1442914461%_
                                 (gx#syntax-e _%hd1442614456%_)))
                            (let ((_%lp-hd1443014465%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1442914461%_)))
                                  (_%lp-tl1443114468%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1442914461%_))))
                              (_%loop1442814452%_
                               _%lp-tl1443114468%_
                               (cons _%lp-hd1443014465%_ _%$e1443214459%_))))
                          (let ((_%$e1443314471%_ (reverse _%$e1443214459%_)))
                            ((lambda (_%g1442414474%_)
                               (let* ((_%g1449114508%_
                                       (lambda (_%g1449214504%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1449214504%_)))
                                      (_%g1449014600%_
                                       (lambda (_%g1449214512%_)
                                         (if (gx#stx-pair/null?
                                              _%g1449214512%_)
                                             (let ((_g21084_
                                                    (gx#syntax-split-splice
                                                     _%g1449214512%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21085_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21084_)
                                                              (##values-length
                                                               _g21084_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1449414515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21084_
                                                           0)))
                                                       (_%tl1449614518%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21084_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1449614518%_)
                                                       (letrec ((_%loop1449714521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1449514525%_ _%hd-bind1450114528%_)
                           (if (gx#stx-pair? _%hd1449514525%_)
                               (let ((_%e1449814530%_
                                      (gx#syntax-e _%hd1449514525%_)))
                                 (let ((_%lp-hd1449914534%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1449814530%_)))
                                       (_%lp-tl1450014537%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1449814530%_))))
                                   (_%loop1449714521%_
                                    _%lp-tl1450014537%_
                                    (cons _%lp-hd1449914534%_
                                          _%hd-bind1450114528%_))))
                               (let ((_%hd-bind1450214540%_
                                      (reverse _%hd-bind1450114528%_)))
                                 ((lambda (_%g1449314543%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g1432314404%_
                                                   _%g1442414474%_)
                                                  (foldr (lambda (_%g1456114572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1456214575%_
                          _%g1456314577%_)
                   (cons (cons (cons _%g1456214575%_ '())
                               (cons _%g1456114572%_ '()))
                         _%g1456314577%_))
                 '()
                 _%g1432314404%_
                 _%g1442414474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1456414580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1456514583%_)
                             (cons _%g1456414580%_ _%g1456514583%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%g1442414474%_
                                                _%g1449314543%_)
                                               (foldr (lambda (_%g1456614586%_
                                                               _%g1456714589%_
                                                               _%g1456814591%_)
                                                        (cons (cons _%g1456714589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1456614586%_ '()))
                      _%g1456814591%_))
              '()
              _%g1442414474%_
              _%g1449314543%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1456914594%_
                                                             _%g1457014597%_)
                                                      (cons _%g1456914594%_
                                                            _%g1457014597%_))
                                                    '()
                                                    _%g1417414288%_)))
                                 '())
                           _%g1442414474%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1450214540%_))))))
                 (_%loop1449714521%_ _%target1449414515%_ '()))
               (_%g1449114508%_ _%g1449214512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1449114508%_
                                              _%g1449214512%_)))))
                                 (_%g1449014600%_
                                  (gx#stx-map
                                   _%let-head14129%_
                                   (foldr (lambda (_%g1460314606%_
                                                   _%g1460414609%_)
                                            (cons _%g1460314606%_
                                                  _%g1460414609%_))
                                          '()
                                          _%g1432414406%_)))))
                             _%$e1443314471%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1442814452%_
                                                     _%target1442514446%_
                                                     '()))
                                                  (_%g1442214439%_
                                                   _%g1442314443%_)))))
                                        (_%g1442214439%_ _%g1442314443%_)))))
                            (_%g1442114612%_
                             (gx#gentemps
                              (foldr (lambda (_%g1461514618%_ _%g1461614621%_)
                                       (cons _%g1461514618%_ _%g1461614621%_))
                                     '()
                                     _%g1432414406%_)))))
                        _%e1433414400%_
                        _%hd1433514402%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1432814360%_
                                                _%target1432514354%_
                                                '()
                                                '()))
                                             (_%g1432114347%_
                                              _%g1432214351%_)))))
                                   (_%g1432114347%_ _%g1432214351%_)))))
                       (_%g1432014624%_
                        (gx#stx-map
                         _%let-bind14127%_
                         (foldr (lambda (_%g1462714630%_ _%g1462814633%_)
                                  (cons _%g1462714630%_ _%g1462814633%_))
                                '()
                                _%g1417514290%_)))))))
              (let* ((_%__match2024020241%_
                      (lambda (_%e1417614212%_
                               _%hd1417714216%_
                               _%tl1417814219%_
                               _%e1417914222%_
                               _%hd1418014226%_
                               _%tl1418114229%_
                               _%__splice2015420155%_
                               _%target1418214232%_
                               _%tl1418414235%_)
                        (letrec ((_%loop1418514238%_
                                  (lambda (_%hd1418314242%_ _%bind1418914245%_)
                                    (if (gx#stx-pair? _%hd1418314242%_)
                                        (let ((_%e1418614247%_
                                               (gx#syntax-e _%hd1418314242%_)))
                                          (let ((_%lp-tl1418814254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1418614247%_)))
                                                (_%lp-hd1418714251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1418614247%_))))
                                            (_%loop1418514238%_
                                             _%lp-tl1418814254%_
                                             (cons _%lp-hd1418714251%_
                                                   _%bind1418914245%_))))
                                        (let ((_%bind1419014257%_
                                               (reverse _%bind1418914245%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1418114229%_)
                                              (let ((_%__splice2015620157%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1418114229%_
                                                      '0)))
                                                (let ((_%tl1419314263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2015620157%_
                                                          '1)))
                                                      (_%target1419114260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2015620157%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1419314263%_)
                                                      (letrec ((_%loop1419414266%_
                                                                (lambda (_%hd1419214270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1419814273%_)
                          (if (gx#stx-pair? _%hd1419214270%_)
                              (let ((_%e1419514275%_
                                     (gx#syntax-e _%hd1419214270%_)))
                                (let ((_%lp-tl1419714282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1419514275%_)))
                                      (_%lp-hd1419614279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1419514275%_))))
                                  (_%loop1419414266%_
                                   _%lp-tl1419714282%_
                                   (cons _%lp-hd1419614279%_
                                         _%body1419814273%_))))
                              (let ((_%body1419914285%_
                                     (reverse _%body1419814273%_)))
                                (let ((_%g1417414288%_ _%body1419914285%_)
                                      (_%g1417514290%_ _%bind1419014257%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14125%_
                                       (foldr (lambda (_%g1431214315%_
                                                       _%g1431314318%_)
                                                (cons _%g1431214315%_
                                                      _%g1431314318%_))
                                              '()
                                              _%g1417514290%_))
                                      (_%__kont2015220153%_
                                       _%g1417414288%_
                                       _%g1417514290%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1413314205%_)))))))))
                (_%loop1419414266%_ _%target1419114260%_ '()))
              (let () (declare (not safe)) (_%g1413314205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1413314205%_))))))))
                          (_%loop1418514238%_ _%target1418214232%_ '()))))
                     (_%__match2022020221%_
                      (lambda (_%e1415314643%_
                               _%hd1415414647%_
                               _%tl1415514650%_
                               _%e1415614653%_
                               _%hd1415714657%_
                               _%tl1415814660%_
                               _%e1415914663%_
                               _%hd1416014667%_
                               _%tl1416114670%_
                               _%e1416214673%_
                               _%hd1416314677%_
                               _%tl1416414680%_
                               _%__splice2015020151%_
                               _%target1416514683%_
                               _%tl1416714686%_)
                        (letrec ((_%loop1416814689%_
                                  (lambda (_%hd1416614693%_ _%body1417214696%_)
                                    (if (gx#stx-pair? _%hd1416614693%_)
                                        (let ((_%e1416914698%_
                                               (gx#syntax-e _%hd1416614693%_)))
                                          (let ((_%lp-tl1417114705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1416914698%_)))
                                                (_%lp-hd1417014702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1416914698%_))))
                                            (_%loop1416814689%_
                                             _%lp-tl1417114705%_
                                             (cons _%lp-hd1417014702%_
                                                   _%body1417214696%_))))
                                        (let ((_%body1417314708%_
                                               (reverse _%body1417214696%_)))
                                          (_%__kont2014820149%_
                                           _%body1417314708%_
                                           _%hd1416314677%_))))))
                          (_%loop1416814689%_ _%target1416514683%_ '()))))
                     (_%__match2018420185%_
                      (lambda (_%e1413914749%_
                               _%hd1414014753%_
                               _%tl1414114756%_
                               _%e1414214759%_
                               _%hd1414314763%_
                               _%tl1414414766%_
                               _%e1414514769%_
                               _%hd1414614773%_
                               _%tl1414714776%_
                               _%e1414814779%_
                               _%hd1414914783%_
                               _%tl1415014786%_)
                        (let ((_%g1413514789%_ _%tl1414414766%_)
                              (_%g1413614791%_ _%hd1414914783%_)
                              (_%g1413714792%_ _%hd1414614773%_)
                              (_%g1413814793%_ _%hd1414014753%_))
                          (if (_%let-head?14128%_ _%g1413714792%_)
                              (_%__kont2014620147%_
                               _%g1413514789%_
                               _%g1413614791%_
                               _%g1413714792%_
                               _%g1413814793%_)
                              (if (gx#stx-pair? _%hd1414614773%_)
                                  (let ((_%e1416214673%_
                                         (gx#syntax-e _%hd1414614773%_)))
                                    (let ((_%tl1416414680%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1416214673%_)))
                                          (_%hd1416314677%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1416214673%_))))
                                      (if (gx#stx-pair/null? _%hd1414314763%_)
                                          (let ((_%__splice2015420155%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1414314763%_
                                                  '0)))
                                            (let ((_%tl1418414235%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2015420155%_
                                                      '1)))
                                                  (_%target1418214232%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2015420155%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1418414235%_)
                                                  (_%__match2024020241%_
                                                   _%e1413914749%_
                                                   _%hd1414014753%_
                                                   _%tl1414114756%_
                                                   _%e1414214759%_
                                                   _%hd1414314763%_
                                                   _%tl1414414766%_
                                                   _%__splice2015420155%_
                                                   _%target1418214232%_
                                                   _%tl1418414235%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1413314205%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1413314205%_)))))
                                  (if (gx#stx-pair/null? _%hd1414314763%_)
                                      (let ((_%__splice2015420155%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1414314763%_
                                              '0)))
                                        (let ((_%tl1418414235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2015420155%_
                                                  '1)))
                                              (_%target1418214232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2015420155%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1418414235%_)
                                              (_%__match2024020241%_
                                               _%e1413914749%_
                                               _%hd1414014753%_
                                               _%tl1414114756%_
                                               _%e1414214759%_
                                               _%hd1414314763%_
                                               _%tl1414414766%_
                                               _%__splice2015420155%_
                                               _%target1418214232%_
                                               _%tl1418414235%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1413314205%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1413314205%_)))))))))
                (if (gx#stx-pair? _%__stx2014320144%_)
                    (let ((_%e1413914749%_ (gx#syntax-e _%__stx2014320144%_)))
                      (let ((_%tl1414114756%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1413914749%_)))
                            (_%hd1414014753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1413914749%_))))
                        (if (gx#stx-pair? _%tl1414114756%_)
                            (let ((_%e1414214759%_
                                   (gx#syntax-e _%tl1414114756%_)))
                              (let ((_%tl1414414766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1414214759%_)))
                                    (_%hd1414314763%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1414214759%_))))
                                (if (gx#stx-pair? _%hd1414314763%_)
                                    (let ((_%e1414514769%_
                                           (gx#syntax-e _%hd1414314763%_)))
                                      (let ((_%tl1414714776%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1414514769%_)))
                                            (_%hd1414614773%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1414514769%_))))
                                        (if (gx#stx-pair? _%tl1414714776%_)
                                            (let ((_%e1414814779%_
                                                   (gx#syntax-e
                                                    _%tl1414714776%_)))
                                              (let ((_%tl1415014786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1414814779%_)))
                                                    (_%hd1414914783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1414814779%_))))
                                                (if (gx#stx-null?
                                                     _%tl1415014786%_)
                                                    (_%__match2018420185%_
                                                     _%e1413914749%_
                                                     _%hd1414014753%_
                                                     _%tl1414114756%_
                                                     _%e1414214759%_
                                                     _%hd1414314763%_
                                                     _%tl1414414766%_
                                                     _%e1414514769%_
                                                     _%hd1414614773%_
                                                     _%tl1414714776%_
                                                     _%e1414814779%_
                                                     _%hd1414914783%_
                                                     _%tl1415014786%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1414614773%_)
                                                        (let ((_%e1416214673%_
                                                               (gx#syntax-e
                                                                _%hd1414614773%_)))
                                                          (let ((_%tl1416414680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1416214673%_)))
                        (_%hd1416314677%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1416214673%_))))
                    (if (gx#stx-pair/null? _%hd1414314763%_)
                        (let ((_%__splice2015420155%_
                               (gx#syntax-split-splice->vector
                                _%hd1414314763%_
                                '0)))
                          (let ((_%tl1418414235%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015420155%_ '1)))
                                (_%target1418214232%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015420155%_ '0))))
                            (if (gx#stx-null? _%tl1418414235%_)
                                (_%__match2024020241%_
                                 _%e1413914749%_
                                 _%hd1414014753%_
                                 _%tl1414114756%_
                                 _%e1414214759%_
                                 _%hd1414314763%_
                                 _%tl1414414766%_
                                 _%__splice2015420155%_
                                 _%target1418214232%_
                                 _%tl1418414235%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1413314205%_)))))
                        (let () (declare (not safe)) (_%g1413314205%_)))))
                (if (gx#stx-pair/null? _%hd1414314763%_)
                    (let ((_%__splice2015420155%_
                           (gx#syntax-split-splice->vector
                            _%hd1414314763%_
                            '0)))
                      (let ((_%tl1418414235%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2015420155%_ '1)))
                            (_%target1418214232%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2015420155%_ '0))))
                        (if (gx#stx-null? _%tl1418414235%_)
                            (_%__match2024020241%_
                             _%e1413914749%_
                             _%hd1414014753%_
                             _%tl1414114756%_
                             _%e1414214759%_
                             _%hd1414314763%_
                             _%tl1414414766%_
                             _%__splice2015420155%_
                             _%target1418214232%_
                             _%tl1418414235%_)
                            (let () (declare (not safe)) (_%g1413314205%_)))))
                    (let () (declare (not safe)) (_%g1413314205%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1414614773%_)
                                                (let ((_%e1416214673%_
                                                       (gx#syntax-e
                                                        _%hd1414614773%_)))
                                                  (let ((_%tl1416414680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1416214673%_)))
                                                        (_%hd1416314677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1416214673%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1416414680%_)
                                                        (if (gx#stx-null?
                                                             _%tl1414714776%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1414414766%_)
                        (let ((_%__splice2015020151%_
                               (gx#syntax-split-splice->vector
                                _%tl1414414766%_
                                '0)))
                          (let ((_%tl1416714686%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015020151%_ '1)))
                                (_%target1416514683%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015020151%_ '0))))
                            (if (gx#stx-null? _%tl1416714686%_)
                                (_%__match2022020221%_
                                 _%e1413914749%_
                                 _%hd1414014753%_
                                 _%tl1414114756%_
                                 _%e1414214759%_
                                 _%hd1414314763%_
                                 _%tl1414414766%_
                                 _%e1414514769%_
                                 _%hd1414614773%_
                                 _%tl1414714776%_
                                 _%e1416214673%_
                                 _%hd1416314677%_
                                 _%tl1416414680%_
                                 _%__splice2015020151%_
                                 _%target1416514683%_
                                 _%tl1416714686%_)
                                (if (gx#stx-pair/null? _%hd1414314763%_)
                                    (let ((_%__splice2015420155%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1414314763%_
                                            '0)))
                                      (let ((_%tl1418414235%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2015420155%_
                                                '1)))
                                            (_%target1418214232%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2015420155%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1418414235%_)
                                            (_%__match2024020241%_
                                             _%e1413914749%_
                                             _%hd1414014753%_
                                             _%tl1414114756%_
                                             _%e1414214759%_
                                             _%hd1414314763%_
                                             _%tl1414414766%_
                                             _%__splice2015420155%_
                                             _%target1418214232%_
                                             _%tl1418414235%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1413314205%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1413314205%_))))))
                        (if (gx#stx-pair/null? _%hd1414314763%_)
                            (let ((_%__splice2015420155%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1414314763%_
                                    '0)))
                              (let ((_%tl1418414235%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2015420155%_
                                        '1)))
                                    (_%target1418214232%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2015420155%_
                                        '0))))
                                (if (gx#stx-null? _%tl1418414235%_)
                                    (_%__match2024020241%_
                                     _%e1413914749%_
                                     _%hd1414014753%_
                                     _%tl1414114756%_
                                     _%e1414214759%_
                                     _%hd1414314763%_
                                     _%tl1414414766%_
                                     _%__splice2015420155%_
                                     _%target1418214232%_
                                     _%tl1418414235%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1413314205%_)))))
                            (let () (declare (not safe)) (_%g1413314205%_))))
                    (if (gx#stx-pair/null? _%hd1414314763%_)
                        (let ((_%__splice2015420155%_
                               (gx#syntax-split-splice->vector
                                _%hd1414314763%_
                                '0)))
                          (let ((_%tl1418414235%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015420155%_ '1)))
                                (_%target1418214232%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2015420155%_ '0))))
                            (if (gx#stx-null? _%tl1418414235%_)
                                (_%__match2024020241%_
                                 _%e1413914749%_
                                 _%hd1414014753%_
                                 _%tl1414114756%_
                                 _%e1414214759%_
                                 _%hd1414314763%_
                                 _%tl1414414766%_
                                 _%__splice2015420155%_
                                 _%target1418214232%_
                                 _%tl1418414235%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1413314205%_)))))
                        (let () (declare (not safe)) (_%g1413314205%_))))
                (if (gx#stx-pair/null? _%hd1414314763%_)
                    (let ((_%__splice2015420155%_
                           (gx#syntax-split-splice->vector
                            _%hd1414314763%_
                            '0)))
                      (let ((_%tl1418414235%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2015420155%_ '1)))
                            (_%target1418214232%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2015420155%_ '0))))
                        (if (gx#stx-null? _%tl1418414235%_)
                            (_%__match2024020241%_
                             _%e1413914749%_
                             _%hd1414014753%_
                             _%tl1414114756%_
                             _%e1414214759%_
                             _%hd1414314763%_
                             _%tl1414414766%_
                             _%__splice2015420155%_
                             _%target1418214232%_
                             _%tl1418414235%_)
                            (let () (declare (not safe)) (_%g1413314205%_)))))
                    (let () (declare (not safe)) (_%g1413314205%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1414314763%_)
                                                    (let ((_%__splice2015420155%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1414314763%_
                                                            '0)))
                                                      (let ((_%tl1418414235%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2015420155%_ '1)))
                    (_%target1418214232%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2015420155%_ '0))))
                (if (gx#stx-null? _%tl1418414235%_)
                    (_%__match2024020241%_
                     _%e1413914749%_
                     _%hd1414014753%_
                     _%tl1414114756%_
                     _%e1414214759%_
                     _%hd1414314763%_
                     _%tl1414414766%_
                     _%__splice2015420155%_
                     _%target1418214232%_
                     _%tl1418414235%_)
                    (let () (declare (not safe)) (_%g1413314205%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1413314205%_)))))))
                                    (if (gx#stx-pair/null? _%hd1414314763%_)
                                        (let ((_%__splice2015420155%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1414314763%_
                                                '0)))
                                          (let ((_%tl1418414235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2015420155%_
                                                    '1)))
                                                (_%target1418214232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2015420155%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1418414235%_)
                                                (_%__match2024020241%_
                                                 _%e1413914749%_
                                                 _%hd1414014753%_
                                                 _%tl1414114756%_
                                                 _%e1414214759%_
                                                 _%hd1414314763%_
                                                 _%tl1414414766%_
                                                 _%__splice2015420155%_
                                                 _%target1418214232%_
                                                 _%tl1418414235%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1413314205%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1413314205%_))))))
                            (let () (declare (not safe)) (_%g1413314205%_)))))
                    (let () (declare (not safe)) (_%g1413314205%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15151%_)
        (let* ((_%__stx2024320244%_ _%$stx15151%_)
               (_%g1515715208%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2024320244%_))))
          (let ((_%__kont2024620247%_ (lambda () '#t))
                (_%__kont2024820249%_
                 (lambda (_%g1516515362%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1537815381%_ _%g1537915384%_)
                                        (cons _%g1537815381%_ _%g1537915384%_))
                                      '()
                                      _%g1516515362%_)))))
                (_%__kont2025220253%_
                 (lambda (_%g1518115273%_
                          _%g1518215275%_
                          _%g1518315276%_
                          _%g1518415277%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1518315276%_ '())
                               (cons (cons _%g1518415277%_
                                           (cons _%g1518215275%_
                                                 (foldr (lambda (_%g1529815301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1529915304%_)
                  (cons _%g1529815301%_ _%g1529915304%_))
                '()
                _%g1518115273%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2032020321%_
                    (lambda (_%e1518515215%_
                             _%hd1518615219%_
                             _%tl1518715222%_
                             _%e1518815225%_
                             _%hd1518915229%_
                             _%tl1519015232%_
                             _%e1519115235%_
                             _%hd1519215239%_
                             _%tl1519315242%_
                             _%__splice2025420255%_
                             _%target1519415245%_
                             _%tl1519615248%_)
                      (letrec ((_%loop1519715251%_
                                (lambda (_%hd1519515255%_ _%body1520115258%_)
                                  (if (gx#stx-pair? _%hd1519515255%_)
                                      (let ((_%e1519815260%_
                                             (gx#syntax-e _%hd1519515255%_)))
                                        (let ((_%lp-tl1520015267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1519815260%_)))
                                              (_%lp-hd1519915264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1519815260%_))))
                                          (_%loop1519715251%_
                                           _%lp-tl1520015267%_
                                           (cons _%lp-hd1519915264%_
                                                 _%body1520115258%_))))
                                      (let ((_%body1520215270%_
                                             (reverse _%body1520115258%_)))
                                        (_%__kont2025220253%_
                                         _%body1520215270%_
                                         _%tl1519315242%_
                                         _%hd1519215239%_
                                         _%hd1518615219%_))))))
                        (_%loop1519715251%_ _%target1519415245%_ '()))))
                   (_%__match2029420295%_
                    (lambda (_%e1516615314%_
                             _%hd1516715318%_
                             _%tl1516815321%_
                             _%e1516915324%_
                             _%hd1517015328%_
                             _%tl1517115331%_
                             _%__splice2025020251%_
                             _%target1517215334%_
                             _%tl1517415337%_)
                      (letrec ((_%loop1517515340%_
                                (lambda (_%hd1517315344%_ _%body1517915347%_)
                                  (if (gx#stx-pair? _%hd1517315344%_)
                                      (let ((_%e1517615349%_
                                             (gx#syntax-e _%hd1517315344%_)))
                                        (let ((_%lp-tl1517815356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1517615349%_)))
                                              (_%lp-hd1517715353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1517615349%_))))
                                          (_%loop1517515340%_
                                           _%lp-tl1517815356%_
                                           (cons _%lp-hd1517715353%_
                                                 _%body1517915347%_))))
                                      (let ((_%body1518015359%_
                                             (reverse _%body1517915347%_)))
                                        (_%__kont2024820249%_
                                         _%body1518015359%_))))))
                        (_%loop1517515340%_ _%target1517215334%_ '())))))
              (if (gx#stx-pair? _%__stx2024320244%_)
                  (let ((_%e1515915394%_ (gx#syntax-e _%__stx2024320244%_)))
                    (let ((_%tl1516115401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1515915394%_)))
                          (_%hd1516015398%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1515915394%_))))
                      (if (gx#stx-pair? _%tl1516115401%_)
                          (let ((_%e1516215404%_
                                 (gx#syntax-e _%tl1516115401%_)))
                            (let ((_%tl1516415411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1516215404%_)))
                                  (_%hd1516315408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1516215404%_))))
                              (if (gx#stx-null? _%hd1516315408%_)
                                  (if (gx#stx-null? _%tl1516415411%_)
                                      (_%__kont2024620247%_)
                                      (if (gx#stx-pair/null? _%tl1516415411%_)
                                          (let ((_%__splice2025020251%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1516415411%_
                                                  '0)))
                                            (let ((_%tl1517415337%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2025020251%_
                                                      '1)))
                                                  (_%target1517215334%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2025020251%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1517415337%_)
                                                  (_%__match2029420295%_
                                                   _%e1515915394%_
                                                   _%hd1516015398%_
                                                   _%tl1516115401%_
                                                   _%e1516215404%_
                                                   _%hd1516315408%_
                                                   _%tl1516415411%_
                                                   _%__splice2025020251%_
                                                   _%target1517215334%_
                                                   _%tl1517415337%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1515715208%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1515715208%_))))
                                  (if (gx#stx-pair? _%hd1516315408%_)
                                      (let ((_%e1519115235%_
                                             (gx#syntax-e _%hd1516315408%_)))
                                        (let ((_%tl1519315242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1519115235%_)))
                                              (_%hd1519215239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1519115235%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1516415411%_)
                                              (let ((_%__splice2025420255%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1516415411%_
                                                      '0)))
                                                (let ((_%tl1519615248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2025420255%_
                                                          '1)))
                                                      (_%target1519415245%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2025420255%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1519615248%_)
                                                      (_%__match2032020321%_
                                                       _%e1515915394%_
                                                       _%hd1516015398%_
                                                       _%tl1516115401%_
                                                       _%e1516215404%_
                                                       _%hd1516315408%_
                                                       _%tl1516415411%_
                                                       _%e1519115235%_
                                                       _%hd1519215239%_
                                                       _%tl1519315242%_
                                                       _%__splice2025420255%_
                                                       _%target1519415245%_
                                                       _%tl1519615248%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1515715208%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1515715208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1515715208%_))))))
                          (let () (declare (not safe)) (_%g1515715208%_)))))
                  (let () (declare (not safe)) (_%g1515715208%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15424%_)
        (let* ((_%__stx2032320324%_ _%$stx15424%_)
               (_%g1543515513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2032320324%_))))
          (let ((_%__kont2032620327%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2032820329%_
                 (lambda (_%g1544015844%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1544015844%_ '()))))
                (_%__kont2033020331%_
                 (lambda (_%g1545015792%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1545015792%_ '()))))
                (_%__kont2033220333%_
                 (lambda (_%g1546015739%_) _%g1546015739%_))
                (_%__kont2033420335%_
                 (lambda (_%g1547115681%_ _%g1547215683%_) _%g1547215683%_))
                (_%__kont2033620337%_
                 (lambda (_%g1548215623%_
                          _%g1548315625%_
                          _%g1548415626%_
                          _%g1548515627%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1548515627%_ _%g1548215623%_)
                                     (cons _%g1548415626%_ '()))))))
                (_%__kont2033820339%_
                 (lambda (_%g1549515569%_ _%g1549615571%_ _%g1549715572%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1549615571%_
                               (cons (cons _%g1549715572%_ _%g1549515569%_)
                                     '())))))
                (_%__kont2034020341%_
                 (lambda (_%g1550415530%_) _%g1550415530%_)))
            (let* ((_%__match2046220463%_
                    (lambda (_%e1548615593%_
                             _%hd1548715597%_
                             _%tl1548815600%_
                             _%e1548915603%_
                             _%hd1549015607%_
                             _%tl1549115610%_
                             _%e1549215613%_
                             _%hd1549315617%_
                             _%tl1549415620%_)
                      (let ((_%g1548215623%_ _%tl1549415620%_)
                            (_%g1548315625%_ _%hd1549315617%_)
                            (_%g1548415626%_ _%hd1549015607%_)
                            (_%g1548515627%_ _%hd1548715597%_))
                        (if (gx#ellipsis? _%g1548315625%_)
                            (_%__kont2033620337%_
                             _%g1548215623%_
                             _%g1548315625%_
                             _%g1548415626%_
                             _%g1548515627%_)
                            (_%__kont2033820339%_
                             _%tl1549115610%_
                             _%hd1549015607%_
                             _%hd1548715597%_)))))
                   (_%__match2044420445%_
                    (lambda (_%e1547315651%_
                             _%hd1547415655%_
                             _%tl1547515658%_
                             _%e1547615661%_
                             _%hd1547715665%_
                             _%tl1547815668%_
                             _%e1547915671%_
                             _%hd1548015675%_
                             _%tl1548115678%_)
                      (let ((_%g1547115681%_ _%hd1548015675%_)
                            (_%g1547215683%_ _%hd1547715665%_))
                        (if (gx#ellipsis? _%g1547115681%_)
                            (_%__kont2033420335%_
                             _%g1547115681%_
                             _%g1547215683%_)
                            (_%__match2046220463%_
                             _%e1547315651%_
                             _%hd1547415655%_
                             _%tl1547515658%_
                             _%e1547615661%_
                             _%hd1547715665%_
                             _%tl1547815668%_
                             _%e1547915671%_
                             _%hd1548015675%_
                             _%tl1548115678%_))))))
              (if (gx#stx-pair? _%__stx2032320324%_)
                  (let ((_%e1543715866%_ (gx#syntax-e _%__stx2032320324%_)))
                    (let ((_%tl1543915873%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1543715866%_)))
                          (_%hd1543815870%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1543715866%_))))
                      (if (gx#stx-null? _%tl1543915873%_)
                          (_%__kont2032620327%_)
                          (if (gx#stx-pair? _%tl1543915873%_)
                              (let ((_%e1544415824%_
                                     (gx#syntax-e _%tl1543915873%_)))
                                (let ((_%tl1544615831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1544415824%_)))
                                      (_%hd1544515828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1544415824%_))))
                                  (if (gx#identifier? _%hd1544515828%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21086_|
                                           _%hd1544515828%_)
                                          (if (gx#stx-pair? _%tl1544615831%_)
                                              (let ((_%e1544715834%_
                                                     (gx#syntax-e
                                                      _%tl1544615831%_)))
                                                (let ((_%tl1544915841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1544715834%_)))
                                                      (_%hd1544815838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1544715834%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1544915841%_)
                                                      (_%__kont2032820329%_
                                                       _%hd1544815838%_)
                                                      (_%__match2046220463%_
                                                       _%e1543715866%_
                                                       _%hd1543815870%_
                                                       _%tl1543915873%_
                                                       _%e1544415824%_
                                                       _%hd1544515828%_
                                                       _%tl1544615831%_
                                                       _%e1544715834%_
                                                       _%hd1544815838%_
                                                       _%tl1544915841%_))))
                                              (_%__kont2033820339%_
                                               _%tl1544615831%_
                                               _%hd1544515828%_
                                               _%hd1543815870%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21087_|
                                               _%hd1544515828%_)
                                              (if (gx#stx-pair?
                                                   _%tl1544615831%_)
                                                  (let ((_%e1545715782%_
                                                         (gx#syntax-e
                                                          _%tl1544615831%_)))
                                                    (let ((_%tl1545915789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1545715782%_)))
                                                          (_%hd1545815786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1545715782%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1545915789%_)
                                                          (_%__kont2033020331%_
                                                           _%hd1545815786%_)
                                                          (_%__match2046220463%_
                                                           _%e1543715866%_
                                                           _%hd1543815870%_
                                                           _%tl1543915873%_
                                                           _%e1544415824%_
                                                           _%hd1544515828%_
                                                           _%tl1544615831%_
                                                           _%e1545715782%_
                                                           _%hd1545815786%_
                                                           _%tl1545915789%_))))
                                                  (_%__kont2033820339%_
                                                   _%tl1544615831%_
                                                   _%hd1544515828%_
                                                   _%hd1543815870%_))
                                              (if (gx#stx-pair?
                                                   _%tl1544615831%_)
                                                  (let ((_%e1547915671%_
                                                         (gx#syntax-e
                                                          _%tl1544615831%_)))
                                                    (let ((_%tl1548115678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1547915671%_)))
                                                          (_%hd1548015675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1547915671%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1548115678%_)
                                                          (_%__match2044420445%_
                                                           _%e1543715866%_
                                                           _%hd1543815870%_
                                                           _%tl1543915873%_
                                                           _%e1544415824%_
                                                           _%hd1544515828%_
                                                           _%tl1544615831%_
                                                           _%e1547915671%_
                                                           _%hd1548015675%_
                                                           _%tl1548115678%_)
                                                          (_%__match2046220463%_
                                                           _%e1543715866%_
                                                           _%hd1543815870%_
                                                           _%tl1543915873%_
                                                           _%e1544415824%_
                                                           _%hd1544515828%_
                                                           _%tl1544615831%_
                                                           _%e1547915671%_
                                                           _%hd1548015675%_
                                                           _%tl1548115678%_))))
                                                  (_%__kont2033820339%_
                                                   _%tl1544615831%_
                                                   _%hd1544515828%_
                                                   _%hd1543815870%_))))
                                      (if (gx#stx-datum? _%hd1544515828%_)
                                          (let ((_%e1546715725%_
                                                 (gx#stx-e _%hd1544515828%_)))
                                            (if (equal? _%e1546715725%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1544615831%_)
                                                    (let ((_%e1546815729%_
                                                           (gx#syntax-e
                                                            _%tl1544615831%_)))
                                                      (let ((_%tl1547015736%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1546815729%_)))
                    (_%hd1546915733%_
                     (let () (declare (not safe)) (##car _%e1546815729%_))))
                (if (gx#stx-null? _%tl1547015736%_)
                    (_%__kont2033220333%_ _%hd1546915733%_)
                    (_%__match2046220463%_
                     _%e1543715866%_
                     _%hd1543815870%_
                     _%tl1543915873%_
                     _%e1544415824%_
                     _%hd1544515828%_
                     _%tl1544615831%_
                     _%e1546815729%_
                     _%hd1546915733%_
                     _%tl1547015736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2033820339%_
                                                     _%tl1544615831%_
                                                     _%hd1544515828%_
                                                     _%hd1543815870%_))
                                                (if (gx#stx-pair?
                                                     _%tl1544615831%_)
                                                    (let ((_%e1547915671%_
                                                           (gx#syntax-e
                                                            _%tl1544615831%_)))
                                                      (let ((_%tl1548115678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1547915671%_)))
                    (_%hd1548015675%_
                     (let () (declare (not safe)) (##car _%e1547915671%_))))
                (if (gx#stx-null? _%tl1548115678%_)
                    (_%__match2044420445%_
                     _%e1543715866%_
                     _%hd1543815870%_
                     _%tl1543915873%_
                     _%e1544415824%_
                     _%hd1544515828%_
                     _%tl1544615831%_
                     _%e1547915671%_
                     _%hd1548015675%_
                     _%tl1548115678%_)
                    (_%__match2046220463%_
                     _%e1543715866%_
                     _%hd1543815870%_
                     _%tl1543915873%_
                     _%e1544415824%_
                     _%hd1544515828%_
                     _%tl1544615831%_
                     _%e1547915671%_
                     _%hd1548015675%_
                     _%tl1548115678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2033820339%_
                                                     _%tl1544615831%_
                                                     _%hd1544515828%_
                                                     _%hd1543815870%_))))
                                          (if (gx#stx-pair? _%tl1544615831%_)
                                              (let ((_%e1547915671%_
                                                     (gx#syntax-e
                                                      _%tl1544615831%_)))
                                                (let ((_%tl1548115678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1547915671%_)))
                                                      (_%hd1548015675%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1547915671%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1548115678%_)
                                                      (_%__match2044420445%_
                                                       _%e1543715866%_
                                                       _%hd1543815870%_
                                                       _%tl1543915873%_
                                                       _%e1544415824%_
                                                       _%hd1544515828%_
                                                       _%tl1544615831%_
                                                       _%e1547915671%_
                                                       _%hd1548015675%_
                                                       _%tl1548115678%_)
                                                      (_%__match2046220463%_
                                                       _%e1543715866%_
                                                       _%hd1543815870%_
                                                       _%tl1543915873%_
                                                       _%e1544415824%_
                                                       _%hd1544515828%_
                                                       _%tl1544615831%_
                                                       _%e1547915671%_
                                                       _%hd1548015675%_
                                                       _%tl1548115678%_))))
                                              (_%__kont2033820339%_
                                               _%tl1544615831%_
                                               _%hd1544515828%_
                                               _%hd1543815870%_))))))
                              (_%__kont2034020341%_ _%tl1543915873%_)))))
                  (let () (declare (not safe)) (_%g1543515513%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx15884%_)
        (letrec ((_%simple-quote?15887%_
                  (lambda (_%e16577%_)
                    (let* ((_%__stx2048320484%_ _%e16577%_)
                           (_%g1658516622%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2048320484%_))))
                      (let ((_%__kont2048620487%_ (lambda () '#f))
                            (_%__kont2048820489%_ (lambda () '#f))
                            (_%__kont2049020491%_
                             (lambda (_%g1659916734%_ _%g1660016736%_)
                               (if (_%simple-quote?15887%_ _%g1660016736%_)
                                   (_%simple-quote?15887%_ _%g1659916734%_)
                                   '#f)))
                            (_%__kont2049220493%_
                             (lambda (_%g1660416695%_)
                               (_%simple-quote?15887%_
                                (foldr (lambda (_%g1670816711%_
                                                _%g1670916714%_)
                                         (cons _%g1670816711%_
                                               _%g1670916714%_))
                                       '()
                                       _%g1660416695%_))))
                            (_%__kont2049620497%_
                             (lambda (_%g1661516644%_)
                               (_%simple-quote?15887%_ _%g1661516644%_)))
                            (_%__kont2049820499%_ (lambda () '#t)))
                        (let* ((_%g1658316656%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2048320484%_)
                                      (let ((_%e1661616640%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2048320484%_))))
                                        (_%__kont2049620497%_ _%e1661616640%_))
                                      (_%__kont2049820499%_))))
                               (_%__match2055420555%_
                                (lambda (_%e1660516663%_
                                         _%__splice2049420495%_
                                         _%target1660616667%_
                                         _%tl1660816670%_)
                                  (letrec ((_%loop1660916673%_
                                            (lambda (_%hd1660716677%_
                                                     _%e1661316680%_)
                                              (if (gx#stx-pair?
                                                   _%hd1660716677%_)
                                                  (let ((_%e1661016682%_
                                                         (gx#syntax-e
                                                          _%hd1660716677%_)))
                                                    (let ((_%lp-tl1661216689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1661016682%_)))
                                                          (_%lp-hd1661116686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1661016682%_))))
                                                      (_%loop1660916673%_
                                                       _%lp-tl1661216689%_
                                                       (cons _%lp-hd1661116686%_
                                                             _%e1661316680%_))))
                                                  (let ((_%e1661416692%_
                                                         (reverse _%e1661316680%_)))
                                                    (_%__kont2049220493%_
                                                     _%e1661416692%_))))))
                                    (_%loop1660916673%_
                                     _%target1660616667%_
                                     '()))))
                               (_%g1658216717%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2048320484%_)
                                      (let ((_%e1660516663%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2048320484%_))))
                                        (if (gx#stx-pair/null? _%e1660516663%_)
                                            (let ((_%__splice2049420495%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1660516663%_
                                                    '0)))
                                              (let ((_%tl1660816670%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2049420495%_
                                                        '1)))
                                                    (_%target1660616667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2049420495%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1660816670%_)
                                                    (_%__match2055420555%_
                                                     _%e1660516663%_
                                                     _%__splice2049420495%_
                                                     _%target1660616667%_
                                                     _%tl1660816670%_)
                                                    (_%__kont2049820499%_))))
                                            (_%__kont2049820499%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1658316656%_))))))
                          (if (gx#stx-pair? _%__stx2048320484%_)
                              (let ((_%e1658716785%_
                                     (gx#syntax-e _%__stx2048320484%_)))
                                (let ((_%tl1658916792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1658716785%_)))
                                      (_%hd1658816789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1658716785%_))))
                                  (if (gx#identifier? _%hd1658816789%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21088_|
                                           _%hd1658816789%_)
                                          (if (gx#stx-pair? _%tl1658916792%_)
                                              (let ((_%e1659016795%_
                                                     (gx#syntax-e
                                                      _%tl1658916792%_)))
                                                (let ((_%tl1659216802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1659016795%_)))
                                                      (_%hd1659116799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1659016795%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1659216802%_)
                                                      (_%__kont2048620487%_)
                                                      (_%__kont2049020491%_
                                                       _%tl1658916792%_
                                                       _%hd1658816789%_))))
                                              (_%__kont2049020491%_
                                               _%tl1658916792%_
                                               _%hd1658816789%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21089_|
                                               _%hd1658816789%_)
                                              (if (gx#stx-pair?
                                                   _%tl1658916792%_)
                                                  (let ((_%e1659616764%_
                                                         (gx#syntax-e
                                                          _%tl1658916792%_)))
                                                    (let ((_%tl1659816771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1659616764%_)))
                                                          (_%hd1659716768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1659616764%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1659816771%_)
                                                          (_%__kont2048820489%_)
                                                          (_%__kont2049020491%_
                                                           _%tl1658916792%_
                                                           _%hd1658816789%_))))
                                                  (_%__kont2049020491%_
                                                   _%tl1658916792%_
                                                   _%hd1658816789%_))
                                              (_%__kont2049020491%_
                                               _%tl1658916792%_
                                               _%hd1658816789%_)))
                                      (_%__kont2049020491%_
                                       _%tl1658916792%_
                                       _%hd1658816789%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1658216717%_))))))))
                 (_%generate15889%_
                  (lambda (_%e15951%_ _%d15953%_)
                    (let* ((_%__stx2056120562%_ _%e15951%_)
                           (_%g1596216020%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2056120562%_))))
                      (let ((_%__kont2056420565%_
                             (lambda (_%g1596416529%_)
                               (let* ((_%g1654216550%_
                                       (lambda (_%g1654316546%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1654316546%_)))
                                      (_%g1654116569%_
                                       (lambda (_%g1654316554%_)
                                         ((lambda (_%g1654416557%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%g1654416557%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1654316554%_))))
                                 (_%g1654116569%_
                                  (_%generate15889%_
                                   _%g1596416529%_
                                   (fx1+ _%d15953%_))))))
                            (_%__kont2056620567%_
                             (lambda (_%g1597116458%_)
                               (if (fxzero? _%d15953%_)
                                   _%g1597116458%_
                                   (let* ((_%g1647116479%_
                                           (lambda (_%g1647216475%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1647216475%_)))
                                          (_%g1647016498%_
                                           (lambda (_%g1647216483%_)
                                             ((lambda (_%g1647316486%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%g1647316486%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1647216483%_))))
                                     (_%g1647016498%_
                                      (_%generate15889%_
                                       _%g1597116458%_
                                       (fx1- _%d15953%_)))))))
                            (_%__kont2056820569%_
                             (lambda (_%g1597816387%_)
                               (if (fxzero? _%d15953%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1597816387%_
                                                           '()))))
                                   (let* ((_%g1640016408%_
                                           (lambda (_%g1640116404%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1640116404%_)))
                                          (_%g1639916427%_
                                           (lambda (_%g1640116412%_)
                                             ((lambda (_%g1640216415%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%g1640216415%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1640116412%_))))
                                     (_%g1639916427%_
                                      (_%generate15889%_
                                       _%g1597816387%_
                                       (fx1- _%d15953%_)))))))
                            (_%__kont2057020571%_
                             (lambda (_%g1598516312%_ _%g1598616314%_)
                               (let* ((_%g1632916337%_
                                       (lambda (_%g1633016333%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1633016333%_)))
                                      (_%g1632816356%_
                                       (lambda (_%g1633016341%_)
                                         ((lambda (_%g1633116344%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%g1633116344%_
                                                              (cons _%g1598616314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1633016341%_))))
                                 (_%g1632816356%_
                                  (_%generate15889%_
                                   _%g1598516312%_
                                   _%d15953%_)))))
                            (_%__kont2057220573%_
                             (lambda (_%g1599616198%_ _%g1599716200%_)
                               (let* ((_%g1621116226%_
                                       (lambda (_%g1621216222%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1621216222%_)))
                                      (_%g1621016271%_
                                       (lambda (_%g1621216230%_)
                                         (if (gx#stx-pair? _%g1621216230%_)
                                             (let ((_%e1621516233%_
                                                    (gx#syntax-e
                                                     _%g1621216230%_)))
                                               (let ((_%hd1621616237%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1621516233%_)))
                                                     (_%tl1621716240%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1621516233%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1621716240%_)
                                                     (let ((_%e1621816243%_
                                                            (gx#syntax-e
                                                             _%tl1621716240%_)))
                                                       (let ((_%hd1621916247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1621816243%_)))
                     (_%tl1622016250%_
                      (let () (declare (not safe)) (##cdr _%e1621816243%_))))
                 (if (gx#stx-null? _%tl1622016250%_)
                     ((lambda (_%g1621316253%_ _%g1621416255%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%g1621416255%_
                                    (cons _%g1621316253%_ '()))))
                      _%hd1621916247%_
                      _%hd1621616237%_)
                     (_%g1621116226%_ _%g1621216230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1621116226%_
                                                      _%g1621216230%_))))
                                             (_%g1621116226%_
                                              _%g1621216230%_)))))
                                 (_%g1621016271%_
                                  (list (_%generate15889%_
                                         _%g1599716200%_
                                         _%d15953%_)
                                        (_%generate15889%_
                                         _%g1599616198%_
                                         _%d15953%_))))))
                            (_%__kont2057420575%_
                             (lambda (_%g1600116128%_)
                               (let* ((_%g1614216150%_
                                       (lambda (_%g1614316146%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1614316146%_)))
                                      (_%g1614116169%_
                                       (lambda (_%g1614316154%_)
                                         ((lambda (_%g1614416157%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%g1614416157%_ '())))
                                          _%g1614316154%_))))
                                 (_%g1614116169%_
                                  (_%generate15889%_
                                   (foldr (lambda (_%g1617216175%_
                                                   _%g1617316178%_)
                                            (cons _%g1617216175%_
                                                  _%g1617316178%_))
                                          '()
                                          _%g1600116128%_)
                                   _%d15953%_)))))
                            (_%__kont2057820579%_
                             (lambda (_%g1601216048%_)
                               (let* ((_%g1605816066%_
                                       (lambda (_%g1605916062%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1605916062%_)))
                                      (_%g1605716085%_
                                       (lambda (_%g1605916070%_)
                                         ((lambda (_%g1606016073%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%g1606016073%_ '())))
                                          _%g1605916070%_))))
                                 (_%g1605716085%_
                                  (_%generate15889%_
                                   _%g1601216048%_
                                   _%d15953%_)))))
                            (_%__kont2058020581%_
                             (lambda (_%g1601416027%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1601416027%_ '())))))
                        (let* ((_%g1596016089%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2056120562%_)
                                      (let ((_%e1601316044%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2056120562%_))))
                                        (_%__kont2057820579%_ _%e1601316044%_))
                                      (_%__kont2058020581%_
                                       _%__stx2056120562%_))))
                               (_%__match2068020681%_
                                (lambda (_%e1600216096%_
                                         _%__splice2057620577%_
                                         _%target1600316100%_
                                         _%tl1600516103%_)
                                  (letrec ((_%loop1600616106%_
                                            (lambda (_%hd1600416110%_
                                                     _%e1601016113%_)
                                              (if (gx#stx-pair?
                                                   _%hd1600416110%_)
                                                  (let ((_%e1600716115%_
                                                         (gx#syntax-e
                                                          _%hd1600416110%_)))
                                                    (let ((_%lp-tl1600916122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1600716115%_)))
                                                          (_%lp-hd1600816119%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1600716115%_))))
                                                      (_%loop1600616106%_
                                                       _%lp-tl1600916122%_
                                                       (cons _%lp-hd1600816119%_
                                                             _%e1601016113%_))))
                                                  (let ((_%e1601116125%_
                                                         (reverse _%e1601016113%_)))
                                                    (_%__kont2057420575%_
                                                     _%e1601116125%_))))))
                                    (_%loop1600616106%_
                                     _%target1600316100%_
                                     '()))))
                               (_%g1595916181%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2056120562%_)
                                      (let ((_%e1600216096%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2056120562%_))))
                                        (if (gx#stx-pair/null? _%e1600216096%_)
                                            (let ((_%__splice2057620577%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1600216096%_
                                                    '0)))
                                              (let ((_%tl1600516103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2057620577%_
                                                        '1)))
                                                    (_%target1600316100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2057620577%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1600516103%_)
                                                    (_%__match2068020681%_
                                                     _%e1600216096%_
                                                     _%__splice2057620577%_
                                                     _%target1600316100%_
                                                     _%tl1600516103%_)
                                                    (_%__kont2058020581%_
                                                     _%__stx2056120562%_))))
                                            (_%__kont2058020581%_
                                             _%__stx2056120562%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1596016089%_))))))
                          (if (gx#stx-pair? _%__stx2056120562%_)
                              (let ((_%e1596516509%_
                                     (gx#syntax-e _%__stx2056120562%_)))
                                (let ((_%tl1596716516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1596516509%_)))
                                      (_%hd1596616513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1596516509%_))))
                                  (if (gx#identifier? _%hd1596616513%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21090_|
                                           _%hd1596616513%_)
                                          (if (gx#stx-pair? _%tl1596716516%_)
                                              (let ((_%e1596816519%_
                                                     (gx#syntax-e
                                                      _%tl1596716516%_)))
                                                (let ((_%tl1597016526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1596816519%_)))
                                                      (_%hd1596916523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1596816519%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1597016526%_)
                                                      (_%__kont2056420565%_
                                                       _%hd1596916523%_)
                                                      (_%__kont2057220573%_
                                                       _%tl1596716516%_
                                                       _%hd1596616513%_))))
                                              (_%__kont2057220573%_
                                               _%tl1596716516%_
                                               _%hd1596616513%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21091_|
                                               _%hd1596616513%_)
                                              (if (gx#stx-pair?
                                                   _%tl1596716516%_)
                                                  (let ((_%e1597516448%_
                                                         (gx#syntax-e
                                                          _%tl1596716516%_)))
                                                    (let ((_%tl1597716455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1597516448%_)))
                                                          (_%hd1597616452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1597516448%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1597716455%_)
                                                          (_%__kont2056620567%_
                                                           _%hd1597616452%_)
                                                          (_%__kont2057220573%_
                                                           _%tl1596716516%_
                                                           _%hd1596616513%_))))
                                                  (_%__kont2057220573%_
                                                   _%tl1596716516%_
                                                   _%hd1596616513%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21092_|
                                                   _%hd1596616513%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1596716516%_)
                                                      (let ((_%e1598216377%_
                                                             (gx#syntax-e
                                                              _%tl1596716516%_)))
                                                        (let ((_%tl1598416384%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1598216377%_)))
                      (_%hd1598316381%_
                       (let () (declare (not safe)) (##car _%e1598216377%_))))
                  (if (gx#stx-null? _%tl1598416384%_)
                      (_%__kont2056820569%_ _%hd1598316381%_)
                      (_%__kont2057220573%_
                       _%tl1596716516%_
                       _%hd1596616513%_))))
              (_%__kont2057220573%_ _%tl1596716516%_ _%hd1596616513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2057220573%_
                                                   _%tl1596716516%_
                                                   _%hd1596616513%_))))
                                      (if (gx#stx-pair? _%hd1596616513%_)
                                          (let ((_%e1599016292%_
                                                 (gx#syntax-e
                                                  _%hd1596616513%_)))
                                            (let ((_%tl1599216299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1599016292%_)))
                                                  (_%hd1599116296%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1599016292%_))))
                                              (if (gx#identifier?
                                                   _%hd1599116296%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21093_|
                                                       _%hd1599116296%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1599216299%_)
                                                          (let ((_%e1599316302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1599216299%_)))
                    (let ((_%tl1599516309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1599316302%_)))
                          (_%hd1599416306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1599316302%_))))
                      (if (gx#stx-null? _%tl1599516309%_)
                          (if (fxzero? _%d15953%_)
                              (let ((_%g1598516312%_ _%tl1596716516%_)
                                    (_%g1598616314%_ _%hd1599416306%_))
                                (_%__kont2057020571%_
                                 _%g1598516312%_
                                 _%g1598616314%_))
                              (_%__kont2057220573%_
                               _%tl1596716516%_
                               _%hd1596616513%_))
                          (_%__kont2057220573%_
                           _%tl1596716516%_
                           _%hd1596616513%_))))
                  (_%__kont2057220573%_ _%tl1596716516%_ _%hd1596616513%_))
              (_%__kont2057220573%_ _%tl1596716516%_ _%hd1596616513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2057220573%_
                                                   _%tl1596716516%_
                                                   _%hd1596616513%_))))
                                          (_%__kont2057220573%_
                                           _%tl1596716516%_
                                           _%hd1596616513%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1595916181%_)))))))))
          (let* ((_%g1589115905%_
                  (lambda (_%g1589215901%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1589215901%_)))
                 (_%g1589015947%_
                  (lambda (_%g1589215909%_)
                    (if (gx#stx-pair? _%g1589215909%_)
                        (let ((_%e1589415912%_ (gx#syntax-e _%g1589215909%_)))
                          (let ((_%hd1589515916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1589415912%_)))
                                (_%tl1589615919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1589415912%_))))
                            (if (gx#stx-pair? _%tl1589615919%_)
                                (let ((_%e1589715922%_
                                       (gx#syntax-e _%tl1589615919%_)))
                                  (let ((_%hd1589815926%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1589715922%_)))
                                        (_%tl1589915929%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1589715922%_))))
                                    (if (gx#stx-null? _%tl1589915929%_)
                                        ((lambda (_%g1589315932%_)
                                           (if (_%simple-quote?15887%_
                                                _%g1589315932%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1589315932%_
                                                           '()))
                                               (_%generate15889%_
                                                _%g1589315932%_
                                                '0)))
                                         _%hd1589815926%_)
                                        (_%g1589115905%_ _%g1589215909%_))))
                                (_%g1589115905%_ _%g1589215909%_))))
                        (_%g1589115905%_ _%g1589215909%_)))))
            (_%g1589015947%_ _%stx15884%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx16815%_)
        (let* ((_%__stx2068720688%_ _%$stx16815%_)
               (_%g1682116855%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2068720688%_))))
          (let ((_%__kont2069020691%_
                 (lambda (_%g1682316987%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1682316987%_ '()))))
                (_%__kont2069220693%_
                 (lambda (_%g1683016943%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1683016943%_ '()))))
                (_%__kont2069420695%_
                 (lambda (_%g1684316882%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1684316882%_ '())))
                               '())))))
            (let ((_%__match2071020711%_
                   (lambda (_%e1682416967%_
                            _%hd1682516971%_
                            _%tl1682616974%_
                            _%e1682716977%_
                            _%hd1682816981%_
                            _%tl1682916984%_)
                     (let ((_%g1682316987%_ _%hd1682816981%_))
                       (if (gx#stx-datum? _%g1682316987%_)
                           (_%__kont2069020691%_ _%g1682316987%_)
                           (if (gx#stx-pair? _%hd1682816981%_)
                               (let ((_%e1683716923%_
                                      (gx#syntax-e _%hd1682816981%_)))
                                 (let ((_%tl1683916930%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1683716923%_)))
                                       (_%hd1683816927%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1683716923%_))))
                                   (if (gx#identifier? _%hd1683816927%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21094_|
                                            _%hd1683816927%_)
                                           (if (gx#stx-pair? _%tl1683916930%_)
                                               (let ((_%e1684016933%_
                                                      (gx#syntax-e
                                                       _%tl1683916930%_)))
                                                 (let ((_%tl1684216940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1684016933%_)))
                                                       (_%hd1684116937%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1684016933%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1684216940%_)
                                                       (_%__kont2069220693%_
                                                        _%hd1684116937%_)
                                                       (_%__kont2069420695%_
                                                        _%hd1682816981%_))))
                                               (_%__kont2069420695%_
                                                _%hd1682816981%_))
                                           (_%__kont2069420695%_
                                            _%hd1682816981%_))
                                       (_%__kont2069420695%_
                                        _%hd1682816981%_))))
                               (_%__kont2069420695%_ _%hd1682816981%_)))))))
              (if (gx#stx-pair? _%__stx2068720688%_)
                  (let ((_%e1682416967%_ (gx#syntax-e _%__stx2068720688%_)))
                    (let ((_%tl1682616974%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1682416967%_)))
                          (_%hd1682516971%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1682416967%_))))
                      (if (gx#stx-pair? _%tl1682616974%_)
                          (let ((_%e1682716977%_
                                 (gx#syntax-e _%tl1682616974%_)))
                            (let ((_%tl1682916984%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1682716977%_)))
                                  (_%hd1682816981%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1682716977%_))))
                              (if (gx#stx-null? _%tl1682916984%_)
                                  (_%__match2071020711%_
                                   _%e1682416967%_
                                   _%hd1682516971%_
                                   _%tl1682616974%_
                                   _%e1682716977%_
                                   _%hd1682816981%_
                                   _%tl1682916984%_)
                                  (if (gx#stx-pair? _%hd1682816981%_)
                                      (let ((_%e1683716923%_
                                             (gx#syntax-e _%hd1682816981%_)))
                                        (let ((_%tl1683916930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1683716923%_)))
                                              (_%hd1683816927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1683716923%_))))
                                          (if (gx#identifier? _%hd1683816927%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21094_|
                                                   _%hd1683816927%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1683916930%_)
                                                      (let ((_%e1684016933%_
                                                             (gx#syntax-e
                                                              _%tl1683916930%_)))
                                                        (let ((_%tl1684216940%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1684016933%_)))
                      (_%hd1684116937%_
                       (let () (declare (not safe)) (##car _%e1684016933%_))))
                  (let () (declare (not safe)) (_%g1682116855%_))))
              (let () (declare (not safe)) (_%g1682116855%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1682116855%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1682116855%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1682116855%_))))))
                          (let () (declare (not safe)) (_%g1682116855%_)))))
                  (let () (declare (not safe)) (_%g1682116855%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17004%_)
        (let* ((_%__stx2075920760%_ _%$stx17004%_)
               (_%g1701017044%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2075920760%_))))
          (let ((_%__kont2076220763%_
                 (lambda (_%g1701217176%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1701217176%_ '()))))
                (_%__kont2076420765%_
                 (lambda (_%g1701917132%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1701917132%_ '()))))
                (_%__kont2076620767%_
                 (lambda (_%g1703217071%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1703217071%_ '())))
                               '())))))
            (let ((_%__match2078220783%_
                   (lambda (_%e1701317156%_
                            _%hd1701417160%_
                            _%tl1701517163%_
                            _%e1701617166%_
                            _%hd1701717170%_
                            _%tl1701817173%_)
                     (let ((_%g1701217176%_ _%hd1701717170%_))
                       (if (gx#stx-datum? _%g1701217176%_)
                           (_%__kont2076220763%_ _%g1701217176%_)
                           (if (gx#stx-pair? _%hd1701717170%_)
                               (let ((_%e1702617112%_
                                      (gx#syntax-e _%hd1701717170%_)))
                                 (let ((_%tl1702817119%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1702617112%_)))
                                       (_%hd1702717116%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1702617112%_))))
                                   (if (gx#identifier? _%hd1702717116%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21095_|
                                            _%hd1702717116%_)
                                           (if (gx#stx-pair? _%tl1702817119%_)
                                               (let ((_%e1702917122%_
                                                      (gx#syntax-e
                                                       _%tl1702817119%_)))
                                                 (let ((_%tl1703117129%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1702917122%_)))
                                                       (_%hd1703017126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1702917122%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1703117129%_)
                                                       (_%__kont2076420765%_
                                                        _%hd1703017126%_)
                                                       (_%__kont2076620767%_
                                                        _%hd1701717170%_))))
                                               (_%__kont2076620767%_
                                                _%hd1701717170%_))
                                           (_%__kont2076620767%_
                                            _%hd1701717170%_))
                                       (_%__kont2076620767%_
                                        _%hd1701717170%_))))
                               (_%__kont2076620767%_ _%hd1701717170%_)))))))
              (if (gx#stx-pair? _%__stx2075920760%_)
                  (let ((_%e1701317156%_ (gx#syntax-e _%__stx2075920760%_)))
                    (let ((_%tl1701517163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1701317156%_)))
                          (_%hd1701417160%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1701317156%_))))
                      (if (gx#stx-pair? _%tl1701517163%_)
                          (let ((_%e1701617166%_
                                 (gx#syntax-e _%tl1701517163%_)))
                            (let ((_%tl1701817173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1701617166%_)))
                                  (_%hd1701717170%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1701617166%_))))
                              (if (gx#stx-null? _%tl1701817173%_)
                                  (_%__match2078220783%_
                                   _%e1701317156%_
                                   _%hd1701417160%_
                                   _%tl1701517163%_
                                   _%e1701617166%_
                                   _%hd1701717170%_
                                   _%tl1701817173%_)
                                  (if (gx#stx-pair? _%hd1701717170%_)
                                      (let ((_%e1702617112%_
                                             (gx#syntax-e _%hd1701717170%_)))
                                        (let ((_%tl1702817119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1702617112%_)))
                                              (_%hd1702717116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1702617112%_))))
                                          (if (gx#identifier? _%hd1702717116%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21095_|
                                                   _%hd1702717116%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1702817119%_)
                                                      (let ((_%e1702917122%_
                                                             (gx#syntax-e
                                                              _%tl1702817119%_)))
                                                        (let ((_%tl1703117129%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1702917122%_)))
                      (_%hd1703017126%_
                       (let () (declare (not safe)) (##car _%e1702917122%_))))
                  (let () (declare (not safe)) (_%g1701017044%_))))
              (let () (declare (not safe)) (_%g1701017044%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1701017044%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1701017044%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1701017044%_))))))
                          (let () (declare (not safe)) (_%g1701017044%_)))))
                  (let () (declare (not safe)) (_%g1701017044%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17193%_)
        (letrec ((_%generate17196%_
                  (lambda (_%rest17315%_)
                    (let _%lp17318%_ ((_%rest17321%_ _%rest17315%_)
                                      (_%hd17323%_ '())
                                      (_%body17324%_ '()))
                      (let* ((_%__stx2085120852%_ _%rest17321%_)
                             (_%g1732717339%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2085120852%_))))
                        (let ((_%__kont2085420855%_
                               (lambda (_%g1732917367%_ _%g1733017369%_)
                                 (let* ((_%__stx2083120832%_ _%g1733017369%_)
                                        (_%g1738617393%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2083120832%_))))
                                   (let ((_%__kont2083420835%_
                                          (lambda ()
                                            (let ((_%arg17429%_ (gx#genident)))
                                              (_%lp17318%_
                                               _%g1732917367%_
                                               (cons _%arg17429%_ _%hd17323%_)
                                               (cons _%arg17429%_
                                                     _%body17324%_)))))
                                         (_%__kont2083620837%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1732917367%_)
                                                (let ((_%tail17415%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17415%_
                         _%hd17323%_)
                  (foldl cons (list _%tail17415%_) _%body17324%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17193%_
                                                 _%g1733017369%_))))
                                         (_%__kont2083820839%_
                                          (lambda ()
                                            (_%lp17318%_
                                             _%g1732917367%_
                                             _%hd17323%_
                                             (cons _%g1733017369%_
                                                   _%body17324%_)))))
                                     (if (gx#identifier? _%__stx2083120832%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21096_|
                                              _%__stx2083120832%_)
                                             (_%__kont2083420835%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21097_|
                                                  _%__stx2083120832%_)
                                                 (_%__kont2083620837%_)
                                                 (_%__kont2083820839%_)))
                                         (_%__kont2083820839%_))))))
                              (_%__kont2085620857%_
                               (lambda ()
                                 (values (reverse _%hd17323%_)
                                         (reverse _%body17324%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2085120852%_)
                              (let ((_%e1733117357%_
                                     (gx#syntax-e _%__stx2085120852%_)))
                                (let ((_%tl1733317364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1733117357%_)))
                                      (_%hd1733217361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1733117357%_))))
                                  (_%__kont2085420855%_
                                   _%tl1733317364%_
                                   _%hd1733217361%_)))
                              (_%__kont2085620857%_))))))))
          (let* ((_%g1719917210%_
                  (lambda (_%g1720017206%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1720017206%_)))
                 (_%g1719817311%_
                  (lambda (_%g1720017214%_)
                    (if (gx#stx-pair? _%g1720017214%_)
                        (let ((_%e1720217217%_ (gx#syntax-e _%g1720017214%_)))
                          (let ((_%hd1720317221%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1720217217%_)))
                                (_%tl1720417224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1720217217%_))))
                            ((lambda (_%g1720117227%_)
                               (if (and (gx#stx-list? _%g1720117227%_)
                                        (not (gx#stx-null? _%g1720117227%_)))
                                   (let ((_g21098_
                                          (_%generate17196%_ _%g1720117227%_)))
                                     (begin
                                       (let ((_g21099_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21098_)
                                                    (##values-length _g21098_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21099_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21099_)))
                                       (let ((_%hd17240%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21098_ 0)))
                                             (_%body17242%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21098_ 1)))
                                             (_%tail?17243%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21098_ 2))))
                                         (let* ((_%g1724517253%_
                                                 (lambda (_%g1724617249%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1724617249%_)))
                                                (_%g1724417307%_
                                                 (lambda (_%g1724617257%_)
                                                   ((lambda (_%g1724717260%_)
                                                      (let* ((_%g1727317281%_
                                                              (lambda (_%g1727417277%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1727417277%_)))
                     (_%g1727217303%_
                      (lambda (_%g1727417285%_)
                        ((lambda (_%g1727517288%_)
                           (if _%tail?17243%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1724717260%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%g1727517288%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1724717260%_
                                           (cons _%g1727517288%_ '())))))
                         _%g1727417285%_))))
                (_%g1727217303%_ _%body17242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1724617257%_))))
                                           (_%g1724417307%_ _%hd17240%_)))))
                                   (_%g1719917210%_ _%g1720017214%_)))
                             _%tl1720417224%_)))
                        (_%g1719917210%_ _%g1720017214%_)))))
            (_%g1719817311%_ _%stx17193%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17441%_)
        (let ((_%g1744417451%_
               (lambda (_%g1744517447%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1744517447%_))))
          (_%g1744417451%_ _%$stx17441%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17455%_)
        (let ((_%g1745817465%_
               (lambda (_%g1745917461%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1745917461%_))))
          (_%g1745817465%_ _%$stx17455%_))))))

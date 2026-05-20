(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20996_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20997_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20998_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21026_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21027_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21028_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21035_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21036_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21037_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21038_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21039_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21040_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21041_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21042_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21043_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21044_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21045_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21046_|
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
                      (let* ((_%__stx1902619027%_ _%rest8645%_)
                             (_%g86508662%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1902619027%_))))
                        (let ((_%__kont1902919030%_
                               (lambda (_%g86528694%_ _%g86538696%_)
                                 (let* ((_%__stx1900219003%_ _%g86538696%_)
                                        (_%g87128726%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1900219003%_))))
                                   (let ((_%__kont1900519006%_
                                          (lambda (_%g87148764%_)
                                            (_%lp8642%_ _%g86528694%_ '#t)))
                                         (_%__kont1900719008%_
                                          (lambda ()
                                            (if (gx#identifier? _%g86538696%_)
                                                (if (not _%opt?8647%_)
                                                    (_%lp8642%_
                                                     _%g86528694%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1902319024%_
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
                                                    (_%__kont1900519006%_
                                                     _%g87148764%_)
                                                    (_%__kont1900719008%_))))))
                                       (if (gx#stx-pair? _%__stx1900219003%_)
                                           (let ((_%e87158744%_
                                                  (gx#syntax-e
                                                   _%__stx1900219003%_)))
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
                                                           (_%__match1902319024%_
                                                            _%e87158744%_
                                                            _%hd87168748%_
                                                            _%tl87178751%_
                                                            _%e87188754%_
                                                            _%hd87198758%_
                                                            _%tl87208761%_)
                                                           (_%__kont1900719008%_))))
                                                   (_%__kont1900719008%_))))
                                           (_%__kont1900719008%_)))))))
                              (_%__kont1903119032%_
                               (lambda ()
                                 (if _%opt?8647%_
                                     (let ((_%$e8673%_
                                            (gx#stx-null? _%rest8645%_)))
                                       (if _%$e8673%_
                                           _%$e8673%_
                                           (gx#identifier? _%rest8645%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1902619027%_)
                              (let ((_%e86548684%_
                                     (gx#syntax-e _%__stx1902619027%_)))
                                (let ((_%tl86568691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86548684%_)))
                                      (_%hd86558688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86548684%_))))
                                  (_%__kont1902919030%_
                                   _%tl86568691%_
                                   _%hd86558688%_)))
                              (_%__kont1903119032%_)))))))
                 (_%opt-lambda-split5406%_
                  (lambda (_%hd8491%_)
                    (let _%lp8494%_ ((_%rest8497%_ _%hd8491%_)
                                     (_%pre8499%_ '())
                                     (_%opt8500%_ '()))
                      (let* ((_%__stx1906619067%_ _%rest8497%_)
                             (_%g85038515%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1906619067%_))))
                        (let ((_%__kont1906919070%_
                               (lambda (_%g85058543%_ _%g85068545%_)
                                 (let* ((_%__stx1904219043%_ _%g85068545%_)
                                        (_%g85618576%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1904219043%_))))
                                   (let ((_%__kont1904519046%_
                                          (lambda (_%g85638614%_ _%g85648616%_)
                                            (_%lp8494%_
                                             _%g85058543%_
                                             _%pre8499%_
                                             (cons (cons _%g85648616%_
                                                         _%g85638614%_)
                                                   _%opt8500%_))))
                                         (_%__kont1904719048%_
                                          (lambda ()
                                            (_%lp8494%_
                                             _%g85058543%_
                                             (cons _%g85068545%_ _%pre8499%_)
                                             _%opt8500%_))))
                                     (if (gx#stx-pair? _%__stx1904219043%_)
                                         (let ((_%e85658594%_
                                                (gx#syntax-e
                                                 _%__stx1904219043%_)))
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
                                                         (_%__kont1904519046%_
                                                          _%hd85698608%_
                                                          _%hd85668598%_)
                                                         (_%__kont1904719048%_))))
                                                 (_%__kont1904719048%_))))
                                         (_%__kont1904719048%_))))))
                              (_%__kont1907119072%_
                               (lambda ()
                                 (values (reverse _%pre8499%_)
                                         (reverse _%opt8500%_)
                                         _%rest8497%_))))
                          (if (gx#stx-pair? _%__stx1906619067%_)
                              (let ((_%e85078533%_
                                     (gx#syntax-e _%__stx1906619067%_)))
                                (let ((_%tl85098540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85078533%_)))
                                      (_%hd85088537%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85078533%_))))
                                  (_%__kont1906919070%_
                                   _%tl85098540%_
                                   _%hd85088537%_)))
                              (_%__kont1907119072%_)))))))
                 (_%kw-lambda?5407%_
                  (lambda (_%hd8159%_)
                    (let _%lp8162%_ ((_%rest8165%_ _%hd8159%_)
                                     (_%opt?8167%_ '#f)
                                     (_%key?8168%_ '#f))
                      (let* ((_%__stx1913019131%_ _%rest8165%_)
                             (_%g81738203%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1913019131%_))))
                        (let ((_%__kont1913319134%_
                               (lambda (_%g81758398%_
                                        _%g81768400%_
                                        _%g81778401%_)
                                 (let* ((_%__stx1910619107%_ _%g81768400%_)
                                        (_%g84168430%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1910619107%_))))
                                   (let ((_%__kont1910919110%_
                                          (lambda (_%g84188468%_)
                                            (if (gx#identifier? _%g84188468%_)
                                                (_%lp8162%_
                                                 _%g81758398%_
                                                 _%opt?8167%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1911119112%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81768400%_)
                                                (_%lp8162%_
                                                 _%g81758398%_
                                                 _%opt?8167%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1910619107%_)
                                         (let ((_%e84198448%_
                                                (gx#syntax-e
                                                 _%__stx1910619107%_)))
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
                                                         (_%__kont1910919110%_
                                                          _%hd84208452%_)
                                                         (_%__kont1911119112%_))))
                                                 (_%__kont1911119112%_))))
                                         (_%__kont1911119112%_))))))
                              (_%__kont1913519136%_
                               (lambda (_%g81848355%_ _%g81858357%_)
                                 (if (gx#identifier? _%g81858357%_)
                                     (_%lp8162%_
                                      _%g81848355%_
                                      _%opt?8167%_
                                      '#t)
                                     '#f)))
                              (_%__kont1913719138%_
                               (lambda (_%g81938235%_ _%g81948237%_)
                                 (let* ((_%__stx1908219083%_ _%g81948237%_)
                                        (_%g82538267%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1908219083%_))))
                                   (let ((_%__kont1908519086%_
                                          (lambda (_%g82558305%_)
                                            (if (gx#identifier? _%g82558305%_)
                                                (_%lp8162%_
                                                 _%g81938235%_
                                                 '#t
                                                 _%key?8168%_)
                                                '#f)))
                                         (_%__kont1908719088%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81948237%_)
                                                (if (not _%opt?8167%_)
                                                    (_%lp8162%_
                                                     _%g81938235%_
                                                     '#f
                                                     _%key?8168%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1908219083%_)
                                         (let ((_%e82568285%_
                                                (gx#syntax-e
                                                 _%__stx1908219083%_)))
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
                                                         (_%__kont1908519086%_
                                                          _%hd82578289%_)
                                                         (_%__kont1908719088%_))))
                                                 (_%__kont1908719088%_))))
                                         (_%__kont1908719088%_))))))
                              (_%__kont1913919140%_
                               (lambda ()
                                 (if _%key?8168%_
                                     (let ((_%$e8214%_
                                            (gx#stx-null? _%rest8165%_)))
                                       (if _%$e8214%_
                                           _%$e8214%_
                                           (gx#identifier? _%rest8165%_)))
                                     '#f))))
                          (let ((_%__match1915319154%_
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
                                         (_%__kont1913319134%_
                                          _%g81758398%_
                                          _%g81768400%_
                                          _%g81778401%_)
                                         (if (gx#stx-datum? _%hd81798382%_)
                                             (let ((_%e81898341%_
                                                    (gx#stx-e _%hd81798382%_)))
                                               (if (equal? _%e81898341%_
                                                           '#!key)
                                                   (_%__kont1913519136%_
                                                    _%tl81838395%_
                                                    _%hd81828392%_)
                                                   (_%__kont1913719138%_
                                                    _%tl81808385%_
                                                    _%hd81798382%_)))
                                             (_%__kont1913719138%_
                                              _%tl81808385%_
                                              _%hd81798382%_)))))))
                            (if (gx#stx-pair? _%__stx1913019131%_)
                                (let ((_%e81788378%_
                                       (gx#syntax-e _%__stx1913019131%_)))
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
                                            (_%__match1915319154%_
                                             _%e81788378%_
                                             _%hd81798382%_
                                             _%tl81808385%_
                                             _%e81818388%_
                                             _%hd81828392%_
                                             _%tl81838395%_)))
                                        (if (gx#stx-datum? _%hd81798382%_)
                                            (let ((_%e81898341%_
                                                   (gx#stx-e _%hd81798382%_)))
                                              (_%__kont1913719138%_
                                               _%tl81808385%_
                                               _%hd81798382%_))
                                            (_%__kont1913719138%_
                                             _%tl81808385%_
                                             _%hd81798382%_)))))
                                (_%__kont1913919140%_))))))))
                 (_%kw-lambda-split5408%_
                  (lambda (_%hd7892%_)
                    (let _%lp7895%_ ((_%rest7898%_ _%hd7892%_)
                                     (_%kwvar7900%_ '#f)
                                     (_%kwargs7901%_ '())
                                     (_%args7902%_ '()))
                      (let* ((_%__stx1920419205%_ _%rest7898%_)
                             (_%g79077937%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1920419205%_))))
                        (let ((_%__kont1920719208%_
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
                                       (let* ((_%__stx1918019181%_
                                               _%g79108058%_)
                                              (_%g80808095%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1918019181%_))))
                                         (let ((_%__kont1918319184%_
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
                                               (_%__kont1918519186%_
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
                                                _%__stx1918019181%_)
                                               (let ((_%e80848113%_
                                                      (gx#syntax-e
                                                       _%__stx1918019181%_)))
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
                       (_%__kont1918319184%_ _%hd80888127%_ _%hd80858117%_)
                       (_%__kont1918519186%_))))
               (_%__kont1918519186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1918519186%_))))))))
                              (_%__kont1920919210%_
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
                              (_%__kont1921119212%_
                               (lambda (_%g79277965%_ _%g79287967%_)
                                 (_%lp7895%_
                                  _%g79277965%_
                                  _%kwvar7900%_
                                  _%kwargs7901%_
                                  (cons _%g79287967%_ _%args7902%_))))
                              (_%__kont1921319214%_
                               (lambda ()
                                 (values _%kwvar7900%_
                                         (reverse _%kwargs7901%_)
                                         (foldl cons
                                                _%rest7898%_
                                                _%args7902%_)))))
                          (let ((_%__match1922719228%_
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
                                         (_%__kont1920719208%_
                                          _%g79098056%_
                                          _%g79108058%_
                                          _%g79118059%_)
                                         (if (gx#stx-datum? _%hd79138040%_)
                                             (let ((_%e79237999%_
                                                    (gx#stx-e _%hd79138040%_)))
                                               (if (equal? _%e79237999%_
                                                           '#!key)
                                                   (_%__kont1920919210%_
                                                    _%tl79178053%_
                                                    _%hd79168050%_)
                                                   (_%__kont1921119212%_
                                                    _%tl79148043%_
                                                    _%hd79138040%_)))
                                             (_%__kont1921119212%_
                                              _%tl79148043%_
                                              _%hd79138040%_)))))))
                            (if (gx#stx-pair? _%__stx1920419205%_)
                                (let ((_%e79128036%_
                                       (gx#syntax-e _%__stx1920419205%_)))
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
                                            (_%__match1922719228%_
                                             _%e79128036%_
                                             _%hd79138040%_
                                             _%tl79148043%_
                                             _%e79158046%_
                                             _%hd79168050%_
                                             _%tl79178053%_)))
                                        (if (gx#stx-datum? _%hd79138040%_)
                                            (let ((_%e79237999%_
                                                   (gx#stx-e _%hd79138040%_)))
                                              (_%__kont1921119212%_
                                               _%tl79148043%_
                                               _%hd79138040%_))
                                            (_%__kont1921119212%_
                                             _%tl79148043%_
                                             _%hd79138040%_)))))
                                (_%__kont1921319214%_))))))))
                 (_%check-duplicate-bindings5409%_
                  (lambda (_%hd7584%_)
                    (let _%lp7587%_ ((_%rest7590%_ _%hd7584%_)
                                     (_%ids7592%_ '()))
                      (let* ((_%__stx1927819279%_ _%rest7590%_)
                             (_%g75957607%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1927819279%_))))
                        (let ((_%__kont1928119282%_
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
                               (_%lp7587%_
                                _%g75977635%_
                                (cons _%hd76607681%_ _%ids7592%_))
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
                       (let* ((_%__stx1925419255%_ _%hd77237741%_)
                              (_%g77627776%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx1925419255%_))))
                         (let ((_%__kont1925719258%_
                                (lambda (_%g77647814%_)
                                  (_%lp7587%_
                                   _%tl77247744%_
                                   (cons _%g77647814%_ _%ids7592%_))))
                               (_%__kont1925919260%_
                                (lambda ()
                                  (_%lp7587%_
                                   _%tl77247744%_
                                   (cons _%hd77237741%_ _%ids7592%_)))))
                           (if (gx#stx-pair? _%__stx1925419255%_)
                               (let ((_%e77657794%_
                                      (gx#syntax-e _%__stx1925419255%_)))
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
                                               (_%__kont1925719258%_
                                                _%hd77667798%_)
                                               (_%__kont1925919260%_))))
                                       (_%__kont1925919260%_))))
                               (_%__kont1925919260%_))))))
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
                           (_%lp7587%_
                            _%tl78457865%_
                            (cons _%hd78447862%_ _%ids7592%_))))
                       (_%g78397851%_ _%g78407855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78387882%_
                                                    _%g75977635%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5400%_
                                                        _%rest7590%_)))))))
                              (_%__kont1928319284%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7590%_)
                                      _%ids7592%_
                                      (cons _%rest7590%_ _%ids7592%_))
                                  _%stx5400%_))))
                          (if (gx#stx-pair? _%__stx1927819279%_)
                              (let ((_%e75997625%_
                                     (gx#syntax-e _%__stx1927819279%_)))
                                (let ((_%tl76017632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e75997625%_)))
                                      (_%hd76007629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e75997625%_))))
                                  (_%__kont1928119282%_
                                   _%tl76017632%_
                                   _%hd76007629%_)))
                              (_%__kont1928319284%_)))))))
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
                                          (let ((_g20961_
                                                 (gx#syntax-split-splice
                                                  _%hd73937438%_
                                                  '0)))
                                            (begin
                                              (let ((_g20962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20961_)
                                                           (##values-length
                                                            _g20961_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20962_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20962_)))
                                              (let ((_%target73957444%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20961_
                                                        0)))
                                                    (_%tl73977447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20961_
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
                                          (let ((_g20963_
                                                 (gx#syntax-split-splice
                                                  _%hd74057476%_
                                                  '0)))
                                            (begin
                                              (let ((_g20964_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20963_)
                                                           (##values-length
                                                            _g20963_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20964_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20964_)))
                                              (let ((_%target74077482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20963_
                                                        0)))
                                                    (_%tl74097485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20963_
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
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda%)
                                                        (cons (foldr (lambda (_%g75637568%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g75647571%_)
                               (cons _%g75637568%_ _%g75647571%_))
                             (foldr (lambda (_%g75657574%_ _%g75667577%_)
                                      (cons _%g75657574%_ _%g75667577%_))
                                    _%hd74177514%_
                                    _%opt74157507%_)
                             _%pre74037469%_)
                      _%hd74207524%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                                        (let ((_g20965_
                                               (gx#syntax-split-splice
                                                _%g69566976%_
                                                '0)))
                                          (begin
                                            (let ((_g20966_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20965_)
                                                         (##values-length
                                                          _g20965_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20966_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20966_)))
                                            (let ((_%target69586979%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20965_
                                                      0)))
                                                  (_%tl69606982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20965_
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
                          (let* ((_%pre-bind69667004%_
                                  (reverse _%pre-bind69656992%_))
                                 (_%g70297046%_
                                  (lambda (_%g70307042%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g70307042%_)))
                                 (_%g70287148%_
                                  (lambda (_%g70307050%_)
                                    (if (gx#stx-pair/null? _%g70307050%_)
                                        (let ((_g20967_
                                               (gx#syntax-split-splice
                                                _%g70307050%_
                                                '0)))
                                          (begin
                                            (let ((_g20968_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20967_)
                                                         (##values-length
                                                          _g20967_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20968_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20968_)))
                                            (let ((_%target70327053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20967_
                                                      0)))
                                                  (_%tl70347056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20967_
                                                      1))))
                                              (if (gx#stx-null? _%tl70347056%_)
                                                  (letrec ((_%loop70357059%_
                                                            (lambda (_%hd70337063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%opt-bind70397066%_)
                      (if (gx#stx-pair? _%hd70337063%_)
                          (let ((_%e70367068%_ (gx#syntax-e _%hd70337063%_)))
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
                               (cons _%lp-hd70377072%_ _%opt-bind70397066%_))))
                          (let* ((_%opt-bind70407078%_
                                  (reverse _%opt-bind70397066%_))
                                 (_%g70987106%_
                                  (lambda (_%g70997102%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g70997102%_)))
                                 (_%g70977144%_
                                  (lambda (_%g70997110%_)
                                    (cons (list (foldr (lambda (_%g71277132%_
                                                                _%g71287135%_)
                                                         (cons _%g71277132%_
                                                               _%g71287135%_))
                                                       (foldr (lambda (_%g71297138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g71307141%_)
                        (cons _%g71297138%_ _%g71307141%_))
                      (cons _%g70997110%_ '())
                      _%opt-bind70407078%_)
               _%pre-bind69667004%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%generate-opt-clause5413%_
                                                 _%primary6931%_
                                                 (foldr cons
                                                        (reverse _%right*6952%_)
                                                        _%pre6933%_)
                                                 _%rest6949%_))
                                          (_%recur6937%_
                                           _%rest6949%_
                                           _%right*6952%_)))))
                            (_%g70977144%_ _%hd6946%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop70357059%_
                                                     _%target70327053%_
                                                     '()))
                                                  (_%g70297046%_
                                                   _%g70307050%_)))))
                                        (_%g70297046%_ _%g70307050%_)))))
                            (_%g70287148%_ (reverse _%right6942%_)))))))
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
                                                    (let ((_g20969_
                                                           (gx#syntax-split-splice
                                                            _%hd71677212%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20970_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20969_)
                             (##values-length _g20969_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20970_ 2)))
                      (error "Context expects 2 values" _g20970_)))
                (let ((_%target71697218%_
                       (let () (declare (not safe)) (##values-ref _g20969_ 0)))
                      (_%tl71717221%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20969_ 1))))
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
                                                    (let ((_g20971_
                                                           (gx#syntax-split-splice
                                                            _%hd71797250%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20972_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20971_)
                             (##values-length _g20971_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20972_ 2)))
                      (error "Context expects 2 values" _g20972_)))
                (let ((_%target71817256%_
                       (let () (declare (not safe)) (##values-ref _g20971_ 0)))
                      (_%tl71837259%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20971_ 1))))
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
                    (list (list (foldr (lambda (_%g73377342%_ _%g73387345%_)
                                         (cons _%g73377342%_ _%g73387345%_))
                                       (foldr (lambda (_%g73397348%_
                                                       _%g73407351%_)
                                                (cons _%g73397348%_
                                                      _%g73407351%_))
                                              _%hd71917288%_
                                              _%opt71897281%_)
                                       _%pre71777243%_)
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'apply)
                                       (cons _%hd71947298%_
                                             (foldr (lambda (_%g73537358%_
                                                             _%g73547361%_)
                                                      (cons _%g73537358%_
                                                            _%g73547361%_))
                                                    (foldr (lambda (_%g73557364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g73567367%_)
                     (cons _%g73557364%_ _%g73567367%_))
                   (cons _%hd71917288%_ '())
                   _%opt71897281%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%pre71777243%_)))
                                 (gx#stx-source _%stx5400%_))))
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
                                    (let* ((_%g66826690%_
                                            (lambda (_%g66836686%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g66836686%_)))
                                           (_%g66816744%_
                                            (lambda (_%g66836694%_)
                                              (let* ((_%g67106718%_
                                                      (lambda (_%g67116714%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g67116714%_)))
                                                     (_%g67096740%_
                                                      (lambda (_%g67116722%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'let-values)
                                                              (cons (cons (cons (cons _%g66526663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              '())
                                        (cons _%g66836694%_ '()))
                                  '())
                            (cons _%g67116722%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67096740%_
                                                 (_%recur6638%_
                                                  _%rest6648%_
                                                  (cons _%g66526663%_
                                                        _%right6643%_)))))))
                                      (_%g66816744%_ (cdr _%hd6645%_))))))
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
                                                (let ((_g20973_
                                                       (gx#syntax-split-splice
                                                        _%hd67586800%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20974_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20973_)
                         (##values-length _g20973_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20974_ 2)))
                  (error "Context expects 2 values" _g20974_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67606806%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20973_
                                                              0)))
                                                          (_%tl67626809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20973_
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
                                                (let ((_g20975_
                                                       (gx#syntax-split-splice
                                                        _%hd67706838%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20976_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20975_)
                         (##values-length _g20975_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20976_ 2)))
                  (error "Context expects 2 values" _g20976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67726844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20975_
                                                              0)))
                                                          (_%tl67746847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20975_
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
                                                (gx#stx-wrap-source
                                                 (cons _%hd67826876%_
                                                       (foldr (lambda (_%g69106915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g69116918%_)
                        (cons _%g69106915%_ _%g69116918%_))
                      (foldr (lambda (_%g69126921%_ _%g69136924%_)
                               (cons _%g69126921%_ _%g69136924%_))
                             '()
                             _%opt67806869%_)
                      _%pre67686831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gx#stx-source _%stx5400%_))
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
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons (cons (cons (cons _%hd65336560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f 'eq?)
                                                  (cons _%hd65366570%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'absent-value)
                                                              '())))
                                            (cons _%hd65396580%_
                                                  (cons _%hd65366570%_ '()))))
                                '()))
                    '())
              (cons _%hd65426590%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
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
                                                        (let ((_g20977_
                                                               (gx#syntax-split-splice
                                                                _%g63406360%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g20978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g20977_)
                                 (##values-length _g20977_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g20978_ 2)))
                          (error "Context expects 2 values" _g20978_)))
                    (let ((_%target63426363%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g20977_ 0)))
                          (_%tl63446366%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g20977_ 1))))
                      (if (gx#stx-null? _%tl63446366%_)
                          (letrec ((_%loop63456369%_
                                    (lambda (_%hd63436373%_ _%kwval63496376%_)
                                      (if (gx#stx-pair? _%hd63436373%_)
                                          (let ((_%e63466378%_
                                                 (gx#syntax-e _%hd63436373%_)))
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
                                          (let* ((_%kwval63506388%_
                                                  (reverse _%kwval63496376%_))
                                                 (_%g64086416%_
                                                  (lambda (_%g64096412%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g64096412%_)))
                                                 (_%g64076486%_
                                                  (lambda (_%g64096420%_)
                                                    (let* ((_%g64366444%_
                                                            (lambda (_%g64376440%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g64376440%_)))
                                                           (_%g64356474%_
                                                            (lambda (_%g64376448%_)
                                                              (gx#stx-wrap-source
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _%g63136324%_
                                         (foldr (lambda (_%g64656468%_
                                                         _%g64666471%_)
                                                  (cons _%g64656468%_
                                                        _%g64666471%_))
                                                _%g64096420%_
                                                _%kwval63506388%_))
                                   (cons _%g64376448%_ '())))
                       (gx#stx-source _%stx5400%_)))))
              (_%g64356474%_
               (_%make-body6019%_
                _%kwargs6015%_
                (foldr (lambda (_%g64776480%_ _%g64786483%_)
                         (cons _%g64776480%_ _%g64786483%_))
                       '()
                       _%kwval63506388%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g64076486%_ _%args6016%_))))))
                            (_%loop63456369%_ _%target63426363%_ '()))
                          (_%g63396356%_ _%g63406360%_)))))
                (_%g63396356%_ _%g63406360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g63386490%_
                                             (gx#gentemps
                                              (map cadr _%kwargs6015%_)))))))
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
                                                        (let ((_g20979_
                                                               (gx#syntax-split-splice
                                                                _%g61536173%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g20980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g20979_)
                                 (##values-length _g20979_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g20980_ 2)))
                          (error "Context expects 2 values" _g20980_)))
                    (let ((_%target61556176%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g20979_ 0)))
                          (_%tl61576179%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g20979_ 1))))
                      (if (gx#stx-null? _%tl61576179%_)
                          (letrec ((_%loop61586182%_
                                    (lambda (_%hd61566186%_ _%get-kw61626189%_)
                                      (if (gx#stx-pair? _%hd61566186%_)
                                          (let ((_%e61596191%_
                                                 (gx#syntax-e _%hd61566186%_)))
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
                                          (let* ((_%get-kw61636201%_
                                                  (reverse _%get-kw61626189%_))
                                                 (_%g62216229%_
                                                  (lambda (_%g62226225%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g62226225%_)))
                                                 (_%g62206259%_
                                                  (lambda (_%g62226233%_)
                                                    (gx#stx-wrap-source
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons (cons _%g61266137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'args))
                         (cons (cons (gx#datum->syntax '#f 'apply)
                                     (cons _%g62226233%_
                                           (cons _%g61266137%_
                                                 (foldr (lambda (_%g62506253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g62516256%_)
                  (cons _%g62506253%_ _%g62516256%_))
                (cons (gx#datum->syntax '#f 'args) '())
                _%get-kw61636201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _%stx5400%_)))))
                                            (_%g62206259%_ _%main6122%_))))))
                            (_%loop61586182%_ _%target61556176%_ '()))
                          (_%g61526169%_ _%g61536173%_)))))
                (_%g61526169%_ _%g61536173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g61516263%_
                                             (map (lambda (_%kwarg6267%_)
                                                    (let* ((_%g62706278%_
                                                            (lambda (_%g62716274%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g62716274%_)))
                                                           (_%g62696298%_
                                                            (lambda (_%g62716282%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'symbolic-table-ref)
                            (cons _%g61266137%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%g62716282%_ '()))
                                        (cons (gx#datum->syntax
                                               '#f
                                               'absent-value)
                                              '())))))))
              (_%g62696298%_ (car _%kwarg6267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%kwargs6015%_))))))
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
                                (let* ((_%g60526060%_
                                        (lambda (_%g60536056%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g60536056%_)))
                                       (_%g60516114%_
                                        (lambda (_%g60536064%_)
                                          (let* ((_%g60806088%_
                                                  (lambda (_%g60816084%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g60816084%_)))
                                                 (_%g60796110%_
                                                  (lambda (_%g60816092%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let-values)
                                                          (cons (cons (cons (cons _%g60256036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%g60816092%_ '()))
                              '())
                        (cons _%g60536064%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g60796110%_
                                             (_%make-main6021%_))))))
                                  (_%g60516114%_
                                   (_%make-dispatch6022%_ _%g60256036%_))))))
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
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda%)
                        (cons _%hd59435981%_
                              (cons (cons (gx#datum->syntax '#f 'apply)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'keyword-dispatch)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%hd59375961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%hd59405971%_ (cons _%hd59435981%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
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
                                          (let ((__tmp20985
                                                 (length _%kws5900%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20985 '#f))))
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
                                    (let ((__tmp20982
                                           (keyword-hash _%key5915%_))
                                          (__tmp20981
                                           (vector-length _%pht5906%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20982 __tmp20981))))
                              (if (vector-ref _%pht5906%_ _%pos5921%_)
                                  (if (let ((__tmp20983
                                             (vector-length _%pht5906%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20983 '8192))
                                      (_%rehash5903%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20984
                                                (vector-length _%pht5906%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20984))
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
          (let* ((_%__stx1929419295%_ _%stx5400%_)
                 (_%g54205451%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1929419295%_))))
            (let ((_%__kont1929719298%_
                   (lambda (_%g54225881%_ _%g54235883%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g54235883%_ _%g54225881%_))))
                  (_%__kont1929919300%_
                   (lambda (_%g54305655%_ _%g54315657%_)
                     (let ((_g20986_ (_%opt-lambda-split5406%_ _%g54315657%_)))
                       (begin
                         (let ((_g20987_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20986_)
                                      (##values-length _g20986_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20987_ 3)))
                               (error "Context expects 3 values" _g20987_)))
                         (let ((_%pre5670%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20986_ 0)))
                               (_%opt5672%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20986_ 1)))
                               (_%tail5673%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20986_ 2))))
                           (let* ((_%g56755683%_
                                   (lambda (_%g56765679%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56765679%_)))
                                  (_%g56745850%_
                                   (lambda (_%g56765687%_)
                                     (let* ((_%g57035711%_
                                             (lambda (_%g57045707%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g57045707%_)))
                                            (_%g57025846%_
                                             (lambda (_%g57045715%_)
                                               (let* ((_%g57315748%_
                                                       (lambda (_%g57325744%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g57325744%_)))
                                                      (_%g57305842%_
                                                       (lambda (_%g57325752%_)
                                                         (if (gx#stx-pair/null?
                                                              _%g57325752%_)
                                                             (let ((_g20988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _%g57325752%_ '0)))
                       (begin
                         (let ((_g20989_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20988_)
                                      (##values-length _g20988_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20989_ 2)))
                               (error "Context expects 2 values" _g20989_)))
                         (let ((_%target57345755%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20988_ 0)))
                               (_%tl57365758%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20988_ 1))))
                           (if (gx#stx-null? _%tl57365758%_)
                               (letrec ((_%loop57375761%_
                                         (lambda (_%hd57355765%_
                                                  _%clause57415768%_)
                                           (if (gx#stx-pair? _%hd57355765%_)
                                               (let ((_%e57385770%_
                                                      (gx#syntax-e
                                                       _%hd57355765%_)))
                                                 (let ((_%lp-hd57395774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e57385770%_)))
                                                       (_%lp-tl57405777%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e57385770%_))))
                                                   (_%loop57375761%_
                                                    _%lp-tl57405777%_
                                                    (cons _%lp-hd57395774%_
                                                          _%clause57415768%_))))
                                               (let* ((_%clause57425780%_
                                                       (reverse _%clause57415768%_))
                                                      (_%g58005808%_
                                                       (lambda (_%g58015804%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g58015804%_)))
                                                      (_%g57995830%_
                                                       (lambda (_%g58015812%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let-values)
                                                               (cons (cons (cons (cons _%g56765687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                               '())
                                         (cons _%g57045715%_ '()))
                                   '())
                             (cons _%g58015812%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g57995830%_
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g58335836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g58345839%_)
                          (cons _%g58335836%_ _%g58345839%_))
                        '()
                        _%clause57425780%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx5400%_))))))))
                                 (_%loop57375761%_ _%target57345755%_ '()))
                               (_%g57315748%_ _%g57325752%_)))))
                     (_%g57315748%_ _%g57325752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g57305842%_
                                                  (_%generate-opt-dispatch5411%_
                                                   _%g56765687%_
                                                   _%pre5670%_
                                                   _%opt5672%_
                                                   _%tail5673%_))))))
                                       (_%g57025846%_
                                        (gx#stx-wrap-source
                                         (_%generate-opt-primary5410%_
                                          _%pre5670%_
                                          _%opt5672%_
                                          _%tail5673%_
                                          _%g54305655%_)
                                         (gx#stx-source _%stx5400%_)))))))
                             (_%g56745850%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1930119302%_
                   (lambda (_%g54385478%_ _%g54395480%_)
                     (let* ((_%g54965503%_
                             (lambda (_%g54975499%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54975499%_)))
                            (_%g54955624%_
                             (lambda (_%g54975507%_)
                               (let ((_g20990_
                                      (_%kw-lambda-split5408%_ _%g54395480%_)))
                                 (begin
                                   (let ((_g20991_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g20990_)
                                                (##values-length _g20990_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g20991_ 3)))
                                         (error "Context expects 3 values"
                                                _g20991_)))
                                   (let ((_%key5516%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20990_ 0)))
                                         (_%kwargs5518%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20990_ 1)))
                                         (_%args5519%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g20990_ 2))))
                                     (let* ((_%g55215529%_
                                             (lambda (_%g55225525%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g55225525%_)))
                                            (_%g55205620%_
                                             (lambda (_%g55225533%_)
                                               (let* ((_%g55545562%_
                                                       (lambda (_%g55555558%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g55555558%_)))
                                                      (_%g55535616%_
                                                       (lambda (_%g55555566%_)
                                                         (let* ((_%g55825590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g55835586%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g55835586%_)))
                        (_%g55815612%_
                         (lambda (_%g55835594%_)
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _%g55225533%_ '())
                                                   (cons _%g55555566%_ '()))
                                             '())
                                       (cons _%g55835594%_ '()))))))
                   (_%g55815612%_
                    (gx#stx-wrap-source
                     (_%generate-kw-dispatch5415%_
                      _%g55225533%_
                      _%kwargs5518%_
                      (not _%key5516%_))
                     (gx#stx-source _%stx5400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g55535616%_
                                                  (gx#stx-wrap-source
                                                   (_%generate-kw-primary5414%_
                                                    _%key5516%_
                                                    _%kwargs5518%_
                                                    _%args5519%_
                                                    _%g54385478%_)
                                                   (gx#stx-source
                                                    _%stx5400%_)))))))
                                       (_%g55205620%_
                                        (gx#genident 'kw-lambda)))))))))
                       (_%g54955624%_
                        (_%check-duplicate-bindings5409%_ _%g54395480%_))))))
              (let* ((_%__match1933919340%_
                      (lambda (_%e54405458%_
                               _%hd54415462%_
                               _%tl54425465%_
                               _%e54435468%_
                               _%hd54445472%_
                               _%tl54455475%_)
                        (let ((_%g54385478%_ _%tl54455475%_)
                              (_%g54395480%_ _%hd54445472%_))
                          (if (_%kw-lambda?5407%_ _%g54395480%_)
                              (_%__kont1930119302%_
                               _%g54385478%_
                               _%g54395480%_)
                              (let () (declare (not safe)) (_%g54205451%_))))))
                     (_%__match1932719328%_
                      (lambda (_%e54325635%_
                               _%hd54335639%_
                               _%tl54345642%_
                               _%e54355645%_
                               _%hd54365649%_
                               _%tl54375652%_)
                        (let ((_%g54305655%_ _%tl54375652%_)
                              (_%g54315657%_ _%hd54365649%_))
                          (if (_%opt-lambda?5405%_ _%g54315657%_)
                              (_%__kont1929919300%_
                               _%g54305655%_
                               _%g54315657%_)
                              (_%__match1933919340%_
                               _%e54325635%_
                               _%hd54335639%_
                               _%tl54345642%_
                               _%e54355645%_
                               _%hd54365649%_
                               _%tl54375652%_)))))
                     (_%__match1931519316%_
                      (lambda (_%e54245861%_
                               _%hd54255865%_
                               _%tl54265868%_
                               _%e54275871%_
                               _%hd54285875%_
                               _%tl54295878%_)
                        (let ((_%g54225881%_ _%tl54295878%_)
                              (_%g54235883%_ _%hd54285875%_))
                          (if (_%simple-lambda?5403%_ _%g54235883%_)
                              (_%__kont1929719298%_
                               _%g54225881%_
                               _%g54235883%_)
                              (_%__match1932719328%_
                               _%e54245861%_
                               _%hd54255865%_
                               _%tl54265868%_
                               _%e54275871%_
                               _%hd54285875%_
                               _%tl54295878%_))))))
                (if (gx#stx-pair? _%__stx1929419295%_)
                    (let ((_%e54245861%_ (gx#syntax-e _%__stx1929419295%_)))
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
                                (_%__match1931519316%_
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
        (let* ((_%__stx1934219343%_ _%$stx8803%_)
               (_%g88118923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1934219343%_))))
          (let ((_%__kont1934519346%_
                 (lambda (_%g88139361%_
                          _%g88149363%_
                          _%g88159364%_
                          _%g88169365%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g88169365%_ _%g88159364%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88149363%_
                                                 (foldr (lambda (_%g93879390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g93889393%_)
                  (cons _%g93879390%_ _%g93889393%_))
                '()
                _%g88139361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1934919350%_
                 (lambda (_%g88389248%_
                          _%g88399250%_
                          _%g88409251%_
                          _%g88419252%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88419252%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88409251%_
                                                 (foldr (lambda (_%g92779280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g92789283%_)
                  (cons _%g92779280%_ _%g92789283%_))
                '()
                _%g88389248%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'macro:
                                           (cons _%g88399250%_ '())))))))
                (_%__kont1935319354%_
                 (lambda (_%g88679128%_ _%g88689130%_ _%g88699131%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88699131%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88689130%_
                                                 (foldr (lambda (_%g91509153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91519156%_)
                  (cons _%g91509153%_ _%g91519156%_))
                '()
                _%g88679128%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1935719358%_
                 (lambda (_%g88889046%_ _%g88899048%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88899048%_ '())
                               (cons _%g88889046%_ '())))))
                (_%__kont1935919360%_
                 (lambda (_%g88998984%_ _%g89008986%_ _%g89018987%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g89018987%_ '())
                               (cons _%g89008986%_
                                     (cons 'macro:
                                           (cons _%g88998984%_ '()))))))))
            (let* ((_%__match1952119522%_
                    (lambda (_%e89028930%_
                             _%hd89038934%_
                             _%tl89048937%_
                             _%e89058940%_
                             _%hd89068944%_
                             _%tl89078947%_
                             _%e89088950%_
                             _%hd89098954%_
                             _%tl89108957%_
                             _%e89118960%_
                             _%hd89128964%_
                             _%tl89138967%_
                             _%e89148970%_
                             _%e89158974%_
                             _%hd89168978%_
                             _%tl89178981%_)
                      (let ((_%g88998984%_ _%hd89168978%_)
                            (_%g89008986%_ _%hd89098954%_)
                            (_%g89018987%_ _%hd89068944%_))
                        (if (and (gx#identifier? _%g89018987%_)
                                 (gx#identifier? _%g88998984%_))
                            (_%__kont1935919360%_
                             _%g88998984%_
                             _%g89008986%_
                             _%g89018987%_)
                            (let () (declare (not safe)) (_%g88118923%_))))))
                   (_%__match1948319484%_
                    (lambda (_%e88909016%_
                             _%hd88919020%_
                             _%tl88929023%_
                             _%e88939026%_
                             _%hd88949030%_
                             _%tl88959033%_
                             _%e88969036%_
                             _%hd88979040%_
                             _%tl88989043%_)
                      (let ((_%g88889046%_ _%hd88979040%_)
                            (_%g88899048%_ _%hd88949030%_))
                        (if (gx#identifier? _%g88899048%_)
                            (_%__kont1935719358%_ _%g88889046%_ _%g88899048%_)
                            (let () (declare (not safe)) (_%g88118923%_))))))
                   (_%__match1947519476%_
                    (lambda (_%e88909016%_
                             _%hd88919020%_
                             _%tl88929023%_
                             _%e88939026%_
                             _%hd88949030%_
                             _%tl88959033%_)
                      (if (gx#stx-pair? _%tl88959033%_)
                          (let ((_%e88969036%_ (gx#syntax-e _%tl88959033%_)))
                            (let ((_%tl88989043%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88969036%_)))
                                  (_%hd88979040%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88969036%_))))
                              (if (gx#stx-null? _%tl88989043%_)
                                  (_%__match1948319484%_
                                   _%e88909016%_
                                   _%hd88919020%_
                                   _%tl88929023%_
                                   _%e88939026%_
                                   _%hd88949030%_
                                   _%tl88959033%_
                                   _%e88969036%_
                                   _%hd88979040%_
                                   _%tl88989043%_)
                                  (if (gx#stx-pair? _%tl88989043%_)
                                      (let ((_%e89118960%_
                                             (gx#syntax-e _%tl88989043%_)))
                                        (let ((_%tl89138967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89118960%_)))
                                              (_%hd89128964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89118960%_))))
                                          (if (gx#stx-datum? _%hd89128964%_)
                                              (let ((_%e89148970%_
                                                     (gx#stx-e
                                                      _%hd89128964%_)))
                                                (if (equal? _%e89148970%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89138967%_)
                                                        (let ((_%e89158974%_
                                                               (gx#syntax-e
                                                                _%tl89138967%_)))
                                                          (let ((_%tl89178981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89158974%_)))
                        (_%hd89168978%_
                         (let () (declare (not safe)) (##car _%e89158974%_))))
                    (if (gx#stx-null? _%tl89178981%_)
                        (_%__match1952119522%_
                         _%e88909016%_
                         _%hd88919020%_
                         _%tl88929023%_
                         _%e88939026%_
                         _%hd88949030%_
                         _%tl88959033%_
                         _%e88969036%_
                         _%hd88979040%_
                         _%tl88989043%_
                         _%e89118960%_
                         _%hd89128964%_
                         _%tl89138967%_
                         _%e89148970%_
                         _%e89158974%_
                         _%hd89168978%_
                         _%tl89178981%_)
                        (let () (declare (not safe)) (_%g88118923%_)))))
                (let () (declare (not safe)) (_%g88118923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88118923%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_))))))
                          (let () (declare (not safe)) (_%g88118923%_)))))
                   (_%__match1946319464%_
                    (lambda (_%e88709070%_
                             _%hd88719074%_
                             _%tl88729077%_
                             _%e88739080%_
                             _%hd88749084%_
                             _%tl88759087%_
                             _%e88769090%_
                             _%hd88779094%_
                             _%tl88789097%_
                             _%__splice1935519356%_
                             _%target88799100%_
                             _%tl88819103%_)
                      (letrec ((_%loop88829106%_
                                (lambda (_%hd88809110%_ _%body88869113%_)
                                  (if (gx#stx-pair? _%hd88809110%_)
                                      (let ((_%e88839115%_
                                             (gx#syntax-e _%hd88809110%_)))
                                        (let ((_%lp-tl88859122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88839115%_)))
                                              (_%lp-hd88849119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88839115%_))))
                                          (_%loop88829106%_
                                           _%lp-tl88859122%_
                                           (cons _%lp-hd88849119%_
                                                 _%body88869113%_))))
                                      (let ((_%body88879125%_
                                             (reverse _%body88869113%_)))
                                        (let ((_%g88679128%_ _%body88879125%_)
                                              (_%g88689130%_ _%tl88789097%_)
                                              (_%g88699131%_ _%hd88779094%_))
                                          (if (gx#identifier? _%g88699131%_)
                                              (_%__kont1935319354%_
                                               _%g88679128%_
                                               _%g88689130%_
                                               _%g88699131%_)
                                              (_%__match1947519476%_
                                               _%e88709070%_
                                               _%hd88719074%_
                                               _%tl88729077%_
                                               _%e88739080%_
                                               _%hd88749084%_
                                               _%tl88759087%_))))))))
                        (_%loop88829106%_ _%target88799100%_ '()))))
                   (_%__match1945519456%_
                    (lambda (_%e88709070%_
                             _%hd88719074%_
                             _%tl88729077%_
                             _%e88739080%_
                             _%hd88749084%_
                             _%tl88759087%_
                             _%e88769090%_
                             _%hd88779094%_
                             _%tl88789097%_)
                      (if (gx#stx-pair/null? _%tl88759087%_)
                          (let ((_%__splice1935519356%_
                                 (gx#syntax-split-splice->vector
                                  _%tl88759087%_
                                  '0)))
                            (let ((_%tl88819103%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1935519356%_ '1)))
                                  (_%target88799100%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1935519356%_
                                      '0))))
                              (if (gx#stx-null? _%tl88819103%_)
                                  (_%__match1946319464%_
                                   _%e88709070%_
                                   _%hd88719074%_
                                   _%tl88729077%_
                                   _%e88739080%_
                                   _%hd88749084%_
                                   _%tl88759087%_
                                   _%e88769090%_
                                   _%hd88779094%_
                                   _%tl88789097%_
                                   _%__splice1935519356%_
                                   _%target88799100%_
                                   _%tl88819103%_)
                                  (if (gx#stx-pair? _%tl88759087%_)
                                      (let ((_%e88969036%_
                                             (gx#syntax-e _%tl88759087%_)))
                                        (let ((_%tl88989043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88969036%_)))
                                              (_%hd88979040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88969036%_))))
                                          (if (gx#stx-null? _%tl88989043%_)
                                              (_%__match1948319484%_
                                               _%e88709070%_
                                               _%hd88719074%_
                                               _%tl88729077%_
                                               _%e88739080%_
                                               _%hd88749084%_
                                               _%tl88759087%_
                                               _%e88969036%_
                                               _%hd88979040%_
                                               _%tl88989043%_)
                                              (if (gx#stx-pair? _%tl88989043%_)
                                                  (let ((_%e89118960%_
                                                         (gx#syntax-e
                                                          _%tl88989043%_)))
                                                    (let ((_%tl89138967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89118960%_)))
                                                          (_%hd89128964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89118960%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89128964%_)
                                                          (let ((_%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89128964%_)))
                    (if (equal? _%e89148970%_ 'macro:)
                        (if (gx#stx-pair? _%tl89138967%_)
                            (let ((_%e89158974%_ (gx#syntax-e _%tl89138967%_)))
                              (let ((_%tl89178981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89158974%_)))
                                    (_%hd89168978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89158974%_))))
                                (if (gx#stx-null? _%tl89178981%_)
                                    (_%__match1952119522%_
                                     _%e88709070%_
                                     _%hd88719074%_
                                     _%tl88729077%_
                                     _%e88739080%_
                                     _%hd88749084%_
                                     _%tl88759087%_
                                     _%e88969036%_
                                     _%hd88979040%_
                                     _%tl88989043%_
                                     _%e89118960%_
                                     _%hd89128964%_
                                     _%tl89138967%_
                                     _%e89148970%_
                                     _%e89158974%_
                                     _%hd89168978%_
                                     _%tl89178981%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88118923%_)))))
                            (let () (declare (not safe)) (_%g88118923%_)))
                        (let () (declare (not safe)) (_%g88118923%_))))
                  (let () (declare (not safe)) (_%g88118923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_))))))
                          (if (gx#stx-pair? _%tl88759087%_)
                              (let ((_%e88969036%_
                                     (gx#syntax-e _%tl88759087%_)))
                                (let ((_%tl88989043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e88969036%_)))
                                      (_%hd88979040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e88969036%_))))
                                  (if (gx#stx-null? _%tl88989043%_)
                                      (_%__match1948319484%_
                                       _%e88709070%_
                                       _%hd88719074%_
                                       _%tl88729077%_
                                       _%e88739080%_
                                       _%hd88749084%_
                                       _%tl88759087%_
                                       _%e88969036%_
                                       _%hd88979040%_
                                       _%tl88989043%_)
                                      (if (gx#stx-pair? _%tl88989043%_)
                                          (let ((_%e89118960%_
                                                 (gx#syntax-e _%tl88989043%_)))
                                            (let ((_%tl89138967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e89118960%_)))
                                                  (_%hd89128964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e89118960%_))))
                                              (if (gx#stx-datum?
                                                   _%hd89128964%_)
                                                  (let ((_%e89148970%_
                                                         (gx#stx-e
                                                          _%hd89128964%_)))
                                                    (if (equal? _%e89148970%_
                                                                'macro:)
                                                        (if (gx#stx-pair?
                                                             _%tl89138967%_)
                                                            (let ((_%e89158974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl89138967%_)))
                      (let ((_%tl89178981%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e89158974%_)))
                            (_%hd89168978%_
                             (let ()
                               (declare (not safe))
                               (##car _%e89158974%_))))
                        (if (gx#stx-null? _%tl89178981%_)
                            (_%__match1952119522%_
                             _%e88709070%_
                             _%hd88719074%_
                             _%tl88729077%_
                             _%e88739080%_
                             _%hd88749084%_
                             _%tl88759087%_
                             _%e88969036%_
                             _%hd88979040%_
                             _%tl88989043%_
                             _%e89118960%_
                             _%hd89128964%_
                             _%tl89138967%_
                             _%e89148970%_
                             _%e89158974%_
                             _%hd89168978%_
                             _%tl89178981%_)
                            (let () (declare (not safe)) (_%g88118923%_)))))
                    (let () (declare (not safe)) (_%g88118923%_)))
                (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88118923%_))))))
                              (let () (declare (not safe)) (_%g88118923%_))))))
                   (_%__match1943719438%_
                    (lambda (_%e88429166%_
                             _%hd88439170%_
                             _%tl88449173%_
                             _%e88459176%_
                             _%hd88469180%_
                             _%tl88479183%_
                             _%e88489186%_
                             _%hd88499190%_
                             _%tl88509193%_
                             _%e88519196%_
                             _%hd88529200%_
                             _%tl88539203%_
                             _%e88549206%_
                             _%e88559210%_
                             _%hd88569214%_
                             _%tl88579217%_
                             _%__splice1935119352%_
                             _%target88589220%_
                             _%tl88609223%_)
                      (letrec ((_%loop88619226%_
                                (lambda (_%hd88599230%_ _%body88659233%_)
                                  (if (gx#stx-pair? _%hd88599230%_)
                                      (let ((_%e88629235%_
                                             (gx#syntax-e _%hd88599230%_)))
                                        (let ((_%lp-tl88649242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88629235%_)))
                                              (_%lp-hd88639239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88629235%_))))
                                          (_%loop88619226%_
                                           _%lp-tl88649242%_
                                           (cons _%lp-hd88639239%_
                                                 _%body88659233%_))))
                                      (let ((_%body88669245%_
                                             (reverse _%body88659233%_)))
                                        (let ((_%g88389248%_ _%body88669245%_)
                                              (_%g88399250%_ _%hd88569214%_)
                                              (_%g88409251%_ _%tl88509193%_)
                                              (_%g88419252%_ _%hd88499190%_))
                                          (if (and (gx#identifier?
                                                    _%g88419252%_)
                                                   (gx#identifier?
                                                    _%g88399250%_))
                                              (_%__kont1934919350%_
                                               _%g88389248%_
                                               _%g88399250%_
                                               _%g88409251%_
                                               _%g88419252%_)
                                              (_%__match1945519456%_
                                               _%e88429166%_
                                               _%hd88439170%_
                                               _%tl88449173%_
                                               _%e88459176%_
                                               _%hd88469180%_
                                               _%tl88479183%_
                                               _%e88489186%_
                                               _%hd88499190%_
                                               _%tl88509193%_))))))))
                        (_%loop88619226%_ _%target88589220%_ '()))))
                   (_%__match1939319394%_
                    (lambda (_%e88179293%_
                             _%hd88189297%_
                             _%tl88199300%_
                             _%e88209303%_
                             _%hd88219307%_
                             _%tl88229310%_
                             _%e88239313%_
                             _%hd88249317%_
                             _%tl88259320%_
                             _%e88269323%_
                             _%hd88279327%_
                             _%tl88289330%_
                             _%__splice1934719348%_
                             _%target88299333%_
                             _%tl88319336%_)
                      (letrec ((_%loop88329339%_
                                (lambda (_%hd88309343%_ _%body88369346%_)
                                  (if (gx#stx-pair? _%hd88309343%_)
                                      (let ((_%e88339348%_
                                             (gx#syntax-e _%hd88309343%_)))
                                        (let ((_%lp-tl88359355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88339348%_)))
                                              (_%lp-hd88349352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88339348%_))))
                                          (_%loop88329339%_
                                           _%lp-tl88359355%_
                                           (cons _%lp-hd88349352%_
                                                 _%body88369346%_))))
                                      (let ((_%body88379358%_
                                             (reverse _%body88369346%_)))
                                        (_%__kont1934519346%_
                                         _%body88379358%_
                                         _%tl88259320%_
                                         _%tl88289330%_
                                         _%hd88279327%_))))))
                        (_%loop88329339%_ _%target88299333%_ '())))))
              (if (gx#stx-pair? _%__stx1934219343%_)
                  (let ((_%e88179293%_ (gx#syntax-e _%__stx1934219343%_)))
                    (let ((_%tl88199300%_
                           (let () (declare (not safe)) (##cdr _%e88179293%_)))
                          (_%hd88189297%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88179293%_))))
                      (if (gx#stx-pair? _%tl88199300%_)
                          (let ((_%e88209303%_ (gx#syntax-e _%tl88199300%_)))
                            (let ((_%tl88229310%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88209303%_)))
                                  (_%hd88219307%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88209303%_))))
                              (if (gx#stx-pair? _%hd88219307%_)
                                  (let ((_%e88239313%_
                                         (gx#syntax-e _%hd88219307%_)))
                                    (let ((_%tl88259320%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88239313%_)))
                                          (_%hd88249317%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88239313%_))))
                                      (if (gx#stx-pair? _%hd88249317%_)
                                          (let ((_%e88269323%_
                                                 (gx#syntax-e _%hd88249317%_)))
                                            (let ((_%tl88289330%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88269323%_)))
                                                  (_%hd88279327%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88269323%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88229310%_)
                                                  (let ((_%__splice1934719348%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88229310%_
                                                          '0)))
                                                    (let ((_%tl88319336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1934719348%_
                                                              '1)))
                                                          (_%target88299333%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1934719348%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88319336%_)
                                                          (_%__match1939319394%_
                                                           _%e88179293%_
                                                           _%hd88189297%_
                                                           _%tl88199300%_
                                                           _%e88209303%_
                                                           _%hd88219307%_
                                                           _%tl88229310%_
                                                           _%e88239313%_
                                                           _%hd88249317%_
                                                           _%tl88259320%_
                                                           _%e88269323%_
                                                           _%hd88279327%_
                                                           _%tl88289330%_
                                                           _%__splice1934719348%_
                                                           _%target88299333%_
                                                           _%tl88319336%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88229310%_)
                                                              (let ((_%e88519196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88229310%_)))
                        (let ((_%tl88539203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88519196%_)))
                              (_%hd88529200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88519196%_))))
                          (if (gx#stx-datum? _%hd88529200%_)
                              (let ((_%e88549206%_ (gx#stx-e _%hd88529200%_)))
                                (if (equal? _%e88549206%_ 'macro:)
                                    (if (gx#stx-pair? _%tl88539203%_)
                                        (let ((_%e88559210%_
                                               (gx#syntax-e _%tl88539203%_)))
                                          (let ((_%tl88579217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e88559210%_)))
                                                (_%hd88569214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e88559210%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl88579217%_)
                                                (let ((_%__splice1935119352%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl88579217%_
                                                        '0)))
                                                  (let ((_%tl88609223%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1935119352%_
                                                            '1)))
                                                        (_%target88589220%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1935119352%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl88609223%_)
                                                        (_%__match1943719438%_
                                                         _%e88179293%_
                                                         _%hd88189297%_
                                                         _%tl88199300%_
                                                         _%e88209303%_
                                                         _%hd88219307%_
                                                         _%tl88229310%_
                                                         _%e88239313%_
                                                         _%hd88249317%_
                                                         _%tl88259320%_
                                                         _%e88519196%_
                                                         _%hd88529200%_
                                                         _%tl88539203%_
                                                         _%e88549206%_
                                                         _%e88559210%_
                                                         _%hd88569214%_
                                                         _%tl88579217%_
                                                         _%__splice1935119352%_
                                                         _%target88589220%_
                                                         _%tl88609223%_)
                                                        (if (gx#stx-datum?
                                                             _%hd88569214%_)
                                                            (let ((_%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%hd88569214%_)))
                      (if (equal? _%e89148970%_ 'macro:)
                          (if (gx#stx-pair? _%tl88579217%_)
                              (let ((_%e89158974%_
                                     (gx#syntax-e _%tl88579217%_)))
                                (let ((_%tl89178981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89158974%_)))
                                      (_%hd89168978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89158974%_))))
                                  (if (gx#stx-null? _%tl89178981%_)
                                      (_%__match1952119522%_
                                       _%e88179293%_
                                       _%hd88189297%_
                                       _%tl88199300%_
                                       _%e88209303%_
                                       _%hd88219307%_
                                       _%tl88229310%_
                                       _%e88519196%_
                                       _%hd88529200%_
                                       _%tl88539203%_
                                       _%e88559210%_
                                       _%hd88569214%_
                                       _%tl88579217%_
                                       _%e89148970%_
                                       _%e89158974%_
                                       _%hd89168978%_
                                       _%tl89178981%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_)))))
                              (let () (declare (not safe)) (_%g88118923%_)))
                          (let () (declare (not safe)) (_%g88118923%_))))
                    (let () (declare (not safe)) (_%g88118923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-datum?
                                                     _%hd88569214%_)
                                                    (let ((_%e89148970%_
                                                           (gx#stx-e
                                                            _%hd88569214%_)))
                                                      (if (equal? _%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88579217%_)
                      (let ((_%e89158974%_ (gx#syntax-e _%tl88579217%_)))
                        (let ((_%tl89178981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89158974%_)))
                              (_%hd89168978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89158974%_))))
                          (if (gx#stx-null? _%tl89178981%_)
                              (_%__match1952119522%_
                               _%e88179293%_
                               _%hd88189297%_
                               _%tl88199300%_
                               _%e88209303%_
                               _%hd88219307%_
                               _%tl88229310%_
                               _%e88519196%_
                               _%hd88529200%_
                               _%tl88539203%_
                               _%e88559210%_
                               _%hd88569214%_
                               _%tl88579217%_
                               _%e89148970%_
                               _%e89158974%_
                               _%hd89168978%_
                               _%tl89178981%_)
                              (let () (declare (not safe)) (_%g88118923%_)))))
                      (let () (declare (not safe)) (_%g88118923%_)))
                  (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_))))))
                                        (if (gx#stx-null? _%tl88539203%_)
                                            (_%__match1948319484%_
                                             _%e88179293%_
                                             _%hd88189297%_
                                             _%tl88199300%_
                                             _%e88209303%_
                                             _%hd88219307%_
                                             _%tl88229310%_
                                             _%e88519196%_
                                             _%hd88529200%_
                                             _%tl88539203%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_))))
                                    (if (gx#stx-null? _%tl88539203%_)
                                        (_%__match1948319484%_
                                         _%e88179293%_
                                         _%hd88189297%_
                                         _%tl88199300%_
                                         _%e88209303%_
                                         _%hd88219307%_
                                         _%tl88229310%_
                                         _%e88519196%_
                                         _%hd88529200%_
                                         _%tl88539203%_)
                                        (if (gx#stx-pair? _%tl88539203%_)
                                            (let ((_%e89118960%_
                                                   (gx#syntax-e
                                                    _%tl88539203%_)))
                                              (let ((_%tl89138967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89118960%_)))
                                                    (_%hd89128964%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89118960%_))))
                                                (if (gx#stx-datum?
                                                     _%hd89128964%_)
                                                    (let ((_%e89148970%_
                                                           (gx#stx-e
                                                            _%hd89128964%_)))
                                                      (if (equal? _%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl89138967%_)
                      (let ((_%e89158974%_ (gx#syntax-e _%tl89138967%_)))
                        (let ((_%tl89178981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89158974%_)))
                              (_%hd89168978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89158974%_))))
                          (if (gx#stx-null? _%tl89178981%_)
                              (_%__match1952119522%_
                               _%e88179293%_
                               _%hd88189297%_
                               _%tl88199300%_
                               _%e88209303%_
                               _%hd88219307%_
                               _%tl88229310%_
                               _%e88519196%_
                               _%hd88529200%_
                               _%tl88539203%_
                               _%e89118960%_
                               _%hd89128964%_
                               _%tl89138967%_
                               _%e89148970%_
                               _%e89158974%_
                               _%hd89168978%_
                               _%tl89178981%_)
                              (let () (declare (not safe)) (_%g88118923%_)))))
                      (let () (declare (not safe)) (_%g88118923%_)))
                  (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_))))))
                              (if (gx#stx-null? _%tl88539203%_)
                                  (_%__match1948319484%_
                                   _%e88179293%_
                                   _%hd88189297%_
                                   _%tl88199300%_
                                   _%e88209303%_
                                   _%hd88219307%_
                                   _%tl88229310%_
                                   _%e88519196%_
                                   _%hd88529200%_
                                   _%tl88539203%_)
                                  (if (gx#stx-pair? _%tl88539203%_)
                                      (let ((_%e89118960%_
                                             (gx#syntax-e _%tl88539203%_)))
                                        (let ((_%tl89138967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89118960%_)))
                                              (_%hd89128964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89118960%_))))
                                          (if (gx#stx-datum? _%hd89128964%_)
                                              (let ((_%e89148970%_
                                                     (gx#stx-e
                                                      _%hd89128964%_)))
                                                (if (equal? _%e89148970%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89138967%_)
                                                        (let ((_%e89158974%_
                                                               (gx#syntax-e
                                                                _%tl89138967%_)))
                                                          (let ((_%tl89178981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89158974%_)))
                        (_%hd89168978%_
                         (let () (declare (not safe)) (##car _%e89158974%_))))
                    (if (gx#stx-null? _%tl89178981%_)
                        (_%__match1952119522%_
                         _%e88179293%_
                         _%hd88189297%_
                         _%tl88199300%_
                         _%e88209303%_
                         _%hd88219307%_
                         _%tl88229310%_
                         _%e88519196%_
                         _%hd88529200%_
                         _%tl88539203%_
                         _%e89118960%_
                         _%hd89128964%_
                         _%tl89138967%_
                         _%e89148970%_
                         _%e89158974%_
                         _%hd89168978%_
                         _%tl89178981%_)
                        (let () (declare (not safe)) (_%g88118923%_)))))
                (let () (declare (not safe)) (_%g88118923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88118923%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_)))))))
                      (let () (declare (not safe)) (_%g88118923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88229310%_)
                                                      (let ((_%e88519196%_
                                                             (gx#syntax-e
                                                              _%tl88229310%_)))
                                                        (let ((_%tl88539203%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88519196%_)))
                      (_%hd88529200%_
                       (let () (declare (not safe)) (##car _%e88519196%_))))
                  (if (gx#stx-datum? _%hd88529200%_)
                      (let ((_%e88549206%_ (gx#stx-e _%hd88529200%_)))
                        (if (equal? _%e88549206%_ 'macro:)
                            (if (gx#stx-pair? _%tl88539203%_)
                                (let ((_%e88559210%_
                                       (gx#syntax-e _%tl88539203%_)))
                                  (let ((_%tl88579217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e88559210%_)))
                                        (_%hd88569214%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e88559210%_))))
                                    (if (gx#stx-pair/null? _%tl88579217%_)
                                        (let ((_%__splice1935119352%_
                                               (gx#syntax-split-splice->vector
                                                _%tl88579217%_
                                                '0)))
                                          (let ((_%tl88609223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1935119352%_
                                                    '1)))
                                                (_%target88589220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1935119352%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl88609223%_)
                                                (_%__match1943719438%_
                                                 _%e88179293%_
                                                 _%hd88189297%_
                                                 _%tl88199300%_
                                                 _%e88209303%_
                                                 _%hd88219307%_
                                                 _%tl88229310%_
                                                 _%e88239313%_
                                                 _%hd88249317%_
                                                 _%tl88259320%_
                                                 _%e88519196%_
                                                 _%hd88529200%_
                                                 _%tl88539203%_
                                                 _%e88549206%_
                                                 _%e88559210%_
                                                 _%hd88569214%_
                                                 _%tl88579217%_
                                                 _%__splice1935119352%_
                                                 _%target88589220%_
                                                 _%tl88609223%_)
                                                (if (gx#stx-datum?
                                                     _%hd88569214%_)
                                                    (let ((_%e89148970%_
                                                           (gx#stx-e
                                                            _%hd88569214%_)))
                                                      (if (equal? _%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88579217%_)
                      (let ((_%e89158974%_ (gx#syntax-e _%tl88579217%_)))
                        (let ((_%tl89178981%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89158974%_)))
                              (_%hd89168978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89158974%_))))
                          (if (gx#stx-null? _%tl89178981%_)
                              (_%__match1952119522%_
                               _%e88179293%_
                               _%hd88189297%_
                               _%tl88199300%_
                               _%e88209303%_
                               _%hd88219307%_
                               _%tl88229310%_
                               _%e88519196%_
                               _%hd88529200%_
                               _%tl88539203%_
                               _%e88559210%_
                               _%hd88569214%_
                               _%tl88579217%_
                               _%e89148970%_
                               _%e89158974%_
                               _%hd89168978%_
                               _%tl89178981%_)
                              (let () (declare (not safe)) (_%g88118923%_)))))
                      (let () (declare (not safe)) (_%g88118923%_)))
                  (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_))))))
                                        (if (gx#stx-datum? _%hd88569214%_)
                                            (let ((_%e89148970%_
                                                   (gx#stx-e _%hd88569214%_)))
                                              (if (equal? _%e89148970%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl88579217%_)
                                                      (let ((_%e89158974%_
                                                             (gx#syntax-e
                                                              _%tl88579217%_)))
                                                        (let ((_%tl89178981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89158974%_)))
                      (_%hd89168978%_
                       (let () (declare (not safe)) (##car _%e89158974%_))))
                  (if (gx#stx-null? _%tl89178981%_)
                      (_%__match1952119522%_
                       _%e88179293%_
                       _%hd88189297%_
                       _%tl88199300%_
                       _%e88209303%_
                       _%hd88219307%_
                       _%tl88229310%_
                       _%e88519196%_
                       _%hd88529200%_
                       _%tl88539203%_
                       _%e88559210%_
                       _%hd88569214%_
                       _%tl88579217%_
                       _%e89148970%_
                       _%e89158974%_
                       _%hd89168978%_
                       _%tl89178981%_)
                      (let () (declare (not safe)) (_%g88118923%_)))))
              (let () (declare (not safe)) (_%g88118923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_))))))
                                (if (gx#stx-null? _%tl88539203%_)
                                    (_%__match1948319484%_
                                     _%e88179293%_
                                     _%hd88189297%_
                                     _%tl88199300%_
                                     _%e88209303%_
                                     _%hd88219307%_
                                     _%tl88229310%_
                                     _%e88519196%_
                                     _%hd88529200%_
                                     _%tl88539203%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88118923%_))))
                            (if (gx#stx-null? _%tl88539203%_)
                                (_%__match1948319484%_
                                 _%e88179293%_
                                 _%hd88189297%_
                                 _%tl88199300%_
                                 _%e88209303%_
                                 _%hd88219307%_
                                 _%tl88229310%_
                                 _%e88519196%_
                                 _%hd88529200%_
                                 _%tl88539203%_)
                                (if (gx#stx-pair? _%tl88539203%_)
                                    (let ((_%e89118960%_
                                           (gx#syntax-e _%tl88539203%_)))
                                      (let ((_%tl89138967%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e89118960%_)))
                                            (_%hd89128964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e89118960%_))))
                                        (if (gx#stx-datum? _%hd89128964%_)
                                            (let ((_%e89148970%_
                                                   (gx#stx-e _%hd89128964%_)))
                                              (if (equal? _%e89148970%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl89138967%_)
                                                      (let ((_%e89158974%_
                                                             (gx#syntax-e
                                                              _%tl89138967%_)))
                                                        (let ((_%tl89178981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89158974%_)))
                      (_%hd89168978%_
                       (let () (declare (not safe)) (##car _%e89158974%_))))
                  (if (gx#stx-null? _%tl89178981%_)
                      (_%__match1952119522%_
                       _%e88179293%_
                       _%hd88189297%_
                       _%tl88199300%_
                       _%e88209303%_
                       _%hd88219307%_
                       _%tl88229310%_
                       _%e88519196%_
                       _%hd88529200%_
                       _%tl88539203%_
                       _%e89118960%_
                       _%hd89128964%_
                       _%tl89138967%_
                       _%e89148970%_
                       _%e89158974%_
                       _%hd89168978%_
                       _%tl89178981%_)
                      (let () (declare (not safe)) (_%g88118923%_)))))
              (let () (declare (not safe)) (_%g88118923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g88118923%_))))))
                      (if (gx#stx-null? _%tl88539203%_)
                          (_%__match1948319484%_
                           _%e88179293%_
                           _%hd88189297%_
                           _%tl88199300%_
                           _%e88209303%_
                           _%hd88219307%_
                           _%tl88229310%_
                           _%e88519196%_
                           _%hd88529200%_
                           _%tl88539203%_)
                          (if (gx#stx-pair? _%tl88539203%_)
                              (let ((_%e89118960%_
                                     (gx#syntax-e _%tl88539203%_)))
                                (let ((_%tl89138967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89118960%_)))
                                      (_%hd89128964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89118960%_))))
                                  (if (gx#stx-datum? _%hd89128964%_)
                                      (let ((_%e89148970%_
                                             (gx#stx-e _%hd89128964%_)))
                                        (if (equal? _%e89148970%_ 'macro:)
                                            (if (gx#stx-pair? _%tl89138967%_)
                                                (let ((_%e89158974%_
                                                       (gx#syntax-e
                                                        _%tl89138967%_)))
                                                  (let ((_%tl89178981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e89158974%_)))
                                                        (_%hd89168978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e89158974%_))))
                                                    (if (gx#stx-null?
                                                         _%tl89178981%_)
                                                        (_%__match1952119522%_
                                                         _%e88179293%_
                                                         _%hd88189297%_
                                                         _%tl88199300%_
                                                         _%e88209303%_
                                                         _%hd88219307%_
                                                         _%tl88229310%_
                                                         _%e88519196%_
                                                         _%hd88529200%_
                                                         _%tl88539203%_
                                                         _%e89118960%_
                                                         _%hd89128964%_
                                                         _%tl89138967%_
                                                         _%e89148970%_
                                                         _%e89158974%_
                                                         _%hd89168978%_
                                                         _%tl89178981%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g88118923%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88118923%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g88118923%_)))))))
              (let () (declare (not safe)) (_%g88118923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl88229310%_)
                                              (let ((_%e88519196%_
                                                     (gx#syntax-e
                                                      _%tl88229310%_)))
                                                (let ((_%tl88539203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e88519196%_)))
                                                      (_%hd88529200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e88519196%_))))
                                                  (if (gx#stx-datum?
                                                       _%hd88529200%_)
                                                      (let ((_%e88549206%_
                                                             (gx#stx-e
                                                              _%hd88529200%_)))
                                                        (if (equal? _%e88549206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%tl88539203%_)
                        (let ((_%e88559210%_ (gx#syntax-e _%tl88539203%_)))
                          (let ((_%tl88579217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e88559210%_)))
                                (_%hd88569214%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e88559210%_))))
                            (if (gx#stx-pair/null? _%tl88579217%_)
                                (let ((_%__splice1935119352%_
                                       (gx#syntax-split-splice->vector
                                        _%tl88579217%_
                                        '0)))
                                  (let ((_%tl88609223%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1935119352%_
                                            '1)))
                                        (_%target88589220%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1935119352%_
                                            '0))))
                                    (if (gx#stx-null? _%tl88609223%_)
                                        (_%__match1943719438%_
                                         _%e88179293%_
                                         _%hd88189297%_
                                         _%tl88199300%_
                                         _%e88209303%_
                                         _%hd88219307%_
                                         _%tl88229310%_
                                         _%e88239313%_
                                         _%hd88249317%_
                                         _%tl88259320%_
                                         _%e88519196%_
                                         _%hd88529200%_
                                         _%tl88539203%_
                                         _%e88549206%_
                                         _%e88559210%_
                                         _%hd88569214%_
                                         _%tl88579217%_
                                         _%__splice1935119352%_
                                         _%target88589220%_
                                         _%tl88609223%_)
                                        (if (gx#stx-pair/null? _%tl88229310%_)
                                            (let ((_%__splice1935519356%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl88229310%_
                                                    '0)))
                                              (let ((_%tl88819103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1935519356%_
                                                        '1)))
                                                    (_%target88799100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1935519356%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl88819103%_)
                                                    (_%__match1946319464%_
                                                     _%e88179293%_
                                                     _%hd88189297%_
                                                     _%tl88199300%_
                                                     _%e88209303%_
                                                     _%hd88219307%_
                                                     _%tl88229310%_
                                                     _%e88239313%_
                                                     _%hd88249317%_
                                                     _%tl88259320%_
                                                     _%__splice1935519356%_
                                                     _%target88799100%_
                                                     _%tl88819103%_)
                                                    (if (gx#stx-datum?
                                                         _%hd88569214%_)
                                                        (let ((_%e89148970%_
                                                               (gx#stx-e
                                                                _%hd88569214%_)))
                                                          (if (equal? _%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'macro:)
                      (if (gx#stx-pair? _%tl88579217%_)
                          (let ((_%e89158974%_ (gx#syntax-e _%tl88579217%_)))
                            (let ((_%tl89178981%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89158974%_)))
                                  (_%hd89168978%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89158974%_))))
                              (if (gx#stx-null? _%tl89178981%_)
                                  (_%__match1952119522%_
                                   _%e88179293%_
                                   _%hd88189297%_
                                   _%tl88199300%_
                                   _%e88209303%_
                                   _%hd88219307%_
                                   _%tl88229310%_
                                   _%e88519196%_
                                   _%hd88529200%_
                                   _%tl88539203%_
                                   _%e88559210%_
                                   _%hd88569214%_
                                   _%tl88579217%_
                                   _%e89148970%_
                                   _%e89158974%_
                                   _%hd89168978%_
                                   _%tl89178981%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88118923%_)))))
                          (let () (declare (not safe)) (_%g88118923%_)))
                      (let () (declare (not safe)) (_%g88118923%_))))
                (let () (declare (not safe)) (_%g88118923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-datum? _%hd88569214%_)
                                                (let ((_%e89148970%_
                                                       (gx#stx-e
                                                        _%hd88569214%_)))
                                                  (if (equal? _%e89148970%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88579217%_)
                                                          (let ((_%e89158974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88579217%_)))
                    (let ((_%tl89178981%_
                           (let () (declare (not safe)) (##cdr _%e89158974%_)))
                          (_%hd89168978%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89158974%_))))
                      (if (gx#stx-null? _%tl89178981%_)
                          (_%__match1952119522%_
                           _%e88179293%_
                           _%hd88189297%_
                           _%tl88199300%_
                           _%e88209303%_
                           _%hd88219307%_
                           _%tl88229310%_
                           _%e88519196%_
                           _%hd88529200%_
                           _%tl88539203%_
                           _%e88559210%_
                           _%hd88569214%_
                           _%tl88579217%_
                           _%e89148970%_
                           _%e89158974%_
                           _%hd89168978%_
                           _%tl89178981%_)
                          (let () (declare (not safe)) (_%g88118923%_)))))
                  (let () (declare (not safe)) (_%g88118923%_)))
              (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88118923%_)))))))
                                (if (gx#stx-pair/null? _%tl88229310%_)
                                    (let ((_%__splice1935519356%_
                                           (gx#syntax-split-splice->vector
                                            _%tl88229310%_
                                            '0)))
                                      (let ((_%tl88819103%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1935519356%_
                                                '1)))
                                            (_%target88799100%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1935519356%_
                                                '0))))
                                        (if (gx#stx-null? _%tl88819103%_)
                                            (_%__match1946319464%_
                                             _%e88179293%_
                                             _%hd88189297%_
                                             _%tl88199300%_
                                             _%e88209303%_
                                             _%hd88219307%_
                                             _%tl88229310%_
                                             _%e88239313%_
                                             _%hd88249317%_
                                             _%tl88259320%_
                                             _%__splice1935519356%_
                                             _%target88799100%_
                                             _%tl88819103%_)
                                            (if (gx#stx-datum? _%hd88569214%_)
                                                (let ((_%e89148970%_
                                                       (gx#stx-e
                                                        _%hd88569214%_)))
                                                  (if (equal? _%e89148970%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88579217%_)
                                                          (let ((_%e89158974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88579217%_)))
                    (let ((_%tl89178981%_
                           (let () (declare (not safe)) (##cdr _%e89158974%_)))
                          (_%hd89168978%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89158974%_))))
                      (if (gx#stx-null? _%tl89178981%_)
                          (_%__match1952119522%_
                           _%e88179293%_
                           _%hd88189297%_
                           _%tl88199300%_
                           _%e88209303%_
                           _%hd88219307%_
                           _%tl88229310%_
                           _%e88519196%_
                           _%hd88529200%_
                           _%tl88539203%_
                           _%e88559210%_
                           _%hd88569214%_
                           _%tl88579217%_
                           _%e89148970%_
                           _%e89158974%_
                           _%hd89168978%_
                           _%tl89178981%_)
                          (let () (declare (not safe)) (_%g88118923%_)))))
                  (let () (declare (not safe)) (_%g88118923%_)))
              (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88118923%_))))))
                                    (if (gx#stx-datum? _%hd88569214%_)
                                        (let ((_%e89148970%_
                                               (gx#stx-e _%hd88569214%_)))
                                          (if (equal? _%e89148970%_ 'macro:)
                                              (if (gx#stx-pair? _%tl88579217%_)
                                                  (let ((_%e89158974%_
                                                         (gx#syntax-e
                                                          _%tl88579217%_)))
                                                    (let ((_%tl89178981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89158974%_)))
                                                          (_%hd89168978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89158974%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89178981%_)
                                                          (_%__match1952119522%_
                                                           _%e88179293%_
                                                           _%hd88189297%_
                                                           _%tl88199300%_
                                                           _%e88209303%_
                                                           _%hd88219307%_
                                                           _%tl88229310%_
                                                           _%e88519196%_
                                                           _%hd88529200%_
                                                           _%tl88539203%_
                                                           _%e88559210%_
                                                           _%hd88569214%_
                                                           _%tl88579217%_
                                                           _%e89148970%_
                                                           _%e89158974%_
                                                           _%hd89168978%_
                                                           _%tl89178981%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88118923%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88118923%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88118923%_)))))))
                        (if (gx#stx-pair/null? _%tl88229310%_)
                            (let ((_%__splice1935519356%_
                                   (gx#syntax-split-splice->vector
                                    _%tl88229310%_
                                    '0)))
                              (let ((_%tl88819103%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1935519356%_
                                        '1)))
                                    (_%target88799100%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1935519356%_
                                        '0))))
                                (if (gx#stx-null? _%tl88819103%_)
                                    (_%__match1946319464%_
                                     _%e88179293%_
                                     _%hd88189297%_
                                     _%tl88199300%_
                                     _%e88209303%_
                                     _%hd88219307%_
                                     _%tl88229310%_
                                     _%e88239313%_
                                     _%hd88249317%_
                                     _%tl88259320%_
                                     _%__splice1935519356%_
                                     _%target88799100%_
                                     _%tl88819103%_)
                                    (if (gx#stx-null? _%tl88539203%_)
                                        (_%__match1948319484%_
                                         _%e88179293%_
                                         _%hd88189297%_
                                         _%tl88199300%_
                                         _%e88209303%_
                                         _%hd88219307%_
                                         _%tl88229310%_
                                         _%e88519196%_
                                         _%hd88529200%_
                                         _%tl88539203%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g88118923%_))))))
                            (if (gx#stx-null? _%tl88539203%_)
                                (_%__match1948319484%_
                                 _%e88179293%_
                                 _%hd88189297%_
                                 _%tl88199300%_
                                 _%e88209303%_
                                 _%hd88219307%_
                                 _%tl88229310%_
                                 _%e88519196%_
                                 _%hd88529200%_
                                 _%tl88539203%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g88118923%_)))))
                    (if (gx#stx-pair/null? _%tl88229310%_)
                        (let ((_%__splice1935519356%_
                               (gx#syntax-split-splice->vector
                                _%tl88229310%_
                                '0)))
                          (let ((_%tl88819103%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1935519356%_ '1)))
                                (_%target88799100%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1935519356%_ '0))))
                            (if (gx#stx-null? _%tl88819103%_)
                                (_%__match1946319464%_
                                 _%e88179293%_
                                 _%hd88189297%_
                                 _%tl88199300%_
                                 _%e88209303%_
                                 _%hd88219307%_
                                 _%tl88229310%_
                                 _%e88239313%_
                                 _%hd88249317%_
                                 _%tl88259320%_
                                 _%__splice1935519356%_
                                 _%target88799100%_
                                 _%tl88819103%_)
                                (if (gx#stx-null? _%tl88539203%_)
                                    (_%__match1948319484%_
                                     _%e88179293%_
                                     _%hd88189297%_
                                     _%tl88199300%_
                                     _%e88209303%_
                                     _%hd88219307%_
                                     _%tl88229310%_
                                     _%e88519196%_
                                     _%hd88529200%_
                                     _%tl88539203%_)
                                    (if (gx#stx-pair? _%tl88539203%_)
                                        (let ((_%e89118960%_
                                               (gx#syntax-e _%tl88539203%_)))
                                          (let ((_%tl89138967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e89118960%_)))
                                                (_%hd89128964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e89118960%_))))
                                            (if (gx#stx-datum? _%hd89128964%_)
                                                (let ((_%e89148970%_
                                                       (gx#stx-e
                                                        _%hd89128964%_)))
                                                  (if (equal? _%e89148970%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl89138967%_)
                                                          (let ((_%e89158974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl89138967%_)))
                    (let ((_%tl89178981%_
                           (let () (declare (not safe)) (##cdr _%e89158974%_)))
                          (_%hd89168978%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89158974%_))))
                      (if (gx#stx-null? _%tl89178981%_)
                          (_%__match1952119522%_
                           _%e88179293%_
                           _%hd88189297%_
                           _%tl88199300%_
                           _%e88209303%_
                           _%hd88219307%_
                           _%tl88229310%_
                           _%e88519196%_
                           _%hd88529200%_
                           _%tl88539203%_
                           _%e89118960%_
                           _%hd89128964%_
                           _%tl89138967%_
                           _%e89148970%_
                           _%e89158974%_
                           _%hd89168978%_
                           _%tl89178981%_)
                          (let () (declare (not safe)) (_%g88118923%_)))))
                  (let () (declare (not safe)) (_%g88118923%_)))
              (let () (declare (not safe)) (_%g88118923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88118923%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88118923%_)))))))
                        (if (gx#stx-null? _%tl88539203%_)
                            (_%__match1948319484%_
                             _%e88179293%_
                             _%hd88189297%_
                             _%tl88199300%_
                             _%e88209303%_
                             _%hd88219307%_
                             _%tl88229310%_
                             _%e88519196%_
                             _%hd88529200%_
                             _%tl88539203%_)
                            (if (gx#stx-pair? _%tl88539203%_)
                                (let ((_%e89118960%_
                                       (gx#syntax-e _%tl88539203%_)))
                                  (let ((_%tl89138967%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e89118960%_)))
                                        (_%hd89128964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e89118960%_))))
                                    (if (gx#stx-datum? _%hd89128964%_)
                                        (let ((_%e89148970%_
                                               (gx#stx-e _%hd89128964%_)))
                                          (if (equal? _%e89148970%_ 'macro:)
                                              (if (gx#stx-pair? _%tl89138967%_)
                                                  (let ((_%e89158974%_
                                                         (gx#syntax-e
                                                          _%tl89138967%_)))
                                                    (let ((_%tl89178981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89158974%_)))
                                                          (_%hd89168978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89158974%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89178981%_)
                                                          (_%__match1952119522%_
                                                           _%e88179293%_
                                                           _%hd88189297%_
                                                           _%tl88199300%_
                                                           _%e88209303%_
                                                           _%hd88219307%_
                                                           _%tl88229310%_
                                                           _%e88519196%_
                                                           _%hd88529200%_
                                                           _%tl88539203%_
                                                           _%e89118960%_
                                                           _%hd89128964%_
                                                           _%tl89138967%_
                                                           _%e89148970%_
                                                           _%e89158974%_
                                                           _%hd89168978%_
                                                           _%tl89178981%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88118923%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88118923%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88118923%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g88118923%_)))))))
              (if (gx#stx-pair/null? _%tl88229310%_)
                  (let ((_%__splice1935519356%_
                         (gx#syntax-split-splice->vector _%tl88229310%_ '0)))
                    (let ((_%tl88819103%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1935519356%_ '1)))
                          (_%target88799100%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1935519356%_ '0))))
                      (if (gx#stx-null? _%tl88819103%_)
                          (_%__match1946319464%_
                           _%e88179293%_
                           _%hd88189297%_
                           _%tl88199300%_
                           _%e88209303%_
                           _%hd88219307%_
                           _%tl88229310%_
                           _%e88239313%_
                           _%hd88249317%_
                           _%tl88259320%_
                           _%__splice1935519356%_
                           _%target88799100%_
                           _%tl88819103%_)
                          (if (gx#stx-null? _%tl88539203%_)
                              (_%__match1948319484%_
                               _%e88179293%_
                               _%hd88189297%_
                               _%tl88199300%_
                               _%e88209303%_
                               _%hd88219307%_
                               _%tl88229310%_
                               _%e88519196%_
                               _%hd88529200%_
                               _%tl88539203%_)
                              (if (gx#stx-pair? _%tl88539203%_)
                                  (let ((_%e89118960%_
                                         (gx#syntax-e _%tl88539203%_)))
                                    (let ((_%tl89138967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e89118960%_)))
                                          (_%hd89128964%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e89118960%_))))
                                      (if (gx#stx-datum? _%hd89128964%_)
                                          (let ((_%e89148970%_
                                                 (gx#stx-e _%hd89128964%_)))
                                            (if (equal? _%e89148970%_ 'macro:)
                                                (if (gx#stx-pair?
                                                     _%tl89138967%_)
                                                    (let ((_%e89158974%_
                                                           (gx#syntax-e
                                                            _%tl89138967%_)))
                                                      (let ((_%tl89178981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e89158974%_)))
                    (_%hd89168978%_
                     (let () (declare (not safe)) (##car _%e89158974%_))))
                (if (gx#stx-null? _%tl89178981%_)
                    (_%__match1952119522%_
                     _%e88179293%_
                     _%hd88189297%_
                     _%tl88199300%_
                     _%e88209303%_
                     _%hd88219307%_
                     _%tl88229310%_
                     _%e88519196%_
                     _%hd88529200%_
                     _%tl88539203%_
                     _%e89118960%_
                     _%hd89128964%_
                     _%tl89138967%_
                     _%e89148970%_
                     _%e89158974%_
                     _%hd89168978%_
                     _%tl89178981%_)
                    (let () (declare (not safe)) (_%g88118923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88118923%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88118923%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88118923%_)))))))
                  (if (gx#stx-null? _%tl88539203%_)
                      (_%__match1948319484%_
                       _%e88179293%_
                       _%hd88189297%_
                       _%tl88199300%_
                       _%e88209303%_
                       _%hd88219307%_
                       _%tl88229310%_
                       _%e88519196%_
                       _%hd88529200%_
                       _%tl88539203%_)
                      (if (gx#stx-pair? _%tl88539203%_)
                          (let ((_%e89118960%_ (gx#syntax-e _%tl88539203%_)))
                            (let ((_%tl89138967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89118960%_)))
                                  (_%hd89128964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89118960%_))))
                              (if (gx#stx-datum? _%hd89128964%_)
                                  (let ((_%e89148970%_
                                         (gx#stx-e _%hd89128964%_)))
                                    (if (equal? _%e89148970%_ 'macro:)
                                        (if (gx#stx-pair? _%tl89138967%_)
                                            (let ((_%e89158974%_
                                                   (gx#syntax-e
                                                    _%tl89138967%_)))
                                              (let ((_%tl89178981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89158974%_)))
                                                    (_%hd89168978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89158974%_))))
                                                (if (gx#stx-null?
                                                     _%tl89178981%_)
                                                    (_%__match1952119522%_
                                                     _%e88179293%_
                                                     _%hd88189297%_
                                                     _%tl88199300%_
                                                     _%e88209303%_
                                                     _%hd88219307%_
                                                     _%tl88229310%_
                                                     _%e88519196%_
                                                     _%hd88529200%_
                                                     _%tl88539203%_
                                                     _%e89118960%_
                                                     _%hd89128964%_
                                                     _%tl89138967%_
                                                     _%e89148970%_
                                                     _%e89158974%_
                                                     _%hd89168978%_
                                                     _%tl89178981%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88118923%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88118923%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88118923%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88118923%_)))))
                          (let () (declare (not safe)) (_%g88118923%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl88229310%_)
                                                  (let ((_%__splice1935519356%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88229310%_
                                                          '0)))
                                                    (let ((_%tl88819103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935519356%_
                                                              '1)))
                                                          (_%target88799100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935519356%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88819103%_)
                                                          (_%__match1946319464%_
                                                           _%e88179293%_
                                                           _%hd88189297%_
                                                           _%tl88199300%_
                                                           _%e88209303%_
                                                           _%hd88219307%_
                                                           _%tl88229310%_
                                                           _%e88239313%_
                                                           _%hd88249317%_
                                                           _%tl88259320%_
                                                           _%__splice1935519356%_
                                                           _%target88799100%_
                                                           _%tl88819103%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88118923%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_)))))))
                                  (if (gx#stx-pair? _%tl88229310%_)
                                      (let ((_%e88969036%_
                                             (gx#syntax-e _%tl88229310%_)))
                                        (let ((_%tl88989043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88969036%_)))
                                              (_%hd88979040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88969036%_))))
                                          (if (gx#stx-null? _%tl88989043%_)
                                              (_%__match1948319484%_
                                               _%e88179293%_
                                               _%hd88189297%_
                                               _%tl88199300%_
                                               _%e88209303%_
                                               _%hd88219307%_
                                               _%tl88229310%_
                                               _%e88969036%_
                                               _%hd88979040%_
                                               _%tl88989043%_)
                                              (if (gx#stx-pair? _%tl88989043%_)
                                                  (let ((_%e89118960%_
                                                         (gx#syntax-e
                                                          _%tl88989043%_)))
                                                    (let ((_%tl89138967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89118960%_)))
                                                          (_%hd89128964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89118960%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89128964%_)
                                                          (let ((_%e89148970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89128964%_)))
                    (if (equal? _%e89148970%_ 'macro:)
                        (if (gx#stx-pair? _%tl89138967%_)
                            (let ((_%e89158974%_ (gx#syntax-e _%tl89138967%_)))
                              (let ((_%tl89178981%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89158974%_)))
                                    (_%hd89168978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89158974%_))))
                                (if (gx#stx-null? _%tl89178981%_)
                                    (_%__match1952119522%_
                                     _%e88179293%_
                                     _%hd88189297%_
                                     _%tl88199300%_
                                     _%e88209303%_
                                     _%hd88219307%_
                                     _%tl88229310%_
                                     _%e88969036%_
                                     _%hd88979040%_
                                     _%tl88989043%_
                                     _%e89118960%_
                                     _%hd89128964%_
                                     _%tl89138967%_
                                     _%e89148970%_
                                     _%e89158974%_
                                     _%hd89168978%_
                                     _%tl89178981%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88118923%_)))))
                            (let () (declare (not safe)) (_%g88118923%_)))
                        (let () (declare (not safe)) (_%g88118923%_))))
                  (let () (declare (not safe)) (_%g88118923%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88118923%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88118923%_))))))
                          (let () (declare (not safe)) (_%g88118923%_)))))
                  (let () (declare (not safe)) (_%g88118923%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9403%_)
        (let* ((_%g94079431%_
                (lambda (_%g94089427%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g94089427%_)))
               (_%g94069514%_
                (lambda (_%g94089435%_)
                  (if (gx#stx-pair? _%g94089435%_)
                      (let ((_%e94119438%_ (gx#syntax-e _%g94089435%_)))
                        (let ((_%hd94129442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e94119438%_)))
                              (_%tl94139445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e94119438%_))))
                          (if (gx#stx-pair? _%tl94139445%_)
                              (let ((_%e94149448%_
                                     (gx#syntax-e _%tl94139445%_)))
                                (let ((_%hd94159452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e94149448%_)))
                                      (_%tl94169455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e94149448%_))))
                                  (if (gx#stx-pair/null? _%tl94169455%_)
                                      (let ((_g20992_
                                             (gx#syntax-split-splice
                                              _%tl94169455%_
                                              '0)))
                                        (begin
                                          (let ((_g20993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20992_)
                                                       (##values-length
                                                        _g20992_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20993_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20993_)))
                                          (let ((_%target94179458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20992_ 0)))
                                                (_%tl94199461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20992_ 1))))
                                            (if (gx#stx-null? _%tl94199461%_)
                                                (letrec ((_%loop94209464%_
                                                          (lambda (_%hd94189468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses94249471%_)
                    (if (gx#stx-pair? _%hd94189468%_)
                        (let ((_%e94219473%_ (gx#syntax-e _%hd94189468%_)))
                          (let ((_%lp-hd94229477%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94219473%_)))
                                (_%lp-tl94239480%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94219473%_))))
                            (_%loop94209464%_
                             _%lp-tl94239480%_
                             (cons _%lp-hd94229477%_ _%clauses94249471%_))))
                        (let ((_%clauses94259483%_
                               (reverse _%clauses94249471%_)))
                          (if (gx#identifier? _%hd94159452%_)
                              (cons (gx#datum->syntax '#f 'define-values)
                                    (cons (cons _%hd94159452%_ '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'case-lambda)
                                                      (foldr (lambda (_%g95059508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g95069511%_)
                       (cons _%g95059508%_ _%g95069511%_))
                     '()
                     _%clauses94259483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (_%g94079431%_ _%g94089435%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop94209464%_
                                                   _%target94179458%_
                                                   '()))
                                                (_%g94079431%_
                                                 _%g94089435%_)))))
                                      (_%g94079431%_ _%g94089435%_))))
                              (_%g94079431%_ _%g94089435%_))))
                      (_%g94079431%_ _%g94089435%_)))))
          (_%g94069514%_ _%$stx9403%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9519%_)
        (let* ((_%g95239541%_
                (lambda (_%g95249537%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g95249537%_)))
               (_%g95229596%_
                (lambda (_%g95249545%_)
                  (if (gx#stx-pair? _%g95249545%_)
                      (let ((_%e95279548%_ (gx#syntax-e _%g95249545%_)))
                        (let ((_%hd95289552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e95279548%_)))
                              (_%tl95299555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e95279548%_))))
                          (if (gx#stx-pair? _%tl95299555%_)
                              (let ((_%e95309558%_
                                     (gx#syntax-e _%tl95299555%_)))
                                (let ((_%hd95319562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e95309558%_)))
                                      (_%tl95329565%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e95309558%_))))
                                  (if (gx#stx-pair? _%tl95329565%_)
                                      (let ((_%e95339568%_
                                             (gx#syntax-e _%tl95329565%_)))
                                        (let ((_%hd95349572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e95339568%_)))
                                              (_%tl95359575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e95339568%_))))
                                          (if (gx#stx-null? _%tl95359575%_)
                                              (if (gx#identifier-list?
                                                   _%hd95319562%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'define-values)
                                                        (cons _%hd95319562%_
                                                              (cons _%hd95349572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g95239541%_
                                                   _%g95249545%_))
                                              (_%g95239541%_ _%g95249545%_))))
                                      (_%g95239541%_ _%g95249545%_))))
                              (_%g95239541%_ _%g95249545%_))))
                      (_%g95239541%_ _%g95249545%_)))))
          (_%g95229596%_ _%$stx9519%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9600%_)
        (let* ((_%g96049628%_
                (lambda (_%g96059624%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g96059624%_)))
               (_%g96039711%_
                (lambda (_%g96059632%_)
                  (if (gx#stx-pair? _%g96059632%_)
                      (let ((_%e96089635%_ (gx#syntax-e _%g96059632%_)))
                        (let ((_%hd96099639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e96089635%_)))
                              (_%tl96109642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e96089635%_))))
                          (if (gx#stx-pair? _%tl96109642%_)
                              (let ((_%e96119645%_
                                     (gx#syntax-e _%tl96109642%_)))
                                (let ((_%hd96129649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e96119645%_)))
                                      (_%tl96139652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e96119645%_))))
                                  (if (gx#stx-pair/null? _%tl96139652%_)
                                      (let ((_g20994_
                                             (gx#syntax-split-splice
                                              _%tl96139652%_
                                              '0)))
                                        (begin
                                          (let ((_g20995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20994_)
                                                       (##values-length
                                                        _g20994_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20995_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20995_)))
                                          (let ((_%target96149655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20994_ 0)))
                                                (_%tl96169658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20994_ 1))))
                                            (if (gx#stx-null? _%tl96169658%_)
                                                (letrec ((_%loop96179661%_
                                                          (lambda (_%hd96159665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause96219668%_)
                    (if (gx#stx-pair? _%hd96159665%_)
                        (let ((_%e96189670%_ (gx#syntax-e _%hd96159665%_)))
                          (let ((_%lp-hd96199674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96189670%_)))
                                (_%lp-tl96209677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96189670%_))))
                            (_%loop96179661%_
                             _%lp-tl96209677%_
                             (cons _%lp-hd96199674%_ _%clause96219668%_))))
                        (let ((_%clause96229680%_
                               (reverse _%clause96219668%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (gx#datum->syntax '#f '$e)
                                            (cons _%hd96129649%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '~case)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '$e)
                                                        (foldr (lambda (_%g97029705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g97039708%_)
                         (cons _%g97029705%_ _%g97039708%_))
                       '()
                       _%clause96229680%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop96179661%_
                                                   _%target96149655%_
                                                   '()))
                                                (_%g96049628%_
                                                 _%g96059632%_)))))
                                      (_%g96049628%_ _%g96059632%_))))
                              (_%g96049628%_ _%g96059632%_))))
                      (_%g96049628%_ _%g96059632%_)))))
          (_%g96039711%_ _%$stx9600%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9716%_)
        (letrec ((_%parse-clauses9719%_
                  (lambda (_%e12176%_ _%clauses12178%_)
                    (let _%lp12180%_ ((_%rest12183%_ _%clauses12178%_)
                                      (_%datums12185%_ '())
                                      (_%dispatch12186%_ '())
                                      (_%default12187%_ '#f))
                      (let* ((_%__stx1962019621%_ _%rest12183%_)
                             (_%g1219012202%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1962019621%_))))
                        (let ((_%__kont1962319624%_
                               (lambda (_%g1219212234%_ _%g1219312236%_)
                                 (let* ((_%__stx1952419525%_ _%g1219312236%_)
                                        (_%g1225412327%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1952419525%_))))
                                   (let ((_%__kont1952719528%_
                                          (lambda (_%g1225612684%_)
                                            (if (gx#stx-null? _%g1219212234%_)
                                                (let* ((_%g1269912707%_
                                                        (lambda (_%g1270012703%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1270012703%_)))
                                                       (_%g1269812726%_
                                                        (lambda (_%g1270012711%_)
                                                          (_%lp12180%_
                                                           '()
                                                           _%datums12185%_
                                                           _%dispatch12186%_
                                                           (cons _%g1225612684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1270012711%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1269812726%_ _%e12176%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9716%_
                                                 _%g1219312236%_))))
                                         (_%__kont1952919530%_
                                          (lambda (_%g1226612624%_)
                                            (if (gx#stx-null? _%g1219212234%_)
                                                (_%lp12180%_
                                                 '()
                                                 _%datums12185%_
                                                 _%dispatch12186%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1263812641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1263912644%_)
                        (cons _%g1263812641%_ _%g1263912644%_))
                      '()
                      _%g1226612624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9716%_
                                                 _%g1219312236%_))))
                                         (_%__kont1953319534%_
                                          (lambda (_%g1227912511%_
                                                   _%g1228012513%_)
                                            (if (null? (foldr (lambda (_%g1253112534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1253212537%_)
                        (cons _%g1253112534%_ _%g1253212537%_))
                      '()
                      _%g1228012513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12180%_
                                                 _%g1219212234%_
                                                 _%datums12185%_
                                                 _%dispatch12186%_
                                                 _%default12187%_)
                                                (let* ((_%g1254012548%_
                                                        (lambda (_%g1254112544%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1254112544%_)))
                                                       (_%g1253912575%_
                                                        (lambda (_%g1254112552%_)
                                                          (_%lp12180%_
                                                           _%g1219212234%_
                                                           (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%g1256612569%_ _%g1256712572%_)
                                       (cons _%g1256612569%_ _%g1256712572%_))
                                     '()
                                     _%g1228012513%_))
                         _%datums12185%_)
                   (cons (cons _%g1227912511%_ (cons _%g1254112552%_ '()))
                         _%dispatch12186%_)
                   _%default12187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1253912575%_
                                                   _%e12176%_)))))
                                         (_%__kont1953719538%_
                                          (lambda (_%g1229912400%_
                                                   _%g1230012402%_)
                                            (if (null? (foldr (lambda (_%g1242112424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1242212427%_)
                        (cons _%g1242112424%_ _%g1242212427%_))
                      '()
                      _%g1230012402%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12180%_
                                                 _%g1219212234%_
                                                 _%datums12185%_
                                                 _%dispatch12186%_
                                                 _%default12187%_)
                                                (_%lp12180%_
                                                 _%g1219212234%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1242912432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1243012435%_)
                             (cons _%g1242912432%_ _%g1243012435%_))
                           '()
                           _%g1230012402%_))
               _%datums12185%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1243712440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1243812443%_)
                              (cons _%g1243712440%_ _%g1243812443%_))
                            '()
                            _%g1229912400%_))
               _%dispatch12186%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default12187%_)))))
                                     (let* ((_%__match1961719618%_
                                             (lambda (_%e1230112334%_
                                                      _%hd1230212338%_
                                                      _%tl1230312341%_
                                                      _%__splice1953919540%_
                                                      _%target1230412344%_
                                                      _%tl1230612347%_)
                                               (letrec ((_%loop1230712350%_
                                                         (lambda (_%hd1230512354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1231112357%_)
                   (if (gx#stx-pair? _%hd1230512354%_)
                       (let ((_%e1230812359%_ (gx#syntax-e _%hd1230512354%_)))
                         (let ((_%lp-tl1231012366%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1230812359%_)))
                               (_%lp-hd1230912363%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1230812359%_))))
                           (_%loop1230712350%_
                            _%lp-tl1231012366%_
                            (cons _%lp-hd1230912363%_ _%datum1231112357%_))))
                       (let ((_%datum1231212369%_
                              (reverse _%datum1231112357%_)))
                         (if (gx#stx-pair/null? _%tl1230312341%_)
                             (let ((_%__splice1954119542%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1230312341%_
                                     '0)))
                               (let ((_%tl1231512375%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1954119542%_
                                         '1)))
                                     (_%target1231312372%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1954119542%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1231512375%_)
                                     (letrec ((_%loop1231612378%_
                                               (lambda (_%hd1231412382%_
                                                        _%body1232012385%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1231412382%_)
                                                     (let ((_%e1231712387%_
                                                            (gx#syntax-e
                                                             _%hd1231412382%_)))
                                                       (let ((_%lp-tl1231912394%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1231712387%_)))
                     (_%lp-hd1231812391%_
                      (let () (declare (not safe)) (##car _%e1231712387%_))))
                 (_%loop1231612378%_
                  _%lp-tl1231912394%_
                  (cons _%lp-hd1231812391%_ _%body1232012385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1232112397%_
                                                            (reverse _%body1232012385%_)))
                                                       (_%__kont1953719538%_
                                                        _%body1232112397%_
                                                        _%datum1231212369%_))))))
                                       (_%loop1231612378%_
                                        _%target1231312372%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1225412327%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1225412327%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1230712350%_
                                                  _%target1230412344%_
                                                  '()))))
                                            (_%__match1960319604%_
                                             (lambda (_%e1228112453%_
                                                      _%hd1228212457%_
                                                      _%tl1228312460%_
                                                      _%__splice1953519536%_
                                                      _%target1228412463%_
                                                      _%tl1228612466%_)
                                               (letrec ((_%loop1228712469%_
                                                         (lambda (_%hd1228512473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1229112476%_)
                   (if (gx#stx-pair? _%hd1228512473%_)
                       (let ((_%e1228812478%_ (gx#syntax-e _%hd1228512473%_)))
                         (let ((_%lp-tl1229012485%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1228812478%_)))
                               (_%lp-hd1228912482%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1228812478%_))))
                           (_%loop1228712469%_
                            _%lp-tl1229012485%_
                            (cons _%lp-hd1228912482%_ _%datum1229112476%_))))
                       (let ((_%datum1229212488%_
                              (reverse _%datum1229112476%_)))
                         (if (gx#stx-pair? _%tl1228312460%_)
                             (let ((_%e1229312491%_
                                    (gx#syntax-e _%tl1228312460%_)))
                               (let ((_%tl1229512498%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1229312491%_)))
                                     (_%hd1229412495%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1229312491%_))))
                                 (if (gx#identifier? _%hd1229412495%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20996_|
                                          _%hd1229412495%_)
                                         (if (gx#stx-pair? _%tl1229512498%_)
                                             (let ((_%e1229612501%_
                                                    (gx#syntax-e
                                                     _%tl1229512498%_)))
                                               (let ((_%tl1229812508%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1229612501%_)))
                                                     (_%hd1229712505%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1229612501%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1229812508%_)
                                                     (_%__kont1953319534%_
                                                      _%hd1229712505%_
                                                      _%datum1229212488%_)
                                                     (_%__match1961719618%_
                                                      _%e1228112453%_
                                                      _%hd1228212457%_
                                                      _%tl1228312460%_
                                                      _%__splice1953519536%_
                                                      _%target1228412463%_
                                                      _%tl1228612466%_))))
                                             (_%__match1961719618%_
                                              _%e1228112453%_
                                              _%hd1228212457%_
                                              _%tl1228312460%_
                                              _%__splice1953519536%_
                                              _%target1228412463%_
                                              _%tl1228612466%_))
                                         (_%__match1961719618%_
                                          _%e1228112453%_
                                          _%hd1228212457%_
                                          _%tl1228312460%_
                                          _%__splice1953519536%_
                                          _%target1228412463%_
                                          _%tl1228612466%_))
                                     (_%__match1961719618%_
                                      _%e1228112453%_
                                      _%hd1228212457%_
                                      _%tl1228312460%_
                                      _%__splice1953519536%_
                                      _%target1228412463%_
                                      _%tl1228612466%_))))
                             (_%__match1961719618%_
                              _%e1228112453%_
                              _%hd1228212457%_
                              _%tl1228312460%_
                              _%__splice1953519536%_
                              _%target1228412463%_
                              _%tl1228612466%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1228712469%_
                                                  _%target1228412463%_
                                                  '()))))
                                            (_%__match1958919590%_
                                             (lambda (_%e1226712586%_
                                                      _%hd1226812590%_
                                                      _%tl1226912593%_
                                                      _%__splice1953119532%_
                                                      _%target1227012596%_
                                                      _%tl1227212599%_)
                                               (letrec ((_%loop1227312602%_
                                                         (lambda (_%hd1227112606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1227712609%_)
                   (if (gx#stx-pair? _%hd1227112606%_)
                       (let ((_%e1227412611%_ (gx#syntax-e _%hd1227112606%_)))
                         (let ((_%lp-tl1227612618%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1227412611%_)))
                               (_%lp-hd1227512615%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1227412611%_))))
                           (_%loop1227312602%_
                            _%lp-tl1227612618%_
                            (cons _%lp-hd1227512615%_ _%body1227712609%_))))
                       (let ((_%body1227812621%_ (reverse _%body1227712609%_)))
                         (_%__kont1952919530%_ _%body1227812621%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1227312602%_
                                                  _%target1227012596%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1952419525%_)
                                           (let ((_%e1225712654%_
                                                  (gx#syntax-e
                                                   _%__stx1952419525%_)))
                                             (let ((_%tl1225912661%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1225712654%_)))
                                                   (_%hd1225812658%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1225712654%_))))
                                               (if (gx#identifier?
                                                    _%hd1225812658%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20997_|
                                                        _%hd1225812658%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1225912661%_)
                                                           (let ((_%e1226012664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1225912661%_)))
                     (let ((_%tl1226212671%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1226012664%_)))
                           (_%hd1226112668%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1226012664%_))))
                       (if (gx#identifier? _%hd1226112668%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20998_|
                                _%hd1226112668%_)
                               (if (gx#stx-pair? _%tl1226212671%_)
                                   (let ((_%e1226312674%_
                                          (gx#syntax-e _%tl1226212671%_)))
                                     (let ((_%tl1226512681%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1226312674%_)))
                                           (_%hd1226412678%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1226312674%_))))
                                       (if (gx#stx-null? _%tl1226512681%_)
                                           (_%__kont1952719528%_
                                            _%hd1226412678%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1225912661%_)
                                               (let ((_%__splice1953119532%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1225912661%_
                                                       '0)))
                                                 (let ((_%tl1227212599%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953119532%_
                                                           '1)))
                                                       (_%target1227012596%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953119532%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1227212599%_)
                                                       (_%__match1958919590%_
                                                        _%e1225712654%_
                                                        _%hd1225812658%_
                                                        _%tl1225912661%_
                                                        _%__splice1953119532%_
                                                        _%target1227012596%_
                                                        _%tl1227212599%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1225812658%_)
                                                           (let ((_%__splice1953519536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1225812658%_
                           '0)))
                     (let ((_%tl1228612466%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953519536%_ '1)))
                           (_%target1228412463%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953519536%_ '0))))
                       (if (gx#stx-null? _%tl1228612466%_)
                           (_%__match1960319604%_
                            _%e1225712654%_
                            _%hd1225812658%_
                            _%tl1225912661%_
                            _%__splice1953519536%_
                            _%target1228412463%_
                            _%tl1228612466%_)
                           (let () (declare (not safe)) (_%g1225412327%_)))))
                   (let () (declare (not safe)) (_%g1225412327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1225812658%_)
                                                   (let ((_%__splice1953519536%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1225812658%_
                                                           '0)))
                                                     (let ((_%tl1228612466%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953519536%_
                                                               '1)))
                                                           (_%target1228412463%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953519536%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1228612466%_)
                                                           (_%__match1960319604%_
                                                            _%e1225712654%_
                                                            _%hd1225812658%_
                                                            _%tl1225912661%_
                                                            _%__splice1953519536%_
                                                            _%target1228412463%_
                                                            _%tl1228612466%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1225412327%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225412327%_)))))))
                                   (if (gx#stx-pair/null? _%tl1225912661%_)
                                       (let ((_%__splice1953119532%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1225912661%_
                                               '0)))
                                         (let ((_%tl1227212599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953119532%_
                                                   '1)))
                                               (_%target1227012596%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953119532%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1227212599%_)
                                               (_%__match1958919590%_
                                                _%e1225712654%_
                                                _%hd1225812658%_
                                                _%tl1225912661%_
                                                _%__splice1953119532%_
                                                _%target1227012596%_
                                                _%tl1227212599%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1225812658%_)
                                                   (let ((_%__splice1953519536%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1225812658%_
                                                           '0)))
                                                     (let ((_%tl1228612466%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953519536%_
                                                               '1)))
                                                           (_%target1228412463%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953519536%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1228612466%_)
                                                           (_%__match1960319604%_
                                                            _%e1225712654%_
                                                            _%hd1225812658%_
                                                            _%tl1225912661%_
                                                            _%__splice1953519536%_
                                                            _%target1228412463%_
                                                            _%tl1228612466%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1225412327%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225412327%_))))))
                                       (if (gx#stx-pair/null? _%hd1225812658%_)
                                           (let ((_%__splice1953519536%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1225812658%_
                                                   '0)))
                                             (let ((_%tl1228612466%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953519536%_
                                                       '1)))
                                                   (_%target1228412463%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953519536%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1228612466%_)
                                                   (_%__match1960319604%_
                                                    _%e1225712654%_
                                                    _%hd1225812658%_
                                                    _%tl1225912661%_
                                                    _%__splice1953519536%_
                                                    _%target1228412463%_
                                                    _%tl1228612466%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225412327%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225412327%_)))))
                               (if (gx#stx-pair/null? _%tl1225912661%_)
                                   (let ((_%__splice1953119532%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1225912661%_
                                           '0)))
                                     (let ((_%tl1227212599%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953119532%_
                                               '1)))
                                           (_%target1227012596%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953119532%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1227212599%_)
                                           (_%__match1958919590%_
                                            _%e1225712654%_
                                            _%hd1225812658%_
                                            _%tl1225912661%_
                                            _%__splice1953119532%_
                                            _%target1227012596%_
                                            _%tl1227212599%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1225812658%_)
                                               (let ((_%__splice1953519536%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1225812658%_
                                                       '0)))
                                                 (let ((_%tl1228612466%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953519536%_
                                                           '1)))
                                                       (_%target1228412463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953519536%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1228612466%_)
                                                       (_%__match1960319604%_
                                                        _%e1225712654%_
                                                        _%hd1225812658%_
                                                        _%tl1225912661%_
                                                        _%__splice1953519536%_
                                                        _%target1228412463%_
                                                        _%tl1228612466%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1225412327%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1225412327%_))))))
                                   (if (gx#stx-pair/null? _%hd1225812658%_)
                                       (let ((_%__splice1953519536%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1225812658%_
                                               '0)))
                                         (let ((_%tl1228612466%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953519536%_
                                                   '1)))
                                               (_%target1228412463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953519536%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1228612466%_)
                                               (_%__match1960319604%_
                                                _%e1225712654%_
                                                _%hd1225812658%_
                                                _%tl1225912661%_
                                                _%__splice1953519536%_
                                                _%target1228412463%_
                                                _%tl1228612466%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1225412327%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1225412327%_)))))
                           (if (gx#stx-pair/null? _%tl1225912661%_)
                               (let ((_%__splice1953119532%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1225912661%_
                                       '0)))
                                 (let ((_%tl1227212599%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1953119532%_
                                           '1)))
                                       (_%target1227012596%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1953119532%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1227212599%_)
                                       (_%__match1958919590%_
                                        _%e1225712654%_
                                        _%hd1225812658%_
                                        _%tl1225912661%_
                                        _%__splice1953119532%_
                                        _%target1227012596%_
                                        _%tl1227212599%_)
                                       (if (gx#stx-pair/null? _%hd1225812658%_)
                                           (let ((_%__splice1953519536%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1225812658%_
                                                   '0)))
                                             (let ((_%tl1228612466%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953519536%_
                                                       '1)))
                                                   (_%target1228412463%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953519536%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1228612466%_)
                                                   (_%__match1960319604%_
                                                    _%e1225712654%_
                                                    _%hd1225812658%_
                                                    _%tl1225912661%_
                                                    _%__splice1953519536%_
                                                    _%target1228412463%_
                                                    _%tl1228612466%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225412327%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225412327%_))))))
                               (if (gx#stx-pair/null? _%hd1225812658%_)
                                   (let ((_%__splice1953519536%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1225812658%_
                                           '0)))
                                     (let ((_%tl1228612466%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953519536%_
                                               '1)))
                                           (_%target1228412463%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953519536%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1228612466%_)
                                           (_%__match1960319604%_
                                            _%e1225712654%_
                                            _%hd1225812658%_
                                            _%tl1225912661%_
                                            _%__splice1953519536%_
                                            _%target1228412463%_
                                            _%tl1228612466%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225412327%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225412327%_)))))))
                   (if (gx#stx-pair/null? _%tl1225912661%_)
                       (let ((_%__splice1953119532%_
                              (gx#syntax-split-splice->vector
                               _%tl1225912661%_
                               '0)))
                         (let ((_%tl1227212599%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1953119532%_ '1)))
                               (_%target1227012596%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1953119532%_ '0))))
                           (if (gx#stx-null? _%tl1227212599%_)
                               (_%__match1958919590%_
                                _%e1225712654%_
                                _%hd1225812658%_
                                _%tl1225912661%_
                                _%__splice1953119532%_
                                _%target1227012596%_
                                _%tl1227212599%_)
                               (if (gx#stx-pair/null? _%hd1225812658%_)
                                   (let ((_%__splice1953519536%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1225812658%_
                                           '0)))
                                     (let ((_%tl1228612466%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953519536%_
                                               '1)))
                                           (_%target1228412463%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953519536%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1228612466%_)
                                           (_%__match1960319604%_
                                            _%e1225712654%_
                                            _%hd1225812658%_
                                            _%tl1225912661%_
                                            _%__splice1953519536%_
                                            _%target1228412463%_
                                            _%tl1228612466%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225412327%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225412327%_))))))
                       (if (gx#stx-pair/null? _%hd1225812658%_)
                           (let ((_%__splice1953519536%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1225812658%_
                                   '0)))
                             (let ((_%tl1228612466%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1953519536%_
                                       '1)))
                                   (_%target1228412463%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1953519536%_
                                       '0))))
                               (if (gx#stx-null? _%tl1228612466%_)
                                   (_%__match1960319604%_
                                    _%e1225712654%_
                                    _%hd1225812658%_
                                    _%tl1225912661%_
                                    _%__splice1953519536%_
                                    _%target1228412463%_
                                    _%tl1228612466%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225412327%_)))))
                           (let () (declare (not safe)) (_%g1225412327%_)))))
               (if (gx#stx-pair/null? _%hd1225812658%_)
                   (let ((_%__splice1953519536%_
                          (gx#syntax-split-splice->vector
                           _%hd1225812658%_
                           '0)))
                     (let ((_%tl1228612466%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953519536%_ '1)))
                           (_%target1228412463%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953519536%_ '0))))
                       (if (gx#stx-null? _%tl1228612466%_)
                           (_%__match1960319604%_
                            _%e1225712654%_
                            _%hd1225812658%_
                            _%tl1225912661%_
                            _%__splice1953519536%_
                            _%target1228412463%_
                            _%tl1228612466%_)
                           (let () (declare (not safe)) (_%g1225412327%_)))))
                   (let () (declare (not safe)) (_%g1225412327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1225812658%_)
                                                       (let ((_%__splice1953519536%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1225812658%_
                                                               '0)))
                                                         (let ((_%tl1228612466%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1953519536%_ '1)))
                       (_%target1228412463%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1953519536%_ '0))))
                   (if (gx#stx-null? _%tl1228612466%_)
                       (_%__match1960319604%_
                        _%e1225712654%_
                        _%hd1225812658%_
                        _%tl1225912661%_
                        _%__splice1953519536%_
                        _%target1228412463%_
                        _%tl1228612466%_)
                       (let () (declare (not safe)) (_%g1225412327%_)))))
               (let () (declare (not safe)) (_%g1225412327%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225412327%_))))))))
                              (_%__kont1962519626%_
                               (lambda ()
                                 (_%check-duplicate-datums9721%_
                                  _%datums12185%_)
                                 (values (reverse _%datums12185%_)
                                         (reverse _%dispatch12186%_)
                                         (let ((_%$e12213%_ _%default12187%_))
                                           (if _%$e12213%_
                                               _%$e12213%_
                                               '#!void))))))
                          (let ((_%g1218912217%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1962019621%_)
                                       (_%__kont1962519626%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1219012202%_))))))
                            (if (gx#stx-pair? _%__stx1962019621%_)
                                (let ((_%e1219412224%_
                                       (gx#syntax-e _%__stx1962019621%_)))
                                  (let ((_%tl1219612231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1219412224%_)))
                                        (_%hd1219512228%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1219412224%_))))
                                    (_%__kont1962319624%_
                                     _%tl1219612231%_
                                     _%hd1219512228%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1218912217%_)))))))))
                 (_%check-duplicate-datums9721%_
                  (lambda (_%datums12164%_)
                    (let ((_%ht12167%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst12170%_)
                         (for-each
                          (lambda (_%datum12173%_)
                            (if (hash-get _%ht12167%_ _%datum12173%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9716%_
                                 _%datum12173%_)
                                (hash-put! _%ht12167%_ _%datum12173%_ '#t)))
                          _%lst12170%_))
                       _%datums12164%_))))
                 (_%count-datums9722%_
                  (lambda (_%datums12157%_)
                    (foldl (lambda (_%lst12160%_ _%r12162%_)
                             (+ (length _%lst12160%_) _%r12162%_))
                           '0
                           _%datums12157%_)))
                 (_%symbolic-datums?9723%_
                  (lambda (_%datums12151%_)
                    (andmap (lambda (_%lst12154%_)
                              (andmap symbol? _%lst12154%_))
                            _%datums12151%_)))
                 (_%char-datums?9724%_
                  (lambda (_%datums12145%_)
                    (andmap (lambda (_%lst12148%_) (andmap char? _%lst12148%_))
                            _%datums12145%_)))
                 (_%fixnum-datums?9725%_
                  (lambda (_%datums12139%_)
                    (andmap (lambda (_%lst12142%_)
                              (andmap fixnum? _%lst12142%_))
                            _%datums12139%_)))
                 (_%eq-datums?9726%_
                  (lambda (_%datums12122%_)
                    (andmap (lambda (_%lst12125%_)
                              (andmap (lambda (_%x12128%_)
                                        (let ((_%$e12131%_
                                               (symbol? _%x12128%_)))
                                          (if _%$e12131%_
                                              _%$e12131%_
                                              (let ((_%$e12135%_
                                                     (keyword? _%x12128%_)))
                                                (if _%$e12135%_
                                                    _%$e12135%_
                                                    (immediate?
                                                     _%x12128%_))))))
                                      _%lst12125%_))
                            _%datums12122%_)))
                 (_%generate-simple-case9727%_
                  (lambda (_%e11888%_
                           _%datums11890%_
                           _%dispatch11891%_
                           _%default11892%_)
                    (let* ((_%g1189411902%_
                            (lambda (_%g1189511898%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1189511898%_)))
                           (_%g1189312118%_
                            (lambda (_%g1189511906%_)
                              (let _%recur11921%_ ((_%datums11924%_
                                                    _%datums11890%_)
                                                   (_%dispatch11926%_
                                                    _%dispatch11891%_))
                                (let* ((_%__stx1963819639%_ _%datums11924%_)
                                       (_%g1192911950%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx1963819639%_))))
                                  (let ((_%__kont1964119642%_
                                         (lambda (_%g1193112006%_
                                                  _%g1193212008%_)
                                           (let* ((_%g1202812040%_
                                                   (lambda (_%g1202912036%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g1202912036%_)))
                                                  (_%g1202712110%_
                                                   (lambda (_%g1202912044%_)
                                                     (if (gx#stx-pair?
                                                          _%g1202912044%_)
                                                         (let ((_%e1203212047%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1202912044%_)))
                   (let ((_%hd1203312051%_
                          (let ()
                            (declare (not safe))
                            (##car _%e1203212047%_)))
                         (_%tl1203412054%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e1203212047%_))))
                     (let* ((_%g1207112079%_
                             (lambda (_%g1207212075%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1207212075%_)))
                            (_%g1207012106%_
                             (lambda (_%g1207212083%_)
                               (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'or)
                                                 (foldr (lambda (_%g1209712100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1209812103%_)
                  (cons (cons (gx#datum->syntax '#f '~case-test)
                              (cons _%g1209712100%_
                                    (cons _%g1189511906%_ '())))
                        _%g1209812103%_))
                '()
                _%g1193212008%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%hd1203312051%_
                                                 (cons _%g1207212083%_
                                                       '())))))))
                       (_%g1207012106%_
                        (_%recur11921%_ _%g1193112006%_ _%tl1203412054%_)))))
                 (_%g1202812040%_ _%g1202912044%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1202712110%_
                                              _%dispatch11926%_))))
                                        (_%__kont1964519646%_
                                         (lambda () _%default11892%_)))
                                    (let ((_%__match1966119662%_
                                           (lambda (_%e1193311968%_
                                                    _%hd1193411972%_
                                                    _%tl1193511975%_
                                                    _%__splice1964319644%_
                                                    _%target1193611978%_
                                                    _%tl1193811981%_)
                                             (letrec ((_%loop1193911984%_
                                                       (lambda (_%hd1193711988%_
                                                                _%datum1194311991%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1193711988%_)
                                                             (let ((_%e1194011993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1193711988%_)))
                       (let ((_%lp-tl1194212000%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1194011993%_)))
                             (_%lp-hd1194111997%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1194011993%_))))
                         (_%loop1193911984%_
                          _%lp-tl1194212000%_
                          (cons _%lp-hd1194111997%_ _%datum1194311991%_))))
                     (let ((_%datum1194412003%_ (reverse _%datum1194311991%_)))
                       (_%__kont1964119642%_
                        _%tl1193511975%_
                        _%datum1194412003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1193911984%_
                                                _%target1193611978%_
                                                '())))))
                                      (if (gx#stx-pair? _%__stx1963819639%_)
                                          (let ((_%e1193311968%_
                                                 (gx#syntax-e
                                                  _%__stx1963819639%_)))
                                            (let ((_%tl1193511975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1193311968%_)))
                                                  (_%hd1193411972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1193311968%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd1193411972%_)
                                                  (let ((_%__splice1964319644%_
                                                         (gx#syntax-split-splice->vector
                                                          _%hd1193411972%_
                                                          '0)))
                                                    (let ((_%tl1193811981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1964319644%_
                                                              '1)))
                                                          (_%target1193611978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1964319644%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1193811981%_)
                                                          (_%__match1966119662%_
                                                           _%e1193311968%_
                                                           _%hd1193411972%_
                                                           _%tl1193511975%_
                                                           _%__splice1964319644%_
                                                           _%target1193611978%_
                                                           _%tl1193811981%_)
                                                          (_%__kont1964519646%_))))
                                                  (_%__kont1964519646%_))))
                                          (_%__kont1964519646%_)))))))))
                      (_%g1189312118%_ _%e11888%_))))
                 (_%datum-dispatch-index9728%_
                  (lambda (_%datums11762%_)
                    (let _%lp11765%_ ((_%rest11768%_ _%datums11762%_)
                                      (_%ix11770%_ '0)
                                      (_%r11771%_ '()))
                      (let* ((_%__stx1966419665%_ _%rest11768%_)
                             (_%g1177411795%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1966419665%_))))
                        (let ((_%__kont1966719668%_
                               (lambda (_%g1177611851%_ _%g1177711853%_)
                                 (_%lp11765%_
                                  _%g1177611851%_
                                  (fx1+ _%ix11770%_)
                                  (foldl (lambda (_%x11872%_ _%r11874%_)
                                           (cons (cons _%x11872%_ _%ix11770%_)
                                                 _%r11874%_))
                                         _%r11771%_
                                         (foldr (lambda (_%g1187511878%_
                                                         _%g1187611881%_)
                                                  (cons _%g1187511878%_
                                                        _%g1187611881%_))
                                                '()
                                                _%g1177711853%_)))))
                              (_%__kont1967119672%_ (lambda () _%r11771%_)))
                          (let ((_%__match1968719688%_
                                 (lambda (_%e1177811813%_
                                          _%hd1177911817%_
                                          _%tl1178011820%_
                                          _%__splice1966919670%_
                                          _%target1178111823%_
                                          _%tl1178311826%_)
                                   (letrec ((_%loop1178411829%_
                                             (lambda (_%hd1178211833%_
                                                      _%datum1178811836%_)
                                               (if (gx#stx-pair?
                                                    _%hd1178211833%_)
                                                   (let ((_%e1178511838%_
                                                          (gx#syntax-e
                                                           _%hd1178211833%_)))
                                                     (let ((_%lp-tl1178711845%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1178511838%_)))
                                                           (_%lp-hd1178611842%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1178511838%_))))
                                                       (_%loop1178411829%_
                                                        _%lp-tl1178711845%_
                                                        (cons _%lp-hd1178611842%_
                                                              _%datum1178811836%_))))
                                                   (let ((_%datum1178911848%_
                                                          (reverse _%datum1178811836%_)))
                                                     (_%__kont1966719668%_
                                                      _%tl1178011820%_
                                                      _%datum1178911848%_))))))
                                     (_%loop1178411829%_
                                      _%target1178111823%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1966419665%_)
                                (let ((_%e1177811813%_
                                       (gx#syntax-e _%__stx1966419665%_)))
                                  (let ((_%tl1178011820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1177811813%_)))
                                        (_%hd1177911817%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1177811813%_))))
                                    (if (gx#stx-pair/null? _%hd1177911817%_)
                                        (let ((_%__splice1966919670%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1177911817%_
                                                '0)))
                                          (let ((_%tl1178311826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1966919670%_
                                                    '1)))
                                                (_%target1178111823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1966919670%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1178311826%_)
                                                (_%__match1968719688%_
                                                 _%e1177811813%_
                                                 _%hd1177911817%_
                                                 _%tl1178011820%_
                                                 _%__splice1966919670%_
                                                 _%target1178111823%_
                                                 _%tl1178311826%_)
                                                (_%__kont1967119672%_))))
                                        (_%__kont1967119672%_))))
                                (_%__kont1967119672%_))))))))
                 (_%duplicate-indexes?9729%_
                  (lambda (_%xs11743%_)
                    (let ((_%ht11746%_ (make-hash-table-eq)))
                      (let _%lp11749%_ ((_%rest11752%_ _%xs11743%_))
                        (if (pair? _%rest11752%_)
                            (let* ((_%ix11755%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11752%_)))
                                   (_%$e11758%_
                                    (hash-get _%ht11746%_ _%ix11755%_)))
                              (if _%$e11758%_
                                  _%$e11758%_
                                  (begin
                                    (hash-put! _%ht11746%_ _%ix11755%_ '#t)
                                    (_%lp11749%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11752%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9730%_
                  (lambda (_%indexes11712%_ _%hash-e11714%_)
                    (let _%lp11716%_ ((_%len11719%_
                                       (* '2 (length _%indexes11712%_))))
                      (let* ((_%hs11725%_
                              (map (lambda (_%x11722%_)
                                     (_%hash-e11714%_ (car _%x11722%_)))
                                   _%indexes11712%_))
                             (_%xs11731%_
                              (map (lambda (_%h11728%_)
                                     (fxmodulo _%h11728%_ _%len11719%_))
                                   _%hs11725%_)))
                        (if (_%duplicate-indexes?9729%_ _%xs11731%_)
                            (if (< _%len11719%_ '131072)
                                (_%lp11716%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11719%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9716%_
                                 _%indexes11712%_))
                            (let ((_%tab11736%_
                                   (make-vector _%len11719%_ '#f)))
                              (for-each
                               (lambda (_%entry11739%_ _%x11741%_)
                                 (vector-set!
                                  _%tab11736%_
                                  _%x11741%_
                                  _%entry11739%_))
                               _%indexes11712%_
                               _%xs11731%_)
                              _%tab11736%_))))))
                 (_%generate-symbolic-dispatch9731%_
                  (lambda (_%e11317%_
                           _%datums11319%_
                           _%dispatch11320%_
                           _%default11321%_)
                    (let* ((_%indexes11323%_
                            (_%datum-dispatch-index9728%_ _%datums11319%_))
                           (_%tab11326%_
                            (_%generate-hash-dispatch-table9730%_
                             _%indexes11323%_
                             symbol-hash)))
                      (if (= (length _%dispatch11320%_) '1)
                          (let* ((_%tab11334%_
                                  (vector-map
                                   (lambda (_%x11331%_)
                                     (if _%x11331%_ (car _%x11331%_) '#f))
                                   _%tab11326%_))
                                 (_%g1133711375%_
                                  (lambda (_%g1133811371%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1133811371%_)))
                                 (_%g1133611506%_
                                  (lambda (_%g1133811379%_)
                                    (if (gx#stx-pair? _%g1133811379%_)
                                        (let ((_%e1134611382%_
                                               (gx#syntax-e _%g1133811379%_)))
                                          (let ((_%hd1134711386%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1134611382%_)))
                                                (_%tl1134811389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1134611382%_))))
                                            (if (gx#stx-pair? _%tl1134811389%_)
                                                (let ((_%e1134911392%_
                                                       (gx#syntax-e
                                                        _%tl1134811389%_)))
                                                  (let ((_%hd1135011396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1134911392%_)))
                                                        (_%tl1135111399%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1134911392%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1135111399%_)
                                                        (let ((_%e1135211402%_
                                                               (gx#syntax-e
                                                                _%tl1135111399%_)))
                                                          (let ((_%hd1135311406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1135211402%_)))
                        (_%tl1135411409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1135211402%_))))
                    (if (gx#stx-pair? _%tl1135411409%_)
                        (let ((_%e1135511412%_ (gx#syntax-e _%tl1135411409%_)))
                          (let ((_%hd1135611416%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1135511412%_)))
                                (_%tl1135711419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1135511412%_))))
                            (if (gx#stx-pair? _%hd1135611416%_)
                                (let ((_%e1135811422%_
                                       (gx#syntax-e _%hd1135611416%_)))
                                  (let ((_%hd1135911426%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1135811422%_)))
                                        (_%tl1136011429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1135811422%_))))
                                    (if (gx#stx-null? _%tl1136011429%_)
                                        (if (gx#stx-pair? _%tl1135711419%_)
                                            (let ((_%e1136111432%_
                                                   (gx#syntax-e
                                                    _%tl1135711419%_)))
                                              (let ((_%hd1136211436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1136111432%_)))
                                                    (_%tl1136311439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1136111432%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1136311439%_)
                                                    (let ((_%e1136411442%_
                                                           (gx#syntax-e
                                                            _%tl1136311439%_)))
                                                      (let ((_%hd1136511446%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1136411442%_)))
                    (_%tl1136611449%_
                     (let () (declare (not safe)) (##cdr _%e1136411442%_))))
                (if (gx#stx-pair? _%tl1136611449%_)
                    (let ((_%e1136711452%_ (gx#syntax-e _%tl1136611449%_)))
                      (let ((_%hd1136811456%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1136711452%_)))
                            (_%tl1136911459%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1136711452%_))))
                        (if (gx#stx-null? _%tl1136911459%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%hd1135011396%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _%hd1136211436%_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _%hd1135311406%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%hd1136511446%_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'symbol?)
                        (cons _%hd1134711386%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'let*)
                              (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##symbol-hash)
                                                            (cons _%hd1134711386%_
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
                                (cons _%hd1136811456%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'q)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _%hd1135311406%_
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
                          (cons _%hd1134711386%_ '())))
              (cons _%hd1135911426%_ (cons (cons _%hd1135011396%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (cons _%hd1135011396%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%g1133711375%_ _%g1133811379%_))))
                    (_%g1133711375%_ _%g1133811379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1133711375%_
                                                     _%g1133811379%_))))
                                            (_%g1133711375%_ _%g1133811379%_))
                                        (_%g1133711375%_ _%g1133811379%_))))
                                (_%g1133711375%_ _%g1133811379%_))))
                        (_%g1133711375%_ _%g1133811379%_))))
                (_%g1133711375%_ _%g1133811379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1133711375%_
                                                 _%g1133811379%_))))
                                        (_%g1133711375%_ _%g1133811379%_)))))
                            (_%g1133611506%_
                             (list _%e11317%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11320%_
                                   _%default11321%_
                                   _%tab11334%_
                                   (vector-length _%tab11334%_))))
                          (let* ((_%g1151011554%_
                                  (lambda (_%g1151111550%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1151111550%_)))
                                 (_%g1150911708%_
                                  (lambda (_%g1151111558%_)
                                    (if (gx#stx-pair? _%g1151111558%_)
                                        (let ((_%e1151911561%_
                                               (gx#syntax-e _%g1151111558%_)))
                                          (let ((_%hd1152011565%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1151911561%_)))
                                                (_%tl1152111568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1151911561%_))))
                                            (if (gx#stx-pair? _%tl1152111568%_)
                                                (let ((_%e1152211571%_
                                                       (gx#syntax-e
                                                        _%tl1152111568%_)))
                                                  (let ((_%hd1152311575%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1152211571%_)))
                                                        (_%tl1152411578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1152211571%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1152411578%_)
                                                        (let ((_%e1152511581%_
                                                               (gx#syntax-e
                                                                _%tl1152411578%_)))
                                                          (let ((_%hd1152611585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1152511581%_)))
                        (_%tl1152711588%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1152511581%_))))
                    (if (gx#stx-pair? _%tl1152711588%_)
                        (let ((_%e1152811591%_ (gx#syntax-e _%tl1152711588%_)))
                          (let ((_%hd1152911595%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1152811591%_)))
                                (_%tl1153011598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1152811591%_))))
                            (if (gx#stx-pair/null? _%hd1152911595%_)
                                (let ((_g20999_
                                       (gx#syntax-split-splice
                                        _%hd1152911595%_
                                        '0)))
                                  (begin
                                    (let ((_g21000_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20999_)
                                                 (##values-length _g20999_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21000_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21000_)))
                                    (let ((_%target1153111601%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20999_ 0)))
                                          (_%tl1153311604%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g20999_ 1))))
                                      (if (gx#stx-null? _%tl1153311604%_)
                                          (letrec ((_%loop1153411607%_
                                                    (lambda (_%hd1153211611%_
                                                             _%dispatch1153811614%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1153211611%_)
                                                          (let ((_%e1153511616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1153211611%_)))
                    (let ((_%lp-hd1153611620%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1153511616%_)))
                          (_%lp-tl1153711623%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1153511616%_))))
                      (_%loop1153411607%_
                       _%lp-tl1153711623%_
                       (cons _%lp-hd1153611620%_ _%dispatch1153811614%_))))
                  (let ((_%dispatch1153911626%_
                         (reverse _%dispatch1153811614%_)))
                    (if (gx#stx-pair? _%tl1153011598%_)
                        (let ((_%e1154011629%_ (gx#syntax-e _%tl1153011598%_)))
                          (let ((_%hd1154111633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1154011629%_)))
                                (_%tl1154211636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1154011629%_))))
                            (if (gx#stx-pair? _%tl1154211636%_)
                                (let ((_%e1154311639%_
                                       (gx#syntax-e _%tl1154211636%_)))
                                  (let ((_%hd1154411643%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1154311639%_)))
                                        (_%tl1154511646%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1154311639%_))))
                                    (if (gx#stx-pair? _%tl1154511646%_)
                                        (let ((_%e1154611649%_
                                               (gx#syntax-e _%tl1154511646%_)))
                                          (let ((_%hd1154711653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1154611649%_)))
                                                (_%tl1154811656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1154611649%_))))
                                            (if (gx#stx-null? _%tl1154811656%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _%hd1152311575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f 'lambda)
                                            (cons '()
                                                  (cons _%hd1154111633%_ '())))
                                      '()))
                          (cons (cons _%hd1152611585%_
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%hd1154411643%_ '()))
                                            '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f 'symbol?)
                                            (cons _%hd1152011565%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let*)
                                                  (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'h)
                            (cons (cons (gx#datum->syntax '#f '##symbol-hash)
                                        (cons _%hd1152011565%_ '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'ix)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##fxmodulo)
                                              (cons (gx#datum->syntax '#f 'h)
                                                    (cons _%hd1154711653%_
                                                          '())))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f 'q)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##vector-ref)
                                                    (cons _%hd1152611585%_
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
                        (cons _%hd1152011565%_ '())))
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
                                                (foldr (lambda (_%g1169911702%_
                                                                _%g1170011705%_)
                                                         (cons _%g1169911702%_
                                                               _%g1170011705%_))
                                                       '()
                                                       _%dispatch1153911626%_)))
                                    '())))
                  (cons (cons _%hd1152311575%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%hd1152311575%_ '())
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons _%hd1152311575%_ '())
                                                  '()))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1151011554%_
                                                 _%g1151111558%_))))
                                        (_%g1151011554%_ _%g1151111558%_))))
                                (_%g1151011554%_ _%g1151111558%_))))
                        (_%g1151011554%_ _%g1151111558%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1153411607%_
                                             _%target1153111601%_
                                             '()))
                                          (_%g1151011554%_ _%g1151111558%_)))))
                                (_%g1151011554%_ _%g1151111558%_))))
                        (_%g1151011554%_ _%g1151111558%_))))
                (_%g1151011554%_ _%g1151111558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1151011554%_
                                                 _%g1151111558%_))))
                                        (_%g1151011554%_ _%g1151111558%_)))))
                            (_%g1150911708%_
                             (list _%e11317%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11320%_
                                   _%default11321%_
                                   _%tab11326%_
                                   (vector-length _%tab11326%_))))))))
                 (_%max-char9732%_
                  (lambda (_%datums11306%_)
                    (foldl (lambda (_%lst11309%_ _%r11311%_)
                             (foldl (lambda (_%char11313%_ _%r11315%_)
                                      (max (char->integer _%char11313%_)
                                           _%r11315%_))
                                    _%r11311%_
                                    _%lst11309%_))
                           '0
                           _%datums11306%_)))
                 (_%generate-char-dispatch-table9733%_
                  (lambda (_%indexes11285%_)
                    (let* ((_%ixs11291%_
                            (map (lambda (_%x11288%_)
                                   (char->integer (car _%x11288%_)))
                                 _%indexes11285%_))
                           (_%len11294%_ (fx1+ (foldl max '0 _%ixs11291%_)))
                           (_%vec11297%_ (make-vector _%len11294%_ '#f)))
                      (for-each
                       (lambda (_%entry11302%_ _%x11304%_)
                         (vector-set!
                          _%vec11297%_
                          _%x11304%_
                          (cdr _%entry11302%_)))
                       _%indexes11285%_
                       _%ixs11291%_)
                      _%vec11297%_)))
                 (_%simple-char-range?9734%_
                  (lambda (_%tab11261%_)
                    (let ((_%end11264%_ (vector-length _%tab11261%_)))
                      (let _%lp11267%_ ((_%i11270%_ '0))
                        (let ((_%ix11273%_
                               (vector-ref _%tab11261%_ _%i11270%_)))
                          (if _%ix11273%_
                              (let _%lp211276%_ ((_%i11279%_
                                                  (fx1+ _%i11270%_)))
                                (if (fx< _%i11279%_ _%end11264%_)
                                    (let ((_%ix*11282%_
                                           (vector-ref
                                            _%tab11261%_
                                            _%i11279%_)))
                                      (if (eq? _%ix11273%_ _%ix*11282%_)
                                          (_%lp211276%_ (fx1+ _%i11279%_))
                                          '#f))
                                    '#t))
                              (_%lp11267%_ (fx1+ _%i11270%_))))))))
                 (_%char-range-start9735%_
                  (lambda (_%tab11252%_)
                    (let _%lp11255%_ ((_%i11258%_ '0))
                      (if (vector-ref _%tab11252%_ _%i11258%_)
                          _%i11258%_
                          (_%lp11255%_ (fx1+ _%i11258%_))))))
                 (_%generate-char-dispatch9736%_
                  (lambda (_%e10877%_
                           _%datums10879%_
                           _%dispatch10880%_
                           _%default10881%_)
                    (if (< (_%max-char9732%_ _%datums10879%_) '128)
                        (let* ((_%indexes10883%_
                                (_%datum-dispatch-index9728%_ _%datums10879%_))
                               (_%tab10886%_
                                (_%generate-char-dispatch-table9733%_
                                 _%indexes10883%_)))
                          (if (_%simple-char-range?9734%_ _%tab10886%_)
                              (let ((_%start10891%_
                                     (_%char-range-start9735%_ _%tab10886%_))
                                    (_%end10893%_
                                     (vector-length _%tab10886%_)))
                                (let* ((_%g1089510929%_
                                        (lambda (_%g1089610925%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1089610925%_)))
                                       (_%g1089411046%_
                                        (lambda (_%g1089610933%_)
                                          (if (gx#stx-pair? _%g1089610933%_)
                                              (let ((_%e1090310936%_
                                                     (gx#syntax-e
                                                      _%g1089610933%_)))
                                                (let ((_%hd1090410940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1090310936%_)))
                                                      (_%tl1090510943%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1090310936%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1090510943%_)
                                                      (let ((_%e1090610946%_
                                                             (gx#syntax-e
                                                              _%tl1090510943%_)))
                                                        (let ((_%hd1090710950%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1090610946%_)))
                      (_%tl1090810953%_
                       (let () (declare (not safe)) (##cdr _%e1090610946%_))))
                  (if (gx#stx-pair? _%tl1090810953%_)
                      (let ((_%e1090910956%_ (gx#syntax-e _%tl1090810953%_)))
                        (let ((_%hd1091010960%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1090910956%_)))
                              (_%tl1091110963%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1090910956%_))))
                          (if (gx#stx-pair? _%hd1091010960%_)
                              (let ((_%e1091210966%_
                                     (gx#syntax-e _%hd1091010960%_)))
                                (let ((_%hd1091310970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1091210966%_)))
                                      (_%tl1091410973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1091210966%_))))
                                  (if (gx#stx-null? _%tl1091410973%_)
                                      (if (gx#stx-pair? _%tl1091110963%_)
                                          (let ((_%e1091510976%_
                                                 (gx#syntax-e
                                                  _%tl1091110963%_)))
                                            (let ((_%hd1091610980%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1091510976%_)))
                                                  (_%tl1091710983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1091510976%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1091710983%_)
                                                  (let ((_%e1091810986%_
                                                         (gx#syntax-e
                                                          _%tl1091710983%_)))
                                                    (let ((_%hd1091910990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1091810986%_)))
                                                          (_%tl1092010993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1091810986%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1092010993%_)
                                                          (let ((_%e1092110996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1092010993%_)))
                    (let ((_%hd1092211000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1092110996%_)))
                          (_%tl1092311003%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1092110996%_))))
                      (if (gx#stx-null? _%tl1092311003%_)
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons _%hd1090710950%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _%hd1091610980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (cons (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'char?)
                                                              (cons _%hd1090410940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (gx#datum->syntax '#f 'ix)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##char->integer)
                                                    (cons _%hd1090410940%_
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
                                    (cons _%hd1091910990%_ '())))
                        (cons (cons (gx#datum->syntax '#f '##fx<)
                                    (cons (gx#datum->syntax '#f 'ix)
                                          (cons _%hd1092211000%_ '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%hd1091310970%_
                                                          (cons (cons _%hd1090710950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons _%hd1090710950%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          (_%g1089510929%_ _%g1089610933%_))))
                  (_%g1089510929%_ _%g1089610933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1089510929%_
                                                   _%g1089610933%_))))
                                          (_%g1089510929%_ _%g1089610933%_))
                                      (_%g1089510929%_ _%g1089610933%_))))
                              (_%g1089510929%_ _%g1089610933%_))))
                      (_%g1089510929%_ _%g1089610933%_))))
              (_%g1089510929%_ _%g1089610933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1089510929%_
                                               _%g1089610933%_)))))
                                  (_%g1089411046%_
                                   (list _%e10877%_
                                         (gx#genident 'default)
                                         _%dispatch10880%_
                                         _%default10881%_
                                         _%start10891%_
                                         _%end10893%_))))
                              (let* ((_%g1105011094%_
                                      (lambda (_%g1105111090%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1105111090%_)))
                                     (_%g1104911248%_
                                      (lambda (_%g1105111098%_)
                                        (if (gx#stx-pair? _%g1105111098%_)
                                            (let ((_%e1105911101%_
                                                   (gx#syntax-e
                                                    _%g1105111098%_)))
                                              (let ((_%hd1106011105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1105911101%_)))
                                                    (_%tl1106111108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1105911101%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1106111108%_)
                                                    (let ((_%e1106211111%_
                                                           (gx#syntax-e
                                                            _%tl1106111108%_)))
                                                      (let ((_%hd1106311115%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1106211111%_)))
                    (_%tl1106411118%_
                     (let () (declare (not safe)) (##cdr _%e1106211111%_))))
                (if (gx#stx-pair? _%tl1106411118%_)
                    (let ((_%e1106511121%_ (gx#syntax-e _%tl1106411118%_)))
                      (let ((_%hd1106611125%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1106511121%_)))
                            (_%tl1106711128%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1106511121%_))))
                        (if (gx#stx-pair? _%tl1106711128%_)
                            (let ((_%e1106811131%_
                                   (gx#syntax-e _%tl1106711128%_)))
                              (let ((_%hd1106911135%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1106811131%_)))
                                    (_%tl1107011138%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1106811131%_))))
                                (if (gx#stx-pair/null? _%hd1106911135%_)
                                    (let ((_g21001_
                                           (gx#syntax-split-splice
                                            _%hd1106911135%_
                                            '0)))
                                      (begin
                                        (let ((_g21002_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21001_)
                                                     (##values-length _g21001_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21002_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21002_)))
                                        (let ((_%target1107111141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21001_ 0)))
                                              (_%tl1107311144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21001_ 1))))
                                          (if (gx#stx-null? _%tl1107311144%_)
                                              (letrec ((_%loop1107411147%_
                                                        (lambda (_%hd1107211151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1107811154%_)
                  (if (gx#stx-pair? _%hd1107211151%_)
                      (let ((_%e1107511156%_ (gx#syntax-e _%hd1107211151%_)))
                        (let ((_%lp-hd1107611160%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1107511156%_)))
                              (_%lp-tl1107711163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1107511156%_))))
                          (_%loop1107411147%_
                           _%lp-tl1107711163%_
                           (cons _%lp-hd1107611160%_ _%dispatch1107811154%_))))
                      (let ((_%dispatch1107911166%_
                             (reverse _%dispatch1107811154%_)))
                        (if (gx#stx-pair? _%tl1107011138%_)
                            (let ((_%e1108011169%_
                                   (gx#syntax-e _%tl1107011138%_)))
                              (let ((_%hd1108111173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1108011169%_)))
                                    (_%tl1108211176%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1108011169%_))))
                                (if (gx#stx-pair? _%tl1108211176%_)
                                    (let ((_%e1108311179%_
                                           (gx#syntax-e _%tl1108211176%_)))
                                      (let ((_%hd1108411183%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1108311179%_)))
                                            (_%tl1108511186%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1108311179%_))))
                                        (if (gx#stx-pair? _%tl1108511186%_)
                                            (let ((_%e1108611189%_
                                                   (gx#syntax-e
                                                    _%tl1108511186%_)))
                                              (let ((_%hd1108711193%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1108611189%_)))
                                                    (_%tl1108811196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1108611189%_))))
                                                (if (gx#stx-null?
                                                     _%tl1108811196%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons (cons (cons _%hd1106311115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons '()
                                                      (cons _%hd1108111173%_
                                                            '())))
                                          '()))
                              (cons (cons _%hd1106611125%_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%hd1108411183%_
                                                            '()))
                                                '()))
                                    '()))
                        (cons (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'char?)
                                                (cons _%hd1106011105%_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'ix)
                          (cons (cons (gx#datum->syntax '#f '##char->integer)
                                      (cons _%hd1106011105%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '##fx<)
                                            (cons (gx#datum->syntax '#f 'ix)
                                                  (cons _%hd1108711193%_ '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'x)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##vector-ref)
                                  (cons _%hd1106611125%_
                                        (cons (gx#datum->syntax '#f 'ix) '())))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons (gx#datum->syntax '#f 'x)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '~case-dispatch)
                                              (cons (gx#datum->syntax '#f 'x)
                                                    (foldr (lambda (_%g1123911242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g1124011245%_)
                     (cons _%g1123911242%_ _%g1124011245%_))
                   '()
                   _%dispatch1107911166%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons _%hd1106311115%_ '())
                                              '()))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons _%hd1106311115%_ '())
                                                  '()))))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _%hd1106311115%_
                                                            '())
                                                      '()))))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1105011094%_
                                                     _%g1105111098%_))))
                                            (_%g1105011094%_
                                             _%g1105111098%_))))
                                    (_%g1105011094%_ _%g1105111098%_))))
                            (_%g1105011094%_ _%g1105111098%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1107411147%_
                                                 _%target1107111141%_
                                                 '()))
                                              (_%g1105011094%_
                                               _%g1105111098%_)))))
                                    (_%g1105011094%_ _%g1105111098%_))))
                            (_%g1105011094%_ _%g1105111098%_))))
                    (_%g1105011094%_ _%g1105111098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1105011094%_
                                                     _%g1105111098%_))))
                                            (_%g1105011094%_
                                             _%g1105111098%_)))))
                                (_%g1104911248%_
                                 (list _%e10877%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10880%_
                                       _%default10881%_
                                       _%tab10886%_
                                       (vector-length _%tab10886%_))))))
                        (_%generate-char-dispatch/hash9737%_
                         _%e10877%_
                         _%datums10879%_
                         _%dispatch10880%_
                         _%default10881%_))))
                 (_%generate-char-dispatch/hash9737%_
                  (lambda (_%e10657%_
                           _%datums10659%_
                           _%dispatch10660%_
                           _%default10661%_)
                    (let* ((_%indexes10663%_
                            (_%datum-dispatch-index9728%_ _%datums10659%_))
                           (_%tab10666%_
                            (_%generate-hash-dispatch-table9730%_
                             _%indexes10663%_
                             char->integer))
                           (_%g1067110715%_
                            (lambda (_%g1067210711%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1067210711%_)))
                           (_%g1067010873%_
                            (lambda (_%g1067210719%_)
                              (if (gx#stx-pair? _%g1067210719%_)
                                  (let ((_%e1068010722%_
                                         (gx#syntax-e _%g1067210719%_)))
                                    (let ((_%hd1068110726%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1068010722%_)))
                                          (_%tl1068210729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1068010722%_))))
                                      (if (gx#stx-pair? _%tl1068210729%_)
                                          (let ((_%e1068310732%_
                                                 (gx#syntax-e
                                                  _%tl1068210729%_)))
                                            (let ((_%hd1068410736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1068310732%_)))
                                                  (_%tl1068510739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1068310732%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1068510739%_)
                                                  (let ((_%e1068610742%_
                                                         (gx#syntax-e
                                                          _%tl1068510739%_)))
                                                    (let ((_%hd1068710746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1068610742%_)))
                                                          (_%tl1068810749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1068610742%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1068810749%_)
                                                          (let ((_%e1068910752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1068810749%_)))
                    (let ((_%hd1069010756%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1068910752%_)))
                          (_%tl1069110759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1068910752%_))))
                      (if (gx#stx-pair/null? _%hd1069010756%_)
                          (let ((_g21003_
                                 (gx#syntax-split-splice _%hd1069010756%_ '0)))
                            (begin
                              (let ((_g21004_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21003_)
                                           (##values-length _g21003_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21004_ 2)))
                                    (error "Context expects 2 values"
                                           _g21004_)))
                              (let ((_%target1069210762%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21003_ 0)))
                                    (_%tl1069410765%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21003_ 1))))
                                (if (gx#stx-null? _%tl1069410765%_)
                                    (letrec ((_%loop1069510768%_
                                              (lambda (_%hd1069310772%_
                                                       _%dispatch1069910775%_)
                                                (if (gx#stx-pair?
                                                     _%hd1069310772%_)
                                                    (let ((_%e1069610777%_
                                                           (gx#syntax-e
                                                            _%hd1069310772%_)))
                                                      (let ((_%lp-hd1069710781%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1069610777%_)))
                    (_%lp-tl1069810784%_
                     (let () (declare (not safe)) (##cdr _%e1069610777%_))))
                (_%loop1069510768%_
                 _%lp-tl1069810784%_
                 (cons _%lp-hd1069710781%_ _%dispatch1069910775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1070010787%_
                                                           (reverse _%dispatch1069910775%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1069110759%_)
                                                          (let ((_%e1070110790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1069110759%_)))
                    (let ((_%hd1070210794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1070110790%_)))
                          (_%tl1070310797%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1070110790%_))))
                      (if (gx#stx-pair? _%tl1070310797%_)
                          (let ((_%e1070410800%_
                                 (gx#syntax-e _%tl1070310797%_)))
                            (let ((_%hd1070510804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1070410800%_)))
                                  (_%tl1070610807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1070410800%_))))
                              (if (gx#stx-pair? _%tl1070610807%_)
                                  (let ((_%e1070710810%_
                                         (gx#syntax-e _%tl1070610807%_)))
                                    (let ((_%hd1070810814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1070710810%_)))
                                          (_%tl1070910817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1070710810%_))))
                                      (if (gx#stx-null? _%tl1070910817%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _%hd1068410736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '() (cons _%hd1070210794%_ '())))
                                '()))
                    (cons (cons _%hd1068710746%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%hd1070510804%_ '()))
                                      '()))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'char?)
                                      (cons _%hd1068110726%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let*)
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'h)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##char->integer)
                                  (cons _%hd1068110726%_ '()))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'ix)
                            (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                        (cons (gx#datum->syntax '#f 'h)
                                              (cons _%hd1070810814%_ '())))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'q)
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               '##vector-ref)
                                              (cons _%hd1068710746%_
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
                  (cons _%hd1068110726%_ '())))
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
                                          (foldr (lambda (_%g1086410867%_
                                                          _%g1086510870%_)
                                                   (cons _%g1086410867%_
                                                         _%g1086510870%_))
                                                 '()
                                                 _%dispatch1070010787%_)))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%hd1068410736%_
                                                                '())
                                                          '()))))
                                  (cons (cons _%hd1068410736%_ '()) '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%hd1068410736%_ '()) '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g1067110715%_ _%g1067210719%_))))
                                  (_%g1067110715%_ _%g1067210719%_))))
                          (_%g1067110715%_ _%g1067210719%_))))
                  (_%g1067110715%_ _%g1067210719%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1069510768%_
                                       _%target1069210762%_
                                       '()))
                                    (_%g1067110715%_ _%g1067210719%_)))))
                          (_%g1067110715%_ _%g1067210719%_))))
                  (_%g1067110715%_ _%g1067210719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1067110715%_
                                                   _%g1067210719%_))))
                                          (_%g1067110715%_ _%g1067210719%_))))
                                  (_%g1067110715%_ _%g1067210719%_)))))
                      (_%g1067010873%_
                       (list _%e10657%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10660%_
                             _%default10661%_
                             _%tab10666%_
                             (vector-length _%tab10666%_))))))
                 (_%min-fixnum9738%_
                  (lambda (_%datums10650%_)
                    (foldl (lambda (_%lst10653%_ _%r10655%_)
                             (foldl min _%r10655%_ _%lst10653%_))
                           ##max-fixnum
                           _%datums10650%_)))
                 (_%max-fixnum9739%_
                  (lambda (_%datums10643%_)
                    (foldl (lambda (_%lst10646%_ _%r10648%_)
                             (foldl max _%r10648%_ _%lst10646%_))
                           ##min-fixnum
                           _%datums10643%_)))
                 (_%generate-fixnum-dispatch-table9740%_
                  (lambda (_%indexes10625%_)
                    (let* ((_%ixs10628%_ (map car _%indexes10625%_))
                           (_%len10631%_ (fx1+ (foldl max '0 _%ixs10628%_)))
                           (_%vec10634%_ (make-vector _%len10631%_ '#f)))
                      (for-each
                       (lambda (_%entry10639%_ _%x10641%_)
                         (vector-set!
                          _%vec10634%_
                          _%x10641%_
                          (cdr _%entry10639%_)))
                       _%indexes10625%_
                       _%ixs10628%_)
                      _%vec10634%_)))
                 (_%generate-fixnum-dispatch9741%_
                  (lambda (_%e10361%_
                           _%datums10363%_
                           _%dispatch10364%_
                           _%default10365%_)
                    (if (and (>= (_%min-fixnum9738%_ _%datums10363%_) '0)
                             (< (_%max-fixnum9739%_ _%datums10363%_) '1024))
                        (let* ((_%indexes10367%_
                                (_%datum-dispatch-index9728%_ _%datums10363%_))
                               (_%tab10370%_
                                (_%generate-fixnum-dispatch-table9740%_
                                 _%indexes10367%_))
                               (_%dense?10373%_
                                (andmap values (vector->list _%tab10370%_)))
                               (_%g1037810422%_
                                (lambda (_%g1037910418%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1037910418%_)))
                               (_%g1037710621%_
                                (lambda (_%g1037910426%_)
                                  (if (gx#stx-pair? _%g1037910426%_)
                                      (let ((_%e1038710429%_
                                             (gx#syntax-e _%g1037910426%_)))
                                        (let ((_%hd1038810433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1038710429%_)))
                                              (_%tl1038910436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1038710429%_))))
                                          (if (gx#stx-pair? _%tl1038910436%_)
                                              (let ((_%e1039010439%_
                                                     (gx#syntax-e
                                                      _%tl1038910436%_)))
                                                (let ((_%hd1039110443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1039010439%_)))
                                                      (_%tl1039210446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1039010439%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1039210446%_)
                                                      (let ((_%e1039310449%_
                                                             (gx#syntax-e
                                                              _%tl1039210446%_)))
                                                        (let ((_%hd1039410453%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1039310449%_)))
                      (_%tl1039510456%_
                       (let () (declare (not safe)) (##cdr _%e1039310449%_))))
                  (if (gx#stx-pair? _%tl1039510456%_)
                      (let ((_%e1039610459%_ (gx#syntax-e _%tl1039510456%_)))
                        (let ((_%hd1039710463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1039610459%_)))
                              (_%tl1039810466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1039610459%_))))
                          (if (gx#stx-pair/null? _%hd1039710463%_)
                              (let ((_g21005_
                                     (gx#syntax-split-splice
                                      _%hd1039710463%_
                                      '0)))
                                (begin
                                  (let ((_g21006_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21005_)
                                               (##values-length _g21005_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21006_ 2)))
                                        (error "Context expects 2 values"
                                               _g21006_)))
                                  (let ((_%target1039910469%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21005_ 0)))
                                        (_%tl1040110472%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21005_ 1))))
                                    (if (gx#stx-null? _%tl1040110472%_)
                                        (letrec ((_%loop1040210475%_
                                                  (lambda (_%hd1040010479%_
                                                           _%dispatch1040610482%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1040010479%_)
                                                        (let ((_%e1040310484%_
                                                               (gx#syntax-e
                                                                _%hd1040010479%_)))
                                                          (let ((_%lp-hd1040410488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1040310484%_)))
                        (_%lp-tl1040510491%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1040310484%_))))
                    (_%loop1040210475%_
                     _%lp-tl1040510491%_
                     (cons _%lp-hd1040410488%_ _%dispatch1040610482%_))))
                (let ((_%dispatch1040710494%_
                       (reverse _%dispatch1040610482%_)))
                  (if (gx#stx-pair? _%tl1039810466%_)
                      (let ((_%e1040810497%_ (gx#syntax-e _%tl1039810466%_)))
                        (let ((_%hd1040910501%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1040810497%_)))
                              (_%tl1041010504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1040810497%_))))
                          (if (gx#stx-pair? _%tl1041010504%_)
                              (let ((_%e1041110507%_
                                     (gx#syntax-e _%tl1041010504%_)))
                                (let ((_%hd1041210511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1041110507%_)))
                                      (_%tl1041310514%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1041110507%_))))
                                  (if (gx#stx-pair? _%tl1041310514%_)
                                      (let ((_%e1041410517%_
                                             (gx#syntax-e _%tl1041310514%_)))
                                        (let ((_%hd1041510521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1041410517%_)))
                                              (_%tl1041610524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1041410517%_))))
                                          (if (gx#stx-null? _%tl1041610524%_)
                                              (let* ((_%g1057310581%_
                                                      (lambda (_%g1057410577%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1057410577%_)))
                                                     (_%g1057210601%_
                                                      (lambda (_%g1057410585%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'let)
                                                              (cons (cons (cons _%hd1039110443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%hd1040910501%_
                                                                '())))
                                              '()))
                                  (cons (cons _%hd1039410453%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%hd1041210511%_
                                                                '()))
                                                    '()))
                                        '()))
                            (cons (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'fixnum?)
                                                    (cons _%hd1038810433%_
                                                          '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##fx>=)
                                          (cons _%hd1038810433%_
                                                (cons '0 '())))
                                    (cons (cons (gx#datum->syntax '#f '##fx<)
                                                (cons _%hd1038810433%_
                                                      (cons _%hd1041510521%_
                                                            '())))
                                          '())))
                        (cons (cons (gx#datum->syntax '#f 'let)
                                    (cons (cons (gx#datum->syntax '#f 'x)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref)
                                                            (cons _%hd1039410453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%hd1038810433%_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g1057410585%_ '())))
                              (cons (cons _%hd1039110443%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%hd1039110443%_
                                                                '())
                                                          '()))))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1057210601%_
                                                 (if _%dense?10373%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '~case-dispatch)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (foldr (lambda (_%g1060410607%_ _%g1060510610%_)
                                  (cons _%g1060410607%_ _%g1060510610%_))
                                '()
                                _%dispatch1040710494%_)))
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
                                           (foldr (lambda (_%g1061210615%_
                                                           _%g1061310618%_)
                                                    (cons _%g1061210615%_
                                                          _%g1061310618%_))
                                                  '()
                                                  _%dispatch1040710494%_)))
                               (cons (cons _%hd1039110443%_ '()) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1037810422%_
                                               _%g1037910426%_))))
                                      (_%g1037810422%_ _%g1037910426%_))))
                              (_%g1037810422%_ _%g1037910426%_))))
                      (_%g1037810422%_ _%g1037910426%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1040210475%_
                                           _%target1039910469%_
                                           '()))
                                        (_%g1037810422%_ _%g1037910426%_)))))
                              (_%g1037810422%_ _%g1037910426%_))))
                      (_%g1037810422%_ _%g1037910426%_))))
              (_%g1037810422%_ _%g1037910426%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1037810422%_
                                               _%g1037910426%_))))
                                      (_%g1037810422%_ _%g1037910426%_)))))
                          (_%g1037710621%_
                           (list _%e10361%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10364%_
                                 _%default10365%_
                                 _%tab10370%_
                                 (vector-length _%tab10370%_))))
                        (_%generate-fixnum-dispatch/hash9742%_
                         _%e10361%_
                         _%datums10363%_
                         _%dispatch10364%_
                         _%default10365%_))))
                 (_%generate-fixnum-dispatch/hash9742%_
                  (lambda (_%e10141%_
                           _%datums10143%_
                           _%dispatch10144%_
                           _%default10145%_)
                    (let* ((_%indexes10147%_
                            (_%datum-dispatch-index9728%_ _%datums10143%_))
                           (_%tab10150%_
                            (_%generate-hash-dispatch-table9730%_
                             _%indexes10147%_
                             values))
                           (_%g1015510199%_
                            (lambda (_%g1015610195%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1015610195%_)))
                           (_%g1015410357%_
                            (lambda (_%g1015610203%_)
                              (if (gx#stx-pair? _%g1015610203%_)
                                  (let ((_%e1016410206%_
                                         (gx#syntax-e _%g1015610203%_)))
                                    (let ((_%hd1016510210%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1016410206%_)))
                                          (_%tl1016610213%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1016410206%_))))
                                      (if (gx#stx-pair? _%tl1016610213%_)
                                          (let ((_%e1016710216%_
                                                 (gx#syntax-e
                                                  _%tl1016610213%_)))
                                            (let ((_%hd1016810220%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1016710216%_)))
                                                  (_%tl1016910223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1016710216%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1016910223%_)
                                                  (let ((_%e1017010226%_
                                                         (gx#syntax-e
                                                          _%tl1016910223%_)))
                                                    (let ((_%hd1017110230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1017010226%_)))
                                                          (_%tl1017210233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1017010226%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1017210233%_)
                                                          (let ((_%e1017310236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1017210233%_)))
                    (let ((_%hd1017410240%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1017310236%_)))
                          (_%tl1017510243%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1017310236%_))))
                      (if (gx#stx-pair/null? _%hd1017410240%_)
                          (let ((_g21007_
                                 (gx#syntax-split-splice _%hd1017410240%_ '0)))
                            (begin
                              (let ((_g21008_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21007_)
                                           (##values-length _g21007_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21008_ 2)))
                                    (error "Context expects 2 values"
                                           _g21008_)))
                              (let ((_%target1017610246%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21007_ 0)))
                                    (_%tl1017810249%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21007_ 1))))
                                (if (gx#stx-null? _%tl1017810249%_)
                                    (letrec ((_%loop1017910252%_
                                              (lambda (_%hd1017710256%_
                                                       _%dispatch1018310259%_)
                                                (if (gx#stx-pair?
                                                     _%hd1017710256%_)
                                                    (let ((_%e1018010261%_
                                                           (gx#syntax-e
                                                            _%hd1017710256%_)))
                                                      (let ((_%lp-hd1018110265%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1018010261%_)))
                    (_%lp-tl1018210268%_
                     (let () (declare (not safe)) (##cdr _%e1018010261%_))))
                (_%loop1017910252%_
                 _%lp-tl1018210268%_
                 (cons _%lp-hd1018110265%_ _%dispatch1018310259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1018410271%_
                                                           (reverse _%dispatch1018310259%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1017510243%_)
                                                          (let ((_%e1018510274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1017510243%_)))
                    (let ((_%hd1018610278%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1018510274%_)))
                          (_%tl1018710281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1018510274%_))))
                      (if (gx#stx-pair? _%tl1018710281%_)
                          (let ((_%e1018810284%_
                                 (gx#syntax-e _%tl1018710281%_)))
                            (let ((_%hd1018910288%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1018810284%_)))
                                  (_%tl1019010291%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1018810284%_))))
                              (if (gx#stx-pair? _%tl1019010291%_)
                                  (let ((_%e1019110294%_
                                         (gx#syntax-e _%tl1019010291%_)))
                                    (let ((_%hd1019210298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1019110294%_)))
                                          (_%tl1019310301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1019110294%_))))
                                      (if (gx#stx-null? _%tl1019310301%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _%hd1016810220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons '() (cons _%hd1018610278%_ '())))
                                '()))
                    (cons (cons _%hd1017110230%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%hd1018910288%_ '()))
                                      '()))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                      (cons _%hd1016510210%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let*)
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'ix)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##fxmodulo)
                                  (cons _%hd1016510210%_
                                        (cons _%hd1019210298%_ '())))
                            '()))
                (cons (cons (gx#datum->syntax '#f 'q)
                            (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                        (cons _%hd1017110230%_
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
                  (cons _%hd1016510210%_ '())))
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
                                          (foldr (lambda (_%g1034810351%_
                                                          _%g1034910354%_)
                                                   (cons _%g1034810351%_
                                                         _%g1034910354%_))
                                                 '()
                                                 _%dispatch1018410271%_)))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _%hd1016810220%_
                                                                '())
                                                          '()))))
                                  (cons (cons _%hd1016810220%_ '()) '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%hd1016810220%_ '()) '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g1015510199%_ _%g1015610203%_))))
                                  (_%g1015510199%_ _%g1015610203%_))))
                          (_%g1015510199%_ _%g1015610203%_))))
                  (_%g1015510199%_ _%g1015610203%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1017910252%_
                                       _%target1017610246%_
                                       '()))
                                    (_%g1015510199%_ _%g1015610203%_)))))
                          (_%g1015510199%_ _%g1015610203%_))))
                  (_%g1015510199%_ _%g1015610203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1015510199%_
                                                   _%g1015610203%_))))
                                          (_%g1015510199%_ _%g1015610203%_))))
                                  (_%g1015510199%_ _%g1015610203%_)))))
                      (_%g1015410357%_
                       (list _%e10141%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10144%_
                             _%default10145%_
                             _%tab10150%_
                             (vector-length _%tab10150%_))))))
                 (_%generate-generic-dispatch9743%_
                  (lambda (_%e9879%_
                           _%datums9881%_
                           _%dispatch9882%_
                           _%default9883%_)
                    (let ((_g21009_
                           (if (_%eq-datums?9726%_ _%datums9881%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9885%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21009_ 0)))
                              (_%hashf9887%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21009_ 1)))
                              (_%eqf9888%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21009_ 2))))
                          (let* ((_%indexes9890%_
                                  (_%datum-dispatch-index9728%_
                                   _%datums9881%_))
                                 (_%tab9893%_
                                  (_%generate-hash-dispatch-table9730%_
                                   _%indexes9890%_
                                   _%hash-e9885%_))
                                 (_%g98989950%_
                                  (lambda (_%g98999946%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g98999946%_)))
                                 (_%g989710137%_
                                  (lambda (_%g98999954%_)
                                    (if (gx#stx-pair? _%g98999954%_)
                                        (let ((_%e99099957%_
                                               (gx#syntax-e _%g98999954%_)))
                                          (let ((_%hd99109961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e99099957%_)))
                                                (_%tl99119964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e99099957%_))))
                                            (if (gx#stx-pair? _%tl99119964%_)
                                                (let ((_%e99129967%_
                                                       (gx#syntax-e
                                                        _%tl99119964%_)))
                                                  (let ((_%hd99139971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e99129967%_)))
                                                        (_%tl99149974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e99129967%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl99149974%_)
                                                        (let ((_%e99159977%_
                                                               (gx#syntax-e
                                                                _%tl99149974%_)))
                                                          (let ((_%hd99169981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e99159977%_)))
                        (_%tl99179984%_
                         (let () (declare (not safe)) (##cdr _%e99159977%_))))
                    (if (gx#stx-pair? _%tl99179984%_)
                        (let ((_%e99189987%_ (gx#syntax-e _%tl99179984%_)))
                          (let ((_%hd99199991%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e99189987%_)))
                                (_%tl99209994%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e99189987%_))))
                            (if (gx#stx-pair/null? _%hd99199991%_)
                                (let ((_g21010_
                                       (gx#syntax-split-splice
                                        _%hd99199991%_
                                        '0)))
                                  (begin
                                    (let ((_g21011_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21010_)
                                                 (##values-length _g21010_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21011_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21011_)))
                                    (let ((_%target99219997%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21010_ 0)))
                                          (_%tl992310000%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21010_ 1))))
                                      (if (gx#stx-null? _%tl992310000%_)
                                          (letrec ((_%loop992410003%_
                                                    (lambda (_%hd992210007%_
                                                             _%dispatch992810010%_)
                                                      (if (gx#stx-pair?
                                                           _%hd992210007%_)
                                                          (let ((_%e992510012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd992210007%_)))
                    (let ((_%lp-hd992610016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e992510012%_)))
                          (_%lp-tl992710019%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e992510012%_))))
                      (_%loop992410003%_
                       _%lp-tl992710019%_
                       (cons _%lp-hd992610016%_ _%dispatch992810010%_))))
                  (let ((_%dispatch992910022%_
                         (reverse _%dispatch992810010%_)))
                    (if (gx#stx-pair? _%tl99209994%_)
                        (let ((_%e993010025%_ (gx#syntax-e _%tl99209994%_)))
                          (let ((_%hd993110029%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e993010025%_)))
                                (_%tl993210032%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e993010025%_))))
                            (if (gx#stx-pair? _%tl993210032%_)
                                (let ((_%e993310035%_
                                       (gx#syntax-e _%tl993210032%_)))
                                  (let ((_%hd993410039%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e993310035%_)))
                                        (_%tl993510042%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e993310035%_))))
                                    (if (gx#stx-pair? _%tl993510042%_)
                                        (let ((_%e993610045%_
                                               (gx#syntax-e _%tl993510042%_)))
                                          (let ((_%hd993710049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e993610045%_)))
                                                (_%tl993810052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e993610045%_))))
                                            (if (gx#stx-pair? _%tl993810052%_)
                                                (let ((_%e993910055%_
                                                       (gx#syntax-e
                                                        _%tl993810052%_)))
                                                  (let ((_%hd994010059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e993910055%_)))
                                                        (_%tl994110062%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e993910055%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl994110062%_)
                                                        (let ((_%e994210065%_
                                                               (gx#syntax-e
                                                                _%tl994110062%_)))
                                                          (let ((_%hd994310069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e994210065%_)))
                        (_%tl994410072%_
                         (let () (declare (not safe)) (##cdr _%e994210065%_))))
                    (if (gx#stx-null? _%tl994410072%_)
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _%hd99139971%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%hd993110029%_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _%hd99169981%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%hd993410039%_ '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons (gx#datum->syntax '#f 'let*)
                                                (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'h)
                          (cons (cons _%hd994010059%_
                                      (cons _%hd99109961%_ '()))
                                '()))
                    (cons (cons (gx#datum->syntax '#f 'ix)
                                (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                            (cons (gx#datum->syntax '#f 'h)
                                                  (cons _%hd993710049%_ '())))
                                      '()))
                          (cons (cons (gx#datum->syntax '#f 'q)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector-ref)
                                                  (cons _%hd99169981%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'ix)
                                                              '())))
                                            '()))
                                '())))
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'q)
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _%hd994310069%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##car)
                            (cons (gx#datum->syntax '#f 'q) '()))
                      (cons _%hd99109961%_ '())))
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
                                              (foldr (lambda (_%g1012810131%_
                                                              _%g1012910134%_)
                                                       (cons _%g1012810131%_
                                                             _%g1012910134%_))
                                                     '()
                                                     _%dispatch992910022%_)))
                                  '())))
                (cons (cons _%hd99139971%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _%hd99139971%_ '()) '()))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (_%g98989950%_ _%g98999954%_))))
                (_%g98989950%_ _%g98999954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g98989950%_
                                                 _%g98999954%_))))
                                        (_%g98989950%_ _%g98999954%_))))
                                (_%g98989950%_ _%g98999954%_))))
                        (_%g98989950%_ _%g98999954%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop992410003%_
                                             _%target99219997%_
                                             '()))
                                          (_%g98989950%_ _%g98999954%_)))))
                                (_%g98989950%_ _%g98999954%_))))
                        (_%g98989950%_ _%g98999954%_))))
                (_%g98989950%_ _%g98999954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g98989950%_
                                                 _%g98999954%_))))
                                        (_%g98989950%_ _%g98999954%_)))))
                            (_%g989710137%_
                             (list _%e9879%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9882%_
                                   _%default9883%_
                                   _%tab9893%_
                                   (vector-length _%tab9893%_)
                                   _%hashf9887%_
                                   _%eqf9888%_)))))))))
          (let* ((_%g97459769%_
                  (lambda (_%g97469765%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g97469765%_)))
                 (_%g97449875%_
                  (lambda (_%g97469773%_)
                    (if (gx#stx-pair? _%g97469773%_)
                        (let ((_%e97499776%_ (gx#syntax-e _%g97469773%_)))
                          (let ((_%hd97509780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e97499776%_)))
                                (_%tl97519783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e97499776%_))))
                            (if (gx#stx-pair? _%tl97519783%_)
                                (let ((_%e97529786%_
                                       (gx#syntax-e _%tl97519783%_)))
                                  (let ((_%hd97539790%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e97529786%_)))
                                        (_%tl97549793%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e97529786%_))))
                                    (if (gx#stx-pair/null? _%tl97549793%_)
                                        (let ((_g21012_
                                               (gx#syntax-split-splice
                                                _%tl97549793%_
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
                                            (let ((_%target97559796%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21012_
                                                      0)))
                                                  (_%tl97579799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21012_
                                                      1))))
                                              (if (gx#stx-null? _%tl97579799%_)
                                                  (letrec ((_%loop97589802%_
                                                            (lambda (_%hd97569806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause97629809%_)
                      (if (gx#stx-pair? _%hd97569806%_)
                          (let ((_%e97599811%_ (gx#syntax-e _%hd97569806%_)))
                            (let ((_%lp-hd97609815%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e97599811%_)))
                                  (_%lp-tl97619818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e97599811%_))))
                              (_%loop97589802%_
                               _%lp-tl97619818%_
                               (cons _%lp-hd97609815%_ _%clause97629809%_))))
                          (let* ((_%clause97639821%_
                                  (reverse _%clause97629809%_))
                                 (_g21014_
                                  (_%parse-clauses9719%_
                                   _%hd97539790%_
                                   (foldr (lambda (_%g98449847%_ _%g98459850%_)
                                            (cons _%g98449847%_ _%g98459850%_))
                                          '()
                                          _%clause97639821%_))))
                            (begin
                              (let ((_g21015_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21014_)
                                           (##values-length _g21014_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21015_ 3)))
                                    (error "Context expects 3 values"
                                           _g21015_)))
                              (let ((_%datums9853%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21014_ 0)))
                                    (_%dispatch9855%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21014_ 1)))
                                    (_%default9856%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21014_ 2))))
                                (let ((_%datum-count9858%_
                                       (_%count-datums9722%_ _%datums9853%_)))
                                  (if (< _%datum-count9858%_ '6)
                                      (_%generate-simple-case9727%_
                                       _%hd97539790%_
                                       _%datums9853%_
                                       _%dispatch9855%_
                                       _%default9856%_)
                                      (if (_%char-datums?9724%_ _%datums9853%_)
                                          (_%generate-char-dispatch9736%_
                                           _%hd97539790%_
                                           _%datums9853%_
                                           _%dispatch9855%_
                                           _%default9856%_)
                                          (if (_%fixnum-datums?9725%_
                                               _%datums9853%_)
                                              (_%generate-fixnum-dispatch9741%_
                                               _%hd97539790%_
                                               _%datums9853%_
                                               _%dispatch9855%_
                                               _%default9856%_)
                                              (if (< _%datum-count9858%_ '12)
                                                  (_%generate-simple-case9727%_
                                                   _%hd97539790%_
                                                   _%datums9853%_
                                                   _%dispatch9855%_
                                                   _%default9856%_)
                                                  (if (_%symbolic-datums?9723%_
                                                       _%datums9853%_)
                                                      (_%generate-symbolic-dispatch9731%_
                                                       _%hd97539790%_
                                                       _%datums9853%_
                                                       _%dispatch9855%_
                                                       _%default9856%_)
                                                      (_%generate-generic-dispatch9743%_
                                                       _%hd97539790%_
                                                       _%datums9853%_
                                                       _%dispatch9855%_
                                                       _%default9856%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop97589802%_
                                                     _%target97559796%_
                                                     '()))
                                                  (_%g97459769%_
                                                   _%g97469773%_)))))
                                        (_%g97459769%_ _%g97469773%_))))
                                (_%g97459769%_ _%g97469773%_))))
                        (_%g97459769%_ _%g97469773%_)))))
            (_%g97449875%_ _%stx9716%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12753%_)
        (let* ((_%g1275612774%_
                (lambda (_%g1275712770%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1275712770%_)))
               (_%g1275512846%_
                (lambda (_%g1275712778%_)
                  (if (gx#stx-pair? _%g1275712778%_)
                      (let ((_%e1276012781%_ (gx#syntax-e _%g1275712778%_)))
                        (let ((_%hd1276112785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1276012781%_)))
                              (_%tl1276212788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1276012781%_))))
                          (if (gx#stx-pair? _%tl1276212788%_)
                              (let ((_%e1276312791%_
                                     (gx#syntax-e _%tl1276212788%_)))
                                (let ((_%hd1276412795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1276312791%_)))
                                      (_%tl1276512798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1276312791%_))))
                                  (if (gx#stx-pair? _%tl1276512798%_)
                                      (let ((_%e1276612801%_
                                             (gx#syntax-e _%tl1276512798%_)))
                                        (let ((_%hd1276712805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1276612801%_)))
                                              (_%tl1276812808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1276612801%_))))
                                          (if (gx#stx-null? _%tl1276812808%_)
                                              (let ((_%datum-e12829%_
                                                     (gx#stx-e
                                                      _%hd1276412795%_)))
                                                (if (or (symbol? _%datum-e12829%_)
                                                        (keyword?
                                                         _%datum-e12829%_)
                                                        (immediate?
                                                         _%datum-e12829%_))
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'eq?)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%hd1276412795%_ '()))
                        (cons _%hd1276712805%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (number? _%datum-e12829%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'eqv?)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _%hd1276412795%_ '()))
                            (cons _%hd1276712805%_ '())))
                (cons (gx#datum->syntax '#f 'equal?)
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%hd1276412795%_ '()))
                            (cons _%hd1276712805%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1275612774%_
                                               _%g1275712778%_))))
                                      (_%g1275612774%_ _%g1275712778%_))))
                              (_%g1275612774%_ _%g1275712778%_))))
                      (_%g1275612774%_ _%g1275712778%_)))))
          (_%g1275512846%_ _%stx12753%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12850%_)
        (let* ((_%g1285412878%_
                (lambda (_%g1285512874%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1285512874%_)))
               (_%g1285312961%_
                (lambda (_%g1285512882%_)
                  (if (gx#stx-pair? _%g1285512882%_)
                      (let ((_%e1285812885%_ (gx#syntax-e _%g1285512882%_)))
                        (let ((_%hd1285912889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1285812885%_)))
                              (_%tl1286012892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1285812885%_))))
                          (if (gx#stx-pair? _%tl1286012892%_)
                              (let ((_%e1286112895%_
                                     (gx#syntax-e _%tl1286012892%_)))
                                (let ((_%hd1286212899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1286112895%_)))
                                      (_%tl1286312902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1286112895%_))))
                                  (if (gx#stx-pair/null? _%tl1286312902%_)
                                      (let ((_g21016_
                                             (gx#syntax-split-splice
                                              _%tl1286312902%_
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
                                          (let ((_%target1286412905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21016_ 0)))
                                                (_%tl1286612908%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21016_ 1))))
                                            (if (gx#stx-null? _%tl1286612908%_)
                                                (letrec ((_%loop1286712911%_
                                                          (lambda (_%hd1286512915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1287112918%_)
                    (if (gx#stx-pair? _%hd1286512915%_)
                        (let ((_%e1286812920%_ (gx#syntax-e _%hd1286512915%_)))
                          (let ((_%lp-hd1286912924%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1286812920%_)))
                                (_%lp-tl1287012927%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1286812920%_))))
                            (_%loop1286712911%_
                             _%lp-tl1287012927%_
                             (cons _%lp-hd1286912924%_ _%K1287112918%_))))
                        (let ((_%K1287212930%_ (reverse _%K1287112918%_)))
                          (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons '0
                                      (cons _%hd1286212899%_
                                            (foldr (lambda (_%g1295212955%_
                                                            _%g1295312958%_)
                                                     (cons _%g1295212955%_
                                                           _%g1295312958%_))
                                                   '()
                                                   _%K1287212930%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1286712911%_
                                                   _%target1286412905%_
                                                   '()))
                                                (_%g1285412878%_
                                                 _%g1285512882%_)))))
                                      (_%g1285412878%_ _%g1285512882%_))))
                              (_%g1285412878%_ _%g1285512882%_))))
                      (_%g1285412878%_ _%g1285512882%_)))))
          (_%g1285312961%_ _%$stx12850%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12966%_)
        (let* ((_%__stx1969019691%_ _%stx12966%_)
               (_%g1297313069%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1969019691%_))))
          (let ((_%__kont1969319694%_
                 (lambda (_%g1297513544%_ _%g1297613546%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1969519696%_
                 (lambda (_%g1298613486%_ _%g1298713488%_ _%g1298813489%_)
                   _%g1298613486%_))
                (_%__kont1969719698%_
                 (lambda (_%g1300113383%_
                          _%g1300213385%_
                          _%g1300313386%_
                          _%g1300413387%_)
                   (let* ((_%g1340813416%_
                           (lambda (_%g1340913412%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1340913412%_)))
                          (_%g1340713435%_
                           (lambda (_%g1340913420%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx=)
                                               (cons _%g1300313386%_
                                                     (cons _%g1340913420%_
                                                           '())))
                                         (cons _%g1300213385%_
                                               (cons _%g1300113383%_ '())))))))
                     (_%g1340713435%_ (gx#stx-e _%g1300413387%_)))))
                (_%__kont1969919700%_
                 (lambda (_%g1302013233%_
                          _%g1302113235%_
                          _%g1302213236%_
                          _%g1302313237%_
                          _%g1302413238%_)
                   (let* ((_%g1326213277%_
                           (lambda (_%g1326313273%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1326313273%_)))
                          (_%g1326113322%_
                           (lambda (_%g1326313281%_)
                             (if (gx#stx-pair? _%g1326313281%_)
                                 (let ((_%e1326613284%_
                                        (gx#syntax-e _%g1326313281%_)))
                                   (let ((_%hd1326713288%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1326613284%_)))
                                         (_%tl1326813291%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1326613284%_))))
                                     (if (gx#stx-pair? _%tl1326813291%_)
                                         (let ((_%e1326913294%_
                                                (gx#syntax-e
                                                 _%tl1326813291%_)))
                                           (let ((_%hd1327013298%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1326913294%_)))
                                                 (_%tl1327113301%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1326913294%_))))
                                             (if (gx#stx-null?
                                                  _%tl1327113301%_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##fx=)
                           (cons _%g1302313237%_ (cons _%hd1326713288%_ '())))
                     (cons _%g1302213236%_
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fx=)
                                                   (cons _%g1302313237%_
                                                         (cons _%hd1327013298%_
                                                               '())))
                                             (cons _%g1302113235%_
                                                   (cons _%g1302013233%_
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g1326213277%_
                                                  _%g1326313281%_))))
                                         (_%g1326213277%_ _%g1326313281%_))))
                                 (_%g1326213277%_ _%g1326313281%_)))))
                     (_%g1326113322%_
                      (list (gx#stx-e _%g1302413238%_)
                            (fx1+ (gx#stx-e _%g1302413238%_)))))))
                (_%__kont1970119702%_
                 (lambda (_%g1304313134%_ _%g1304413136%_ _%g1304513137%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1304513137%_
                               (cons _%g1304413136%_
                                     (foldr (lambda (_%g1315713160%_
                                                     _%g1315813163%_)
                                              (cons _%g1315713160%_
                                                    _%g1315813163%_))
                                            '()
                                            _%g1304313134%_)))))))
            (let ((_%__match1984719848%_
                   (lambda (_%e1304613076%_
                            _%hd1304713080%_
                            _%tl1304813083%_
                            _%e1304913086%_
                            _%hd1305013090%_
                            _%tl1305113093%_
                            _%e1305213096%_
                            _%hd1305313100%_
                            _%tl1305413103%_
                            _%__splice1970319704%_
                            _%target1305513106%_
                            _%tl1305713109%_)
                     (letrec ((_%loop1305813112%_
                               (lambda (_%hd1305613116%_ _%K1306213119%_)
                                 (if (gx#stx-pair? _%hd1305613116%_)
                                     (let ((_%e1305913121%_
                                            (gx#syntax-e _%hd1305613116%_)))
                                       (let ((_%lp-tl1306113128%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1305913121%_)))
                                             (_%lp-hd1306013125%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1305913121%_))))
                                         (_%loop1305813112%_
                                          _%lp-tl1306113128%_
                                          (cons _%lp-hd1306013125%_
                                                _%K1306213119%_))))
                                     (let ((_%K1306313131%_
                                            (reverse _%K1306213119%_)))
                                       (_%__kont1970119702%_
                                        _%K1306313131%_
                                        _%hd1305313100%_
                                        _%hd1305013090%_))))))
                       (_%loop1305813112%_ _%target1305513106%_ '())))))
              (if (gx#stx-pair? _%__stx1969019691%_)
                  (let ((_%e1297713514%_ (gx#syntax-e _%__stx1969019691%_)))
                    (let ((_%tl1297913521%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1297713514%_)))
                          (_%hd1297813518%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1297713514%_))))
                      (if (gx#stx-pair? _%tl1297913521%_)
                          (let ((_%e1298013524%_
                                 (gx#syntax-e _%tl1297913521%_)))
                            (let ((_%tl1298213531%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1298013524%_)))
                                  (_%hd1298113528%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1298013524%_))))
                              (if (gx#stx-pair? _%tl1298213531%_)
                                  (let ((_%e1298313534%_
                                         (gx#syntax-e _%tl1298213531%_)))
                                    (let ((_%tl1298513541%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1298313534%_)))
                                          (_%hd1298413538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1298313534%_))))
                                      (if (gx#stx-null? _%tl1298513541%_)
                                          (_%__kont1969319694%_
                                           _%hd1298413538%_
                                           _%hd1298113528%_)
                                          (if (gx#stx-pair? _%tl1298513541%_)
                                              (let ((_%e1299813476%_
                                                     (gx#syntax-e
                                                      _%tl1298513541%_)))
                                                (let ((_%tl1300013483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1299813476%_)))
                                                      (_%hd1299913480%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1299813476%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1300013483%_)
                                                      (_%__kont1969519696%_
                                                       _%hd1299913480%_
                                                       _%hd1298413538%_
                                                       _%hd1298113528%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1300013483%_)
                                                          (let ((_%e1301713373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1300013483%_)))
                    (let ((_%tl1301913380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1301713373%_)))
                          (_%hd1301813377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1301713373%_))))
                      (if (gx#stx-null? _%tl1301913380%_)
                          (_%__kont1969719698%_
                           _%hd1301813377%_
                           _%hd1299913480%_
                           _%hd1298413538%_
                           _%hd1298113528%_)
                          (if (gx#stx-pair? _%tl1301913380%_)
                              (let ((_%e1304013223%_
                                     (gx#syntax-e _%tl1301913380%_)))
                                (let ((_%tl1304213230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1304013223%_)))
                                      (_%hd1304113227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1304013223%_))))
                                  (if (gx#stx-null? _%tl1304213230%_)
                                      (_%__kont1969919700%_
                                       _%hd1304113227%_
                                       _%hd1301813377%_
                                       _%hd1299913480%_
                                       _%hd1298413538%_
                                       _%hd1298113528%_)
                                      (if (gx#stx-pair/null? _%tl1298513541%_)
                                          (let ((_%__splice1970319704%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1298513541%_
                                                  '0)))
                                            (let ((_%tl1305713109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1970319704%_
                                                      '1)))
                                                  (_%target1305513106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1970319704%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1305713109%_)
                                                  (_%__match1984719848%_
                                                   _%e1297713514%_
                                                   _%hd1297813518%_
                                                   _%tl1297913521%_
                                                   _%e1298013524%_
                                                   _%hd1298113528%_
                                                   _%tl1298213531%_
                                                   _%e1298313534%_
                                                   _%hd1298413538%_
                                                   _%tl1298513541%_
                                                   _%__splice1970319704%_
                                                   _%target1305513106%_
                                                   _%tl1305713109%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1297313069%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1297313069%_))))))
                              (if (gx#stx-pair/null? _%tl1298513541%_)
                                  (let ((_%__splice1970319704%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1298513541%_
                                          '0)))
                                    (let ((_%tl1305713109%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1970319704%_
                                              '1)))
                                          (_%target1305513106%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1970319704%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1305713109%_)
                                          (_%__match1984719848%_
                                           _%e1297713514%_
                                           _%hd1297813518%_
                                           _%tl1297913521%_
                                           _%e1298013524%_
                                           _%hd1298113528%_
                                           _%tl1298213531%_
                                           _%e1298313534%_
                                           _%hd1298413538%_
                                           _%tl1298513541%_
                                           _%__splice1970319704%_
                                           _%target1305513106%_
                                           _%tl1305713109%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1297313069%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1297313069%_)))))))
                  (if (gx#stx-pair/null? _%tl1298513541%_)
                      (let ((_%__splice1970319704%_
                             (gx#syntax-split-splice->vector
                              _%tl1298513541%_
                              '0)))
                        (let ((_%tl1305713109%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1970319704%_ '1)))
                              (_%target1305513106%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1970319704%_ '0))))
                          (if (gx#stx-null? _%tl1305713109%_)
                              (_%__match1984719848%_
                               _%e1297713514%_
                               _%hd1297813518%_
                               _%tl1297913521%_
                               _%e1298013524%_
                               _%hd1298113528%_
                               _%tl1298213531%_
                               _%e1298313534%_
                               _%hd1298413538%_
                               _%tl1298513541%_
                               _%__splice1970319704%_
                               _%target1305513106%_
                               _%tl1305713109%_)
                              (let ()
                                (declare (not safe))
                                (_%g1297313069%_)))))
                      (let () (declare (not safe)) (_%g1297313069%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1298513541%_)
                                                  (let ((_%__splice1970319704%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1298513541%_
                                                          '0)))
                                                    (let ((_%tl1305713109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1970319704%_
                                                              '1)))
                                                          (_%target1305513106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1970319704%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1305713109%_)
                                                          (_%__match1984719848%_
                                                           _%e1297713514%_
                                                           _%hd1297813518%_
                                                           _%tl1297913521%_
                                                           _%e1298013524%_
                                                           _%hd1298113528%_
                                                           _%tl1298213531%_
                                                           _%e1298313534%_
                                                           _%hd1298413538%_
                                                           _%tl1298513541%_
                                                           _%__splice1970319704%_
                                                           _%target1305513106%_
                                                           _%tl1305713109%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1297313069%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1297313069%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1297313069%_)))))
                          (let () (declare (not safe)) (_%g1297313069%_)))))
                  (let () (declare (not safe)) (_%g1297313069%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13566%_)
        (letrec ((_%split13569%_
                  (lambda (_%lst13924%_ _%mid13926%_)
                    (let _%lp13928%_ ((_%i13931%_ '0)
                                      (_%rest13933%_ _%lst13924%_)
                                      (_%left13934%_ '()))
                      (if (fx< _%i13931%_ _%mid13926%_)
                          (_%lp13928%_
                           (fx1+ _%i13931%_)
                           (cdr _%rest13933%_)
                           (cons (car _%rest13933%_) _%left13934%_))
                          (values (reverse _%left13934%_) _%rest13933%_))))))
          (let* ((_%g1357213600%_
                  (lambda (_%g1357313596%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1357313596%_)))
                 (_%g1357113920%_
                  (lambda (_%g1357313604%_)
                    (if (gx#stx-pair? _%g1357313604%_)
                        (let ((_%e1357713607%_ (gx#syntax-e _%g1357313604%_)))
                          (let ((_%hd1357813611%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1357713607%_)))
                                (_%tl1357913614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1357713607%_))))
                            (if (gx#stx-pair? _%tl1357913614%_)
                                (let ((_%e1358013617%_
                                       (gx#syntax-e _%tl1357913614%_)))
                                  (let ((_%hd1358113621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1358013617%_)))
                                        (_%tl1358213624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1358013617%_))))
                                    (if (gx#stx-pair? _%tl1358213624%_)
                                        (let ((_%e1358313627%_
                                               (gx#syntax-e _%tl1358213624%_)))
                                          (let ((_%hd1358413631%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1358313627%_)))
                                                (_%tl1358513634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1358313627%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1358513634%_)
                                                (let ((_g21018_
                                                       (gx#syntax-split-splice
                                                        _%tl1358513634%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21019_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21018_)
                         (##values-length _g21018_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21019_ 2)))
                  (error "Context expects 2 values" _g21019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1358613637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21018_
                                                              0)))
                                                          (_%tl1358813640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21018_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1358813640%_)
                                                          (letrec ((_%loop1358913643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1358713647%_ _%K1359313650%_)
                              (if (gx#stx-pair? _%hd1358713647%_)
                                  (let ((_%e1359013652%_
                                         (gx#syntax-e _%hd1358713647%_)))
                                    (let ((_%lp-hd1359113656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1359013652%_)))
                                          (_%lp-tl1359213659%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1359013652%_))))
                                      (_%loop1358913643%_
                                       _%lp-tl1359213659%_
                                       (cons _%lp-hd1359113656%_
                                             _%K1359313650%_))))
                                  (let* ((_%K1359413662%_
                                          (reverse _%K1359313650%_))
                                         (_%len13698%_
                                          (length (foldr (lambda (_%g1368913692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1369013695%_)
                   (cons _%g1368913692%_ _%g1369013695%_))
                 '()
                 _%K1359413662%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%mid13701%_
                                          (quotient _%len13698%_ '2))
                                         (_g21020_
                                          (_%split13569%_
                                           (foldr (lambda (_%g1370313706%_
                                                           _%g1370413709%_)
                                                    (cons _%g1370313706%_
                                                          _%g1370413709%_))
                                                  '()
                                                  _%K1359413662%_)
                                           _%mid13701%_)))
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
                                      (let ((_%left13712%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21020_ 0)))
                                            (_%right13714%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21020_ 1))))
                                        (let* ((_%g1371813759%_
                                                (lambda (_%g1371913755%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g1371913755%_)))
                                               (_%g1371713916%_
                                                (lambda (_%g1371913763%_)
                                                  (if (gx#stx-pair?
                                                       _%g1371913763%_)
                                                      (let ((_%e1372413766%_
                                                             (gx#syntax-e
                                                              _%g1371913763%_)))
                                                        (let ((_%hd1372513770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1372413766%_)))
                      (_%tl1372613773%_
                       (let () (declare (not safe)) (##cdr _%e1372413766%_))))
                  (if (gx#stx-pair? _%tl1372613773%_)
                      (let ((_%e1372713776%_ (gx#syntax-e _%tl1372613773%_)))
                        (let ((_%hd1372813780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1372713776%_)))
                              (_%tl1372913783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1372713776%_))))
                          (if (gx#stx-pair/null? _%hd1372813780%_)
                              (let ((_g21022_
                                     (gx#syntax-split-splice
                                      _%hd1372813780%_
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
                                  (let ((_%target1373013786%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21022_ 0)))
                                        (_%tl1373213789%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21022_ 1))))
                                    (if (gx#stx-null? _%tl1373213789%_)
                                        (letrec ((_%loop1373313792%_
                                                  (lambda (_%hd1373113796%_
                                                           _%K-left1373713799%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1373113796%_)
                                                        (let ((_%e1373413801%_
                                                               (gx#syntax-e
                                                                _%hd1373113796%_)))
                                                          (let ((_%lp-hd1373513805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1373413801%_)))
                        (_%lp-tl1373613808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1373413801%_))))
                    (_%loop1373313792%_
                     _%lp-tl1373613808%_
                     (cons _%lp-hd1373513805%_ _%K-left1373713799%_))))
                (let ((_%K-left1373813811%_ (reverse _%K-left1373713799%_)))
                  (if (gx#stx-pair? _%tl1372913783%_)
                      (let ((_%e1373913814%_ (gx#syntax-e _%tl1372913783%_)))
                        (let ((_%hd1374013818%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1373913814%_)))
                              (_%tl1374113821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1373913814%_))))
                          (if (gx#stx-pair/null? _%hd1374013818%_)
                              (let ((_g21024_
                                     (gx#syntax-split-splice
                                      _%hd1374013818%_
                                      '0)))
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
                                  (let ((_%target1374213824%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21024_ 0)))
                                        (_%tl1374413827%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21024_ 1))))
                                    (if (gx#stx-null? _%tl1374413827%_)
                                        (letrec ((_%loop1374513830%_
                                                  (lambda (_%hd1374313834%_
                                                           _%K-right1374913837%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1374313834%_)
                                                        (let ((_%e1374613839%_
                                                               (gx#syntax-e
                                                                _%hd1374313834%_)))
                                                          (let ((_%lp-hd1374713843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1374613839%_)))
                        (_%lp-tl1374813846%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1374613839%_))))
                    (_%loop1374513830%_
                     _%lp-tl1374813846%_
                     (cons _%lp-hd1374713843%_ _%K-right1374913837%_))))
                (let ((_%K-right1375013849%_ (reverse _%K-right1374913837%_)))
                  (if (gx#stx-pair? _%tl1374113821%_)
                      (let ((_%e1375113852%_ (gx#syntax-e _%tl1374113821%_)))
                        (let ((_%hd1375213856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1375113852%_)))
                              (_%tl1375313859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1375113852%_))))
                          (if (gx#stx-null? _%tl1375313859%_)
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx<)
                                                (cons _%hd1358413631%_
                                                      (cons _%hd1375213856%_
                                                            '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '~case-dispatch*)
                                                      (cons _%hd1358113621%_
                                                            (cons _%hd1358413631%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_%g1389913904%_ _%g1390013907%_)
                                   (cons _%g1389913904%_ _%g1390013907%_))
                                 '()
                                 _%K-left1373813811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '~case-dispatch*)
                                                            (cons _%hd1375213856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%hd1358413631%_
                                (foldr (lambda (_%g1390113910%_
                                                _%g1390213913%_)
                                         (cons _%g1390113910%_
                                               _%g1390213913%_))
                                       '()
                                       _%K-right1375013849%_))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%g1371813759%_ _%g1371913763%_))))
                      (_%g1371813759%_ _%g1371913763%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1374513830%_
                                           _%target1374213824%_
                                           '()))
                                        (_%g1371813759%_ _%g1371913763%_)))))
                              (_%g1371813759%_ _%g1371913763%_))))
                      (_%g1371813759%_ _%g1371913763%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1373313792%_
                                           _%target1373013786%_
                                           '()))
                                        (_%g1371813759%_ _%g1371913763%_)))))
                              (_%g1371813759%_ _%g1371913763%_))))
                      (_%g1371813759%_ _%g1371913763%_))))
              (_%g1371813759%_ _%g1371913763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g1371713916%_
                                           (list _%mid13701%_
                                                 _%left13712%_
                                                 _%right13714%_
                                                 (fx+ _%mid13701%_
                                                      (gx#stx-e
                                                       _%hd1358113621%_))))))))))))
                    (_%loop1358913643%_ _%target1358613637%_ '()))
                  (_%g1357213600%_ _%g1357313604%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1357213600%_
                                                 _%g1357313604%_))))
                                        (_%g1357213600%_ _%g1357313604%_))))
                                (_%g1357213600%_ _%g1357313604%_))))
                        (_%g1357213600%_ _%g1357313604%_)))))
            (_%g1357113920%_ _%stx13566%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13940%_)
        (let* ((_%__stx1985019851%_ _%$stx13940%_)
               (_%g1394513976%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1985019851%_))))
          (let ((_%__kont1985319854%_
                 (lambda (_%g1394714086%_) _%g1394714086%_))
                (_%__kont1985519856%_
                 (lambda (_%g1395414031%_ _%g1395514033%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1395514033%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1405014053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1405114056%_)
                        (cons _%g1405014053%_ _%g1405114056%_))
                      '()
                      _%g1395414031%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1989319894%_
                   (lambda (_%e1395613983%_
                            _%hd1395713987%_
                            _%tl1395813990%_
                            _%e1395913993%_
                            _%hd1396013997%_
                            _%tl1396114000%_
                            _%__splice1985719858%_
                            _%target1396214003%_
                            _%tl1396414006%_)
                     (letrec ((_%loop1396514009%_
                               (lambda (_%hd1396314013%_ _%rest1396914016%_)
                                 (if (gx#stx-pair? _%hd1396314013%_)
                                     (let ((_%e1396614018%_
                                            (gx#syntax-e _%hd1396314013%_)))
                                       (let ((_%lp-tl1396814025%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1396614018%_)))
                                             (_%lp-hd1396714022%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1396614018%_))))
                                         (_%loop1396514009%_
                                          _%lp-tl1396814025%_
                                          (cons _%lp-hd1396714022%_
                                                _%rest1396914016%_))))
                                     (let ((_%rest1397014028%_
                                            (reverse _%rest1396914016%_)))
                                       (_%__kont1985519856%_
                                        _%rest1397014028%_
                                        _%hd1396013997%_))))))
                       (_%loop1396514009%_ _%target1396214003%_ '())))))
              (if (gx#stx-pair? _%__stx1985019851%_)
                  (let ((_%e1394814066%_ (gx#syntax-e _%__stx1985019851%_)))
                    (let ((_%tl1395014073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1394814066%_)))
                          (_%hd1394914070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1394814066%_))))
                      (if (gx#stx-pair? _%tl1395014073%_)
                          (let ((_%e1395114076%_
                                 (gx#syntax-e _%tl1395014073%_)))
                            (let ((_%tl1395314083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1395114076%_)))
                                  (_%hd1395214080%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1395114076%_))))
                              (if (gx#stx-null? _%tl1395314083%_)
                                  (_%__kont1985319854%_ _%hd1395214080%_)
                                  (if (gx#stx-pair/null? _%tl1395314083%_)
                                      (let ((_%__splice1985719858%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1395314083%_
                                              '0)))
                                        (let ((_%tl1396414006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1985719858%_
                                                  '1)))
                                              (_%target1396214003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1985719858%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1396414006%_)
                                              (_%__match1989319894%_
                                               _%e1394814066%_
                                               _%hd1394914070%_
                                               _%tl1395014073%_
                                               _%e1395114076%_
                                               _%hd1395214080%_
                                               _%tl1395314083%_
                                               _%__splice1985719858%_
                                               _%target1396214003%_
                                               _%tl1396414006%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1394513976%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1394513976%_))))))
                          (let () (declare (not safe)) (_%g1394513976%_)))))
                  (let () (declare (not safe)) (_%g1394513976%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14104%_)
        (let* ((_%__stx1989619897%_ _%$stx14104%_)
               (_%g1411014163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1989619897%_))))
          (let ((_%__kont1989919900%_
                 (lambda (_%g1411214363%_ _%g1411314365%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1411314365%_
                                           (cons _%g1411214363%_ '()))
                                     '())
                               (cons _%g1411314365%_ '())))))
                (_%__kont1990119902%_
                 (lambda (_%g1412314307%_ _%g1412414309%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1412414309%_
                                           (cons _%g1412314307%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1412414309%_)
                                     '())))))
                (_%__kont1990319904%_
                 (lambda (_%g1413714228%_ _%g1413814230%_ _%g1413914231%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1413914231%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1413814230%_
                                                             (foldr (lambda (_%g1425114254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1425214257%_)
                              (cons _%g1425114254%_ _%g1425214257%_))
                            '()
                            _%g1413714228%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1413914231%_ '()))))))
            (let* ((_%__match1998319984%_
                    (lambda (_%e1414014170%_
                             _%hd1414114174%_
                             _%tl1414214177%_
                             _%e1414314180%_
                             _%hd1414414184%_
                             _%tl1414514187%_
                             _%e1414614190%_
                             _%hd1414714194%_
                             _%tl1414814197%_
                             _%__splice1990519906%_
                             _%target1414914200%_
                             _%tl1415114203%_)
                      (letrec ((_%loop1415214206%_
                                (lambda (_%hd1415014210%_ _%body1415614213%_)
                                  (if (gx#stx-pair? _%hd1415014210%_)
                                      (let ((_%e1415314215%_
                                             (gx#syntax-e _%hd1415014210%_)))
                                        (let ((_%lp-tl1415514222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1415314215%_)))
                                              (_%lp-hd1415414219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1415314215%_))))
                                          (_%loop1415214206%_
                                           _%lp-tl1415514222%_
                                           (cons _%lp-hd1415414219%_
                                                 _%body1415614213%_))))
                                      (let ((_%body1415714225%_
                                             (reverse _%body1415614213%_)))
                                        (let ((_%g1413714228%_
                                               _%body1415714225%_)
                                              (_%g1413814230%_
                                               _%tl1414814197%_)
                                              (_%g1413914231%_
                                               _%hd1414714194%_))
                                          (if (gx#identifier? _%g1413914231%_)
                                              (_%__kont1990319904%_
                                               _%g1413714228%_
                                               _%g1413814230%_
                                               _%g1413914231%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411014163%_)))))))))
                        (_%loop1415214206%_ _%target1414914200%_ '()))))
                   (_%__match1995719958%_
                    (lambda (_%e1412514267%_
                             _%hd1412614271%_
                             _%tl1412714274%_
                             _%e1412814277%_
                             _%hd1412914281%_
                             _%tl1413014284%_
                             _%e1413114287%_
                             _%hd1413214291%_
                             _%tl1413314294%_
                             _%e1413414297%_
                             _%hd1413514301%_
                             _%tl1413614304%_)
                      (let ((_%g1412314307%_ _%hd1413514301%_)
                            (_%g1412414309%_ _%tl1413314294%_))
                        (if (gx#identifier-list? _%g1412414309%_)
                            (_%__kont1990119902%_
                             _%g1412314307%_
                             _%g1412414309%_)
                            (if (gx#stx-pair/null? _%tl1413014284%_)
                                (let ((_%__splice1990519906%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1413014284%_
                                        '0)))
                                  (let ((_%tl1415114203%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1990519906%_
                                            '1)))
                                        (_%target1414914200%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1990519906%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1415114203%_)
                                        (_%__match1998319984%_
                                         _%e1412514267%_
                                         _%hd1412614271%_
                                         _%tl1412714274%_
                                         _%e1412814277%_
                                         _%hd1412914281%_
                                         _%tl1413014284%_
                                         _%e1413114287%_
                                         _%hd1413214291%_
                                         _%tl1413314294%_
                                         _%__splice1990519906%_
                                         _%target1414914200%_
                                         _%tl1415114203%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1411014163%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1411014163%_)))))))
                   (_%__match1992719928%_
                    (lambda (_%e1411414333%_
                             _%hd1411514337%_
                             _%tl1411614340%_
                             _%e1411714343%_
                             _%hd1411814347%_
                             _%tl1411914350%_
                             _%e1412014353%_
                             _%hd1412114357%_
                             _%tl1412214360%_)
                      (let ((_%g1411214363%_ _%hd1412114357%_)
                            (_%g1411314365%_ _%hd1411814347%_))
                        (if (gx#identifier? _%g1411314365%_)
                            (_%__kont1989919900%_
                             _%g1411214363%_
                             _%g1411314365%_)
                            (if (gx#stx-pair? _%hd1411814347%_)
                                (let ((_%e1413114287%_
                                       (gx#syntax-e _%hd1411814347%_)))
                                  (let ((_%tl1413314294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1413114287%_)))
                                        (_%hd1413214291%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1413114287%_))))
                                    (if (gx#identifier? _%hd1413214291%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21026_|
                                             _%hd1413214291%_)
                                            (_%__match1995719958%_
                                             _%e1411414333%_
                                             _%hd1411514337%_
                                             _%tl1411614340%_
                                             _%e1411714343%_
                                             _%hd1411814347%_
                                             _%tl1411914350%_
                                             _%e1413114287%_
                                             _%hd1413214291%_
                                             _%tl1413314294%_
                                             _%e1412014353%_
                                             _%hd1412114357%_
                                             _%tl1412214360%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1411914350%_)
                                                (let ((_%__splice1990519906%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1411914350%_
                                                        '0)))
                                                  (let ((_%tl1415114203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1990519906%_
                                                            '1)))
                                                        (_%target1414914200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1990519906%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1415114203%_)
                                                        (_%__match1998319984%_
                                                         _%e1411414333%_
                                                         _%hd1411514337%_
                                                         _%tl1411614340%_
                                                         _%e1411714343%_
                                                         _%hd1411814347%_
                                                         _%tl1411914350%_
                                                         _%e1413114287%_
                                                         _%hd1413214291%_
                                                         _%tl1413314294%_
                                                         _%__splice1990519906%_
                                                         _%target1414914200%_
                                                         _%tl1415114203%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1411014163%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1411014163%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1411914350%_)
                                            (let ((_%__splice1990519906%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1411914350%_
                                                    '0)))
                                              (let ((_%tl1415114203%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1990519906%_
                                                        '1)))
                                                    (_%target1414914200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1990519906%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1415114203%_)
                                                    (_%__match1998319984%_
                                                     _%e1411414333%_
                                                     _%hd1411514337%_
                                                     _%tl1411614340%_
                                                     _%e1411714343%_
                                                     _%hd1411814347%_
                                                     _%tl1411914350%_
                                                     _%e1413114287%_
                                                     _%hd1413214291%_
                                                     _%tl1413314294%_
                                                     _%__splice1990519906%_
                                                     _%target1414914200%_
                                                     _%tl1415114203%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1411014163%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1411014163%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1411014163%_))))))))
              (if (gx#stx-pair? _%__stx1989619897%_)
                  (let ((_%e1411414333%_ (gx#syntax-e _%__stx1989619897%_)))
                    (let ((_%tl1411614340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1411414333%_)))
                          (_%hd1411514337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1411414333%_))))
                      (if (gx#stx-pair? _%tl1411614340%_)
                          (let ((_%e1411714343%_
                                 (gx#syntax-e _%tl1411614340%_)))
                            (let ((_%tl1411914350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1411714343%_)))
                                  (_%hd1411814347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1411714343%_))))
                              (if (gx#stx-pair? _%tl1411914350%_)
                                  (let ((_%e1412014353%_
                                         (gx#syntax-e _%tl1411914350%_)))
                                    (let ((_%tl1412214360%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1412014353%_)))
                                          (_%hd1412114357%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1412014353%_))))
                                      (if (gx#stx-null? _%tl1412214360%_)
                                          (_%__match1992719928%_
                                           _%e1411414333%_
                                           _%hd1411514337%_
                                           _%tl1411614340%_
                                           _%e1411714343%_
                                           _%hd1411814347%_
                                           _%tl1411914350%_
                                           _%e1412014353%_
                                           _%hd1412114357%_
                                           _%tl1412214360%_)
                                          (if (gx#stx-pair? _%hd1411814347%_)
                                              (let ((_%e1413114287%_
                                                     (gx#syntax-e
                                                      _%hd1411814347%_)))
                                                (let ((_%tl1413314294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1413114287%_)))
                                                      (_%hd1413214291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1413114287%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1411914350%_)
                                                      (let ((_%__splice1990519906%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1411914350%_
                                                              '0)))
                                                        (let ((_%tl1415114203%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1990519906%_ '1)))
                      (_%target1414914200%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1990519906%_ '0))))
                  (if (gx#stx-null? _%tl1415114203%_)
                      (_%__match1998319984%_
                       _%e1411414333%_
                       _%hd1411514337%_
                       _%tl1411614340%_
                       _%e1411714343%_
                       _%hd1411814347%_
                       _%tl1411914350%_
                       _%e1413114287%_
                       _%hd1413214291%_
                       _%tl1413314294%_
                       _%__splice1990519906%_
                       _%target1414914200%_
                       _%tl1415114203%_)
                      (let () (declare (not safe)) (_%g1411014163%_)))))
              (let () (declare (not safe)) (_%g1411014163%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411014163%_))))))
                                  (if (gx#stx-pair? _%hd1411814347%_)
                                      (let ((_%e1413114287%_
                                             (gx#syntax-e _%hd1411814347%_)))
                                        (let ((_%tl1413314294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1413114287%_)))
                                              (_%hd1413214291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1413114287%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1411914350%_)
                                              (let ((_%__splice1990519906%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1411914350%_
                                                      '0)))
                                                (let ((_%tl1415114203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1990519906%_
                                                          '1)))
                                                      (_%target1414914200%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1990519906%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1415114203%_)
                                                      (_%__match1998319984%_
                                                       _%e1411414333%_
                                                       _%hd1411514337%_
                                                       _%tl1411614340%_
                                                       _%e1411714343%_
                                                       _%hd1411814347%_
                                                       _%tl1411914350%_
                                                       _%e1413114287%_
                                                       _%hd1413214291%_
                                                       _%tl1413314294%_
                                                       _%__splice1990519906%_
                                                       _%target1414914200%_
                                                       _%tl1415114203%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1411014163%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411014163%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1411014163%_))))))
                          (let () (declare (not safe)) (_%g1411014163%_)))))
                  (let () (declare (not safe)) (_%g1411014163%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14385%_)
        (letrec ((_%let-bind?14388%_
                  (lambda (_%x15297%_)
                    (let* ((_%__stx1998619987%_ _%x15297%_)
                           (_%g1530215321%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1998619987%_))))
                      (let ((_%__kont1998919990%_
                             (lambda (_%g1530415389%_ _%g1530515391%_)
                               (_%let-head?14391%_ _%g1530515391%_)))
                            (_%__kont1999119992%_
                             (lambda (_%g1531215349%_) '#t))
                            (_%__kont1999319994%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx1998619987%_)
                            (let ((_%e1530615369%_
                                   (gx#syntax-e _%__stx1998619987%_)))
                              (let ((_%tl1530815376%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1530615369%_)))
                                    (_%hd1530715373%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1530615369%_))))
                                (if (gx#stx-pair? _%tl1530815376%_)
                                    (let ((_%e1530915379%_
                                           (gx#syntax-e _%tl1530815376%_)))
                                      (let ((_%tl1531115386%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1530915379%_)))
                                            (_%hd1531015383%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1530915379%_))))
                                        (if (gx#stx-null? _%tl1531115386%_)
                                            (_%__kont1998919990%_
                                             _%hd1531015383%_
                                             _%hd1530715373%_)
                                            (_%__kont1999319994%_))))
                                    (if (gx#stx-null? _%tl1530815376%_)
                                        (_%__kont1999119992%_ _%hd1530715373%_)
                                        (_%__kont1999319994%_)))))
                            (_%__kont1999319994%_))))))
                 (_%let-bind14390%_
                  (lambda (_%x15199%_)
                    (let* ((_%__stx2002020021%_ _%x15199%_)
                           (_%g1520315222%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2002020021%_))))
                      (let ((_%__kont2002320024%_
                             (lambda (_%g1520515278%_ _%g1520615280%_)
                               _%x15199%_))
                            (_%__kont2002520026%_
                             (lambda (_%g1521315239%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1521315239%_ '())))))
                        (if (gx#stx-pair? _%__stx2002020021%_)
                            (let ((_%e1520715258%_
                                   (gx#syntax-e _%__stx2002020021%_)))
                              (let ((_%tl1520915265%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1520715258%_)))
                                    (_%hd1520815262%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1520715258%_))))
                                (if (gx#stx-pair? _%tl1520915265%_)
                                    (let ((_%e1521015268%_
                                           (gx#syntax-e _%tl1520915265%_)))
                                      (let ((_%tl1521215275%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1521015268%_)))
                                            (_%hd1521115272%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1521015268%_))))
                                        (if (gx#stx-null? _%tl1521215275%_)
                                            (_%__kont2002320024%_
                                             _%hd1521115272%_
                                             _%hd1520815262%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1520315222%_)))))
                                    (if (gx#stx-null? _%tl1520915265%_)
                                        (_%__kont2002520026%_ _%hd1520815262%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1520315222%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1520315222%_)))))))
                 (_%let-head?14391%_
                  (lambda (_%x15139%_)
                    (let* ((_%__stx2005220053%_ _%x15139%_)
                           (_%g1514315154%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2005220053%_))))
                      (let ((_%__kont2005520056%_
                             (lambda (_%g1514515182%_)
                               (gx#stx-andmap gx#identifier? _%g1514515182%_)))
                            (_%__kont2005720058%_
                             (lambda () (gx#identifier? _%x15139%_))))
                        (if (gx#stx-pair? _%__stx2005220053%_)
                            (let ((_%e1514615172%_
                                   (gx#syntax-e _%__stx2005220053%_)))
                              (let ((_%tl1514815179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1514615172%_)))
                                    (_%hd1514715176%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1514615172%_))))
                                (if (gx#identifier? _%hd1514715176%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21027_|
                                         _%hd1514715176%_)
                                        (_%__kont2005520056%_ _%tl1514815179%_)
                                        (_%__kont2005720058%_))
                                    (_%__kont2005720058%_))))
                            (_%__kont2005720058%_))))))
                 (_%let-head14392%_
                  (lambda (_%x15079%_)
                    (let* ((_%__stx2007220073%_ _%x15079%_)
                           (_%g1508315094%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2007220073%_))))
                      (let ((_%__kont2007520076%_
                             (lambda (_%g1508515122%_) _%g1508515122%_))
                            (_%__kont2007720078%_
                             (lambda () (list _%x15079%_))))
                        (if (gx#stx-pair? _%__stx2007220073%_)
                            (let ((_%e1508615112%_
                                   (gx#syntax-e _%__stx2007220073%_)))
                              (let ((_%tl1508815119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1508615112%_)))
                                    (_%hd1508715116%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1508615112%_))))
                                (if (gx#identifier? _%hd1508715116%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21028_|
                                         _%hd1508715116%_)
                                        (_%__kont2007520076%_ _%tl1508815119%_)
                                        (_%__kont2007720078%_))
                                    (_%__kont2007720078%_))))
                            (_%__kont2007720078%_)))))))
          (let* ((_%__stx2009220093%_ _%stx14385%_)
                 (_%g1439614468%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2009220093%_))))
            (let ((_%__kont2009520096%_
                   (lambda (_%g1439815052%_
                            _%g1439915054%_
                            _%g1440015055%_
                            _%g1440115056%_)
                     (cons _%g1440115056%_
                           (cons (cons (cons _%g1440015055%_
                                             (cons _%g1439915054%_ '()))
                                       '())
                                 _%g1439815052%_))))
                  (_%__kont2009720098%_
                   (lambda (_%g1441414974%_ _%g1441514976%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1441514976%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1499614999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1499715002%_)
                    (cons _%g1499614999%_ _%g1499715002%_))
                  '()
                  _%g1441414974%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2010120102%_
                   (lambda (_%g1443714551%_ _%g1443814553%_)
                     (let* ((_%g1458414610%_
                             (lambda (_%g1458514606%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1458514606%_)))
                            (_%g1458314887%_
                             (lambda (_%g1458514614%_)
                               (if (gx#stx-pair/null? _%g1458514614%_)
                                   (let ((_g21029_
                                          (gx#syntax-split-splice
                                           _%g1458514614%_
                                           '0)))
                                     (begin
                                       (let ((_g21030_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21029_)
                                                    (##values-length _g21029_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21030_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21030_)))
                                       (let ((_%target1458814617%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21029_ 0)))
                                             (_%tl1459014620%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21029_ 1))))
                                         (if (gx#stx-null? _%tl1459014620%_)
                                             (letrec ((_%loop1459114623%_
                                                       (lambda (_%hd1458914627%_
                                                                _%e1459514630%_
                                                                _%hd1459614631%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1458914627%_)
                                                             (let ((_%e1459214633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1458914627%_)))
                       (let ((_%lp-hd1459314637%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1459214633%_)))
                             (_%lp-tl1459414640%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1459214633%_))))
                         (if (gx#stx-pair? _%lp-hd1459314637%_)
                             (let ((_%e1459914643%_
                                    (gx#syntax-e _%lp-hd1459314637%_)))
                               (let ((_%hd1460014647%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1459914643%_)))
                                     (_%tl1460114650%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1459914643%_))))
                                 (if (gx#stx-pair? _%tl1460114650%_)
                                     (let ((_%e1460214653%_
                                            (gx#syntax-e _%tl1460114650%_)))
                                       (let ((_%hd1460314657%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1460214653%_)))
                                             (_%tl1460414660%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1460214653%_))))
                                         (if (gx#stx-null? _%tl1460414660%_)
                                             (_%loop1459114623%_
                                              _%lp-tl1459414640%_
                                              (cons _%hd1460314657%_
                                                    _%e1459514630%_)
                                              (cons _%hd1460014647%_
                                                    _%hd1459614631%_))
                                             (_%g1458414610%_
                                              _%g1458514614%_))))
                                     (_%g1458414610%_ _%g1458514614%_))))
                             (_%g1458414610%_ _%g1458514614%_))))
                     (let ((_%e1459714663%_ (reverse _%e1459514630%_))
                           (_%hd1459814665%_ (reverse _%hd1459614631%_)))
                       (let* ((_%g1468514702%_
                               (lambda (_%g1468614698%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g1468614698%_)))
                              (_%g1468414875%_
                               (lambda (_%g1468614706%_)
                                 (if (gx#stx-pair/null? _%g1468614706%_)
                                     (let ((_g21031_
                                            (gx#syntax-split-splice
                                             _%g1468614706%_
                                             '0)))
                                       (begin
                                         (let ((_g21032_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g21031_)
                                                      (##values-length
                                                       _g21031_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g21032_ 2)))
                                               (error "Context expects 2 values"
                                                      _g21032_)))
                                         (let ((_%target1468814709%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21031_ 0)))
                                               (_%tl1469014712%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21031_ 1))))
                                           (if (gx#stx-null? _%tl1469014712%_)
                                               (letrec ((_%loop1469114715%_
                                                         (lambda (_%hd1468914719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$e1469514722%_)
                   (if (gx#stx-pair? _%hd1468914719%_)
                       (let ((_%e1469214724%_ (gx#syntax-e _%hd1468914719%_)))
                         (let ((_%lp-hd1469314728%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1469214724%_)))
                               (_%lp-tl1469414731%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1469214724%_))))
                           (_%loop1469114715%_
                            _%lp-tl1469414731%_
                            (cons _%lp-hd1469314728%_ _%$e1469514722%_))))
                       (let* ((_%$e1469614734%_ (reverse _%$e1469514722%_))
                              (_%g1475414771%_
                               (lambda (_%g1475514767%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g1475514767%_)))
                              (_%g1475314863%_
                               (lambda (_%g1475514775%_)
                                 (if (gx#stx-pair/null? _%g1475514775%_)
                                     (let ((_g21033_
                                            (gx#syntax-split-splice
                                             _%g1475514775%_
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
                                         (let ((_%target1475714778%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21033_ 0)))
                                               (_%tl1475914781%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g21033_ 1))))
                                           (if (gx#stx-null? _%tl1475914781%_)
                                               (letrec ((_%loop1476014784%_
                                                         (lambda (_%hd1475814788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd-bind1476414791%_)
                   (if (gx#stx-pair? _%hd1475814788%_)
                       (let ((_%e1476114793%_ (gx#syntax-e _%hd1475814788%_)))
                         (let ((_%lp-hd1476214797%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1476114793%_)))
                               (_%lp-tl1476314800%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1476114793%_))))
                           (_%loop1476014784%_
                            _%lp-tl1476314800%_
                            (cons _%lp-hd1476214797%_ _%hd-bind1476414791%_))))
                       (let ((_%hd-bind1476514803%_
                              (reverse _%hd-bind1476414791%_)))
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%e1459714663%_
                                        _%$e1469614734%_)
                                       (foldr (lambda (_%g1482414835%_
                                                       _%g1482514838%_
                                                       _%g1482614840%_)
                                                (cons (cons (cons _%g1482514838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%g1482414835%_ '()))
              _%g1482614840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%e1459714663%_
                                              _%$e1469614734%_))
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (foldr (lambda (_%g1482714843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1482814846%_)
                  (cons _%g1482714843%_ _%g1482814846%_))
                (cons (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _%$e1469614734%_
                                     _%hd-bind1476514803%_)
                                    (foldr (lambda (_%g1482914849%_
                                                    _%g1483014852%_
                                                    _%g1483114854%_)
                                             (cons (cons _%g1483014852%_
                                                         (cons _%g1482914849%_
                                                               '()))
                                                   _%g1483114854%_))
                                           '()
                                           _%$e1469614734%_
                                           _%hd-bind1476514803%_))
                                  (foldr (lambda (_%g1483214857%_
                                                  _%g1483314860%_)
                                           (cons _%g1483214857%_
                                                 _%g1483314860%_))
                                         '()
                                         _%g1443714551%_)))
                      '())
                _%$e1469614734%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1476014784%_
                                                  _%target1475714778%_
                                                  '()))
                                               (_%g1475414771%_
                                                _%g1475514775%_)))))
                                     (_%g1475414771%_ _%g1475514775%_)))))
                         (_%g1475314863%_
                          (gx#stx-map
                           _%let-head14392%_
                           (foldr (lambda (_%g1486614869%_ _%g1486714872%_)
                                    (cons _%g1486614869%_ _%g1486714872%_))
                                  '()
                                  _%hd1459814665%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1469114715%_
                                                  _%target1468814709%_
                                                  '()))
                                               (_%g1468514702%_
                                                _%g1468614706%_)))))
                                     (_%g1468514702%_ _%g1468614706%_)))))
                         (_%g1468414875%_
                          (gx#gentemps
                           (foldr (lambda (_%g1487814881%_ _%g1487914884%_)
                                    (cons _%g1487814881%_ _%g1487914884%_))
                                  '()
                                  _%hd1459814665%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1459114623%_
                                                _%target1458814617%_
                                                '()
                                                '()))
                                             (_%g1458414610%_
                                              _%g1458514614%_)))))
                                   (_%g1458414610%_ _%g1458514614%_)))))
                       (_%g1458314887%_
                        (gx#stx-map
                         _%let-bind14390%_
                         (foldr (lambda (_%g1489014893%_ _%g1489114896%_)
                                  (cons _%g1489014893%_ _%g1489114896%_))
                                '()
                                _%g1443814553%_)))))))
              (let* ((_%__match2018920190%_
                      (lambda (_%e1443914475%_
                               _%hd1444014479%_
                               _%tl1444114482%_
                               _%e1444214485%_
                               _%hd1444314489%_
                               _%tl1444414492%_
                               _%__splice2010320104%_
                               _%target1444514495%_
                               _%tl1444714498%_)
                        (letrec ((_%loop1444814501%_
                                  (lambda (_%hd1444614505%_ _%bind1445214508%_)
                                    (if (gx#stx-pair? _%hd1444614505%_)
                                        (let ((_%e1444914510%_
                                               (gx#syntax-e _%hd1444614505%_)))
                                          (let ((_%lp-tl1445114517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1444914510%_)))
                                                (_%lp-hd1445014514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1444914510%_))))
                                            (_%loop1444814501%_
                                             _%lp-tl1445114517%_
                                             (cons _%lp-hd1445014514%_
                                                   _%bind1445214508%_))))
                                        (let ((_%bind1445314520%_
                                               (reverse _%bind1445214508%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1444414492%_)
                                              (let ((_%__splice2010520106%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1444414492%_
                                                      '0)))
                                                (let ((_%tl1445614526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2010520106%_
                                                          '1)))
                                                      (_%target1445414523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2010520106%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1445614526%_)
                                                      (letrec ((_%loop1445714529%_
                                                                (lambda (_%hd1445514533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1446114536%_)
                          (if (gx#stx-pair? _%hd1445514533%_)
                              (let ((_%e1445814538%_
                                     (gx#syntax-e _%hd1445514533%_)))
                                (let ((_%lp-tl1446014545%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1445814538%_)))
                                      (_%lp-hd1445914542%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1445814538%_))))
                                  (_%loop1445714529%_
                                   _%lp-tl1446014545%_
                                   (cons _%lp-hd1445914542%_
                                         _%body1446114536%_))))
                              (let ((_%body1446214548%_
                                     (reverse _%body1446114536%_)))
                                (let ((_%g1443714551%_ _%body1446214548%_)
                                      (_%g1443814553%_ _%bind1445314520%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14388%_
                                       (foldr (lambda (_%g1457514578%_
                                                       _%g1457614581%_)
                                                (cons _%g1457514578%_
                                                      _%g1457614581%_))
                                              '()
                                              _%g1443814553%_))
                                      (_%__kont2010120102%_
                                       _%g1443714551%_
                                       _%g1443814553%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1439614468%_)))))))))
                (_%loop1445714529%_ _%target1445414523%_ '()))
              (let () (declare (not safe)) (_%g1439614468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1439614468%_))))))))
                          (_%loop1444814501%_ _%target1444514495%_ '()))))
                     (_%__match2016920170%_
                      (lambda (_%e1441614906%_
                               _%hd1441714910%_
                               _%tl1441814913%_
                               _%e1441914916%_
                               _%hd1442014920%_
                               _%tl1442114923%_
                               _%e1442214926%_
                               _%hd1442314930%_
                               _%tl1442414933%_
                               _%e1442514936%_
                               _%hd1442614940%_
                               _%tl1442714943%_
                               _%__splice2009920100%_
                               _%target1442814946%_
                               _%tl1443014949%_)
                        (letrec ((_%loop1443114952%_
                                  (lambda (_%hd1442914956%_ _%body1443514959%_)
                                    (if (gx#stx-pair? _%hd1442914956%_)
                                        (let ((_%e1443214961%_
                                               (gx#syntax-e _%hd1442914956%_)))
                                          (let ((_%lp-tl1443414968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1443214961%_)))
                                                (_%lp-hd1443314965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1443214961%_))))
                                            (_%loop1443114952%_
                                             _%lp-tl1443414968%_
                                             (cons _%lp-hd1443314965%_
                                                   _%body1443514959%_))))
                                        (let ((_%body1443614971%_
                                               (reverse _%body1443514959%_)))
                                          (_%__kont2009720098%_
                                           _%body1443614971%_
                                           _%hd1442614940%_))))))
                          (_%loop1443114952%_ _%target1442814946%_ '()))))
                     (_%__match2013320134%_
                      (lambda (_%e1440215012%_
                               _%hd1440315016%_
                               _%tl1440415019%_
                               _%e1440515022%_
                               _%hd1440615026%_
                               _%tl1440715029%_
                               _%e1440815032%_
                               _%hd1440915036%_
                               _%tl1441015039%_
                               _%e1441115042%_
                               _%hd1441215046%_
                               _%tl1441315049%_)
                        (let ((_%g1439815052%_ _%tl1440715029%_)
                              (_%g1439915054%_ _%hd1441215046%_)
                              (_%g1440015055%_ _%hd1440915036%_)
                              (_%g1440115056%_ _%hd1440315016%_))
                          (if (_%let-head?14391%_ _%g1440015055%_)
                              (_%__kont2009520096%_
                               _%g1439815052%_
                               _%g1439915054%_
                               _%g1440015055%_
                               _%g1440115056%_)
                              (if (gx#stx-pair? _%hd1440915036%_)
                                  (let ((_%e1442514936%_
                                         (gx#syntax-e _%hd1440915036%_)))
                                    (let ((_%tl1442714943%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1442514936%_)))
                                          (_%hd1442614940%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1442514936%_))))
                                      (if (gx#stx-pair/null? _%hd1440615026%_)
                                          (let ((_%__splice2010320104%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1440615026%_
                                                  '0)))
                                            (let ((_%tl1444714498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2010320104%_
                                                      '1)))
                                                  (_%target1444514495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2010320104%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1444714498%_)
                                                  (_%__match2018920190%_
                                                   _%e1440215012%_
                                                   _%hd1440315016%_
                                                   _%tl1440415019%_
                                                   _%e1440515022%_
                                                   _%hd1440615026%_
                                                   _%tl1440715029%_
                                                   _%__splice2010320104%_
                                                   _%target1444514495%_
                                                   _%tl1444714498%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1439614468%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1439614468%_)))))
                                  (if (gx#stx-pair/null? _%hd1440615026%_)
                                      (let ((_%__splice2010320104%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1440615026%_
                                              '0)))
                                        (let ((_%tl1444714498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2010320104%_
                                                  '1)))
                                              (_%target1444514495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2010320104%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1444714498%_)
                                              (_%__match2018920190%_
                                               _%e1440215012%_
                                               _%hd1440315016%_
                                               _%tl1440415019%_
                                               _%e1440515022%_
                                               _%hd1440615026%_
                                               _%tl1440715029%_
                                               _%__splice2010320104%_
                                               _%target1444514495%_
                                               _%tl1444714498%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1439614468%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1439614468%_)))))))))
                (if (gx#stx-pair? _%__stx2009220093%_)
                    (let ((_%e1440215012%_ (gx#syntax-e _%__stx2009220093%_)))
                      (let ((_%tl1440415019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1440215012%_)))
                            (_%hd1440315016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1440215012%_))))
                        (if (gx#stx-pair? _%tl1440415019%_)
                            (let ((_%e1440515022%_
                                   (gx#syntax-e _%tl1440415019%_)))
                              (let ((_%tl1440715029%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1440515022%_)))
                                    (_%hd1440615026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1440515022%_))))
                                (if (gx#stx-pair? _%hd1440615026%_)
                                    (let ((_%e1440815032%_
                                           (gx#syntax-e _%hd1440615026%_)))
                                      (let ((_%tl1441015039%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1440815032%_)))
                                            (_%hd1440915036%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1440815032%_))))
                                        (if (gx#stx-pair? _%tl1441015039%_)
                                            (let ((_%e1441115042%_
                                                   (gx#syntax-e
                                                    _%tl1441015039%_)))
                                              (let ((_%tl1441315049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1441115042%_)))
                                                    (_%hd1441215046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1441115042%_))))
                                                (if (gx#stx-null?
                                                     _%tl1441315049%_)
                                                    (_%__match2013320134%_
                                                     _%e1440215012%_
                                                     _%hd1440315016%_
                                                     _%tl1440415019%_
                                                     _%e1440515022%_
                                                     _%hd1440615026%_
                                                     _%tl1440715029%_
                                                     _%e1440815032%_
                                                     _%hd1440915036%_
                                                     _%tl1441015039%_
                                                     _%e1441115042%_
                                                     _%hd1441215046%_
                                                     _%tl1441315049%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1440915036%_)
                                                        (let ((_%e1442514936%_
                                                               (gx#syntax-e
                                                                _%hd1440915036%_)))
                                                          (let ((_%tl1442714943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1442514936%_)))
                        (_%hd1442614940%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1442514936%_))))
                    (if (gx#stx-pair/null? _%hd1440615026%_)
                        (let ((_%__splice2010320104%_
                               (gx#syntax-split-splice->vector
                                _%hd1440615026%_
                                '0)))
                          (let ((_%tl1444714498%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010320104%_ '1)))
                                (_%target1444514495%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010320104%_ '0))))
                            (if (gx#stx-null? _%tl1444714498%_)
                                (_%__match2018920190%_
                                 _%e1440215012%_
                                 _%hd1440315016%_
                                 _%tl1440415019%_
                                 _%e1440515022%_
                                 _%hd1440615026%_
                                 _%tl1440715029%_
                                 _%__splice2010320104%_
                                 _%target1444514495%_
                                 _%tl1444714498%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1439614468%_)))))
                        (let () (declare (not safe)) (_%g1439614468%_)))))
                (if (gx#stx-pair/null? _%hd1440615026%_)
                    (let ((_%__splice2010320104%_
                           (gx#syntax-split-splice->vector
                            _%hd1440615026%_
                            '0)))
                      (let ((_%tl1444714498%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010320104%_ '1)))
                            (_%target1444514495%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010320104%_ '0))))
                        (if (gx#stx-null? _%tl1444714498%_)
                            (_%__match2018920190%_
                             _%e1440215012%_
                             _%hd1440315016%_
                             _%tl1440415019%_
                             _%e1440515022%_
                             _%hd1440615026%_
                             _%tl1440715029%_
                             _%__splice2010320104%_
                             _%target1444514495%_
                             _%tl1444714498%_)
                            (let () (declare (not safe)) (_%g1439614468%_)))))
                    (let () (declare (not safe)) (_%g1439614468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1440915036%_)
                                                (let ((_%e1442514936%_
                                                       (gx#syntax-e
                                                        _%hd1440915036%_)))
                                                  (let ((_%tl1442714943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1442514936%_)))
                                                        (_%hd1442614940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1442514936%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1442714943%_)
                                                        (if (gx#stx-null?
                                                             _%tl1441015039%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1440715029%_)
                        (let ((_%__splice2009920100%_
                               (gx#syntax-split-splice->vector
                                _%tl1440715029%_
                                '0)))
                          (let ((_%tl1443014949%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2009920100%_ '1)))
                                (_%target1442814946%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2009920100%_ '0))))
                            (if (gx#stx-null? _%tl1443014949%_)
                                (_%__match2016920170%_
                                 _%e1440215012%_
                                 _%hd1440315016%_
                                 _%tl1440415019%_
                                 _%e1440515022%_
                                 _%hd1440615026%_
                                 _%tl1440715029%_
                                 _%e1440815032%_
                                 _%hd1440915036%_
                                 _%tl1441015039%_
                                 _%e1442514936%_
                                 _%hd1442614940%_
                                 _%tl1442714943%_
                                 _%__splice2009920100%_
                                 _%target1442814946%_
                                 _%tl1443014949%_)
                                (if (gx#stx-pair/null? _%hd1440615026%_)
                                    (let ((_%__splice2010320104%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1440615026%_
                                            '0)))
                                      (let ((_%tl1444714498%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2010320104%_
                                                '1)))
                                            (_%target1444514495%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2010320104%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1444714498%_)
                                            (_%__match2018920190%_
                                             _%e1440215012%_
                                             _%hd1440315016%_
                                             _%tl1440415019%_
                                             _%e1440515022%_
                                             _%hd1440615026%_
                                             _%tl1440715029%_
                                             _%__splice2010320104%_
                                             _%target1444514495%_
                                             _%tl1444714498%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1439614468%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1439614468%_))))))
                        (if (gx#stx-pair/null? _%hd1440615026%_)
                            (let ((_%__splice2010320104%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1440615026%_
                                    '0)))
                              (let ((_%tl1444714498%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2010320104%_
                                        '1)))
                                    (_%target1444514495%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2010320104%_
                                        '0))))
                                (if (gx#stx-null? _%tl1444714498%_)
                                    (_%__match2018920190%_
                                     _%e1440215012%_
                                     _%hd1440315016%_
                                     _%tl1440415019%_
                                     _%e1440515022%_
                                     _%hd1440615026%_
                                     _%tl1440715029%_
                                     _%__splice2010320104%_
                                     _%target1444514495%_
                                     _%tl1444714498%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1439614468%_)))))
                            (let () (declare (not safe)) (_%g1439614468%_))))
                    (if (gx#stx-pair/null? _%hd1440615026%_)
                        (let ((_%__splice2010320104%_
                               (gx#syntax-split-splice->vector
                                _%hd1440615026%_
                                '0)))
                          (let ((_%tl1444714498%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010320104%_ '1)))
                                (_%target1444514495%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010320104%_ '0))))
                            (if (gx#stx-null? _%tl1444714498%_)
                                (_%__match2018920190%_
                                 _%e1440215012%_
                                 _%hd1440315016%_
                                 _%tl1440415019%_
                                 _%e1440515022%_
                                 _%hd1440615026%_
                                 _%tl1440715029%_
                                 _%__splice2010320104%_
                                 _%target1444514495%_
                                 _%tl1444714498%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1439614468%_)))))
                        (let () (declare (not safe)) (_%g1439614468%_))))
                (if (gx#stx-pair/null? _%hd1440615026%_)
                    (let ((_%__splice2010320104%_
                           (gx#syntax-split-splice->vector
                            _%hd1440615026%_
                            '0)))
                      (let ((_%tl1444714498%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010320104%_ '1)))
                            (_%target1444514495%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010320104%_ '0))))
                        (if (gx#stx-null? _%tl1444714498%_)
                            (_%__match2018920190%_
                             _%e1440215012%_
                             _%hd1440315016%_
                             _%tl1440415019%_
                             _%e1440515022%_
                             _%hd1440615026%_
                             _%tl1440715029%_
                             _%__splice2010320104%_
                             _%target1444514495%_
                             _%tl1444714498%_)
                            (let () (declare (not safe)) (_%g1439614468%_)))))
                    (let () (declare (not safe)) (_%g1439614468%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1440615026%_)
                                                    (let ((_%__splice2010320104%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1440615026%_
                                                            '0)))
                                                      (let ((_%tl1444714498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2010320104%_ '1)))
                    (_%target1444514495%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2010320104%_ '0))))
                (if (gx#stx-null? _%tl1444714498%_)
                    (_%__match2018920190%_
                     _%e1440215012%_
                     _%hd1440315016%_
                     _%tl1440415019%_
                     _%e1440515022%_
                     _%hd1440615026%_
                     _%tl1440715029%_
                     _%__splice2010320104%_
                     _%target1444514495%_
                     _%tl1444714498%_)
                    (let () (declare (not safe)) (_%g1439614468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1439614468%_)))))))
                                    (if (gx#stx-pair/null? _%hd1440615026%_)
                                        (let ((_%__splice2010320104%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1440615026%_
                                                '0)))
                                          (let ((_%tl1444714498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2010320104%_
                                                    '1)))
                                                (_%target1444514495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2010320104%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1444714498%_)
                                                (_%__match2018920190%_
                                                 _%e1440215012%_
                                                 _%hd1440315016%_
                                                 _%tl1440415019%_
                                                 _%e1440515022%_
                                                 _%hd1440615026%_
                                                 _%tl1440715029%_
                                                 _%__splice2010320104%_
                                                 _%target1444514495%_
                                                 _%tl1444714498%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1439614468%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1439614468%_))))))
                            (let () (declare (not safe)) (_%g1439614468%_)))))
                    (let () (declare (not safe)) (_%g1439614468%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15414%_)
        (let* ((_%__stx2019220193%_ _%$stx15414%_)
               (_%g1542015471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2019220193%_))))
          (let ((_%__kont2019520196%_ (lambda () '#t))
                (_%__kont2019720198%_
                 (lambda (_%g1542815625%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1564115644%_ _%g1564215647%_)
                                        (cons _%g1564115644%_ _%g1564215647%_))
                                      '()
                                      _%g1542815625%_)))))
                (_%__kont2020120202%_
                 (lambda (_%g1544415536%_
                          _%g1544515538%_
                          _%g1544615539%_
                          _%g1544715540%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1544615539%_ '())
                               (cons (cons _%g1544715540%_
                                           (cons _%g1544515538%_
                                                 (foldr (lambda (_%g1556115564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1556215567%_)
                  (cons _%g1556115564%_ _%g1556215567%_))
                '()
                _%g1544415536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2026920270%_
                    (lambda (_%e1544815478%_
                             _%hd1544915482%_
                             _%tl1545015485%_
                             _%e1545115488%_
                             _%hd1545215492%_
                             _%tl1545315495%_
                             _%e1545415498%_
                             _%hd1545515502%_
                             _%tl1545615505%_
                             _%__splice2020320204%_
                             _%target1545715508%_
                             _%tl1545915511%_)
                      (letrec ((_%loop1546015514%_
                                (lambda (_%hd1545815518%_ _%body1546415521%_)
                                  (if (gx#stx-pair? _%hd1545815518%_)
                                      (let ((_%e1546115523%_
                                             (gx#syntax-e _%hd1545815518%_)))
                                        (let ((_%lp-tl1546315530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1546115523%_)))
                                              (_%lp-hd1546215527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1546115523%_))))
                                          (_%loop1546015514%_
                                           _%lp-tl1546315530%_
                                           (cons _%lp-hd1546215527%_
                                                 _%body1546415521%_))))
                                      (let ((_%body1546515533%_
                                             (reverse _%body1546415521%_)))
                                        (_%__kont2020120202%_
                                         _%body1546515533%_
                                         _%tl1545615505%_
                                         _%hd1545515502%_
                                         _%hd1544915482%_))))))
                        (_%loop1546015514%_ _%target1545715508%_ '()))))
                   (_%__match2024320244%_
                    (lambda (_%e1542915577%_
                             _%hd1543015581%_
                             _%tl1543115584%_
                             _%e1543215587%_
                             _%hd1543315591%_
                             _%tl1543415594%_
                             _%__splice2019920200%_
                             _%target1543515597%_
                             _%tl1543715600%_)
                      (letrec ((_%loop1543815603%_
                                (lambda (_%hd1543615607%_ _%body1544215610%_)
                                  (if (gx#stx-pair? _%hd1543615607%_)
                                      (let ((_%e1543915612%_
                                             (gx#syntax-e _%hd1543615607%_)))
                                        (let ((_%lp-tl1544115619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1543915612%_)))
                                              (_%lp-hd1544015616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1543915612%_))))
                                          (_%loop1543815603%_
                                           _%lp-tl1544115619%_
                                           (cons _%lp-hd1544015616%_
                                                 _%body1544215610%_))))
                                      (let ((_%body1544315622%_
                                             (reverse _%body1544215610%_)))
                                        (_%__kont2019720198%_
                                         _%body1544315622%_))))))
                        (_%loop1543815603%_ _%target1543515597%_ '())))))
              (if (gx#stx-pair? _%__stx2019220193%_)
                  (let ((_%e1542215657%_ (gx#syntax-e _%__stx2019220193%_)))
                    (let ((_%tl1542415664%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1542215657%_)))
                          (_%hd1542315661%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1542215657%_))))
                      (if (gx#stx-pair? _%tl1542415664%_)
                          (let ((_%e1542515667%_
                                 (gx#syntax-e _%tl1542415664%_)))
                            (let ((_%tl1542715674%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1542515667%_)))
                                  (_%hd1542615671%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1542515667%_))))
                              (if (gx#stx-null? _%hd1542615671%_)
                                  (if (gx#stx-null? _%tl1542715674%_)
                                      (_%__kont2019520196%_)
                                      (if (gx#stx-pair/null? _%tl1542715674%_)
                                          (let ((_%__splice2019920200%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1542715674%_
                                                  '0)))
                                            (let ((_%tl1543715600%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2019920200%_
                                                      '1)))
                                                  (_%target1543515597%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2019920200%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1543715600%_)
                                                  (_%__match2024320244%_
                                                   _%e1542215657%_
                                                   _%hd1542315661%_
                                                   _%tl1542415664%_
                                                   _%e1542515667%_
                                                   _%hd1542615671%_
                                                   _%tl1542715674%_
                                                   _%__splice2019920200%_
                                                   _%target1543515597%_
                                                   _%tl1543715600%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1542015471%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1542015471%_))))
                                  (if (gx#stx-pair? _%hd1542615671%_)
                                      (let ((_%e1545415498%_
                                             (gx#syntax-e _%hd1542615671%_)))
                                        (let ((_%tl1545615505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1545415498%_)))
                                              (_%hd1545515502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1545415498%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1542715674%_)
                                              (let ((_%__splice2020320204%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1542715674%_
                                                      '0)))
                                                (let ((_%tl1545915511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2020320204%_
                                                          '1)))
                                                      (_%target1545715508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2020320204%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1545915511%_)
                                                      (_%__match2026920270%_
                                                       _%e1542215657%_
                                                       _%hd1542315661%_
                                                       _%tl1542415664%_
                                                       _%e1542515667%_
                                                       _%hd1542615671%_
                                                       _%tl1542715674%_
                                                       _%e1545415498%_
                                                       _%hd1545515502%_
                                                       _%tl1545615505%_
                                                       _%__splice2020320204%_
                                                       _%target1545715508%_
                                                       _%tl1545915511%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1542015471%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1542015471%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1542015471%_))))))
                          (let () (declare (not safe)) (_%g1542015471%_)))))
                  (let () (declare (not safe)) (_%g1542015471%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15687%_)
        (let* ((_%__stx2027220273%_ _%$stx15687%_)
               (_%g1569815776%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2027220273%_))))
          (let ((_%__kont2027520276%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2027720278%_
                 (lambda (_%g1570316107%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1570316107%_ '()))))
                (_%__kont2027920280%_
                 (lambda (_%g1571316055%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1571316055%_ '()))))
                (_%__kont2028120282%_
                 (lambda (_%g1572316002%_) _%g1572316002%_))
                (_%__kont2028320284%_
                 (lambda (_%g1573415944%_ _%g1573515946%_) _%g1573515946%_))
                (_%__kont2028520286%_
                 (lambda (_%g1574515886%_
                          _%g1574615888%_
                          _%g1574715889%_
                          _%g1574815890%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1574815890%_ _%g1574515886%_)
                                     (cons _%g1574715889%_ '()))))))
                (_%__kont2028720288%_
                 (lambda (_%g1575815832%_ _%g1575915834%_ _%g1576015835%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1575915834%_
                               (cons (cons _%g1576015835%_ _%g1575815832%_)
                                     '())))))
                (_%__kont2028920290%_
                 (lambda (_%g1576715793%_) _%g1576715793%_)))
            (let* ((_%__match2041120412%_
                    (lambda (_%e1574915856%_
                             _%hd1575015860%_
                             _%tl1575115863%_
                             _%e1575215866%_
                             _%hd1575315870%_
                             _%tl1575415873%_
                             _%e1575515876%_
                             _%hd1575615880%_
                             _%tl1575715883%_)
                      (let ((_%g1574515886%_ _%tl1575715883%_)
                            (_%g1574615888%_ _%hd1575615880%_)
                            (_%g1574715889%_ _%hd1575315870%_)
                            (_%g1574815890%_ _%hd1575015860%_))
                        (if (gx#ellipsis? _%g1574615888%_)
                            (_%__kont2028520286%_
                             _%g1574515886%_
                             _%g1574615888%_
                             _%g1574715889%_
                             _%g1574815890%_)
                            (_%__kont2028720288%_
                             _%tl1575415873%_
                             _%hd1575315870%_
                             _%hd1575015860%_)))))
                   (_%__match2039320394%_
                    (lambda (_%e1573615914%_
                             _%hd1573715918%_
                             _%tl1573815921%_
                             _%e1573915924%_
                             _%hd1574015928%_
                             _%tl1574115931%_
                             _%e1574215934%_
                             _%hd1574315938%_
                             _%tl1574415941%_)
                      (let ((_%g1573415944%_ _%hd1574315938%_)
                            (_%g1573515946%_ _%hd1574015928%_))
                        (if (gx#ellipsis? _%g1573415944%_)
                            (_%__kont2028320284%_
                             _%g1573415944%_
                             _%g1573515946%_)
                            (_%__match2041120412%_
                             _%e1573615914%_
                             _%hd1573715918%_
                             _%tl1573815921%_
                             _%e1573915924%_
                             _%hd1574015928%_
                             _%tl1574115931%_
                             _%e1574215934%_
                             _%hd1574315938%_
                             _%tl1574415941%_))))))
              (if (gx#stx-pair? _%__stx2027220273%_)
                  (let ((_%e1570016129%_ (gx#syntax-e _%__stx2027220273%_)))
                    (let ((_%tl1570216136%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1570016129%_)))
                          (_%hd1570116133%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1570016129%_))))
                      (if (gx#stx-null? _%tl1570216136%_)
                          (_%__kont2027520276%_)
                          (if (gx#stx-pair? _%tl1570216136%_)
                              (let ((_%e1570716087%_
                                     (gx#syntax-e _%tl1570216136%_)))
                                (let ((_%tl1570916094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1570716087%_)))
                                      (_%hd1570816091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1570716087%_))))
                                  (if (gx#identifier? _%hd1570816091%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21035_|
                                           _%hd1570816091%_)
                                          (if (gx#stx-pair? _%tl1570916094%_)
                                              (let ((_%e1571016097%_
                                                     (gx#syntax-e
                                                      _%tl1570916094%_)))
                                                (let ((_%tl1571216104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1571016097%_)))
                                                      (_%hd1571116101%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1571016097%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1571216104%_)
                                                      (_%__kont2027720278%_
                                                       _%hd1571116101%_)
                                                      (_%__match2041120412%_
                                                       _%e1570016129%_
                                                       _%hd1570116133%_
                                                       _%tl1570216136%_
                                                       _%e1570716087%_
                                                       _%hd1570816091%_
                                                       _%tl1570916094%_
                                                       _%e1571016097%_
                                                       _%hd1571116101%_
                                                       _%tl1571216104%_))))
                                              (_%__kont2028720288%_
                                               _%tl1570916094%_
                                               _%hd1570816091%_
                                               _%hd1570116133%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21036_|
                                               _%hd1570816091%_)
                                              (if (gx#stx-pair?
                                                   _%tl1570916094%_)
                                                  (let ((_%e1572016045%_
                                                         (gx#syntax-e
                                                          _%tl1570916094%_)))
                                                    (let ((_%tl1572216052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1572016045%_)))
                                                          (_%hd1572116049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1572016045%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1572216052%_)
                                                          (_%__kont2027920280%_
                                                           _%hd1572116049%_)
                                                          (_%__match2041120412%_
                                                           _%e1570016129%_
                                                           _%hd1570116133%_
                                                           _%tl1570216136%_
                                                           _%e1570716087%_
                                                           _%hd1570816091%_
                                                           _%tl1570916094%_
                                                           _%e1572016045%_
                                                           _%hd1572116049%_
                                                           _%tl1572216052%_))))
                                                  (_%__kont2028720288%_
                                                   _%tl1570916094%_
                                                   _%hd1570816091%_
                                                   _%hd1570116133%_))
                                              (if (gx#stx-pair?
                                                   _%tl1570916094%_)
                                                  (let ((_%e1574215934%_
                                                         (gx#syntax-e
                                                          _%tl1570916094%_)))
                                                    (let ((_%tl1574415941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1574215934%_)))
                                                          (_%hd1574315938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1574215934%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1574415941%_)
                                                          (_%__match2039320394%_
                                                           _%e1570016129%_
                                                           _%hd1570116133%_
                                                           _%tl1570216136%_
                                                           _%e1570716087%_
                                                           _%hd1570816091%_
                                                           _%tl1570916094%_
                                                           _%e1574215934%_
                                                           _%hd1574315938%_
                                                           _%tl1574415941%_)
                                                          (_%__match2041120412%_
                                                           _%e1570016129%_
                                                           _%hd1570116133%_
                                                           _%tl1570216136%_
                                                           _%e1570716087%_
                                                           _%hd1570816091%_
                                                           _%tl1570916094%_
                                                           _%e1574215934%_
                                                           _%hd1574315938%_
                                                           _%tl1574415941%_))))
                                                  (_%__kont2028720288%_
                                                   _%tl1570916094%_
                                                   _%hd1570816091%_
                                                   _%hd1570116133%_))))
                                      (if (gx#stx-datum? _%hd1570816091%_)
                                          (let ((_%e1573015988%_
                                                 (gx#stx-e _%hd1570816091%_)))
                                            (if (equal? _%e1573015988%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1570916094%_)
                                                    (let ((_%e1573115992%_
                                                           (gx#syntax-e
                                                            _%tl1570916094%_)))
                                                      (let ((_%tl1573315999%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1573115992%_)))
                    (_%hd1573215996%_
                     (let () (declare (not safe)) (##car _%e1573115992%_))))
                (if (gx#stx-null? _%tl1573315999%_)
                    (_%__kont2028120282%_ _%hd1573215996%_)
                    (_%__match2041120412%_
                     _%e1570016129%_
                     _%hd1570116133%_
                     _%tl1570216136%_
                     _%e1570716087%_
                     _%hd1570816091%_
                     _%tl1570916094%_
                     _%e1573115992%_
                     _%hd1573215996%_
                     _%tl1573315999%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2028720288%_
                                                     _%tl1570916094%_
                                                     _%hd1570816091%_
                                                     _%hd1570116133%_))
                                                (if (gx#stx-pair?
                                                     _%tl1570916094%_)
                                                    (let ((_%e1574215934%_
                                                           (gx#syntax-e
                                                            _%tl1570916094%_)))
                                                      (let ((_%tl1574415941%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1574215934%_)))
                    (_%hd1574315938%_
                     (let () (declare (not safe)) (##car _%e1574215934%_))))
                (if (gx#stx-null? _%tl1574415941%_)
                    (_%__match2039320394%_
                     _%e1570016129%_
                     _%hd1570116133%_
                     _%tl1570216136%_
                     _%e1570716087%_
                     _%hd1570816091%_
                     _%tl1570916094%_
                     _%e1574215934%_
                     _%hd1574315938%_
                     _%tl1574415941%_)
                    (_%__match2041120412%_
                     _%e1570016129%_
                     _%hd1570116133%_
                     _%tl1570216136%_
                     _%e1570716087%_
                     _%hd1570816091%_
                     _%tl1570916094%_
                     _%e1574215934%_
                     _%hd1574315938%_
                     _%tl1574415941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2028720288%_
                                                     _%tl1570916094%_
                                                     _%hd1570816091%_
                                                     _%hd1570116133%_))))
                                          (if (gx#stx-pair? _%tl1570916094%_)
                                              (let ((_%e1574215934%_
                                                     (gx#syntax-e
                                                      _%tl1570916094%_)))
                                                (let ((_%tl1574415941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1574215934%_)))
                                                      (_%hd1574315938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1574215934%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1574415941%_)
                                                      (_%__match2039320394%_
                                                       _%e1570016129%_
                                                       _%hd1570116133%_
                                                       _%tl1570216136%_
                                                       _%e1570716087%_
                                                       _%hd1570816091%_
                                                       _%tl1570916094%_
                                                       _%e1574215934%_
                                                       _%hd1574315938%_
                                                       _%tl1574415941%_)
                                                      (_%__match2041120412%_
                                                       _%e1570016129%_
                                                       _%hd1570116133%_
                                                       _%tl1570216136%_
                                                       _%e1570716087%_
                                                       _%hd1570816091%_
                                                       _%tl1570916094%_
                                                       _%e1574215934%_
                                                       _%hd1574315938%_
                                                       _%tl1574415941%_))))
                                              (_%__kont2028720288%_
                                               _%tl1570916094%_
                                               _%hd1570816091%_
                                               _%hd1570116133%_))))))
                              (_%__kont2028920290%_ _%tl1570216136%_)))))
                  (let () (declare (not safe)) (_%g1569815776%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16147%_)
        (letrec ((_%simple-quote?16150%_
                  (lambda (_%e16840%_)
                    (let* ((_%__stx2043220433%_ _%e16840%_)
                           (_%g1684816885%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2043220433%_))))
                      (let ((_%__kont2043520436%_ (lambda () '#f))
                            (_%__kont2043720438%_ (lambda () '#f))
                            (_%__kont2043920440%_
                             (lambda (_%g1686216997%_ _%g1686316999%_)
                               (if (_%simple-quote?16150%_ _%g1686316999%_)
                                   (_%simple-quote?16150%_ _%g1686216997%_)
                                   '#f)))
                            (_%__kont2044120442%_
                             (lambda (_%g1686716958%_)
                               (_%simple-quote?16150%_
                                (foldr (lambda (_%g1697116974%_
                                                _%g1697216977%_)
                                         (cons _%g1697116974%_
                                               _%g1697216977%_))
                                       '()
                                       _%g1686716958%_))))
                            (_%__kont2044520446%_
                             (lambda (_%g1687816907%_)
                               (_%simple-quote?16150%_ _%g1687816907%_)))
                            (_%__kont2044720448%_ (lambda () '#t)))
                        (let* ((_%g1684616919%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2043220433%_)
                                      (let ((_%e1687916903%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2043220433%_))))
                                        (_%__kont2044520446%_ _%e1687916903%_))
                                      (_%__kont2044720448%_))))
                               (_%__match2050320504%_
                                (lambda (_%e1686816926%_
                                         _%__splice2044320444%_
                                         _%target1686916930%_
                                         _%tl1687116933%_)
                                  (letrec ((_%loop1687216936%_
                                            (lambda (_%hd1687016940%_
                                                     _%e1687616943%_)
                                              (if (gx#stx-pair?
                                                   _%hd1687016940%_)
                                                  (let ((_%e1687316945%_
                                                         (gx#syntax-e
                                                          _%hd1687016940%_)))
                                                    (let ((_%lp-tl1687516952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1687316945%_)))
                                                          (_%lp-hd1687416949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1687316945%_))))
                                                      (_%loop1687216936%_
                                                       _%lp-tl1687516952%_
                                                       (cons _%lp-hd1687416949%_
                                                             _%e1687616943%_))))
                                                  (let ((_%e1687716955%_
                                                         (reverse _%e1687616943%_)))
                                                    (_%__kont2044120442%_
                                                     _%e1687716955%_))))))
                                    (_%loop1687216936%_
                                     _%target1686916930%_
                                     '()))))
                               (_%g1684516980%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2043220433%_)
                                      (let ((_%e1686816926%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2043220433%_))))
                                        (if (gx#stx-pair/null? _%e1686816926%_)
                                            (let ((_%__splice2044320444%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1686816926%_
                                                    '0)))
                                              (let ((_%tl1687116933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044320444%_
                                                        '1)))
                                                    (_%target1686916930%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044320444%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1687116933%_)
                                                    (_%__match2050320504%_
                                                     _%e1686816926%_
                                                     _%__splice2044320444%_
                                                     _%target1686916930%_
                                                     _%tl1687116933%_)
                                                    (_%__kont2044720448%_))))
                                            (_%__kont2044720448%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1684616919%_))))))
                          (if (gx#stx-pair? _%__stx2043220433%_)
                              (let ((_%e1685017048%_
                                     (gx#syntax-e _%__stx2043220433%_)))
                                (let ((_%tl1685217055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1685017048%_)))
                                      (_%hd1685117052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1685017048%_))))
                                  (if (gx#identifier? _%hd1685117052%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21037_|
                                           _%hd1685117052%_)
                                          (if (gx#stx-pair? _%tl1685217055%_)
                                              (let ((_%e1685317058%_
                                                     (gx#syntax-e
                                                      _%tl1685217055%_)))
                                                (let ((_%tl1685517065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1685317058%_)))
                                                      (_%hd1685417062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1685317058%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1685517065%_)
                                                      (_%__kont2043520436%_)
                                                      (_%__kont2043920440%_
                                                       _%tl1685217055%_
                                                       _%hd1685117052%_))))
                                              (_%__kont2043920440%_
                                               _%tl1685217055%_
                                               _%hd1685117052%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21038_|
                                               _%hd1685117052%_)
                                              (if (gx#stx-pair?
                                                   _%tl1685217055%_)
                                                  (let ((_%e1685917027%_
                                                         (gx#syntax-e
                                                          _%tl1685217055%_)))
                                                    (let ((_%tl1686117034%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1685917027%_)))
                                                          (_%hd1686017031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1685917027%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1686117034%_)
                                                          (_%__kont2043720438%_)
                                                          (_%__kont2043920440%_
                                                           _%tl1685217055%_
                                                           _%hd1685117052%_))))
                                                  (_%__kont2043920440%_
                                                   _%tl1685217055%_
                                                   _%hd1685117052%_))
                                              (_%__kont2043920440%_
                                               _%tl1685217055%_
                                               _%hd1685117052%_)))
                                      (_%__kont2043920440%_
                                       _%tl1685217055%_
                                       _%hd1685117052%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1684516980%_))))))))
                 (_%generate16152%_
                  (lambda (_%e16214%_ _%d16216%_)
                    (let* ((_%__stx2051020511%_ _%e16214%_)
                           (_%g1622516283%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2051020511%_))))
                      (let ((_%__kont2051320514%_
                             (lambda (_%g1622716792%_)
                               (let* ((_%g1680516813%_
                                       (lambda (_%g1680616809%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1680616809%_)))
                                      (_%g1680416832%_
                                       (lambda (_%g1680616817%_)
                                         (cons (gx#datum->syntax '#f 'list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quasiquote)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%g1680616817%_
                                                           '()))))))
                                 (_%g1680416832%_
                                  (_%generate16152%_
                                   _%g1622716792%_
                                   (fx1+ _%d16216%_))))))
                            (_%__kont2051520516%_
                             (lambda (_%g1623416721%_)
                               (if (fxzero? _%d16216%_)
                                   _%g1623416721%_
                                   (let* ((_%g1673416742%_
                                           (lambda (_%g1673516738%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1673516738%_)))
                                          (_%g1673316761%_
                                           (lambda (_%g1673516746%_)
                                             (cons (gx#datum->syntax '#f 'list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'unquote)
                             '()))
                 (cons _%g1673516746%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%g1673316761%_
                                      (_%generate16152%_
                                       _%g1623416721%_
                                       (fx1- _%d16216%_)))))))
                            (_%__kont2051720518%_
                             (lambda (_%g1624116650%_)
                               (if (fxzero? _%d16216%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1624116650%_
                                                           '()))))
                                   (let* ((_%g1666316671%_
                                           (lambda (_%g1666416667%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1666416667%_)))
                                          (_%g1666216690%_
                                           (lambda (_%g1666416675%_)
                                             (cons (gx#datum->syntax '#f 'list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'unquote-splicing)
                             '()))
                 (cons _%g1666416675%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%g1666216690%_
                                      (_%generate16152%_
                                       _%g1624116650%_
                                       (fx1- _%d16216%_)))))))
                            (_%__kont2051920520%_
                             (lambda (_%g1624816575%_ _%g1624916577%_)
                               (let* ((_%g1659216600%_
                                       (lambda (_%g1659316596%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1659316596%_)))
                                      (_%g1659116619%_
                                       (lambda (_%g1659316604%_)
                                         (cons (gx#datum->syntax '#f 'foldr)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'cons)
                                                     (cons _%g1659316604%_
                                                           (cons _%g1624916577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g1659116619%_
                                  (_%generate16152%_
                                   _%g1624816575%_
                                   _%d16216%_)))))
                            (_%__kont2052120522%_
                             (lambda (_%g1625916461%_ _%g1626016463%_)
                               (let* ((_%g1647416489%_
                                       (lambda (_%g1647516485%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1647516485%_)))
                                      (_%g1647316534%_
                                       (lambda (_%g1647516493%_)
                                         (if (gx#stx-pair? _%g1647516493%_)
                                             (let ((_%e1647816496%_
                                                    (gx#syntax-e
                                                     _%g1647516493%_)))
                                               (let ((_%hd1647916500%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1647816496%_)))
                                                     (_%tl1648016503%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1647816496%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1648016503%_)
                                                     (let ((_%e1648116506%_
                                                            (gx#syntax-e
                                                             _%tl1648016503%_)))
                                                       (let ((_%hd1648216510%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1648116506%_)))
                     (_%tl1648316513%_
                      (let () (declare (not safe)) (##cdr _%e1648116506%_))))
                 (if (gx#stx-null? _%tl1648316513%_)
                     (cons (gx#datum->syntax '#f 'cons)
                           (cons _%hd1647916500%_ (cons _%hd1648216510%_ '())))
                     (_%g1647416489%_ _%g1647516493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1647416489%_
                                                      _%g1647516493%_))))
                                             (_%g1647416489%_
                                              _%g1647516493%_)))))
                                 (_%g1647316534%_
                                  (list (_%generate16152%_
                                         _%g1626016463%_
                                         _%d16216%_)
                                        (_%generate16152%_
                                         _%g1625916461%_
                                         _%d16216%_))))))
                            (_%__kont2052320524%_
                             (lambda (_%g1626416391%_)
                               (let* ((_%g1640516413%_
                                       (lambda (_%g1640616409%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1640616409%_)))
                                      (_%g1640416432%_
                                       (lambda (_%g1640616417%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'list->vector)
                                               (cons _%g1640616417%_ '())))))
                                 (_%g1640416432%_
                                  (_%generate16152%_
                                   (foldr (lambda (_%g1643516438%_
                                                   _%g1643616441%_)
                                            (cons _%g1643516438%_
                                                  _%g1643616441%_))
                                          '()
                                          _%g1626416391%_)
                                   _%d16216%_)))))
                            (_%__kont2052720528%_
                             (lambda (_%g1627516311%_)
                               (let* ((_%g1632116329%_
                                       (lambda (_%g1632216325%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1632216325%_)))
                                      (_%g1632016348%_
                                       (lambda (_%g1632216333%_)
                                         (cons (gx#datum->syntax '#f 'box)
                                               (cons _%g1632216333%_ '())))))
                                 (_%g1632016348%_
                                  (_%generate16152%_
                                   _%g1627516311%_
                                   _%d16216%_)))))
                            (_%__kont2052920530%_
                             (lambda (_%g1627716290%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1627716290%_ '())))))
                        (let* ((_%g1622316352%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2051020511%_)
                                      (let ((_%e1627616307%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2051020511%_))))
                                        (_%__kont2052720528%_ _%e1627616307%_))
                                      (_%__kont2052920530%_
                                       _%__stx2051020511%_))))
                               (_%__match2062920630%_
                                (lambda (_%e1626516359%_
                                         _%__splice2052520526%_
                                         _%target1626616363%_
                                         _%tl1626816366%_)
                                  (letrec ((_%loop1626916369%_
                                            (lambda (_%hd1626716373%_
                                                     _%e1627316376%_)
                                              (if (gx#stx-pair?
                                                   _%hd1626716373%_)
                                                  (let ((_%e1627016378%_
                                                         (gx#syntax-e
                                                          _%hd1626716373%_)))
                                                    (let ((_%lp-tl1627216385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1627016378%_)))
                                                          (_%lp-hd1627116382%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1627016378%_))))
                                                      (_%loop1626916369%_
                                                       _%lp-tl1627216385%_
                                                       (cons _%lp-hd1627116382%_
                                                             _%e1627316376%_))))
                                                  (let ((_%e1627416388%_
                                                         (reverse _%e1627316376%_)))
                                                    (_%__kont2052320524%_
                                                     _%e1627416388%_))))))
                                    (_%loop1626916369%_
                                     _%target1626616363%_
                                     '()))))
                               (_%g1622216444%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2051020511%_)
                                      (let ((_%e1626516359%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2051020511%_))))
                                        (if (gx#stx-pair/null? _%e1626516359%_)
                                            (let ((_%__splice2052520526%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1626516359%_
                                                    '0)))
                                              (let ((_%tl1626816366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2052520526%_
                                                        '1)))
                                                    (_%target1626616363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2052520526%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1626816366%_)
                                                    (_%__match2062920630%_
                                                     _%e1626516359%_
                                                     _%__splice2052520526%_
                                                     _%target1626616363%_
                                                     _%tl1626816366%_)
                                                    (_%__kont2052920530%_
                                                     _%__stx2051020511%_))))
                                            (_%__kont2052920530%_
                                             _%__stx2051020511%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1622316352%_))))))
                          (if (gx#stx-pair? _%__stx2051020511%_)
                              (let ((_%e1622816772%_
                                     (gx#syntax-e _%__stx2051020511%_)))
                                (let ((_%tl1623016779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1622816772%_)))
                                      (_%hd1622916776%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1622816772%_))))
                                  (if (gx#identifier? _%hd1622916776%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21039_|
                                           _%hd1622916776%_)
                                          (if (gx#stx-pair? _%tl1623016779%_)
                                              (let ((_%e1623116782%_
                                                     (gx#syntax-e
                                                      _%tl1623016779%_)))
                                                (let ((_%tl1623316789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1623116782%_)))
                                                      (_%hd1623216786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1623116782%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1623316789%_)
                                                      (_%__kont2051320514%_
                                                       _%hd1623216786%_)
                                                      (_%__kont2052120522%_
                                                       _%tl1623016779%_
                                                       _%hd1622916776%_))))
                                              (_%__kont2052120522%_
                                               _%tl1623016779%_
                                               _%hd1622916776%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21040_|
                                               _%hd1622916776%_)
                                              (if (gx#stx-pair?
                                                   _%tl1623016779%_)
                                                  (let ((_%e1623816711%_
                                                         (gx#syntax-e
                                                          _%tl1623016779%_)))
                                                    (let ((_%tl1624016718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1623816711%_)))
                                                          (_%hd1623916715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1623816711%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1624016718%_)
                                                          (_%__kont2051520516%_
                                                           _%hd1623916715%_)
                                                          (_%__kont2052120522%_
                                                           _%tl1623016779%_
                                                           _%hd1622916776%_))))
                                                  (_%__kont2052120522%_
                                                   _%tl1623016779%_
                                                   _%hd1622916776%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21041_|
                                                   _%hd1622916776%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1623016779%_)
                                                      (let ((_%e1624516640%_
                                                             (gx#syntax-e
                                                              _%tl1623016779%_)))
                                                        (let ((_%tl1624716647%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1624516640%_)))
                      (_%hd1624616644%_
                       (let () (declare (not safe)) (##car _%e1624516640%_))))
                  (if (gx#stx-null? _%tl1624716647%_)
                      (_%__kont2051720518%_ _%hd1624616644%_)
                      (_%__kont2052120522%_
                       _%tl1623016779%_
                       _%hd1622916776%_))))
              (_%__kont2052120522%_ _%tl1623016779%_ _%hd1622916776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2052120522%_
                                                   _%tl1623016779%_
                                                   _%hd1622916776%_))))
                                      (if (gx#stx-pair? _%hd1622916776%_)
                                          (let ((_%e1625316555%_
                                                 (gx#syntax-e
                                                  _%hd1622916776%_)))
                                            (let ((_%tl1625516562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1625316555%_)))
                                                  (_%hd1625416559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1625316555%_))))
                                              (if (gx#identifier?
                                                   _%hd1625416559%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21042_|
                                                       _%hd1625416559%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1625516562%_)
                                                          (let ((_%e1625616565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1625516562%_)))
                    (let ((_%tl1625816572%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1625616565%_)))
                          (_%hd1625716569%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1625616565%_))))
                      (if (gx#stx-null? _%tl1625816572%_)
                          (if (fxzero? _%d16216%_)
                              (let ((_%g1624816575%_ _%tl1623016779%_)
                                    (_%g1624916577%_ _%hd1625716569%_))
                                (_%__kont2051920520%_
                                 _%g1624816575%_
                                 _%g1624916577%_))
                              (_%__kont2052120522%_
                               _%tl1623016779%_
                               _%hd1622916776%_))
                          (_%__kont2052120522%_
                           _%tl1623016779%_
                           _%hd1622916776%_))))
                  (_%__kont2052120522%_ _%tl1623016779%_ _%hd1622916776%_))
              (_%__kont2052120522%_ _%tl1623016779%_ _%hd1622916776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2052120522%_
                                                   _%tl1623016779%_
                                                   _%hd1622916776%_))))
                                          (_%__kont2052120522%_
                                           _%tl1623016779%_
                                           _%hd1622916776%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1622216444%_)))))))))
          (let* ((_%g1615416168%_
                  (lambda (_%g1615516164%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1615516164%_)))
                 (_%g1615316210%_
                  (lambda (_%g1615516172%_)
                    (if (gx#stx-pair? _%g1615516172%_)
                        (let ((_%e1615716175%_ (gx#syntax-e _%g1615516172%_)))
                          (let ((_%hd1615816179%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1615716175%_)))
                                (_%tl1615916182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1615716175%_))))
                            (if (gx#stx-pair? _%tl1615916182%_)
                                (let ((_%e1616016185%_
                                       (gx#syntax-e _%tl1615916182%_)))
                                  (let ((_%hd1616116189%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1616016185%_)))
                                        (_%tl1616216192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1616016185%_))))
                                    (if (gx#stx-null? _%tl1616216192%_)
                                        (if (_%simple-quote?16150%_
                                             _%hd1616116189%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%hd1616116189%_ '()))
                                            (_%generate16152%_
                                             _%hd1616116189%_
                                             '0))
                                        (_%g1615416168%_ _%g1615516172%_))))
                                (_%g1615416168%_ _%g1615516172%_))))
                        (_%g1615416168%_ _%g1615516172%_)))))
            (_%g1615316210%_ _%stx16147%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17078%_)
        (let* ((_%__stx2063620637%_ _%$stx17078%_)
               (_%g1708417118%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2063620637%_))))
          (let ((_%__kont2063920640%_
                 (lambda (_%g1708617250%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1708617250%_ '()))))
                (_%__kont2064120642%_
                 (lambda (_%g1709317206%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1709317206%_ '()))))
                (_%__kont2064320644%_
                 (lambda (_%g1710617145%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1710617145%_ '())))
                               '())))))
            (let ((_%__match2065920660%_
                   (lambda (_%e1708717230%_
                            _%hd1708817234%_
                            _%tl1708917237%_
                            _%e1709017240%_
                            _%hd1709117244%_
                            _%tl1709217247%_)
                     (let ((_%g1708617250%_ _%hd1709117244%_))
                       (if (gx#stx-datum? _%g1708617250%_)
                           (_%__kont2063920640%_ _%g1708617250%_)
                           (if (gx#stx-pair? _%hd1709117244%_)
                               (let ((_%e1710017186%_
                                      (gx#syntax-e _%hd1709117244%_)))
                                 (let ((_%tl1710217193%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1710017186%_)))
                                       (_%hd1710117190%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1710017186%_))))
                                   (if (gx#identifier? _%hd1710117190%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21043_|
                                            _%hd1710117190%_)
                                           (if (gx#stx-pair? _%tl1710217193%_)
                                               (let ((_%e1710317196%_
                                                      (gx#syntax-e
                                                       _%tl1710217193%_)))
                                                 (let ((_%tl1710517203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1710317196%_)))
                                                       (_%hd1710417200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1710317196%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1710517203%_)
                                                       (_%__kont2064120642%_
                                                        _%hd1710417200%_)
                                                       (_%__kont2064320644%_
                                                        _%hd1709117244%_))))
                                               (_%__kont2064320644%_
                                                _%hd1709117244%_))
                                           (_%__kont2064320644%_
                                            _%hd1709117244%_))
                                       (_%__kont2064320644%_
                                        _%hd1709117244%_))))
                               (_%__kont2064320644%_ _%hd1709117244%_)))))))
              (if (gx#stx-pair? _%__stx2063620637%_)
                  (let ((_%e1708717230%_ (gx#syntax-e _%__stx2063620637%_)))
                    (let ((_%tl1708917237%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1708717230%_)))
                          (_%hd1708817234%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1708717230%_))))
                      (if (gx#stx-pair? _%tl1708917237%_)
                          (let ((_%e1709017240%_
                                 (gx#syntax-e _%tl1708917237%_)))
                            (let ((_%tl1709217247%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1709017240%_)))
                                  (_%hd1709117244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1709017240%_))))
                              (if (gx#stx-null? _%tl1709217247%_)
                                  (_%__match2065920660%_
                                   _%e1708717230%_
                                   _%hd1708817234%_
                                   _%tl1708917237%_
                                   _%e1709017240%_
                                   _%hd1709117244%_
                                   _%tl1709217247%_)
                                  (if (gx#stx-pair? _%hd1709117244%_)
                                      (let ((_%e1710017186%_
                                             (gx#syntax-e _%hd1709117244%_)))
                                        (let ((_%tl1710217193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1710017186%_)))
                                              (_%hd1710117190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1710017186%_))))
                                          (if (gx#identifier? _%hd1710117190%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21043_|
                                                   _%hd1710117190%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1710217193%_)
                                                      (let ((_%e1710317196%_
                                                             (gx#syntax-e
                                                              _%tl1710217193%_)))
                                                        (let ((_%tl1710517203%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1710317196%_)))
                      (_%hd1710417200%_
                       (let () (declare (not safe)) (##car _%e1710317196%_))))
                  (let () (declare (not safe)) (_%g1708417118%_))))
              (let () (declare (not safe)) (_%g1708417118%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1708417118%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1708417118%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1708417118%_))))))
                          (let () (declare (not safe)) (_%g1708417118%_)))))
                  (let () (declare (not safe)) (_%g1708417118%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17267%_)
        (let* ((_%__stx2070820709%_ _%$stx17267%_)
               (_%g1727317307%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2070820709%_))))
          (let ((_%__kont2071120712%_
                 (lambda (_%g1727517439%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1727517439%_ '()))))
                (_%__kont2071320714%_
                 (lambda (_%g1728217395%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1728217395%_ '()))))
                (_%__kont2071520716%_
                 (lambda (_%g1729517334%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1729517334%_ '())))
                               '())))))
            (let ((_%__match2073120732%_
                   (lambda (_%e1727617419%_
                            _%hd1727717423%_
                            _%tl1727817426%_
                            _%e1727917429%_
                            _%hd1728017433%_
                            _%tl1728117436%_)
                     (let ((_%g1727517439%_ _%hd1728017433%_))
                       (if (gx#stx-datum? _%g1727517439%_)
                           (_%__kont2071120712%_ _%g1727517439%_)
                           (if (gx#stx-pair? _%hd1728017433%_)
                               (let ((_%e1728917375%_
                                      (gx#syntax-e _%hd1728017433%_)))
                                 (let ((_%tl1729117382%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1728917375%_)))
                                       (_%hd1729017379%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1728917375%_))))
                                   (if (gx#identifier? _%hd1729017379%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21044_|
                                            _%hd1729017379%_)
                                           (if (gx#stx-pair? _%tl1729117382%_)
                                               (let ((_%e1729217385%_
                                                      (gx#syntax-e
                                                       _%tl1729117382%_)))
                                                 (let ((_%tl1729417392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1729217385%_)))
                                                       (_%hd1729317389%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1729217385%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1729417392%_)
                                                       (_%__kont2071320714%_
                                                        _%hd1729317389%_)
                                                       (_%__kont2071520716%_
                                                        _%hd1728017433%_))))
                                               (_%__kont2071520716%_
                                                _%hd1728017433%_))
                                           (_%__kont2071520716%_
                                            _%hd1728017433%_))
                                       (_%__kont2071520716%_
                                        _%hd1728017433%_))))
                               (_%__kont2071520716%_ _%hd1728017433%_)))))))
              (if (gx#stx-pair? _%__stx2070820709%_)
                  (let ((_%e1727617419%_ (gx#syntax-e _%__stx2070820709%_)))
                    (let ((_%tl1727817426%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1727617419%_)))
                          (_%hd1727717423%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1727617419%_))))
                      (if (gx#stx-pair? _%tl1727817426%_)
                          (let ((_%e1727917429%_
                                 (gx#syntax-e _%tl1727817426%_)))
                            (let ((_%tl1728117436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1727917429%_)))
                                  (_%hd1728017433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1727917429%_))))
                              (if (gx#stx-null? _%tl1728117436%_)
                                  (_%__match2073120732%_
                                   _%e1727617419%_
                                   _%hd1727717423%_
                                   _%tl1727817426%_
                                   _%e1727917429%_
                                   _%hd1728017433%_
                                   _%tl1728117436%_)
                                  (if (gx#stx-pair? _%hd1728017433%_)
                                      (let ((_%e1728917375%_
                                             (gx#syntax-e _%hd1728017433%_)))
                                        (let ((_%tl1729117382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1728917375%_)))
                                              (_%hd1729017379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1728917375%_))))
                                          (if (gx#identifier? _%hd1729017379%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21044_|
                                                   _%hd1729017379%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1729117382%_)
                                                      (let ((_%e1729217385%_
                                                             (gx#syntax-e
                                                              _%tl1729117382%_)))
                                                        (let ((_%tl1729417392%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1729217385%_)))
                      (_%hd1729317389%_
                       (let () (declare (not safe)) (##car _%e1729217385%_))))
                  (let () (declare (not safe)) (_%g1727317307%_))))
              (let () (declare (not safe)) (_%g1727317307%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1727317307%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1727317307%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1727317307%_))))))
                          (let () (declare (not safe)) (_%g1727317307%_)))))
                  (let () (declare (not safe)) (_%g1727317307%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17456%_)
        (letrec ((_%generate17459%_
                  (lambda (_%rest17578%_)
                    (let _%lp17581%_ ((_%rest17584%_ _%rest17578%_)
                                      (_%hd17586%_ '())
                                      (_%body17587%_ '()))
                      (let* ((_%__stx2080020801%_ _%rest17584%_)
                             (_%g1759017602%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2080020801%_))))
                        (let ((_%__kont2080320804%_
                               (lambda (_%g1759217630%_ _%g1759317632%_)
                                 (let* ((_%__stx2078020781%_ _%g1759317632%_)
                                        (_%g1764917656%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2078020781%_))))
                                   (let ((_%__kont2078320784%_
                                          (lambda ()
                                            (let ((_%arg17692%_ (gx#genident)))
                                              (_%lp17581%_
                                               _%g1759217630%_
                                               (cons _%arg17692%_ _%hd17586%_)
                                               (cons _%arg17692%_
                                                     _%body17587%_)))))
                                         (_%__kont2078520786%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1759217630%_)
                                                (let ((_%tail17678%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17678%_
                         _%hd17586%_)
                  (foldl cons (list _%tail17678%_) _%body17587%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17456%_
                                                 _%g1759317632%_))))
                                         (_%__kont2078720788%_
                                          (lambda ()
                                            (_%lp17581%_
                                             _%g1759217630%_
                                             _%hd17586%_
                                             (cons _%g1759317632%_
                                                   _%body17587%_)))))
                                     (if (gx#identifier? _%__stx2078020781%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21045_|
                                              _%__stx2078020781%_)
                                             (_%__kont2078320784%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21046_|
                                                  _%__stx2078020781%_)
                                                 (_%__kont2078520786%_)
                                                 (_%__kont2078720788%_)))
                                         (_%__kont2078720788%_))))))
                              (_%__kont2080520806%_
                               (lambda ()
                                 (values (reverse _%hd17586%_)
                                         (reverse _%body17587%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2080020801%_)
                              (let ((_%e1759417620%_
                                     (gx#syntax-e _%__stx2080020801%_)))
                                (let ((_%tl1759617627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1759417620%_)))
                                      (_%hd1759517624%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1759417620%_))))
                                  (_%__kont2080320804%_
                                   _%tl1759617627%_
                                   _%hd1759517624%_)))
                              (_%__kont2080520806%_))))))))
          (let* ((_%g1746217473%_
                  (lambda (_%g1746317469%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1746317469%_)))
                 (_%g1746117574%_
                  (lambda (_%g1746317477%_)
                    (if (gx#stx-pair? _%g1746317477%_)
                        (let ((_%e1746517480%_ (gx#syntax-e _%g1746317477%_)))
                          (let ((_%hd1746617484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1746517480%_)))
                                (_%tl1746717487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1746517480%_))))
                            (if (and (gx#stx-list? _%tl1746717487%_)
                                     (not (gx#stx-null? _%tl1746717487%_)))
                                (let ((_g21047_
                                       (_%generate17459%_ _%tl1746717487%_)))
                                  (begin
                                    (let ((_g21048_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21047_)
                                                 (##values-length _g21047_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21048_ 3)))
                                          (error "Context expects 3 values"
                                                 _g21048_)))
                                    (let ((_%hd17503%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21047_ 0)))
                                          (_%body17505%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21047_ 1)))
                                          (_%tail?17506%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21047_ 2))))
                                      (let* ((_%g1750817516%_
                                              (lambda (_%g1750917512%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g1750917512%_)))
                                             (_%g1750717570%_
                                              (lambda (_%g1750917520%_)
                                                (let* ((_%g1753617544%_
                                                        (lambda (_%g1753717540%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1753717540%_)))
                                                       (_%g1753517566%_
                                                        (lambda (_%g1753717548%_)
                                                          (if _%tail?17506%_
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda%)
                            (cons _%g1750917520%_
                                  (cons (cons (gx#datum->syntax '#f 'apply)
                                              _%g1753717548%_)
                                        '())))
                      (cons (gx#datum->syntax '#f 'lambda%)
                            (cons _%g1750917520%_
                                  (cons _%g1753717548%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1753517566%_
                                                   _%body17505%_)))))
                                        (_%g1750717570%_ _%hd17503%_)))))
                                (_%g1746217473%_ _%g1746317477%_))))
                        (_%g1746217473%_ _%g1746317477%_)))))
            (_%g1746117574%_ _%stx17456%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17704%_)
        (let ((_%g1770717714%_
               (lambda (_%g1770817710%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1770817710%_))))
          (_%g1770717714%_ _%$stx17704%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17718%_)
        (let ((_%g1772117728%_
               (lambda (_%g1772217724%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1772217724%_))))
          (_%g1772117728%_ _%$stx17718%_))))))

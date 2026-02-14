(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g20997_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20998_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g20999_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
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
  (define |gerbil/core/sugar~Sugar-2[1]#_g21029_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21036_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21037_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21038_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21039_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21040_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21041_|
    (##structure
     gx#syntax-quote::t
     'unquote
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
     'unquote-splicing
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
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21046_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21047_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5401%_)
        (letrec ((_%simple-lambda?5404%_
                  (lambda (_%hd8788%_)
                    (gx#stx-andmap gx#identifier? _%hd8788%_)))
                 (_%opt-lambda?5406%_
                  (lambda (_%hd8640%_)
                    (let _%lp8643%_ ((_%rest8646%_ _%hd8640%_)
                                     (_%opt?8648%_ '#f))
                      (let* ((_%__stx1902719028%_ _%rest8646%_)
                             (_%g86518663%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1902719028%_))))
                        (let ((_%__kont1903019031%_
                               (lambda (_%g86538695%_ _%g86548697%_)
                                 (let* ((_%__stx1900319004%_ _%g86548697%_)
                                        (_%g87138727%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1900319004%_))))
                                   (let ((_%__kont1900619007%_
                                          (lambda (_%g87158765%_)
                                            (_%lp8643%_ _%g86538695%_ '#t)))
                                         (_%__kont1900819009%_
                                          (lambda ()
                                            (if (gx#identifier? _%g86548697%_)
                                                (if (not _%opt?8648%_)
                                                    (_%lp8643%_
                                                     _%g86538695%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1902419025%_
                                            (lambda (_%e87168745%_
                                                     _%hd87178749%_
                                                     _%tl87188752%_
                                                     _%e87198755%_
                                                     _%hd87208759%_
                                                     _%tl87218762%_)
                                              (let ((_%g87158765%_
                                                     _%hd87178749%_))
                                                (if (gx#identifier?
                                                     _%g87158765%_)
                                                    (_%__kont1900619007%_
                                                     _%g87158765%_)
                                                    (_%__kont1900819009%_))))))
                                       (if (gx#stx-pair? _%__stx1900319004%_)
                                           (let ((_%e87168745%_
                                                  (gx#syntax-e
                                                   _%__stx1900319004%_)))
                                             (let ((_%tl87188752%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87168745%_)))
                                                   (_%hd87178749%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87168745%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87188752%_)
                                                   (let ((_%e87198755%_
                                                          (gx#syntax-e
                                                           _%tl87188752%_)))
                                                     (let ((_%tl87218762%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87198755%_)))
                                                           (_%hd87208759%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87198755%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87218762%_)
                                                           (_%__match1902419025%_
                                                            _%e87168745%_
                                                            _%hd87178749%_
                                                            _%tl87188752%_
                                                            _%e87198755%_
                                                            _%hd87208759%_
                                                            _%tl87218762%_)
                                                           (_%__kont1900819009%_))))
                                                   (_%__kont1900819009%_))))
                                           (_%__kont1900819009%_)))))))
                              (_%__kont1903219033%_
                               (lambda ()
                                 (if _%opt?8648%_
                                     (let ((_%$e8674%_
                                            (gx#stx-null? _%rest8646%_)))
                                       (if _%$e8674%_
                                           _%$e8674%_
                                           (gx#identifier? _%rest8646%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1902719028%_)
                              (let ((_%e86558685%_
                                     (gx#syntax-e _%__stx1902719028%_)))
                                (let ((_%tl86578692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86558685%_)))
                                      (_%hd86568689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86558685%_))))
                                  (_%__kont1903019031%_
                                   _%tl86578692%_
                                   _%hd86568689%_)))
                              (_%__kont1903219033%_)))))))
                 (_%opt-lambda-split5407%_
                  (lambda (_%hd8492%_)
                    (let _%lp8495%_ ((_%rest8498%_ _%hd8492%_)
                                     (_%pre8500%_ '())
                                     (_%opt8501%_ '()))
                      (let* ((_%__stx1906719068%_ _%rest8498%_)
                             (_%g85048516%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1906719068%_))))
                        (let ((_%__kont1907019071%_
                               (lambda (_%g85068544%_ _%g85078546%_)
                                 (let* ((_%__stx1904319044%_ _%g85078546%_)
                                        (_%g85628577%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1904319044%_))))
                                   (let ((_%__kont1904619047%_
                                          (lambda (_%g85648615%_ _%g85658617%_)
                                            (_%lp8495%_
                                             _%g85068544%_
                                             _%pre8500%_
                                             (cons (cons _%g85658617%_
                                                         _%g85648615%_)
                                                   _%opt8501%_))))
                                         (_%__kont1904819049%_
                                          (lambda ()
                                            (_%lp8495%_
                                             _%g85068544%_
                                             (cons _%g85078546%_ _%pre8500%_)
                                             _%opt8501%_))))
                                     (if (gx#stx-pair? _%__stx1904319044%_)
                                         (let ((_%e85668595%_
                                                (gx#syntax-e
                                                 _%__stx1904319044%_)))
                                           (let ((_%tl85688602%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85668595%_)))
                                                 (_%hd85678599%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85668595%_))))
                                             (if (gx#stx-pair? _%tl85688602%_)
                                                 (let ((_%e85698605%_
                                                        (gx#syntax-e
                                                         _%tl85688602%_)))
                                                   (let ((_%tl85718612%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85698605%_)))
                                                         (_%hd85708609%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85698605%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85718612%_)
                                                         (_%__kont1904619047%_
                                                          _%hd85708609%_
                                                          _%hd85678599%_)
                                                         (_%__kont1904819049%_))))
                                                 (_%__kont1904819049%_))))
                                         (_%__kont1904819049%_))))))
                              (_%__kont1907219073%_
                               (lambda ()
                                 (values (reverse _%pre8500%_)
                                         (reverse _%opt8501%_)
                                         _%rest8498%_))))
                          (if (gx#stx-pair? _%__stx1906719068%_)
                              (let ((_%e85088534%_
                                     (gx#syntax-e _%__stx1906719068%_)))
                                (let ((_%tl85108541%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85088534%_)))
                                      (_%hd85098538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85088534%_))))
                                  (_%__kont1907019071%_
                                   _%tl85108541%_
                                   _%hd85098538%_)))
                              (_%__kont1907219073%_)))))))
                 (_%kw-lambda?5408%_
                  (lambda (_%hd8160%_)
                    (let _%lp8163%_ ((_%rest8166%_ _%hd8160%_)
                                     (_%opt?8168%_ '#f)
                                     (_%key?8169%_ '#f))
                      (let* ((_%__stx1913119132%_ _%rest8166%_)
                             (_%g81748204%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1913119132%_))))
                        (let ((_%__kont1913419135%_
                               (lambda (_%g81768399%_
                                        _%g81778401%_
                                        _%g81788402%_)
                                 (let* ((_%__stx1910719108%_ _%g81778401%_)
                                        (_%g84178431%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1910719108%_))))
                                   (let ((_%__kont1911019111%_
                                          (lambda (_%g84198469%_)
                                            (if (gx#identifier? _%g84198469%_)
                                                (_%lp8163%_
                                                 _%g81768399%_
                                                 _%opt?8168%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1911219113%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81778401%_)
                                                (_%lp8163%_
                                                 _%g81768399%_
                                                 _%opt?8168%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1910719108%_)
                                         (let ((_%e84208449%_
                                                (gx#syntax-e
                                                 _%__stx1910719108%_)))
                                           (let ((_%tl84228456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84208449%_)))
                                                 (_%hd84218453%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84208449%_))))
                                             (if (gx#stx-pair? _%tl84228456%_)
                                                 (let ((_%e84238459%_
                                                        (gx#syntax-e
                                                         _%tl84228456%_)))
                                                   (let ((_%tl84258466%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84238459%_)))
                                                         (_%hd84248463%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84238459%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84258466%_)
                                                         (_%__kont1911019111%_
                                                          _%hd84218453%_)
                                                         (_%__kont1911219113%_))))
                                                 (_%__kont1911219113%_))))
                                         (_%__kont1911219113%_))))))
                              (_%__kont1913619137%_
                               (lambda (_%g81858356%_ _%g81868358%_)
                                 (if (gx#identifier? _%g81868358%_)
                                     (_%lp8163%_
                                      _%g81858356%_
                                      _%opt?8168%_
                                      '#t)
                                     '#f)))
                              (_%__kont1913819139%_
                               (lambda (_%g81948236%_ _%g81958238%_)
                                 (let* ((_%__stx1908319084%_ _%g81958238%_)
                                        (_%g82548268%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1908319084%_))))
                                   (let ((_%__kont1908619087%_
                                          (lambda (_%g82568306%_)
                                            (if (gx#identifier? _%g82568306%_)
                                                (_%lp8163%_
                                                 _%g81948236%_
                                                 '#t
                                                 _%key?8169%_)
                                                '#f)))
                                         (_%__kont1908819089%_
                                          (lambda ()
                                            (if (gx#identifier? _%g81958238%_)
                                                (if (not _%opt?8168%_)
                                                    (_%lp8163%_
                                                     _%g81948236%_
                                                     '#f
                                                     _%key?8169%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1908319084%_)
                                         (let ((_%e82578286%_
                                                (gx#syntax-e
                                                 _%__stx1908319084%_)))
                                           (let ((_%tl82598293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82578286%_)))
                                                 (_%hd82588290%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82578286%_))))
                                             (if (gx#stx-pair? _%tl82598293%_)
                                                 (let ((_%e82608296%_
                                                        (gx#syntax-e
                                                         _%tl82598293%_)))
                                                   (let ((_%tl82628303%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82608296%_)))
                                                         (_%hd82618300%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82608296%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82628303%_)
                                                         (_%__kont1908619087%_
                                                          _%hd82588290%_)
                                                         (_%__kont1908819089%_))))
                                                 (_%__kont1908819089%_))))
                                         (_%__kont1908819089%_))))))
                              (_%__kont1914019141%_
                               (lambda ()
                                 (if _%key?8169%_
                                     (let ((_%$e8215%_
                                            (gx#stx-null? _%rest8166%_)))
                                       (if _%$e8215%_
                                           _%$e8215%_
                                           (gx#identifier? _%rest8166%_)))
                                     '#f))))
                          (let ((_%__match1915419155%_
                                 (lambda (_%e81798379%_
                                          _%hd81808383%_
                                          _%tl81818386%_
                                          _%e81828389%_
                                          _%hd81838393%_
                                          _%tl81848396%_)
                                   (let ((_%g81768399%_ _%tl81848396%_)
                                         (_%g81778401%_ _%hd81838393%_)
                                         (_%g81788402%_ _%hd81808383%_))
                                     (if (gx#stx-keyword? _%g81788402%_)
                                         (_%__kont1913419135%_
                                          _%g81768399%_
                                          _%g81778401%_
                                          _%g81788402%_)
                                         (if (gx#stx-datum? _%hd81808383%_)
                                             (let ((_%e81908342%_
                                                    (gx#stx-e _%hd81808383%_)))
                                               (if (equal? _%e81908342%_
                                                           '#!key)
                                                   (_%__kont1913619137%_
                                                    _%tl81848396%_
                                                    _%hd81838393%_)
                                                   (_%__kont1913819139%_
                                                    _%tl81818386%_
                                                    _%hd81808383%_)))
                                             (_%__kont1913819139%_
                                              _%tl81818386%_
                                              _%hd81808383%_)))))))
                            (if (gx#stx-pair? _%__stx1913119132%_)
                                (let ((_%e81798379%_
                                       (gx#syntax-e _%__stx1913119132%_)))
                                  (let ((_%tl81818386%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e81798379%_)))
                                        (_%hd81808383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e81798379%_))))
                                    (if (gx#stx-pair? _%tl81818386%_)
                                        (let ((_%e81828389%_
                                               (gx#syntax-e _%tl81818386%_)))
                                          (let ((_%tl81848396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e81828389%_)))
                                                (_%hd81838393%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e81828389%_))))
                                            (_%__match1915419155%_
                                             _%e81798379%_
                                             _%hd81808383%_
                                             _%tl81818386%_
                                             _%e81828389%_
                                             _%hd81838393%_
                                             _%tl81848396%_)))
                                        (if (gx#stx-datum? _%hd81808383%_)
                                            (let ((_%e81908342%_
                                                   (gx#stx-e _%hd81808383%_)))
                                              (_%__kont1913819139%_
                                               _%tl81818386%_
                                               _%hd81808383%_))
                                            (_%__kont1913819139%_
                                             _%tl81818386%_
                                             _%hd81808383%_)))))
                                (_%__kont1914019141%_))))))))
                 (_%kw-lambda-split5409%_
                  (lambda (_%hd7893%_)
                    (let _%lp7896%_ ((_%rest7899%_ _%hd7893%_)
                                     (_%kwvar7901%_ '#f)
                                     (_%kwargs7902%_ '())
                                     (_%args7903%_ '()))
                      (let* ((_%__stx1920519206%_ _%rest7899%_)
                             (_%g79087938%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1920519206%_))))
                        (let ((_%__kont1920819209%_
                               (lambda (_%g79108057%_
                                        _%g79118059%_
                                        _%g79128060%_)
                                 (let ((_%key8074%_ (gx#stx-e _%g79128060%_)))
                                   (if (find (lambda (_%kwarg8077%_)
                                               (eq? _%key8074%_
                                                    (car _%kwarg8077%_)))
                                             _%kwargs7902%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5401%_
                                        _%hd7893%_
                                        _%key8074%_)
                                       (let* ((_%__stx1918119182%_
                                               _%g79118059%_)
                                              (_%g80818096%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1918119182%_))))
                                         (let ((_%__kont1918419185%_
                                                (lambda (_%g80838134%_
                                                         _%g80848136%_)
                                                  (_%lp7896%_
                                                   _%g79108057%_
                                                   _%kwvar7901%_
                                                   (cons (list _%key8074%_
                                                               _%g80848136%_
                                                               _%g80838134%_)
                                                         _%kwargs7902%_)
                                                   _%args7903%_)))
                                               (_%__kont1918619187%_
                                                (lambda ()
                                                  (_%lp7896%_
                                                   _%g79108057%_
                                                   _%kwvar7901%_
                                                   (cons (list _%key8074%_
                                                               _%g79118059%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%g79128060%_ '()))))
                 _%kwargs7902%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7903%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1918119182%_)
                                               (let ((_%e80858114%_
                                                      (gx#syntax-e
                                                       _%__stx1918119182%_)))
                                                 (let ((_%tl80878121%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e80858114%_)))
                                                       (_%hd80868118%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e80858114%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl80878121%_)
                                                       (let ((_%e80888124%_
                                                              (gx#syntax-e
                                                               _%tl80878121%_)))
                                                         (let ((_%tl80908131%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e80888124%_)))
                       (_%hd80898128%_
                        (let () (declare (not safe)) (##car _%e80888124%_))))
                   (if (gx#stx-null? _%tl80908131%_)
                       (_%__kont1918419185%_ _%hd80898128%_ _%hd80868118%_)
                       (_%__kont1918619187%_))))
               (_%__kont1918619187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1918619187%_))))))))
                              (_%__kont1921019211%_
                               (lambda (_%g79198014%_ _%g79208016%_)
                                 (if _%kwvar7901%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5401%_
                                      _%hd7893%_
                                      _%g79208016%_)
                                     (_%lp7896%_
                                      _%g79198014%_
                                      _%g79208016%_
                                      _%kwargs7902%_
                                      _%args7903%_))))
                              (_%__kont1921219213%_
                               (lambda (_%g79287966%_ _%g79297968%_)
                                 (_%lp7896%_
                                  _%g79287966%_
                                  _%kwvar7901%_
                                  _%kwargs7902%_
                                  (cons _%g79297968%_ _%args7903%_))))
                              (_%__kont1921419215%_
                               (lambda ()
                                 (values _%kwvar7901%_
                                         (reverse _%kwargs7902%_)
                                         (foldl cons
                                                _%rest7899%_
                                                _%args7903%_)))))
                          (let ((_%__match1922819229%_
                                 (lambda (_%e79138037%_
                                          _%hd79148041%_
                                          _%tl79158044%_
                                          _%e79168047%_
                                          _%hd79178051%_
                                          _%tl79188054%_)
                                   (let ((_%g79108057%_ _%tl79188054%_)
                                         (_%g79118059%_ _%hd79178051%_)
                                         (_%g79128060%_ _%hd79148041%_))
                                     (if (gx#stx-keyword? _%g79128060%_)
                                         (_%__kont1920819209%_
                                          _%g79108057%_
                                          _%g79118059%_
                                          _%g79128060%_)
                                         (if (gx#stx-datum? _%hd79148041%_)
                                             (let ((_%e79248000%_
                                                    (gx#stx-e _%hd79148041%_)))
                                               (if (equal? _%e79248000%_
                                                           '#!key)
                                                   (_%__kont1921019211%_
                                                    _%tl79188054%_
                                                    _%hd79178051%_)
                                                   (_%__kont1921219213%_
                                                    _%tl79158044%_
                                                    _%hd79148041%_)))
                                             (_%__kont1921219213%_
                                              _%tl79158044%_
                                              _%hd79148041%_)))))))
                            (if (gx#stx-pair? _%__stx1920519206%_)
                                (let ((_%e79138037%_
                                       (gx#syntax-e _%__stx1920519206%_)))
                                  (let ((_%tl79158044%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79138037%_)))
                                        (_%hd79148041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79138037%_))))
                                    (if (gx#stx-pair? _%tl79158044%_)
                                        (let ((_%e79168047%_
                                               (gx#syntax-e _%tl79158044%_)))
                                          (let ((_%tl79188054%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79168047%_)))
                                                (_%hd79178051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79168047%_))))
                                            (_%__match1922819229%_
                                             _%e79138037%_
                                             _%hd79148041%_
                                             _%tl79158044%_
                                             _%e79168047%_
                                             _%hd79178051%_
                                             _%tl79188054%_)))
                                        (if (gx#stx-datum? _%hd79148041%_)
                                            (let ((_%e79248000%_
                                                   (gx#stx-e _%hd79148041%_)))
                                              (_%__kont1921219213%_
                                               _%tl79158044%_
                                               _%hd79148041%_))
                                            (_%__kont1921219213%_
                                             _%tl79158044%_
                                             _%hd79148041%_)))))
                                (_%__kont1921419215%_))))))))
                 (_%check-duplicate-bindings5410%_
                  (lambda (_%hd7585%_)
                    (let _%lp7588%_ ((_%rest7591%_ _%hd7585%_)
                                     (_%ids7593%_ '()))
                      (let* ((_%__stx1927919280%_ _%rest7591%_)
                             (_%g75967608%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1927919280%_))))
                        (let ((_%__kont1928219283%_
                               (lambda (_%g75987636%_ _%g75997638%_)
                                 (if (gx#identifier? _%g75997638%_)
                                     (_%lp7588%_
                                      _%g75987636%_
                                      (cons _%g75997638%_ _%ids7593%_))
                                     (if (gx#stx-pair? _%g75997638%_)
                                         (let* ((_%g76577671%_
                                                 (lambda (_%g76587667%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76587667%_)))
                                                (_%g76567713%_
                                                 (lambda (_%g76587675%_)
                                                   (if (gx#stx-pair?
                                                        _%g76587675%_)
                                                       (let ((_%e76607678%_
                                                              (gx#syntax-e
                                                               _%g76587675%_)))
                                                         (let ((_%hd76617682%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76607678%_)))
                       (_%tl76627685%_
                        (let () (declare (not safe)) (##cdr _%e76607678%_))))
                   (if (gx#stx-pair? _%tl76627685%_)
                       (let ((_%e76637688%_ (gx#syntax-e _%tl76627685%_)))
                         (let ((_%hd76647692%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76637688%_)))
                               (_%tl76657695%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76637688%_))))
                           (if (gx#stx-null? _%tl76657695%_)
                               ((lambda (_%g76597698%_)
                                  (_%lp7588%_
                                   _%g75987636%_
                                   (cons _%g76597698%_ _%ids7593%_)))
                                _%hd76617682%_)
                               (_%g76577671%_ _%g76587675%_))))
                       (_%g76577671%_ _%g76587675%_))))
               (_%g76577671%_ _%g76587675%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76567713%_ _%g75997638%_))
                                         (if (gx#stx-keyword? _%g75997638%_)
                                             (let* ((_%g77197731%_
                                                     (lambda (_%g77207727%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77207727%_)))
                                                    (_%g77187834%_
                                                     (lambda (_%g77207735%_)
                                                       (if (gx#stx-pair?
                                                            _%g77207735%_)
                                                           (let ((_%e77237738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77207735%_)))
                     (let ((_%hd77247742%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77237738%_)))
                           (_%tl77257745%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77237738%_))))
                       ((lambda (_%g77217748%_ _%g77227750%_)
                          (let* ((_%__stx1925519256%_ _%g77227750%_)
                                 (_%g77637777%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1925519256%_))))
                            (let ((_%__kont1925819259%_
                                   (lambda (_%g77657815%_)
                                     (_%lp7588%_
                                      _%g77217748%_
                                      (cons _%g77657815%_ _%ids7593%_))))
                                  (_%__kont1926019261%_
                                   (lambda ()
                                     (_%lp7588%_
                                      _%g77217748%_
                                      (cons _%g77227750%_ _%ids7593%_)))))
                              (if (gx#stx-pair? _%__stx1925519256%_)
                                  (let ((_%e77667795%_
                                         (gx#syntax-e _%__stx1925519256%_)))
                                    (let ((_%tl77687802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77667795%_)))
                                          (_%hd77677799%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77667795%_))))
                                      (if (gx#stx-pair? _%tl77687802%_)
                                          (let ((_%e77697805%_
                                                 (gx#syntax-e _%tl77687802%_)))
                                            (let ((_%tl77717812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77697805%_)))
                                                  (_%hd77707809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77697805%_))))
                                              (if (gx#stx-null? _%tl77717812%_)
                                                  (_%__kont1925819259%_
                                                   _%hd77677799%_)
                                                  (_%__kont1926019261%_))))
                                          (_%__kont1926019261%_))))
                                  (_%__kont1926019261%_)))))
                        _%tl77257745%_
                        _%hd77247742%_)))
                   (_%g77197731%_ _%g77207735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77187834%_ _%g75987636%_))
                                             (if (eq? (gx#stx-e _%g75997638%_)
                                                      '#!key)
                                                 (let* ((_%g78407852%_
                                                         (lambda (_%g78417848%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78417848%_)))
                                                        (_%g78397883%_
                                                         (lambda (_%g78417856%_)
                                                           (if (gx#stx-pair?
                                                                _%g78417856%_)
                                                               (let ((_%e78447859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78417856%_)))
                         (let ((_%hd78457863%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78447859%_)))
                               (_%tl78467866%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78447859%_))))
                           ((lambda (_%g78427869%_ _%g78437871%_)
                              (_%lp7588%_
                               _%g78427869%_
                               (cons _%g78437871%_ _%ids7593%_)))
                            _%tl78467866%_
                            _%hd78457863%_)))
                       (_%g78407852%_ _%g78417856%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78397883%_
                                                    _%g75987636%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5401%_
                                                        _%rest7591%_)))))))
                              (_%__kont1928419285%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7591%_)
                                      _%ids7593%_
                                      (cons _%rest7591%_ _%ids7593%_))
                                  _%stx5401%_))))
                          (if (gx#stx-pair? _%__stx1927919280%_)
                              (let ((_%e76007626%_
                                     (gx#syntax-e _%__stx1927919280%_)))
                                (let ((_%tl76027633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e76007626%_)))
                                      (_%hd76017630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e76007626%_))))
                                  (_%__kont1928219283%_
                                   _%tl76027633%_
                                   _%hd76017630%_)))
                              (_%__kont1928419285%_)))))))
                 (_%generate-opt-primary5411%_
                  (lambda (_%pre7381%_ _%opt7383%_ _%tail7384%_ _%body7385%_)
                    (let* ((_%g73877428%_
                            (lambda (_%g73887424%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g73887424%_)))
                           (_%g73867581%_
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
                                          (let ((_g20962_
                                                 (gx#syntax-split-splice
                                                  _%hd73947439%_
                                                  '0)))
                                            (begin
                                              (let ((_g20963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20962_)
                                                           (##values-length
                                                            _g20962_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20963_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20963_)))
                                              (let ((_%target73967445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20962_
                                                        0)))
                                                    (_%tl73987448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20962_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl73987448%_)
                                                    (letrec ((_%loop73997451%_
                                                              (lambda (_%hd73977455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre74037458%_)
                        (if (gx#stx-pair? _%hd73977455%_)
                            (let ((_%e74007460%_ (gx#syntax-e _%hd73977455%_)))
                              (let ((_%lp-hd74017464%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74007460%_)))
                                    (_%lp-tl74027467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74007460%_))))
                                (_%loop73997451%_
                                 _%lp-tl74027467%_
                                 (cons _%lp-hd74017464%_ _%pre74037458%_))))
                            (let ((_%pre74047470%_ (reverse _%pre74037458%_)))
                              (if (gx#stx-pair? _%tl73957442%_)
                                  (let ((_%e74057473%_
                                         (gx#syntax-e _%tl73957442%_)))
                                    (let ((_%hd74067477%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74057473%_)))
                                          (_%tl74077480%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74057473%_))))
                                      (if (gx#stx-pair/null? _%hd74067477%_)
                                          (let ((_g20964_
                                                 (gx#syntax-split-splice
                                                  _%hd74067477%_
                                                  '0)))
                                            (begin
                                              (let ((_g20965_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20964_)
                                                           (##values-length
                                                            _g20964_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20965_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20965_)))
                                              (let ((_%target74087483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20964_
                                                        0)))
                                                    (_%tl74107486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20964_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74107486%_)
                                                    (letrec ((_%loop74117489%_
                                                              (lambda (_%hd74097493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74157496%_)
                        (if (gx#stx-pair? _%hd74097493%_)
                            (let ((_%e74127498%_ (gx#syntax-e _%hd74097493%_)))
                              (let ((_%lp-hd74137502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74127498%_)))
                                    (_%lp-tl74147505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74127498%_))))
                                (_%loop74117489%_
                                 _%lp-tl74147505%_
                                 (cons _%lp-hd74137502%_ _%opt74157496%_))))
                            (let ((_%opt74167508%_ (reverse _%opt74157496%_)))
                              (if (gx#stx-pair? _%tl74077480%_)
                                  (let ((_%e74177511%_
                                         (gx#syntax-e _%tl74077480%_)))
                                    (let ((_%hd74187515%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74177511%_)))
                                          (_%tl74197518%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74177511%_))))
                                      (if (gx#stx-pair? _%tl74197518%_)
                                          (let ((_%e74207521%_
                                                 (gx#syntax-e _%tl74197518%_)))
                                            (let ((_%hd74217525%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74207521%_)))
                                                  (_%tl74227528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74207521%_))))
                                              (if (gx#stx-null? _%tl74227528%_)
                                                  ((lambda (_%g73897531%_
                                                            _%g73907533%_
                                                            _%g73917534%_
                                                            _%g73927535%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75647569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75657572%_)
                                  (cons _%g75647569%_ _%g75657572%_))
                                (foldr (lambda (_%g75667575%_ _%g75677578%_)
                                         (cons _%g75667575%_ _%g75677578%_))
                                       _%g73907533%_
                                       _%g73917534%_)
                                _%g73927535%_)
                         _%g73897531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74217525%_
                                                   _%hd74187515%_
                                                   _%opt74167508%_
                                                   _%pre74047470%_)
                                                  (_%g73877428%_
                                                   _%g73887432%_))))
                                          (_%g73877428%_ _%g73887432%_))))
                                  (_%g73877428%_ _%g73887432%_)))))))
              (_%loop74117489%_ _%target74087483%_ '()))
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
                      (_%g73867581%_
                       (list _%pre7381%_
                             (map car _%opt7383%_)
                             _%tail7384%_
                             _%body7385%_)))))
                 (_%generate-opt-dispatch5412%_
                  (lambda (_%primary7375%_
                           _%pre7377%_
                           _%opt7378%_
                           _%tail7379%_)
                    (cons (list _%pre7377%_
                                (_%generate-opt-clause5414%_
                                 _%primary7375%_
                                 _%pre7377%_
                                 _%opt7378%_))
                          (_%generate-opt-dispatch*5413%_
                           _%primary7375%_
                           _%pre7377%_
                           _%opt7378%_
                           _%tail7379%_))))
                 (_%generate-opt-dispatch*5413%_
                  (lambda (_%primary6932%_
                           _%pre6934%_
                           _%opt6935%_
                           _%tail6936%_)
                    (let _%recur6938%_ ((_%opt-rest6941%_ _%opt6935%_)
                                        (_%right6943%_ '()))
                      (if (pair? _%opt-rest6941%_)
                          (let* ((_%hd6947%_ (caar _%opt-rest6941%_))
                                 (_%rest6950%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6941%_)))
                                 (_%right*6953%_
                                  (cons _%hd6947%_ _%right6943%_))
                                 (_%g69566973%_
                                  (lambda (_%g69576969%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69576969%_)))
                                 (_%g69557153%_
                                  (lambda (_%g69576977%_)
                                    (if (gx#stx-pair/null? _%g69576977%_)
                                        (let ((_g20966_
                                               (gx#syntax-split-splice
                                                _%g69576977%_
                                                '0)))
                                          (begin
                                            (let ((_g20967_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g20966_)
                                                         (##values-length
                                                          _g20966_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g20967_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g20967_)))
                                            (let ((_%target69596980%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20966_
                                                      0)))
                                                  (_%tl69616983%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20966_
                                                      1))))
                                              (if (gx#stx-null? _%tl69616983%_)
                                                  (letrec ((_%loop69626986%_
                                                            (lambda (_%hd69606990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69666993%_)
                      (if (gx#stx-pair? _%hd69606990%_)
                          (let ((_%e69636995%_ (gx#syntax-e _%hd69606990%_)))
                            (let ((_%lp-hd69646999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69636995%_)))
                                  (_%lp-tl69657002%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69636995%_))))
                              (_%loop69626986%_
                               _%lp-tl69657002%_
                               (cons _%lp-hd69646999%_ _%pre-bind69666993%_))))
                          (let ((_%pre-bind69677005%_
                                 (reverse _%pre-bind69666993%_)))
                            ((lambda (_%g69587008%_)
                               (let* ((_%g70307047%_
                                       (lambda (_%g70317043%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70317043%_)))
                                      (_%g70297149%_
                                       (lambda (_%g70317051%_)
                                         (if (gx#stx-pair/null? _%g70317051%_)
                                             (let ((_g20968_
                                                    (gx#syntax-split-splice
                                                     _%g70317051%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20969_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20968_)
                                                              (##values-length
                                                               _g20968_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70337054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20968_
                                                           0)))
                                                       (_%tl70357057%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20968_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70357057%_)
                                                       (letrec ((_%loop70367060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70347064%_ _%opt-bind70407067%_)
                           (if (gx#stx-pair? _%hd70347064%_)
                               (let ((_%e70377069%_
                                      (gx#syntax-e _%hd70347064%_)))
                                 (let ((_%lp-hd70387073%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70377069%_)))
                                       (_%lp-tl70397076%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70377069%_))))
                                   (_%loop70367060%_
                                    _%lp-tl70397076%_
                                    (cons _%lp-hd70387073%_
                                          _%opt-bind70407067%_))))
                               (let ((_%opt-bind70417079%_
                                      (reverse _%opt-bind70407067%_)))
                                 ((lambda (_%g70327082%_)
                                    (let* ((_%g70997107%_
                                            (lambda (_%g71007103%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g71007103%_)))
                                           (_%g70987145%_
                                            (lambda (_%g71007111%_)
                                              ((lambda (_%g71017114%_)
                                                 (cons (list (foldr (lambda (_%g71287133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71297136%_)
                              (cons _%g71287133%_ _%g71297136%_))
                            (foldr (lambda (_%g71307139%_ _%g71317142%_)
                                     (cons _%g71307139%_ _%g71317142%_))
                                   (cons _%g71017114%_ '())
                                   _%g70327082%_)
                            _%g69587008%_)
                     (_%generate-opt-clause5414%_
                      _%primary6932%_
                      (foldr cons (reverse _%right*6953%_) _%pre6934%_)
                      _%rest6950%_))
               (_%recur6938%_ _%rest6950%_ _%right*6953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g71007111%_))))
                                      (_%g70987145%_ _%hd6947%_)))
                                  _%opt-bind70417079%_))))))
                 (_%loop70367060%_ _%target70337054%_ '()))
               (_%g70307047%_ _%g70317051%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70307047%_ _%g70317051%_)))))
                                 (_%g70297149%_ (reverse _%right6943%_))))
                             _%pre-bind69677005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69626986%_
                                                     _%target69596980%_
                                                     '()))
                                                  (_%g69566973%_
                                                   _%g69576977%_)))))
                                        (_%g69566973%_ _%g69576977%_)))))
                            (_%g69557153%_ _%pre6934%_))
                          (if (gx#stx-null? _%tail6936%_)
                              '()
                              (let* ((_%g71617202%_
                                      (lambda (_%g71627198%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71627198%_)))
                                     (_%g71607371%_
                                      (lambda (_%g71627206%_)
                                        (if (gx#stx-pair? _%g71627206%_)
                                            (let ((_%e71677209%_
                                                   (gx#syntax-e
                                                    _%g71627206%_)))
                                              (let ((_%hd71687213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71677209%_)))
                                                    (_%tl71697216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71677209%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71687213%_)
                                                    (let ((_g20970_
                                                           (gx#syntax-split-splice
                                                            _%hd71687213%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20971_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20970_)
                             (##values-length _g20970_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20971_ 2)))
                      (error "Context expects 2 values" _g20971_)))
                (let ((_%target71707219%_
                       (let () (declare (not safe)) (##values-ref _g20970_ 0)))
                      (_%tl71727222%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20970_ 1))))
                  (if (gx#stx-null? _%tl71727222%_)
                      (letrec ((_%loop71737225%_
                                (lambda (_%hd71717229%_ _%pre71777232%_)
                                  (if (gx#stx-pair? _%hd71717229%_)
                                      (let ((_%e71747234%_
                                             (gx#syntax-e _%hd71717229%_)))
                                        (let ((_%lp-hd71757238%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71747234%_)))
                                              (_%lp-tl71767241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71747234%_))))
                                          (_%loop71737225%_
                                           _%lp-tl71767241%_
                                           (cons _%lp-hd71757238%_
                                                 _%pre71777232%_))))
                                      (let ((_%pre71787244%_
                                             (reverse _%pre71777232%_)))
                                        (if (gx#stx-pair? _%tl71697216%_)
                                            (let ((_%e71797247%_
                                                   (gx#syntax-e
                                                    _%tl71697216%_)))
                                              (let ((_%hd71807251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71797247%_)))
                                                    (_%tl71817254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71797247%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71807251%_)
                                                    (let ((_g20972_
                                                           (gx#syntax-split-splice
                                                            _%hd71807251%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20973_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20972_)
                             (##values-length _g20972_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20973_ 2)))
                      (error "Context expects 2 values" _g20973_)))
                (let ((_%target71827257%_
                       (let () (declare (not safe)) (##values-ref _g20972_ 0)))
                      (_%tl71847260%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20972_ 1))))
                  (if (gx#stx-null? _%tl71847260%_)
                      (letrec ((_%loop71857263%_
                                (lambda (_%hd71837267%_ _%opt71897270%_)
                                  (if (gx#stx-pair? _%hd71837267%_)
                                      (let ((_%e71867272%_
                                             (gx#syntax-e _%hd71837267%_)))
                                        (let ((_%lp-hd71877276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e71867272%_)))
                                              (_%lp-tl71887279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e71867272%_))))
                                          (_%loop71857263%_
                                           _%lp-tl71887279%_
                                           (cons _%lp-hd71877276%_
                                                 _%opt71897270%_))))
                                      (let ((_%opt71907282%_
                                             (reverse _%opt71897270%_)))
                                        (if (gx#stx-pair? _%tl71817254%_)
                                            (let ((_%e71917285%_
                                                   (gx#syntax-e
                                                    _%tl71817254%_)))
                                              (let ((_%hd71927289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71917285%_)))
                                                    (_%tl71937292%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71917285%_))))
                                                (if (gx#stx-pair?
                                                     _%tl71937292%_)
                                                    (let ((_%e71947295%_
                                                           (gx#syntax-e
                                                            _%tl71937292%_)))
                                                      (let ((_%hd71957299%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e71947295%_)))
                    (_%tl71967302%_
                     (let () (declare (not safe)) (##cdr _%e71947295%_))))
                (if (gx#stx-null? _%tl71967302%_)
                    ((lambda (_%g71637305%_
                              _%g71647307%_
                              _%g71657308%_
                              _%g71667309%_)
                       (list (list (foldr (lambda (_%g73387343%_ _%g73397346%_)
                                            (cons _%g73387343%_ _%g73397346%_))
                                          (foldr (lambda (_%g73407349%_
                                                          _%g73417352%_)
                                                   (cons _%g73407349%_
                                                         _%g73417352%_))
                                                 _%g71647307%_
                                                 _%g71657308%_)
                                          _%g71667309%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%g71637305%_
                                                (foldr (lambda (_%g73547359%_
                                                                _%g73557362%_)
                                                         (cons _%g73547359%_
                                                               _%g73557362%_))
                                                       (foldr (lambda (_%g73567365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73577368%_)
                        (cons _%g73567365%_ _%g73577368%_))
                      (cons _%g71647307%_ '())
                      _%g71657308%_)
               _%g71667309%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5401%_)))))
                     _%hd71957299%_
                     _%hd71927289%_
                     _%opt71907282%_
                     _%pre71787244%_)
                    (_%g71617202%_ _%g71627206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71617202%_
                                                     _%g71627206%_))))
                                            (_%g71617202%_ _%g71627206%_)))))))
                        (_%loop71857263%_ _%target71827257%_ '()))
                      (_%g71617202%_ _%g71627206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71617202%_
                                                     _%g71627206%_))))
                                            (_%g71617202%_ _%g71627206%_)))))))
                        (_%loop71737225%_ _%target71707219%_ '()))
                      (_%g71617202%_ _%g71627206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71617202%_
                                                     _%g71627206%_))))
                                            (_%g71617202%_ _%g71627206%_)))))
                                (_%g71607371%_
                                 (list _%pre6934%_
                                       (reverse _%right6943%_)
                                       _%tail6936%_
                                       _%primary6932%_))))))))
                 (_%generate-opt-clause5414%_
                  (lambda (_%primary6634%_ _%pre6636%_ _%opt6637%_)
                    (let _%recur6639%_ ((_%opt-rest6642%_ _%opt6637%_)
                                        (_%right6644%_ '()))
                      (if (pair? _%opt-rest6642%_)
                          (let* ((_%hd6646%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6642%_)))
                                 (_%rest6649%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6642%_)))
                                 (_%g66526660%_
                                  (lambda (_%g66536656%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66536656%_)))
                                 (_%g66516749%_
                                  (lambda (_%g66536664%_)
                                    ((lambda (_%g66546667%_)
                                       (let* ((_%g66836691%_
                                               (lambda (_%g66846687%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g66846687%_)))
                                              (_%g66826745%_
                                               (lambda (_%g66846695%_)
                                                 ((lambda (_%g66856698%_)
                                                    (let* ((_%g67116719%_
                                                            (lambda (_%g67126715%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67126715%_)))
                                                           (_%g67106741%_
                                                            (lambda (_%g67126723%_)
                                                              ((lambda (_%g67136726%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%g66546667%_ '())
                                                 (cons _%g66856698%_ '()))
                                           '())
                                     (cons _%g67136726%_ '()))))
                       _%g67126723%_))))
              (_%g67106741%_
               (_%recur6639%_
                _%rest6649%_
                (cons _%g66546667%_ _%right6644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g66846695%_))))
                                         (_%g66826745%_ (cdr _%hd6646%_))))
                                     _%g66536664%_))))
                            (_%g66516749%_ (car _%hd6646%_)))
                          (let* ((_%g67536790%_
                                  (lambda (_%g67546786%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67546786%_)))
                                 (_%g67526928%_
                                  (lambda (_%g67546794%_)
                                    (if (gx#stx-pair? _%g67546794%_)
                                        (let ((_%e67586797%_
                                               (gx#syntax-e _%g67546794%_)))
                                          (let ((_%hd67596801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67586797%_)))
                                                (_%tl67606804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67586797%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67596801%_)
                                                (let ((_g20974_
                                                       (gx#syntax-split-splice
                                                        _%hd67596801%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20975_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20974_)
                         (##values-length _g20974_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20975_ 2)))
                  (error "Context expects 2 values" _g20975_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67616807%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20974_
                                                              0)))
                                                          (_%tl67636810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20974_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67636810%_)
                                                          (letrec ((_%loop67646813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67626817%_ _%pre67686820%_)
                              (if (gx#stx-pair? _%hd67626817%_)
                                  (let ((_%e67656822%_
                                         (gx#syntax-e _%hd67626817%_)))
                                    (let ((_%lp-hd67666826%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67656822%_)))
                                          (_%lp-tl67676829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67656822%_))))
                                      (_%loop67646813%_
                                       _%lp-tl67676829%_
                                       (cons _%lp-hd67666826%_
                                             _%pre67686820%_))))
                                  (let ((_%pre67696832%_
                                         (reverse _%pre67686820%_)))
                                    (if (gx#stx-pair? _%tl67606804%_)
                                        (let ((_%e67706835%_
                                               (gx#syntax-e _%tl67606804%_)))
                                          (let ((_%hd67716839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67706835%_)))
                                                (_%tl67726842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67706835%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67716839%_)
                                                (let ((_g20976_
                                                       (gx#syntax-split-splice
                                                        _%hd67716839%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g20977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g20976_)
                         (##values-length _g20976_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g20977_ 2)))
                  (error "Context expects 2 values" _g20977_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67736845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20976_
                                                              0)))
                                                          (_%tl67756848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g20976_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67756848%_)
                                                          (letrec ((_%loop67766851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67746855%_ _%opt67806858%_)
                              (if (gx#stx-pair? _%hd67746855%_)
                                  (let ((_%e67776860%_
                                         (gx#syntax-e _%hd67746855%_)))
                                    (let ((_%lp-hd67786864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67776860%_)))
                                          (_%lp-tl67796867%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67776860%_))))
                                      (_%loop67766851%_
                                       _%lp-tl67796867%_
                                       (cons _%lp-hd67786864%_
                                             _%opt67806858%_))))
                                  (let ((_%opt67816870%_
                                         (reverse _%opt67806858%_)))
                                    (if (gx#stx-pair? _%tl67726842%_)
                                        (let ((_%e67826873%_
                                               (gx#syntax-e _%tl67726842%_)))
                                          (let ((_%hd67836877%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67826873%_)))
                                                (_%tl67846880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67826873%_))))
                                            (if (gx#stx-null? _%tl67846880%_)
                                                ((lambda (_%g67556883%_
                                                          _%g67566885%_
                                                          _%g67576886%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%g67556883%_
                                                          (foldr (lambda (_%g69116916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69126919%_)
                           (cons _%g69116916%_ _%g69126919%_))
                         (foldr (lambda (_%g69136922%_ _%g69146925%_)
                                  (cons _%g69136922%_ _%g69146925%_))
                                '()
                                _%g67566885%_)
                         _%g67576886%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5401%_)))
                                                 _%hd67836877%_
                                                 _%opt67816870%_
                                                 _%pre67696832%_)
                                                (_%g67536790%_
                                                 _%g67546794%_))))
                                        (_%g67536790%_ _%g67546794%_)))))))
                    (_%loop67766851%_ _%target67736845%_ '()))
                  (_%g67536790%_ _%g67546794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67536790%_
                                                 _%g67546794%_))))
                                        (_%g67536790%_ _%g67546794%_)))))))
                    (_%loop67646813%_ _%target67616807%_ '()))
                  (_%g67536790%_ _%g67546794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67536790%_
                                                 _%g67546794%_))))
                                        (_%g67536790%_ _%g67546794%_)))))
                            (_%g67526928%_
                             (list _%pre6636%_
                                   (reverse _%right6644%_)
                                   _%primary6634%_)))))))
                 (_%generate-kw-primary5415%_
                  (lambda (_%key6014%_
                           _%kwargs6016%_
                           _%args6017%_
                           _%body6018%_)
                    (letrec ((_%make-body6020%_
                              (lambda (_%kwargs6503%_ _%kwvals6505%_)
                                (if (pair? _%kwargs6503%_)
                                    (let* ((_%kwarg6507%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6503%_)))
                                           (_%var6510%_ (cadr _%kwarg6507%_))
                                           (_%default6513%_
                                            (caddr _%kwarg6507%_))
                                           (_%kwval6516%_ (car _%kwvals6505%_))
                                           (_%rest-kwargs6519%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6503%_)))
                                           (_%rest-kwvals6522%_
                                            (cdr _%kwvals6505%_))
                                           (_%g65276550%_
                                            (lambda (_%g65286546%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65286546%_)))
                                           (_%g65266630%_
                                            (lambda (_%g65286554%_)
                                              (if (gx#stx-pair? _%g65286554%_)
                                                  (let ((_%e65336557%_
                                                         (gx#syntax-e
                                                          _%g65286554%_)))
                                                    (let ((_%hd65346561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65336557%_)))
                                                          (_%tl65356564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65336557%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65356564%_)
                                                          (let ((_%e65366567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65356564%_)))
                    (let ((_%hd65376571%_
                           (let () (declare (not safe)) (##car _%e65366567%_)))
                          (_%tl65386574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65366567%_))))
                      (if (gx#stx-pair? _%tl65386574%_)
                          (let ((_%e65396577%_ (gx#syntax-e _%tl65386574%_)))
                            (let ((_%hd65406581%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65396577%_)))
                                  (_%tl65416584%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65396577%_))))
                              (if (gx#stx-pair? _%tl65416584%_)
                                  (let ((_%e65426587%_
                                         (gx#syntax-e _%tl65416584%_)))
                                    (let ((_%hd65436591%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65426587%_)))
                                          (_%tl65446594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65426587%_))))
                                      (if (gx#stx-null? _%tl65446594%_)
                                          ((lambda (_%g65296597%_
                                                    _%g65306599%_
                                                    _%g65316600%_
                                                    _%g65326601%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%g65326601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%g65316600%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g65306599%_
                                                     (cons _%g65316600%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%g65296597%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65436591%_
                                           _%hd65406581%_
                                           _%hd65376571%_
                                           _%hd65346561%_)
                                          (_%g65276550%_ _%g65286554%_))))
                                  (_%g65276550%_ _%g65286554%_))))
                          (_%g65276550%_ _%g65286554%_))))
                  (_%g65276550%_ _%g65286554%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65276550%_
                                                   _%g65286554%_)))))
                                      (_%g65266630%_
                                       (list _%var6510%_
                                             _%kwval6516%_
                                             _%default6513%_
                                             (_%make-body6020%_
                                              _%rest-kwargs6519%_
                                              _%rest-kwvals6522%_))))
                                    (cons 'begin _%body6018%_))))
                             (_%make-main6022%_
                              (lambda ()
                                (let* ((_%g63136321%_
                                        (lambda (_%g63146317%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63146317%_)))
                                       (_%g63126495%_
                                        (lambda (_%g63146325%_)
                                          ((lambda (_%g63156328%_)
                                             (let* ((_%g63406357%_
                                                     (lambda (_%g63416353%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63416353%_)))
                                                    (_%g63396491%_
                                                     (lambda (_%g63416361%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63416361%_)
                                                           (let ((_g20978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63416361%_ '0)))
                     (begin
                       (let ((_g20979_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20978_)
                                    (##values-length _g20978_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20979_ 2)))
                             (error "Context expects 2 values" _g20979_)))
                       (let ((_%target63436364%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20978_ 0)))
                             (_%tl63456367%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20978_ 1))))
                         (if (gx#stx-null? _%tl63456367%_)
                             (letrec ((_%loop63466370%_
                                       (lambda (_%hd63446374%_
                                                _%kwval63506377%_)
                                         (if (gx#stx-pair? _%hd63446374%_)
                                             (let ((_%e63476379%_
                                                    (gx#syntax-e
                                                     _%hd63446374%_)))
                                               (let ((_%lp-hd63486383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63476379%_)))
                                                     (_%lp-tl63496386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63476379%_))))
                                                 (_%loop63466370%_
                                                  _%lp-tl63496386%_
                                                  (cons _%lp-hd63486383%_
                                                        _%kwval63506377%_))))
                                             (let ((_%kwval63516389%_
                                                    (reverse _%kwval63506377%_)))
                                               ((lambda (_%g63426392%_)
                                                  (let* ((_%g64096417%_
                                                          (lambda (_%g64106413%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g64106413%_)))
                                                         (_%g64086487%_
                                                          (lambda (_%g64106421%_)
                                                            ((lambda (_%g64116424%_)
                                                               (let* ((_%g64376445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64386441%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64386441%_)))
                              (_%g64366475%_
                               (lambda (_%g64386449%_)
                                 ((lambda (_%g64396452%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%g63156328%_
                                                       (foldr (lambda (_%g64666469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64676472%_)
                        (cons _%g64666469%_ _%g64676472%_))
                      _%g64116424%_
                      _%g63426392%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g64396452%_ '())))
                                     (gx#stx-source _%stx5401%_)))
                                  _%g64386449%_))))
                         (_%g64366475%_
                          (_%make-body6020%_
                           _%kwargs6016%_
                           (foldr (lambda (_%g64786481%_ _%g64796484%_)
                                    (cons _%g64786481%_ _%g64796484%_))
                                  '()
                                  _%g63426392%_)))))
                     _%g64106421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g64086487%_
                                                     _%args6017%_)))
                                                _%kwval63516389%_))))))
                               (_%loop63466370%_ _%target63436364%_ '()))
                             (_%g63406357%_ _%g63416361%_)))))
                   (_%g63406357%_ _%g63416361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63396491%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6016%_)))))
                                           _%g63146325%_))))
                                  (_%g63126495%_
                                   (let ((_%$e6499%_ _%key6014%_))
                                     (if _%$e6499%_
                                         _%$e6499%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6023%_
                              (lambda (_%main6123%_)
                                (let* ((_%g61266134%_
                                        (lambda (_%g61276130%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61276130%_)))
                                       (_%g61256303%_
                                        (lambda (_%g61276138%_)
                                          ((lambda (_%g61286141%_)
                                             (let* ((_%g61536170%_
                                                     (lambda (_%g61546166%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61546166%_)))
                                                    (_%g61526264%_
                                                     (lambda (_%g61546174%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61546174%_)
                                                           (let ((_g20980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61546174%_ '0)))
                     (begin
                       (let ((_g20981_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g20980_)
                                    (##values-length _g20980_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g20981_ 2)))
                             (error "Context expects 2 values" _g20981_)))
                       (let ((_%target61566177%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20980_ 0)))
                             (_%tl61586180%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g20980_ 1))))
                         (if (gx#stx-null? _%tl61586180%_)
                             (letrec ((_%loop61596183%_
                                       (lambda (_%hd61576187%_
                                                _%get-kw61636190%_)
                                         (if (gx#stx-pair? _%hd61576187%_)
                                             (let ((_%e61606192%_
                                                    (gx#syntax-e
                                                     _%hd61576187%_)))
                                               (let ((_%lp-hd61616196%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61606192%_)))
                                                     (_%lp-tl61626199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61606192%_))))
                                                 (_%loop61596183%_
                                                  _%lp-tl61626199%_
                                                  (cons _%lp-hd61616196%_
                                                        _%get-kw61636190%_))))
                                             (let ((_%get-kw61646202%_
                                                    (reverse _%get-kw61636190%_)))
                                               ((lambda (_%g61556205%_)
                                                  (let* ((_%g62226230%_
                                                          (lambda (_%g62236226%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62236226%_)))
                                                         (_%g62216260%_
                                                          (lambda (_%g62236234%_)
                                                            ((lambda (_%g62246237%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%g61286141%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%g62246237%_
                                                      (cons _%g61286141%_
                                                            (foldr (lambda (_%g62516254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62526257%_)
                             (cons _%g62516254%_ _%g62526257%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%g61556205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5401%_)))
                     _%g62236234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62216260%_
                                                     _%main6123%_)))
                                                _%get-kw61646202%_))))))
                               (_%loop61596183%_ _%target61566177%_ '()))
                             (_%g61536170%_ _%g61546174%_)))))
                   (_%g61536170%_ _%g61546174%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61526264%_
                                                (map (lambda (_%kwarg6268%_)
                                                       (let* ((_%g62716279%_
                                                               (lambda (_%g62726275%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62726275%_)))
                      (_%g62706299%_
                       (lambda (_%g62726283%_)
                         ((lambda (_%g62736286%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%g61286141%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g62736286%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62726283%_))))
                 (_%g62706299%_ (car _%kwarg6268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6016%_))))
                                           _%g61276138%_))))
                                  (_%g61256303%_
                                   (let ((_%$e6307%_ _%key6014%_))
                                     (if _%$e6307%_
                                         _%$e6307%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60256033%_
                              (lambda (_%g60266029%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60266029%_)))
                             (_%g60246119%_
                              (lambda (_%g60266037%_)
                                ((lambda (_%g60276040%_)
                                   (let* ((_%g60536061%_
                                           (lambda (_%g60546057%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60546057%_)))
                                          (_%g60526115%_
                                           (lambda (_%g60546065%_)
                                             ((lambda (_%g60556068%_)
                                                (let* ((_%g60816089%_
                                                        (lambda (_%g60826085%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g60826085%_)))
                                                       (_%g60806111%_
                                                        (lambda (_%g60826093%_)
                                                          ((lambda (_%g60836096%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%g60276040%_ '())
                                             (cons _%g60836096%_ '()))
                                       '())
                                 (cons _%g60556068%_ '()))))
                   _%g60826093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g60806111%_
                                                   (_%make-main6022%_))))
                                              _%g60546065%_))))
                                     (_%g60526115%_
                                      (_%make-dispatch6023%_ _%g60276040%_))))
                                 _%g60266037%_))))
                        (_%g60246119%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5416%_
                  (lambda (_%primary5927%_ _%kwargs5929%_ _%strict?5930%_)
                    (let* ((_%g59325951%_
                            (lambda (_%g59335947%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59335947%_)))
                           (_%g59316010%_
                            (lambda (_%g59335955%_)
                              (if (gx#stx-pair? _%g59335955%_)
                                  (let ((_%e59375958%_
                                         (gx#syntax-e _%g59335955%_)))
                                    (let ((_%hd59385962%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59375958%_)))
                                          (_%tl59395965%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59375958%_))))
                                      (if (gx#stx-pair? _%tl59395965%_)
                                          (let ((_%e59405968%_
                                                 (gx#syntax-e _%tl59395965%_)))
                                            (let ((_%hd59415972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59405968%_)))
                                                  (_%tl59425975%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59405968%_))))
                                              (if (gx#stx-pair? _%tl59425975%_)
                                                  (let ((_%e59435978%_
                                                         (gx#syntax-e
                                                          _%tl59425975%_)))
                                                    (let ((_%hd59445982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59435978%_)))
                                                          (_%tl59455985%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59435978%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59455985%_)
                                                          ((lambda (_%g59345988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g59355990%_
                            _%g59365991%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g59345988%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g59365991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g59355990%_ (cons _%g59345988%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59445982%_
                   _%hd59415972%_
                   _%hd59385962%_)
                  (_%g59325951%_ _%g59335955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59325951%_
                                                   _%g59335955%_))))
                                          (_%g59325951%_ _%g59335955%_))))
                                  (_%g59325951%_ _%g59335955%_)))))
                      (_%g59316010%_
                       (list (if _%strict?5930%_
                                 (_%generate-kw-table5417%_
                                  (map car _%kwargs5929%_))
                                 '#f)
                             _%primary5927%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5417%_
                  (lambda (_%kws5901%_)
                    (let _%rehash5904%_ ((_%pht5907%_
                                          (let ((__tmp20986
                                                 (length _%kws5901%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp20986 '#f))))
                      (let _%lp5910%_ ((_%rest5913%_ _%kws5901%_))
                        (if (pair? _%rest5913%_)
                            (let* ((_%key5916%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5913%_)))
                                   (_%rest5919%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5913%_)))
                                   (_%pos5922%_
                                    (let ((__tmp20983
                                           (keyword-hash _%key5916%_))
                                          (__tmp20982
                                           (vector-length _%pht5907%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp20983 __tmp20982))))
                              (if (vector-ref _%pht5907%_ _%pos5922%_)
                                  (if (let ((__tmp20984
                                             (vector-length _%pht5907%_)))
                                        (declare (not safe))
                                        (##fx< __tmp20984 '8192))
                                      (_%rehash5904%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp20985
                                                (vector-length _%pht5907%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp20985))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5901%_))
                                  (begin
                                    (vector-set!
                                     _%pht5907%_
                                     _%pos5922%_
                                     _%key5916%_)
                                    (_%lp5910%_ _%rest5919%_))))
                            _%pht5907%_))))))
          (let* ((_%__stx1929519296%_ _%stx5401%_)
                 (_%g54215452%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1929519296%_))))
            (let ((_%__kont1929819299%_
                   (lambda (_%g54235882%_ _%g54245884%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g54245884%_ _%g54235882%_))))
                  (_%__kont1930019301%_
                   (lambda (_%g54315656%_ _%g54325658%_)
                     (let ((_g20987_ (_%opt-lambda-split5407%_ _%g54325658%_)))
                       (begin
                         (let ((_g20988_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g20987_)
                                      (##values-length _g20987_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g20988_ 3)))
                               (error "Context expects 3 values" _g20988_)))
                         (let ((_%pre5671%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20987_ 0)))
                               (_%opt5673%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20987_ 1)))
                               (_%tail5674%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g20987_ 2))))
                           (let* ((_%g56765684%_
                                   (lambda (_%g56775680%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g56775680%_)))
                                  (_%g56755851%_
                                   (lambda (_%g56775688%_)
                                     ((lambda (_%g56785691%_)
                                        (let* ((_%g57045712%_
                                                (lambda (_%g57055708%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g57055708%_)))
                                               (_%g57035847%_
                                                (lambda (_%g57055716%_)
                                                  ((lambda (_%g57065719%_)
                                                     (let* ((_%g57325749%_
                                                             (lambda (_%g57335745%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57335745%_)))
                                                            (_%g57315843%_
                                                             (lambda (_%g57335753%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57335753%_)
                           (let ((_g20989_
                                  (gx#syntax-split-splice _%g57335753%_ '0)))
                             (begin
                               (let ((_g20990_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g20989_)
                                            (##values-length _g20989_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g20990_ 2)))
                                     (error "Context expects 2 values"
                                            _g20990_)))
                               (let ((_%target57355756%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20989_ 0)))
                                     (_%tl57375759%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g20989_ 1))))
                                 (if (gx#stx-null? _%tl57375759%_)
                                     (letrec ((_%loop57385762%_
                                               (lambda (_%hd57365766%_
                                                        _%clause57425769%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57365766%_)
                                                     (let ((_%e57395771%_
                                                            (gx#syntax-e
                                                             _%hd57365766%_)))
                                                       (let ((_%lp-hd57405775%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57395771%_)))
                     (_%lp-tl57415778%_
                      (let () (declare (not safe)) (##cdr _%e57395771%_))))
                 (_%loop57385762%_
                  _%lp-tl57415778%_
                  (cons _%lp-hd57405775%_ _%clause57425769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57435781%_
                                                            (reverse _%clause57425769%_)))
                                                       ((lambda (_%g57345784%_)
                                                          (let* ((_%g58015809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g58025805%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g58025805%_)))
                         (_%g58005831%_
                          (lambda (_%g58025813%_)
                            ((lambda (_%g58035816%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%g56785691%_ '())
                                                       (cons _%g57065719%_
                                                             '()))
                                                 '())
                                           (cons _%g58035816%_ '()))))
                             _%g58025813%_))))
                    (_%g58005831%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58345837%_ _%g58355840%_)
                                     (cons _%g58345837%_ _%g58355840%_))
                                   '()
                                   _%g57345784%_))
                      (gx#stx-source _%stx5401%_)))))
                _%clause57435781%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57385762%_
                                        _%target57355756%_
                                        '()))
                                     (_%g57325749%_ _%g57335753%_)))))
                           (_%g57325749%_ _%g57335753%_)))))
               (_%g57315843%_
                (_%generate-opt-dispatch5412%_
                 _%g56785691%_
                 _%pre5671%_
                 _%opt5673%_
                 _%tail5674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g57055716%_))))
                                          (_%g57035847%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5411%_
                                             _%pre5671%_
                                             _%opt5673%_
                                             _%tail5674%_
                                             _%g54315656%_)
                                            (gx#stx-source _%stx5401%_)))))
                                      _%g56775688%_))))
                             (_%g56755851%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1930219303%_
                   (lambda (_%g54395479%_ _%g54405481%_)
                     (let* ((_%g54975504%_
                             (lambda (_%g54985500%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g54985500%_)))
                            (_%g54965625%_
                             (lambda (_%g54985508%_)
                               ((lambda ()
                                  (let ((_g20991_
                                         (_%kw-lambda-split5409%_
                                          _%g54405481%_)))
                                    (begin
                                      (let ((_g20992_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g20991_)
                                                   (##values-length _g20991_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g20992_ 3)))
                                            (error "Context expects 3 values"
                                                   _g20992_)))
                                      (let ((_%key5517%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20991_ 0)))
                                            (_%kwargs5519%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20991_ 1)))
                                            (_%args5520%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g20991_ 2))))
                                        (let* ((_%g55225530%_
                                                (lambda (_%g55235526%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55235526%_)))
                                               (_%g55215621%_
                                                (lambda (_%g55235534%_)
                                                  ((lambda (_%g55245537%_)
                                                     (let* ((_%g55555563%_
                                                             (lambda (_%g55565559%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55565559%_)))
                                                            (_%g55545617%_
                                                             (lambda (_%g55565567%_)
                                                               ((lambda (_%g55575570%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g55835591%_
                                  (lambda (_%g55845587%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g55845587%_)))
                                 (_%g55825613%_
                                  (lambda (_%g55845595%_)
                                    ((lambda (_%g55855598%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%g55245537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%g55575570%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g55855598%_ '()))))
                                     _%g55845595%_))))
                            (_%g55825613%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5416%_
                               _%g55245537%_
                               _%kwargs5519%_
                               (not _%key5517%_))
                              (gx#stx-source _%stx5401%_)))))
                        _%g55565567%_))))
               (_%g55545617%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5415%_
                  _%key5517%_
                  _%kwargs5519%_
                  _%args5520%_
                  _%g54395479%_)
                 (gx#stx-source _%stx5401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55235534%_))))
                                          (_%g55215621%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g54965625%_
                        (_%check-duplicate-bindings5410%_ _%g54405481%_))))))
              (let* ((_%__match1934019341%_
                      (lambda (_%e54415459%_
                               _%hd54425463%_
                               _%tl54435466%_
                               _%e54445469%_
                               _%hd54455473%_
                               _%tl54465476%_)
                        (let ((_%g54395479%_ _%tl54465476%_)
                              (_%g54405481%_ _%hd54455473%_))
                          (if (_%kw-lambda?5408%_ _%g54405481%_)
                              (_%__kont1930219303%_
                               _%g54395479%_
                               _%g54405481%_)
                              (let () (declare (not safe)) (_%g54215452%_))))))
                     (_%__match1932819329%_
                      (lambda (_%e54335636%_
                               _%hd54345640%_
                               _%tl54355643%_
                               _%e54365646%_
                               _%hd54375650%_
                               _%tl54385653%_)
                        (let ((_%g54315656%_ _%tl54385653%_)
                              (_%g54325658%_ _%hd54375650%_))
                          (if (_%opt-lambda?5406%_ _%g54325658%_)
                              (_%__kont1930019301%_
                               _%g54315656%_
                               _%g54325658%_)
                              (_%__match1934019341%_
                               _%e54335636%_
                               _%hd54345640%_
                               _%tl54355643%_
                               _%e54365646%_
                               _%hd54375650%_
                               _%tl54385653%_)))))
                     (_%__match1931619317%_
                      (lambda (_%e54255862%_
                               _%hd54265866%_
                               _%tl54275869%_
                               _%e54285872%_
                               _%hd54295876%_
                               _%tl54305879%_)
                        (let ((_%g54235882%_ _%tl54305879%_)
                              (_%g54245884%_ _%hd54295876%_))
                          (if (_%simple-lambda?5404%_ _%g54245884%_)
                              (_%__kont1929819299%_
                               _%g54235882%_
                               _%g54245884%_)
                              (_%__match1932819329%_
                               _%e54255862%_
                               _%hd54265866%_
                               _%tl54275869%_
                               _%e54285872%_
                               _%hd54295876%_
                               _%tl54305879%_))))))
                (if (gx#stx-pair? _%__stx1929519296%_)
                    (let ((_%e54255862%_ (gx#syntax-e _%__stx1929519296%_)))
                      (let ((_%tl54275869%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54255862%_)))
                            (_%hd54265866%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54255862%_))))
                        (if (gx#stx-pair? _%tl54275869%_)
                            (let ((_%e54285872%_ (gx#syntax-e _%tl54275869%_)))
                              (let ((_%tl54305879%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54285872%_)))
                                    (_%hd54295876%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54285872%_))))
                                (_%__match1931619317%_
                                 _%e54255862%_
                                 _%hd54265866%_
                                 _%tl54275869%_
                                 _%e54285872%_
                                 _%hd54295876%_
                                 _%tl54305879%_)))
                            (let () (declare (not safe)) (_%g54215452%_)))))
                    (let () (declare (not safe)) (_%g54215452%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8804%_)
        (let* ((_%__stx1934319344%_ _%$stx8804%_)
               (_%g88128924%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1934319344%_))))
          (let ((_%__kont1934619347%_
                 (lambda (_%g88149362%_
                          _%g88159364%_
                          _%g88169365%_
                          _%g88179366%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g88179366%_ _%g88169365%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88159364%_
                                                 (foldr (lambda (_%g93889391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g93899394%_)
                  (cons _%g93889391%_ _%g93899394%_))
                '()
                _%g88149362%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1935019351%_
                 (lambda (_%g88399249%_
                          _%g88409251%_
                          _%g88419252%_
                          _%g88429253%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88429253%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88419252%_
                                                 (foldr (lambda (_%g92789281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g92799284%_)
                  (cons _%g92789281%_ _%g92799284%_))
                '()
                _%g88399249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'macro:
                                           (cons _%g88409251%_ '())))))))
                (_%__kont1935419355%_
                 (lambda (_%g88689129%_ _%g88699131%_ _%g88709132%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88709132%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88699131%_
                                                 (foldr (lambda (_%g91519154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91529157%_)
                  (cons _%g91519154%_ _%g91529157%_))
                '()
                _%g88689129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1935819359%_
                 (lambda (_%g88899047%_ _%g88909049%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88909049%_ '())
                               (cons _%g88899047%_ '())))))
                (_%__kont1936019361%_
                 (lambda (_%g89008985%_ _%g89018987%_ _%g89028988%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g89028988%_ '())
                               (cons _%g89018987%_
                                     (cons 'macro:
                                           (cons _%g89008985%_ '()))))))))
            (let* ((_%__match1952219523%_
                    (lambda (_%e89038931%_
                             _%hd89048935%_
                             _%tl89058938%_
                             _%e89068941%_
                             _%hd89078945%_
                             _%tl89088948%_
                             _%e89098951%_
                             _%hd89108955%_
                             _%tl89118958%_
                             _%e89128961%_
                             _%hd89138965%_
                             _%tl89148968%_
                             _%e89158971%_
                             _%e89168975%_
                             _%hd89178979%_
                             _%tl89188982%_)
                      (let ((_%g89008985%_ _%hd89178979%_)
                            (_%g89018987%_ _%hd89108955%_)
                            (_%g89028988%_ _%hd89078945%_))
                        (if (and (gx#identifier? _%g89028988%_)
                                 (gx#identifier? _%g89008985%_))
                            (_%__kont1936019361%_
                             _%g89008985%_
                             _%g89018987%_
                             _%g89028988%_)
                            (let () (declare (not safe)) (_%g88128924%_))))))
                   (_%__match1948419485%_
                    (lambda (_%e88919017%_
                             _%hd88929021%_
                             _%tl88939024%_
                             _%e88949027%_
                             _%hd88959031%_
                             _%tl88969034%_
                             _%e88979037%_
                             _%hd88989041%_
                             _%tl88999044%_)
                      (let ((_%g88899047%_ _%hd88989041%_)
                            (_%g88909049%_ _%hd88959031%_))
                        (if (gx#identifier? _%g88909049%_)
                            (_%__kont1935819359%_ _%g88899047%_ _%g88909049%_)
                            (let () (declare (not safe)) (_%g88128924%_))))))
                   (_%__match1947619477%_
                    (lambda (_%e88919017%_
                             _%hd88929021%_
                             _%tl88939024%_
                             _%e88949027%_
                             _%hd88959031%_
                             _%tl88969034%_)
                      (if (gx#stx-pair? _%tl88969034%_)
                          (let ((_%e88979037%_ (gx#syntax-e _%tl88969034%_)))
                            (let ((_%tl88999044%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88979037%_)))
                                  (_%hd88989041%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88979037%_))))
                              (if (gx#stx-null? _%tl88999044%_)
                                  (_%__match1948419485%_
                                   _%e88919017%_
                                   _%hd88929021%_
                                   _%tl88939024%_
                                   _%e88949027%_
                                   _%hd88959031%_
                                   _%tl88969034%_
                                   _%e88979037%_
                                   _%hd88989041%_
                                   _%tl88999044%_)
                                  (if (gx#stx-pair? _%tl88999044%_)
                                      (let ((_%e89128961%_
                                             (gx#syntax-e _%tl88999044%_)))
                                        (let ((_%tl89148968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89128961%_)))
                                              (_%hd89138965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89128961%_))))
                                          (if (gx#stx-datum? _%hd89138965%_)
                                              (let ((_%e89158971%_
                                                     (gx#stx-e
                                                      _%hd89138965%_)))
                                                (if (equal? _%e89158971%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89148968%_)
                                                        (let ((_%e89168975%_
                                                               (gx#syntax-e
                                                                _%tl89148968%_)))
                                                          (let ((_%tl89188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89168975%_)))
                        (_%hd89178979%_
                         (let () (declare (not safe)) (##car _%e89168975%_))))
                    (if (gx#stx-null? _%tl89188982%_)
                        (_%__match1952219523%_
                         _%e88919017%_
                         _%hd88929021%_
                         _%tl88939024%_
                         _%e88949027%_
                         _%hd88959031%_
                         _%tl88969034%_
                         _%e88979037%_
                         _%hd88989041%_
                         _%tl88999044%_
                         _%e89128961%_
                         _%hd89138965%_
                         _%tl89148968%_
                         _%e89158971%_
                         _%e89168975%_
                         _%hd89178979%_
                         _%tl89188982%_)
                        (let () (declare (not safe)) (_%g88128924%_)))))
                (let () (declare (not safe)) (_%g88128924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88128924%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_))))))
                          (let () (declare (not safe)) (_%g88128924%_)))))
                   (_%__match1946419465%_
                    (lambda (_%e88719071%_
                             _%hd88729075%_
                             _%tl88739078%_
                             _%e88749081%_
                             _%hd88759085%_
                             _%tl88769088%_
                             _%e88779091%_
                             _%hd88789095%_
                             _%tl88799098%_
                             _%__splice1935619357%_
                             _%target88809101%_
                             _%tl88829104%_)
                      (letrec ((_%loop88839107%_
                                (lambda (_%hd88819111%_ _%body88879114%_)
                                  (if (gx#stx-pair? _%hd88819111%_)
                                      (let ((_%e88849116%_
                                             (gx#syntax-e _%hd88819111%_)))
                                        (let ((_%lp-tl88869123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88849116%_)))
                                              (_%lp-hd88859120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88849116%_))))
                                          (_%loop88839107%_
                                           _%lp-tl88869123%_
                                           (cons _%lp-hd88859120%_
                                                 _%body88879114%_))))
                                      (let ((_%body88889126%_
                                             (reverse _%body88879114%_)))
                                        (let ((_%g88689129%_ _%body88889126%_)
                                              (_%g88699131%_ _%tl88799098%_)
                                              (_%g88709132%_ _%hd88789095%_))
                                          (if (gx#identifier? _%g88709132%_)
                                              (_%__kont1935419355%_
                                               _%g88689129%_
                                               _%g88699131%_
                                               _%g88709132%_)
                                              (_%__match1947619477%_
                                               _%e88719071%_
                                               _%hd88729075%_
                                               _%tl88739078%_
                                               _%e88749081%_
                                               _%hd88759085%_
                                               _%tl88769088%_))))))))
                        (_%loop88839107%_ _%target88809101%_ '()))))
                   (_%__match1945619457%_
                    (lambda (_%e88719071%_
                             _%hd88729075%_
                             _%tl88739078%_
                             _%e88749081%_
                             _%hd88759085%_
                             _%tl88769088%_
                             _%e88779091%_
                             _%hd88789095%_
                             _%tl88799098%_)
                      (if (gx#stx-pair/null? _%tl88769088%_)
                          (let ((_%__splice1935619357%_
                                 (gx#syntax-split-splice->vector
                                  _%tl88769088%_
                                  '0)))
                            (let ((_%tl88829104%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1935619357%_ '1)))
                                  (_%target88809101%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1935619357%_
                                      '0))))
                              (if (gx#stx-null? _%tl88829104%_)
                                  (_%__match1946419465%_
                                   _%e88719071%_
                                   _%hd88729075%_
                                   _%tl88739078%_
                                   _%e88749081%_
                                   _%hd88759085%_
                                   _%tl88769088%_
                                   _%e88779091%_
                                   _%hd88789095%_
                                   _%tl88799098%_
                                   _%__splice1935619357%_
                                   _%target88809101%_
                                   _%tl88829104%_)
                                  (if (gx#stx-pair? _%tl88769088%_)
                                      (let ((_%e88979037%_
                                             (gx#syntax-e _%tl88769088%_)))
                                        (let ((_%tl88999044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88979037%_)))
                                              (_%hd88989041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88979037%_))))
                                          (if (gx#stx-null? _%tl88999044%_)
                                              (_%__match1948419485%_
                                               _%e88719071%_
                                               _%hd88729075%_
                                               _%tl88739078%_
                                               _%e88749081%_
                                               _%hd88759085%_
                                               _%tl88769088%_
                                               _%e88979037%_
                                               _%hd88989041%_
                                               _%tl88999044%_)
                                              (if (gx#stx-pair? _%tl88999044%_)
                                                  (let ((_%e89128961%_
                                                         (gx#syntax-e
                                                          _%tl88999044%_)))
                                                    (let ((_%tl89148968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89128961%_)))
                                                          (_%hd89138965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89128961%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89138965%_)
                                                          (let ((_%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89138965%_)))
                    (if (equal? _%e89158971%_ 'macro:)
                        (if (gx#stx-pair? _%tl89148968%_)
                            (let ((_%e89168975%_ (gx#syntax-e _%tl89148968%_)))
                              (let ((_%tl89188982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89168975%_)))
                                    (_%hd89178979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89168975%_))))
                                (if (gx#stx-null? _%tl89188982%_)
                                    (_%__match1952219523%_
                                     _%e88719071%_
                                     _%hd88729075%_
                                     _%tl88739078%_
                                     _%e88749081%_
                                     _%hd88759085%_
                                     _%tl88769088%_
                                     _%e88979037%_
                                     _%hd88989041%_
                                     _%tl88999044%_
                                     _%e89128961%_
                                     _%hd89138965%_
                                     _%tl89148968%_
                                     _%e89158971%_
                                     _%e89168975%_
                                     _%hd89178979%_
                                     _%tl89188982%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88128924%_)))))
                            (let () (declare (not safe)) (_%g88128924%_)))
                        (let () (declare (not safe)) (_%g88128924%_))))
                  (let () (declare (not safe)) (_%g88128924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_))))))
                          (if (gx#stx-pair? _%tl88769088%_)
                              (let ((_%e88979037%_
                                     (gx#syntax-e _%tl88769088%_)))
                                (let ((_%tl88999044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e88979037%_)))
                                      (_%hd88989041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e88979037%_))))
                                  (if (gx#stx-null? _%tl88999044%_)
                                      (_%__match1948419485%_
                                       _%e88719071%_
                                       _%hd88729075%_
                                       _%tl88739078%_
                                       _%e88749081%_
                                       _%hd88759085%_
                                       _%tl88769088%_
                                       _%e88979037%_
                                       _%hd88989041%_
                                       _%tl88999044%_)
                                      (if (gx#stx-pair? _%tl88999044%_)
                                          (let ((_%e89128961%_
                                                 (gx#syntax-e _%tl88999044%_)))
                                            (let ((_%tl89148968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e89128961%_)))
                                                  (_%hd89138965%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e89128961%_))))
                                              (if (gx#stx-datum?
                                                   _%hd89138965%_)
                                                  (let ((_%e89158971%_
                                                         (gx#stx-e
                                                          _%hd89138965%_)))
                                                    (if (equal? _%e89158971%_
                                                                'macro:)
                                                        (if (gx#stx-pair?
                                                             _%tl89148968%_)
                                                            (let ((_%e89168975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl89148968%_)))
                      (let ((_%tl89188982%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e89168975%_)))
                            (_%hd89178979%_
                             (let ()
                               (declare (not safe))
                               (##car _%e89168975%_))))
                        (if (gx#stx-null? _%tl89188982%_)
                            (_%__match1952219523%_
                             _%e88719071%_
                             _%hd88729075%_
                             _%tl88739078%_
                             _%e88749081%_
                             _%hd88759085%_
                             _%tl88769088%_
                             _%e88979037%_
                             _%hd88989041%_
                             _%tl88999044%_
                             _%e89128961%_
                             _%hd89138965%_
                             _%tl89148968%_
                             _%e89158971%_
                             _%e89168975%_
                             _%hd89178979%_
                             _%tl89188982%_)
                            (let () (declare (not safe)) (_%g88128924%_)))))
                    (let () (declare (not safe)) (_%g88128924%_)))
                (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88128924%_))))))
                              (let () (declare (not safe)) (_%g88128924%_))))))
                   (_%__match1943819439%_
                    (lambda (_%e88439167%_
                             _%hd88449171%_
                             _%tl88459174%_
                             _%e88469177%_
                             _%hd88479181%_
                             _%tl88489184%_
                             _%e88499187%_
                             _%hd88509191%_
                             _%tl88519194%_
                             _%e88529197%_
                             _%hd88539201%_
                             _%tl88549204%_
                             _%e88559207%_
                             _%e88569211%_
                             _%hd88579215%_
                             _%tl88589218%_
                             _%__splice1935219353%_
                             _%target88599221%_
                             _%tl88619224%_)
                      (letrec ((_%loop88629227%_
                                (lambda (_%hd88609231%_ _%body88669234%_)
                                  (if (gx#stx-pair? _%hd88609231%_)
                                      (let ((_%e88639236%_
                                             (gx#syntax-e _%hd88609231%_)))
                                        (let ((_%lp-tl88659243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88639236%_)))
                                              (_%lp-hd88649240%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88639236%_))))
                                          (_%loop88629227%_
                                           _%lp-tl88659243%_
                                           (cons _%lp-hd88649240%_
                                                 _%body88669234%_))))
                                      (let ((_%body88679246%_
                                             (reverse _%body88669234%_)))
                                        (let ((_%g88399249%_ _%body88679246%_)
                                              (_%g88409251%_ _%hd88579215%_)
                                              (_%g88419252%_ _%tl88519194%_)
                                              (_%g88429253%_ _%hd88509191%_))
                                          (if (and (gx#identifier?
                                                    _%g88429253%_)
                                                   (gx#identifier?
                                                    _%g88409251%_))
                                              (_%__kont1935019351%_
                                               _%g88399249%_
                                               _%g88409251%_
                                               _%g88419252%_
                                               _%g88429253%_)
                                              (_%__match1945619457%_
                                               _%e88439167%_
                                               _%hd88449171%_
                                               _%tl88459174%_
                                               _%e88469177%_
                                               _%hd88479181%_
                                               _%tl88489184%_
                                               _%e88499187%_
                                               _%hd88509191%_
                                               _%tl88519194%_))))))))
                        (_%loop88629227%_ _%target88599221%_ '()))))
                   (_%__match1939419395%_
                    (lambda (_%e88189294%_
                             _%hd88199298%_
                             _%tl88209301%_
                             _%e88219304%_
                             _%hd88229308%_
                             _%tl88239311%_
                             _%e88249314%_
                             _%hd88259318%_
                             _%tl88269321%_
                             _%e88279324%_
                             _%hd88289328%_
                             _%tl88299331%_
                             _%__splice1934819349%_
                             _%target88309334%_
                             _%tl88329337%_)
                      (letrec ((_%loop88339340%_
                                (lambda (_%hd88319344%_ _%body88379347%_)
                                  (if (gx#stx-pair? _%hd88319344%_)
                                      (let ((_%e88349349%_
                                             (gx#syntax-e _%hd88319344%_)))
                                        (let ((_%lp-tl88369356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88349349%_)))
                                              (_%lp-hd88359353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88349349%_))))
                                          (_%loop88339340%_
                                           _%lp-tl88369356%_
                                           (cons _%lp-hd88359353%_
                                                 _%body88379347%_))))
                                      (let ((_%body88389359%_
                                             (reverse _%body88379347%_)))
                                        (_%__kont1934619347%_
                                         _%body88389359%_
                                         _%tl88269321%_
                                         _%tl88299331%_
                                         _%hd88289328%_))))))
                        (_%loop88339340%_ _%target88309334%_ '())))))
              (if (gx#stx-pair? _%__stx1934319344%_)
                  (let ((_%e88189294%_ (gx#syntax-e _%__stx1934319344%_)))
                    (let ((_%tl88209301%_
                           (let () (declare (not safe)) (##cdr _%e88189294%_)))
                          (_%hd88199298%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88189294%_))))
                      (if (gx#stx-pair? _%tl88209301%_)
                          (let ((_%e88219304%_ (gx#syntax-e _%tl88209301%_)))
                            (let ((_%tl88239311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88219304%_)))
                                  (_%hd88229308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88219304%_))))
                              (if (gx#stx-pair? _%hd88229308%_)
                                  (let ((_%e88249314%_
                                         (gx#syntax-e _%hd88229308%_)))
                                    (let ((_%tl88269321%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88249314%_)))
                                          (_%hd88259318%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88249314%_))))
                                      (if (gx#stx-pair? _%hd88259318%_)
                                          (let ((_%e88279324%_
                                                 (gx#syntax-e _%hd88259318%_)))
                                            (let ((_%tl88299331%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88279324%_)))
                                                  (_%hd88289328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88279324%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88239311%_)
                                                  (let ((_%__splice1934819349%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88239311%_
                                                          '0)))
                                                    (let ((_%tl88329337%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1934819349%_
                                                              '1)))
                                                          (_%target88309334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1934819349%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88329337%_)
                                                          (_%__match1939419395%_
                                                           _%e88189294%_
                                                           _%hd88199298%_
                                                           _%tl88209301%_
                                                           _%e88219304%_
                                                           _%hd88229308%_
                                                           _%tl88239311%_
                                                           _%e88249314%_
                                                           _%hd88259318%_
                                                           _%tl88269321%_
                                                           _%e88279324%_
                                                           _%hd88289328%_
                                                           _%tl88299331%_
                                                           _%__splice1934819349%_
                                                           _%target88309334%_
                                                           _%tl88329337%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88239311%_)
                                                              (let ((_%e88529197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88239311%_)))
                        (let ((_%tl88549204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88529197%_)))
                              (_%hd88539201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88529197%_))))
                          (if (gx#stx-datum? _%hd88539201%_)
                              (let ((_%e88559207%_ (gx#stx-e _%hd88539201%_)))
                                (if (equal? _%e88559207%_ 'macro:)
                                    (if (gx#stx-pair? _%tl88549204%_)
                                        (let ((_%e88569211%_
                                               (gx#syntax-e _%tl88549204%_)))
                                          (let ((_%tl88589218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e88569211%_)))
                                                (_%hd88579215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e88569211%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl88589218%_)
                                                (let ((_%__splice1935219353%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl88589218%_
                                                        '0)))
                                                  (let ((_%tl88619224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1935219353%_
                                                            '1)))
                                                        (_%target88599221%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1935219353%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl88619224%_)
                                                        (_%__match1943819439%_
                                                         _%e88189294%_
                                                         _%hd88199298%_
                                                         _%tl88209301%_
                                                         _%e88219304%_
                                                         _%hd88229308%_
                                                         _%tl88239311%_
                                                         _%e88249314%_
                                                         _%hd88259318%_
                                                         _%tl88269321%_
                                                         _%e88529197%_
                                                         _%hd88539201%_
                                                         _%tl88549204%_
                                                         _%e88559207%_
                                                         _%e88569211%_
                                                         _%hd88579215%_
                                                         _%tl88589218%_
                                                         _%__splice1935219353%_
                                                         _%target88599221%_
                                                         _%tl88619224%_)
                                                        (if (gx#stx-datum?
                                                             _%hd88579215%_)
                                                            (let ((_%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%hd88579215%_)))
                      (if (equal? _%e89158971%_ 'macro:)
                          (if (gx#stx-pair? _%tl88589218%_)
                              (let ((_%e89168975%_
                                     (gx#syntax-e _%tl88589218%_)))
                                (let ((_%tl89188982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89168975%_)))
                                      (_%hd89178979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89168975%_))))
                                  (if (gx#stx-null? _%tl89188982%_)
                                      (_%__match1952219523%_
                                       _%e88189294%_
                                       _%hd88199298%_
                                       _%tl88209301%_
                                       _%e88219304%_
                                       _%hd88229308%_
                                       _%tl88239311%_
                                       _%e88529197%_
                                       _%hd88539201%_
                                       _%tl88549204%_
                                       _%e88569211%_
                                       _%hd88579215%_
                                       _%tl88589218%_
                                       _%e89158971%_
                                       _%e89168975%_
                                       _%hd89178979%_
                                       _%tl89188982%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_)))))
                              (let () (declare (not safe)) (_%g88128924%_)))
                          (let () (declare (not safe)) (_%g88128924%_))))
                    (let () (declare (not safe)) (_%g88128924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-datum?
                                                     _%hd88579215%_)
                                                    (let ((_%e89158971%_
                                                           (gx#stx-e
                                                            _%hd88579215%_)))
                                                      (if (equal? _%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88589218%_)
                      (let ((_%e89168975%_ (gx#syntax-e _%tl88589218%_)))
                        (let ((_%tl89188982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89168975%_)))
                              (_%hd89178979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89168975%_))))
                          (if (gx#stx-null? _%tl89188982%_)
                              (_%__match1952219523%_
                               _%e88189294%_
                               _%hd88199298%_
                               _%tl88209301%_
                               _%e88219304%_
                               _%hd88229308%_
                               _%tl88239311%_
                               _%e88529197%_
                               _%hd88539201%_
                               _%tl88549204%_
                               _%e88569211%_
                               _%hd88579215%_
                               _%tl88589218%_
                               _%e89158971%_
                               _%e89168975%_
                               _%hd89178979%_
                               _%tl89188982%_)
                              (let () (declare (not safe)) (_%g88128924%_)))))
                      (let () (declare (not safe)) (_%g88128924%_)))
                  (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_))))))
                                        (if (gx#stx-null? _%tl88549204%_)
                                            (_%__match1948419485%_
                                             _%e88189294%_
                                             _%hd88199298%_
                                             _%tl88209301%_
                                             _%e88219304%_
                                             _%hd88229308%_
                                             _%tl88239311%_
                                             _%e88529197%_
                                             _%hd88539201%_
                                             _%tl88549204%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_))))
                                    (if (gx#stx-null? _%tl88549204%_)
                                        (_%__match1948419485%_
                                         _%e88189294%_
                                         _%hd88199298%_
                                         _%tl88209301%_
                                         _%e88219304%_
                                         _%hd88229308%_
                                         _%tl88239311%_
                                         _%e88529197%_
                                         _%hd88539201%_
                                         _%tl88549204%_)
                                        (if (gx#stx-pair? _%tl88549204%_)
                                            (let ((_%e89128961%_
                                                   (gx#syntax-e
                                                    _%tl88549204%_)))
                                              (let ((_%tl89148968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89128961%_)))
                                                    (_%hd89138965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89128961%_))))
                                                (if (gx#stx-datum?
                                                     _%hd89138965%_)
                                                    (let ((_%e89158971%_
                                                           (gx#stx-e
                                                            _%hd89138965%_)))
                                                      (if (equal? _%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl89148968%_)
                      (let ((_%e89168975%_ (gx#syntax-e _%tl89148968%_)))
                        (let ((_%tl89188982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89168975%_)))
                              (_%hd89178979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89168975%_))))
                          (if (gx#stx-null? _%tl89188982%_)
                              (_%__match1952219523%_
                               _%e88189294%_
                               _%hd88199298%_
                               _%tl88209301%_
                               _%e88219304%_
                               _%hd88229308%_
                               _%tl88239311%_
                               _%e88529197%_
                               _%hd88539201%_
                               _%tl88549204%_
                               _%e89128961%_
                               _%hd89138965%_
                               _%tl89148968%_
                               _%e89158971%_
                               _%e89168975%_
                               _%hd89178979%_
                               _%tl89188982%_)
                              (let () (declare (not safe)) (_%g88128924%_)))))
                      (let () (declare (not safe)) (_%g88128924%_)))
                  (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_))))))
                              (if (gx#stx-null? _%tl88549204%_)
                                  (_%__match1948419485%_
                                   _%e88189294%_
                                   _%hd88199298%_
                                   _%tl88209301%_
                                   _%e88219304%_
                                   _%hd88229308%_
                                   _%tl88239311%_
                                   _%e88529197%_
                                   _%hd88539201%_
                                   _%tl88549204%_)
                                  (if (gx#stx-pair? _%tl88549204%_)
                                      (let ((_%e89128961%_
                                             (gx#syntax-e _%tl88549204%_)))
                                        (let ((_%tl89148968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89128961%_)))
                                              (_%hd89138965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89128961%_))))
                                          (if (gx#stx-datum? _%hd89138965%_)
                                              (let ((_%e89158971%_
                                                     (gx#stx-e
                                                      _%hd89138965%_)))
                                                (if (equal? _%e89158971%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89148968%_)
                                                        (let ((_%e89168975%_
                                                               (gx#syntax-e
                                                                _%tl89148968%_)))
                                                          (let ((_%tl89188982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89168975%_)))
                        (_%hd89178979%_
                         (let () (declare (not safe)) (##car _%e89168975%_))))
                    (if (gx#stx-null? _%tl89188982%_)
                        (_%__match1952219523%_
                         _%e88189294%_
                         _%hd88199298%_
                         _%tl88209301%_
                         _%e88219304%_
                         _%hd88229308%_
                         _%tl88239311%_
                         _%e88529197%_
                         _%hd88539201%_
                         _%tl88549204%_
                         _%e89128961%_
                         _%hd89138965%_
                         _%tl89148968%_
                         _%e89158971%_
                         _%e89168975%_
                         _%hd89178979%_
                         _%tl89188982%_)
                        (let () (declare (not safe)) (_%g88128924%_)))))
                (let () (declare (not safe)) (_%g88128924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88128924%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_)))))))
                      (let () (declare (not safe)) (_%g88128924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88239311%_)
                                                      (let ((_%e88529197%_
                                                             (gx#syntax-e
                                                              _%tl88239311%_)))
                                                        (let ((_%tl88549204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88529197%_)))
                      (_%hd88539201%_
                       (let () (declare (not safe)) (##car _%e88529197%_))))
                  (if (gx#stx-datum? _%hd88539201%_)
                      (let ((_%e88559207%_ (gx#stx-e _%hd88539201%_)))
                        (if (equal? _%e88559207%_ 'macro:)
                            (if (gx#stx-pair? _%tl88549204%_)
                                (let ((_%e88569211%_
                                       (gx#syntax-e _%tl88549204%_)))
                                  (let ((_%tl88589218%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e88569211%_)))
                                        (_%hd88579215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e88569211%_))))
                                    (if (gx#stx-pair/null? _%tl88589218%_)
                                        (let ((_%__splice1935219353%_
                                               (gx#syntax-split-splice->vector
                                                _%tl88589218%_
                                                '0)))
                                          (let ((_%tl88619224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1935219353%_
                                                    '1)))
                                                (_%target88599221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1935219353%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl88619224%_)
                                                (_%__match1943819439%_
                                                 _%e88189294%_
                                                 _%hd88199298%_
                                                 _%tl88209301%_
                                                 _%e88219304%_
                                                 _%hd88229308%_
                                                 _%tl88239311%_
                                                 _%e88249314%_
                                                 _%hd88259318%_
                                                 _%tl88269321%_
                                                 _%e88529197%_
                                                 _%hd88539201%_
                                                 _%tl88549204%_
                                                 _%e88559207%_
                                                 _%e88569211%_
                                                 _%hd88579215%_
                                                 _%tl88589218%_
                                                 _%__splice1935219353%_
                                                 _%target88599221%_
                                                 _%tl88619224%_)
                                                (if (gx#stx-datum?
                                                     _%hd88579215%_)
                                                    (let ((_%e89158971%_
                                                           (gx#stx-e
                                                            _%hd88579215%_)))
                                                      (if (equal? _%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88589218%_)
                      (let ((_%e89168975%_ (gx#syntax-e _%tl88589218%_)))
                        (let ((_%tl89188982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89168975%_)))
                              (_%hd89178979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89168975%_))))
                          (if (gx#stx-null? _%tl89188982%_)
                              (_%__match1952219523%_
                               _%e88189294%_
                               _%hd88199298%_
                               _%tl88209301%_
                               _%e88219304%_
                               _%hd88229308%_
                               _%tl88239311%_
                               _%e88529197%_
                               _%hd88539201%_
                               _%tl88549204%_
                               _%e88569211%_
                               _%hd88579215%_
                               _%tl88589218%_
                               _%e89158971%_
                               _%e89168975%_
                               _%hd89178979%_
                               _%tl89188982%_)
                              (let () (declare (not safe)) (_%g88128924%_)))))
                      (let () (declare (not safe)) (_%g88128924%_)))
                  (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_))))))
                                        (if (gx#stx-datum? _%hd88579215%_)
                                            (let ((_%e89158971%_
                                                   (gx#stx-e _%hd88579215%_)))
                                              (if (equal? _%e89158971%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl88589218%_)
                                                      (let ((_%e89168975%_
                                                             (gx#syntax-e
                                                              _%tl88589218%_)))
                                                        (let ((_%tl89188982%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89168975%_)))
                      (_%hd89178979%_
                       (let () (declare (not safe)) (##car _%e89168975%_))))
                  (if (gx#stx-null? _%tl89188982%_)
                      (_%__match1952219523%_
                       _%e88189294%_
                       _%hd88199298%_
                       _%tl88209301%_
                       _%e88219304%_
                       _%hd88229308%_
                       _%tl88239311%_
                       _%e88529197%_
                       _%hd88539201%_
                       _%tl88549204%_
                       _%e88569211%_
                       _%hd88579215%_
                       _%tl88589218%_
                       _%e89158971%_
                       _%e89168975%_
                       _%hd89178979%_
                       _%tl89188982%_)
                      (let () (declare (not safe)) (_%g88128924%_)))))
              (let () (declare (not safe)) (_%g88128924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_))))))
                                (if (gx#stx-null? _%tl88549204%_)
                                    (_%__match1948419485%_
                                     _%e88189294%_
                                     _%hd88199298%_
                                     _%tl88209301%_
                                     _%e88219304%_
                                     _%hd88229308%_
                                     _%tl88239311%_
                                     _%e88529197%_
                                     _%hd88539201%_
                                     _%tl88549204%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88128924%_))))
                            (if (gx#stx-null? _%tl88549204%_)
                                (_%__match1948419485%_
                                 _%e88189294%_
                                 _%hd88199298%_
                                 _%tl88209301%_
                                 _%e88219304%_
                                 _%hd88229308%_
                                 _%tl88239311%_
                                 _%e88529197%_
                                 _%hd88539201%_
                                 _%tl88549204%_)
                                (if (gx#stx-pair? _%tl88549204%_)
                                    (let ((_%e89128961%_
                                           (gx#syntax-e _%tl88549204%_)))
                                      (let ((_%tl89148968%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e89128961%_)))
                                            (_%hd89138965%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e89128961%_))))
                                        (if (gx#stx-datum? _%hd89138965%_)
                                            (let ((_%e89158971%_
                                                   (gx#stx-e _%hd89138965%_)))
                                              (if (equal? _%e89158971%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl89148968%_)
                                                      (let ((_%e89168975%_
                                                             (gx#syntax-e
                                                              _%tl89148968%_)))
                                                        (let ((_%tl89188982%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89168975%_)))
                      (_%hd89178979%_
                       (let () (declare (not safe)) (##car _%e89168975%_))))
                  (if (gx#stx-null? _%tl89188982%_)
                      (_%__match1952219523%_
                       _%e88189294%_
                       _%hd88199298%_
                       _%tl88209301%_
                       _%e88219304%_
                       _%hd88229308%_
                       _%tl88239311%_
                       _%e88529197%_
                       _%hd88539201%_
                       _%tl88549204%_
                       _%e89128961%_
                       _%hd89138965%_
                       _%tl89148968%_
                       _%e89158971%_
                       _%e89168975%_
                       _%hd89178979%_
                       _%tl89188982%_)
                      (let () (declare (not safe)) (_%g88128924%_)))))
              (let () (declare (not safe)) (_%g88128924%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g88128924%_))))))
                      (if (gx#stx-null? _%tl88549204%_)
                          (_%__match1948419485%_
                           _%e88189294%_
                           _%hd88199298%_
                           _%tl88209301%_
                           _%e88219304%_
                           _%hd88229308%_
                           _%tl88239311%_
                           _%e88529197%_
                           _%hd88539201%_
                           _%tl88549204%_)
                          (if (gx#stx-pair? _%tl88549204%_)
                              (let ((_%e89128961%_
                                     (gx#syntax-e _%tl88549204%_)))
                                (let ((_%tl89148968%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89128961%_)))
                                      (_%hd89138965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89128961%_))))
                                  (if (gx#stx-datum? _%hd89138965%_)
                                      (let ((_%e89158971%_
                                             (gx#stx-e _%hd89138965%_)))
                                        (if (equal? _%e89158971%_ 'macro:)
                                            (if (gx#stx-pair? _%tl89148968%_)
                                                (let ((_%e89168975%_
                                                       (gx#syntax-e
                                                        _%tl89148968%_)))
                                                  (let ((_%tl89188982%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e89168975%_)))
                                                        (_%hd89178979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e89168975%_))))
                                                    (if (gx#stx-null?
                                                         _%tl89188982%_)
                                                        (_%__match1952219523%_
                                                         _%e88189294%_
                                                         _%hd88199298%_
                                                         _%tl88209301%_
                                                         _%e88219304%_
                                                         _%hd88229308%_
                                                         _%tl88239311%_
                                                         _%e88529197%_
                                                         _%hd88539201%_
                                                         _%tl88549204%_
                                                         _%e89128961%_
                                                         _%hd89138965%_
                                                         _%tl89148968%_
                                                         _%e89158971%_
                                                         _%e89168975%_
                                                         _%hd89178979%_
                                                         _%tl89188982%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g88128924%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88128924%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g88128924%_)))))))
              (let () (declare (not safe)) (_%g88128924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl88239311%_)
                                              (let ((_%e88529197%_
                                                     (gx#syntax-e
                                                      _%tl88239311%_)))
                                                (let ((_%tl88549204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e88529197%_)))
                                                      (_%hd88539201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e88529197%_))))
                                                  (if (gx#stx-datum?
                                                       _%hd88539201%_)
                                                      (let ((_%e88559207%_
                                                             (gx#stx-e
                                                              _%hd88539201%_)))
                                                        (if (equal? _%e88559207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%tl88549204%_)
                        (let ((_%e88569211%_ (gx#syntax-e _%tl88549204%_)))
                          (let ((_%tl88589218%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e88569211%_)))
                                (_%hd88579215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e88569211%_))))
                            (if (gx#stx-pair/null? _%tl88589218%_)
                                (let ((_%__splice1935219353%_
                                       (gx#syntax-split-splice->vector
                                        _%tl88589218%_
                                        '0)))
                                  (let ((_%tl88619224%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1935219353%_
                                            '1)))
                                        (_%target88599221%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1935219353%_
                                            '0))))
                                    (if (gx#stx-null? _%tl88619224%_)
                                        (_%__match1943819439%_
                                         _%e88189294%_
                                         _%hd88199298%_
                                         _%tl88209301%_
                                         _%e88219304%_
                                         _%hd88229308%_
                                         _%tl88239311%_
                                         _%e88249314%_
                                         _%hd88259318%_
                                         _%tl88269321%_
                                         _%e88529197%_
                                         _%hd88539201%_
                                         _%tl88549204%_
                                         _%e88559207%_
                                         _%e88569211%_
                                         _%hd88579215%_
                                         _%tl88589218%_
                                         _%__splice1935219353%_
                                         _%target88599221%_
                                         _%tl88619224%_)
                                        (if (gx#stx-pair/null? _%tl88239311%_)
                                            (let ((_%__splice1935619357%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl88239311%_
                                                    '0)))
                                              (let ((_%tl88829104%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1935619357%_
                                                        '1)))
                                                    (_%target88809101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1935619357%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl88829104%_)
                                                    (_%__match1946419465%_
                                                     _%e88189294%_
                                                     _%hd88199298%_
                                                     _%tl88209301%_
                                                     _%e88219304%_
                                                     _%hd88229308%_
                                                     _%tl88239311%_
                                                     _%e88249314%_
                                                     _%hd88259318%_
                                                     _%tl88269321%_
                                                     _%__splice1935619357%_
                                                     _%target88809101%_
                                                     _%tl88829104%_)
                                                    (if (gx#stx-datum?
                                                         _%hd88579215%_)
                                                        (let ((_%e89158971%_
                                                               (gx#stx-e
                                                                _%hd88579215%_)))
                                                          (if (equal? _%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'macro:)
                      (if (gx#stx-pair? _%tl88589218%_)
                          (let ((_%e89168975%_ (gx#syntax-e _%tl88589218%_)))
                            (let ((_%tl89188982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89168975%_)))
                                  (_%hd89178979%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89168975%_))))
                              (if (gx#stx-null? _%tl89188982%_)
                                  (_%__match1952219523%_
                                   _%e88189294%_
                                   _%hd88199298%_
                                   _%tl88209301%_
                                   _%e88219304%_
                                   _%hd88229308%_
                                   _%tl88239311%_
                                   _%e88529197%_
                                   _%hd88539201%_
                                   _%tl88549204%_
                                   _%e88569211%_
                                   _%hd88579215%_
                                   _%tl88589218%_
                                   _%e89158971%_
                                   _%e89168975%_
                                   _%hd89178979%_
                                   _%tl89188982%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88128924%_)))))
                          (let () (declare (not safe)) (_%g88128924%_)))
                      (let () (declare (not safe)) (_%g88128924%_))))
                (let () (declare (not safe)) (_%g88128924%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-datum? _%hd88579215%_)
                                                (let ((_%e89158971%_
                                                       (gx#stx-e
                                                        _%hd88579215%_)))
                                                  (if (equal? _%e89158971%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88589218%_)
                                                          (let ((_%e89168975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88589218%_)))
                    (let ((_%tl89188982%_
                           (let () (declare (not safe)) (##cdr _%e89168975%_)))
                          (_%hd89178979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89168975%_))))
                      (if (gx#stx-null? _%tl89188982%_)
                          (_%__match1952219523%_
                           _%e88189294%_
                           _%hd88199298%_
                           _%tl88209301%_
                           _%e88219304%_
                           _%hd88229308%_
                           _%tl88239311%_
                           _%e88529197%_
                           _%hd88539201%_
                           _%tl88549204%_
                           _%e88569211%_
                           _%hd88579215%_
                           _%tl88589218%_
                           _%e89158971%_
                           _%e89168975%_
                           _%hd89178979%_
                           _%tl89188982%_)
                          (let () (declare (not safe)) (_%g88128924%_)))))
                  (let () (declare (not safe)) (_%g88128924%_)))
              (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88128924%_)))))))
                                (if (gx#stx-pair/null? _%tl88239311%_)
                                    (let ((_%__splice1935619357%_
                                           (gx#syntax-split-splice->vector
                                            _%tl88239311%_
                                            '0)))
                                      (let ((_%tl88829104%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1935619357%_
                                                '1)))
                                            (_%target88809101%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1935619357%_
                                                '0))))
                                        (if (gx#stx-null? _%tl88829104%_)
                                            (_%__match1946419465%_
                                             _%e88189294%_
                                             _%hd88199298%_
                                             _%tl88209301%_
                                             _%e88219304%_
                                             _%hd88229308%_
                                             _%tl88239311%_
                                             _%e88249314%_
                                             _%hd88259318%_
                                             _%tl88269321%_
                                             _%__splice1935619357%_
                                             _%target88809101%_
                                             _%tl88829104%_)
                                            (if (gx#stx-datum? _%hd88579215%_)
                                                (let ((_%e89158971%_
                                                       (gx#stx-e
                                                        _%hd88579215%_)))
                                                  (if (equal? _%e89158971%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88589218%_)
                                                          (let ((_%e89168975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88589218%_)))
                    (let ((_%tl89188982%_
                           (let () (declare (not safe)) (##cdr _%e89168975%_)))
                          (_%hd89178979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89168975%_))))
                      (if (gx#stx-null? _%tl89188982%_)
                          (_%__match1952219523%_
                           _%e88189294%_
                           _%hd88199298%_
                           _%tl88209301%_
                           _%e88219304%_
                           _%hd88229308%_
                           _%tl88239311%_
                           _%e88529197%_
                           _%hd88539201%_
                           _%tl88549204%_
                           _%e88569211%_
                           _%hd88579215%_
                           _%tl88589218%_
                           _%e89158971%_
                           _%e89168975%_
                           _%hd89178979%_
                           _%tl89188982%_)
                          (let () (declare (not safe)) (_%g88128924%_)))))
                  (let () (declare (not safe)) (_%g88128924%_)))
              (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88128924%_))))))
                                    (if (gx#stx-datum? _%hd88579215%_)
                                        (let ((_%e89158971%_
                                               (gx#stx-e _%hd88579215%_)))
                                          (if (equal? _%e89158971%_ 'macro:)
                                              (if (gx#stx-pair? _%tl88589218%_)
                                                  (let ((_%e89168975%_
                                                         (gx#syntax-e
                                                          _%tl88589218%_)))
                                                    (let ((_%tl89188982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89168975%_)))
                                                          (_%hd89178979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89168975%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89188982%_)
                                                          (_%__match1952219523%_
                                                           _%e88189294%_
                                                           _%hd88199298%_
                                                           _%tl88209301%_
                                                           _%e88219304%_
                                                           _%hd88229308%_
                                                           _%tl88239311%_
                                                           _%e88529197%_
                                                           _%hd88539201%_
                                                           _%tl88549204%_
                                                           _%e88569211%_
                                                           _%hd88579215%_
                                                           _%tl88589218%_
                                                           _%e89158971%_
                                                           _%e89168975%_
                                                           _%hd89178979%_
                                                           _%tl89188982%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88128924%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88128924%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88128924%_)))))))
                        (if (gx#stx-pair/null? _%tl88239311%_)
                            (let ((_%__splice1935619357%_
                                   (gx#syntax-split-splice->vector
                                    _%tl88239311%_
                                    '0)))
                              (let ((_%tl88829104%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1935619357%_
                                        '1)))
                                    (_%target88809101%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1935619357%_
                                        '0))))
                                (if (gx#stx-null? _%tl88829104%_)
                                    (_%__match1946419465%_
                                     _%e88189294%_
                                     _%hd88199298%_
                                     _%tl88209301%_
                                     _%e88219304%_
                                     _%hd88229308%_
                                     _%tl88239311%_
                                     _%e88249314%_
                                     _%hd88259318%_
                                     _%tl88269321%_
                                     _%__splice1935619357%_
                                     _%target88809101%_
                                     _%tl88829104%_)
                                    (if (gx#stx-null? _%tl88549204%_)
                                        (_%__match1948419485%_
                                         _%e88189294%_
                                         _%hd88199298%_
                                         _%tl88209301%_
                                         _%e88219304%_
                                         _%hd88229308%_
                                         _%tl88239311%_
                                         _%e88529197%_
                                         _%hd88539201%_
                                         _%tl88549204%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g88128924%_))))))
                            (if (gx#stx-null? _%tl88549204%_)
                                (_%__match1948419485%_
                                 _%e88189294%_
                                 _%hd88199298%_
                                 _%tl88209301%_
                                 _%e88219304%_
                                 _%hd88229308%_
                                 _%tl88239311%_
                                 _%e88529197%_
                                 _%hd88539201%_
                                 _%tl88549204%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g88128924%_)))))
                    (if (gx#stx-pair/null? _%tl88239311%_)
                        (let ((_%__splice1935619357%_
                               (gx#syntax-split-splice->vector
                                _%tl88239311%_
                                '0)))
                          (let ((_%tl88829104%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1935619357%_ '1)))
                                (_%target88809101%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1935619357%_ '0))))
                            (if (gx#stx-null? _%tl88829104%_)
                                (_%__match1946419465%_
                                 _%e88189294%_
                                 _%hd88199298%_
                                 _%tl88209301%_
                                 _%e88219304%_
                                 _%hd88229308%_
                                 _%tl88239311%_
                                 _%e88249314%_
                                 _%hd88259318%_
                                 _%tl88269321%_
                                 _%__splice1935619357%_
                                 _%target88809101%_
                                 _%tl88829104%_)
                                (if (gx#stx-null? _%tl88549204%_)
                                    (_%__match1948419485%_
                                     _%e88189294%_
                                     _%hd88199298%_
                                     _%tl88209301%_
                                     _%e88219304%_
                                     _%hd88229308%_
                                     _%tl88239311%_
                                     _%e88529197%_
                                     _%hd88539201%_
                                     _%tl88549204%_)
                                    (if (gx#stx-pair? _%tl88549204%_)
                                        (let ((_%e89128961%_
                                               (gx#syntax-e _%tl88549204%_)))
                                          (let ((_%tl89148968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e89128961%_)))
                                                (_%hd89138965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e89128961%_))))
                                            (if (gx#stx-datum? _%hd89138965%_)
                                                (let ((_%e89158971%_
                                                       (gx#stx-e
                                                        _%hd89138965%_)))
                                                  (if (equal? _%e89158971%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl89148968%_)
                                                          (let ((_%e89168975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl89148968%_)))
                    (let ((_%tl89188982%_
                           (let () (declare (not safe)) (##cdr _%e89168975%_)))
                          (_%hd89178979%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89168975%_))))
                      (if (gx#stx-null? _%tl89188982%_)
                          (_%__match1952219523%_
                           _%e88189294%_
                           _%hd88199298%_
                           _%tl88209301%_
                           _%e88219304%_
                           _%hd88229308%_
                           _%tl88239311%_
                           _%e88529197%_
                           _%hd88539201%_
                           _%tl88549204%_
                           _%e89128961%_
                           _%hd89138965%_
                           _%tl89148968%_
                           _%e89158971%_
                           _%e89168975%_
                           _%hd89178979%_
                           _%tl89188982%_)
                          (let () (declare (not safe)) (_%g88128924%_)))))
                  (let () (declare (not safe)) (_%g88128924%_)))
              (let () (declare (not safe)) (_%g88128924%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88128924%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88128924%_)))))))
                        (if (gx#stx-null? _%tl88549204%_)
                            (_%__match1948419485%_
                             _%e88189294%_
                             _%hd88199298%_
                             _%tl88209301%_
                             _%e88219304%_
                             _%hd88229308%_
                             _%tl88239311%_
                             _%e88529197%_
                             _%hd88539201%_
                             _%tl88549204%_)
                            (if (gx#stx-pair? _%tl88549204%_)
                                (let ((_%e89128961%_
                                       (gx#syntax-e _%tl88549204%_)))
                                  (let ((_%tl89148968%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e89128961%_)))
                                        (_%hd89138965%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e89128961%_))))
                                    (if (gx#stx-datum? _%hd89138965%_)
                                        (let ((_%e89158971%_
                                               (gx#stx-e _%hd89138965%_)))
                                          (if (equal? _%e89158971%_ 'macro:)
                                              (if (gx#stx-pair? _%tl89148968%_)
                                                  (let ((_%e89168975%_
                                                         (gx#syntax-e
                                                          _%tl89148968%_)))
                                                    (let ((_%tl89188982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89168975%_)))
                                                          (_%hd89178979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89168975%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89188982%_)
                                                          (_%__match1952219523%_
                                                           _%e88189294%_
                                                           _%hd88199298%_
                                                           _%tl88209301%_
                                                           _%e88219304%_
                                                           _%hd88229308%_
                                                           _%tl88239311%_
                                                           _%e88529197%_
                                                           _%hd88539201%_
                                                           _%tl88549204%_
                                                           _%e89128961%_
                                                           _%hd89138965%_
                                                           _%tl89148968%_
                                                           _%e89158971%_
                                                           _%e89168975%_
                                                           _%hd89178979%_
                                                           _%tl89188982%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88128924%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88128924%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88128924%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g88128924%_)))))))
              (if (gx#stx-pair/null? _%tl88239311%_)
                  (let ((_%__splice1935619357%_
                         (gx#syntax-split-splice->vector _%tl88239311%_ '0)))
                    (let ((_%tl88829104%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1935619357%_ '1)))
                          (_%target88809101%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1935619357%_ '0))))
                      (if (gx#stx-null? _%tl88829104%_)
                          (_%__match1946419465%_
                           _%e88189294%_
                           _%hd88199298%_
                           _%tl88209301%_
                           _%e88219304%_
                           _%hd88229308%_
                           _%tl88239311%_
                           _%e88249314%_
                           _%hd88259318%_
                           _%tl88269321%_
                           _%__splice1935619357%_
                           _%target88809101%_
                           _%tl88829104%_)
                          (if (gx#stx-null? _%tl88549204%_)
                              (_%__match1948419485%_
                               _%e88189294%_
                               _%hd88199298%_
                               _%tl88209301%_
                               _%e88219304%_
                               _%hd88229308%_
                               _%tl88239311%_
                               _%e88529197%_
                               _%hd88539201%_
                               _%tl88549204%_)
                              (if (gx#stx-pair? _%tl88549204%_)
                                  (let ((_%e89128961%_
                                         (gx#syntax-e _%tl88549204%_)))
                                    (let ((_%tl89148968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e89128961%_)))
                                          (_%hd89138965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e89128961%_))))
                                      (if (gx#stx-datum? _%hd89138965%_)
                                          (let ((_%e89158971%_
                                                 (gx#stx-e _%hd89138965%_)))
                                            (if (equal? _%e89158971%_ 'macro:)
                                                (if (gx#stx-pair?
                                                     _%tl89148968%_)
                                                    (let ((_%e89168975%_
                                                           (gx#syntax-e
                                                            _%tl89148968%_)))
                                                      (let ((_%tl89188982%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e89168975%_)))
                    (_%hd89178979%_
                     (let () (declare (not safe)) (##car _%e89168975%_))))
                (if (gx#stx-null? _%tl89188982%_)
                    (_%__match1952219523%_
                     _%e88189294%_
                     _%hd88199298%_
                     _%tl88209301%_
                     _%e88219304%_
                     _%hd88229308%_
                     _%tl88239311%_
                     _%e88529197%_
                     _%hd88539201%_
                     _%tl88549204%_
                     _%e89128961%_
                     _%hd89138965%_
                     _%tl89148968%_
                     _%e89158971%_
                     _%e89168975%_
                     _%hd89178979%_
                     _%tl89188982%_)
                    (let () (declare (not safe)) (_%g88128924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88128924%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88128924%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88128924%_)))))))
                  (if (gx#stx-null? _%tl88549204%_)
                      (_%__match1948419485%_
                       _%e88189294%_
                       _%hd88199298%_
                       _%tl88209301%_
                       _%e88219304%_
                       _%hd88229308%_
                       _%tl88239311%_
                       _%e88529197%_
                       _%hd88539201%_
                       _%tl88549204%_)
                      (if (gx#stx-pair? _%tl88549204%_)
                          (let ((_%e89128961%_ (gx#syntax-e _%tl88549204%_)))
                            (let ((_%tl89148968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89128961%_)))
                                  (_%hd89138965%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89128961%_))))
                              (if (gx#stx-datum? _%hd89138965%_)
                                  (let ((_%e89158971%_
                                         (gx#stx-e _%hd89138965%_)))
                                    (if (equal? _%e89158971%_ 'macro:)
                                        (if (gx#stx-pair? _%tl89148968%_)
                                            (let ((_%e89168975%_
                                                   (gx#syntax-e
                                                    _%tl89148968%_)))
                                              (let ((_%tl89188982%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89168975%_)))
                                                    (_%hd89178979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89168975%_))))
                                                (if (gx#stx-null?
                                                     _%tl89188982%_)
                                                    (_%__match1952219523%_
                                                     _%e88189294%_
                                                     _%hd88199298%_
                                                     _%tl88209301%_
                                                     _%e88219304%_
                                                     _%hd88229308%_
                                                     _%tl88239311%_
                                                     _%e88529197%_
                                                     _%hd88539201%_
                                                     _%tl88549204%_
                                                     _%e89128961%_
                                                     _%hd89138965%_
                                                     _%tl89148968%_
                                                     _%e89158971%_
                                                     _%e89168975%_
                                                     _%hd89178979%_
                                                     _%tl89188982%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88128924%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88128924%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88128924%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88128924%_)))))
                          (let () (declare (not safe)) (_%g88128924%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl88239311%_)
                                                  (let ((_%__splice1935619357%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88239311%_
                                                          '0)))
                                                    (let ((_%tl88829104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935619357%_
                                                              '1)))
                                                          (_%target88809101%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1935619357%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88829104%_)
                                                          (_%__match1946419465%_
                                                           _%e88189294%_
                                                           _%hd88199298%_
                                                           _%tl88209301%_
                                                           _%e88219304%_
                                                           _%hd88229308%_
                                                           _%tl88239311%_
                                                           _%e88249314%_
                                                           _%hd88259318%_
                                                           _%tl88269321%_
                                                           _%__splice1935619357%_
                                                           _%target88809101%_
                                                           _%tl88829104%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88128924%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_)))))))
                                  (if (gx#stx-pair? _%tl88239311%_)
                                      (let ((_%e88979037%_
                                             (gx#syntax-e _%tl88239311%_)))
                                        (let ((_%tl88999044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88979037%_)))
                                              (_%hd88989041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88979037%_))))
                                          (if (gx#stx-null? _%tl88999044%_)
                                              (_%__match1948419485%_
                                               _%e88189294%_
                                               _%hd88199298%_
                                               _%tl88209301%_
                                               _%e88219304%_
                                               _%hd88229308%_
                                               _%tl88239311%_
                                               _%e88979037%_
                                               _%hd88989041%_
                                               _%tl88999044%_)
                                              (if (gx#stx-pair? _%tl88999044%_)
                                                  (let ((_%e89128961%_
                                                         (gx#syntax-e
                                                          _%tl88999044%_)))
                                                    (let ((_%tl89148968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89128961%_)))
                                                          (_%hd89138965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89128961%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89138965%_)
                                                          (let ((_%e89158971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89138965%_)))
                    (if (equal? _%e89158971%_ 'macro:)
                        (if (gx#stx-pair? _%tl89148968%_)
                            (let ((_%e89168975%_ (gx#syntax-e _%tl89148968%_)))
                              (let ((_%tl89188982%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89168975%_)))
                                    (_%hd89178979%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89168975%_))))
                                (if (gx#stx-null? _%tl89188982%_)
                                    (_%__match1952219523%_
                                     _%e88189294%_
                                     _%hd88199298%_
                                     _%tl88209301%_
                                     _%e88219304%_
                                     _%hd88229308%_
                                     _%tl88239311%_
                                     _%e88979037%_
                                     _%hd88989041%_
                                     _%tl88999044%_
                                     _%e89128961%_
                                     _%hd89138965%_
                                     _%tl89148968%_
                                     _%e89158971%_
                                     _%e89168975%_
                                     _%hd89178979%_
                                     _%tl89188982%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88128924%_)))))
                            (let () (declare (not safe)) (_%g88128924%_)))
                        (let () (declare (not safe)) (_%g88128924%_))))
                  (let () (declare (not safe)) (_%g88128924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88128924%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88128924%_))))))
                          (let () (declare (not safe)) (_%g88128924%_)))))
                  (let () (declare (not safe)) (_%g88128924%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9404%_)
        (let* ((_%g94089432%_
                (lambda (_%g94099428%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g94099428%_)))
               (_%g94079515%_
                (lambda (_%g94099436%_)
                  (if (gx#stx-pair? _%g94099436%_)
                      (let ((_%e94129439%_ (gx#syntax-e _%g94099436%_)))
                        (let ((_%hd94139443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e94129439%_)))
                              (_%tl94149446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e94129439%_))))
                          (if (gx#stx-pair? _%tl94149446%_)
                              (let ((_%e94159449%_
                                     (gx#syntax-e _%tl94149446%_)))
                                (let ((_%hd94169453%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e94159449%_)))
                                      (_%tl94179456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e94159449%_))))
                                  (if (gx#stx-pair/null? _%tl94179456%_)
                                      (let ((_g20993_
                                             (gx#syntax-split-splice
                                              _%tl94179456%_
                                              '0)))
                                        (begin
                                          (let ((_g20994_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20993_)
                                                       (##values-length
                                                        _g20993_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20994_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20994_)))
                                          (let ((_%target94189459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20993_ 0)))
                                                (_%tl94209462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20993_ 1))))
                                            (if (gx#stx-null? _%tl94209462%_)
                                                (letrec ((_%loop94219465%_
                                                          (lambda (_%hd94199469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses94259472%_)
                    (if (gx#stx-pair? _%hd94199469%_)
                        (let ((_%e94229474%_ (gx#syntax-e _%hd94199469%_)))
                          (let ((_%lp-hd94239478%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94229474%_)))
                                (_%lp-tl94249481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94229474%_))))
                            (_%loop94219465%_
                             _%lp-tl94249481%_
                             (cons _%lp-hd94239478%_ _%clauses94259472%_))))
                        (let ((_%clauses94269484%_
                               (reverse _%clauses94259472%_)))
                          ((lambda (_%g94109487%_ _%g94119489%_)
                             (if (gx#identifier? _%g94119489%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%g94119489%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g95069509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g95079512%_)
                          (cons _%g95069509%_ _%g95079512%_))
                        '()
                        _%g94109487%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g94089432%_ _%g94099436%_)))
                           _%clauses94269484%_
                           _%hd94169453%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop94219465%_
                                                   _%target94189459%_
                                                   '()))
                                                (_%g94089432%_
                                                 _%g94099436%_)))))
                                      (_%g94089432%_ _%g94099436%_))))
                              (_%g94089432%_ _%g94099436%_))))
                      (_%g94089432%_ _%g94099436%_)))))
          (_%g94079515%_ _%$stx9404%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9520%_)
        (let* ((_%g95249542%_
                (lambda (_%g95259538%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g95259538%_)))
               (_%g95239597%_
                (lambda (_%g95259546%_)
                  (if (gx#stx-pair? _%g95259546%_)
                      (let ((_%e95289549%_ (gx#syntax-e _%g95259546%_)))
                        (let ((_%hd95299553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e95289549%_)))
                              (_%tl95309556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e95289549%_))))
                          (if (gx#stx-pair? _%tl95309556%_)
                              (let ((_%e95319559%_
                                     (gx#syntax-e _%tl95309556%_)))
                                (let ((_%hd95329563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e95319559%_)))
                                      (_%tl95339566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e95319559%_))))
                                  (if (gx#stx-pair? _%tl95339566%_)
                                      (let ((_%e95349569%_
                                             (gx#syntax-e _%tl95339566%_)))
                                        (let ((_%hd95359573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e95349569%_)))
                                              (_%tl95369576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e95349569%_))))
                                          (if (gx#stx-null? _%tl95369576%_)
                                              ((lambda (_%g95269579%_
                                                        _%g95279581%_)
                                                 (if (gx#identifier-list?
                                                      _%g95279581%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%g95279581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g95269579%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g95249542%_
                                                      _%g95259546%_)))
                                               _%hd95359573%_
                                               _%hd95329563%_)
                                              (_%g95249542%_ _%g95259546%_))))
                                      (_%g95249542%_ _%g95259546%_))))
                              (_%g95249542%_ _%g95259546%_))))
                      (_%g95249542%_ _%g95259546%_)))))
          (_%g95239597%_ _%$stx9520%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9601%_)
        (let* ((_%g96059629%_
                (lambda (_%g96069625%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g96069625%_)))
               (_%g96049712%_
                (lambda (_%g96069633%_)
                  (if (gx#stx-pair? _%g96069633%_)
                      (let ((_%e96099636%_ (gx#syntax-e _%g96069633%_)))
                        (let ((_%hd96109640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e96099636%_)))
                              (_%tl96119643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e96099636%_))))
                          (if (gx#stx-pair? _%tl96119643%_)
                              (let ((_%e96129646%_
                                     (gx#syntax-e _%tl96119643%_)))
                                (let ((_%hd96139650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e96129646%_)))
                                      (_%tl96149653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e96129646%_))))
                                  (if (gx#stx-pair/null? _%tl96149653%_)
                                      (let ((_g20995_
                                             (gx#syntax-split-splice
                                              _%tl96149653%_
                                              '0)))
                                        (begin
                                          (let ((_g20996_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20995_)
                                                       (##values-length
                                                        _g20995_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20996_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20996_)))
                                          (let ((_%target96159656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20995_ 0)))
                                                (_%tl96179659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g20995_ 1))))
                                            (if (gx#stx-null? _%tl96179659%_)
                                                (letrec ((_%loop96189662%_
                                                          (lambda (_%hd96169666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause96229669%_)
                    (if (gx#stx-pair? _%hd96169666%_)
                        (let ((_%e96199671%_ (gx#syntax-e _%hd96169666%_)))
                          (let ((_%lp-hd96209675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96199671%_)))
                                (_%lp-tl96219678%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96199671%_))))
                            (_%loop96189662%_
                             _%lp-tl96219678%_
                             (cons _%lp-hd96209675%_ _%clause96229669%_))))
                        (let ((_%clause96239681%_
                               (reverse _%clause96229669%_)))
                          ((lambda (_%g96079684%_ _%g96089686%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%g96089686%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g97039706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g97049709%_)
                            (cons _%g97039706%_ _%g97049709%_))
                          '()
                          _%g96079684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause96239681%_
                           _%hd96139650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop96189662%_
                                                   _%target96159656%_
                                                   '()))
                                                (_%g96059629%_
                                                 _%g96069633%_)))))
                                      (_%g96059629%_ _%g96069633%_))))
                              (_%g96059629%_ _%g96069633%_))))
                      (_%g96059629%_ _%g96069633%_)))))
          (_%g96049712%_ _%$stx9601%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9717%_)
        (letrec ((_%parse-clauses9720%_
                  (lambda (_%e12177%_ _%clauses12179%_)
                    (let _%lp12181%_ ((_%rest12184%_ _%clauses12179%_)
                                      (_%datums12186%_ '())
                                      (_%dispatch12187%_ '())
                                      (_%default12188%_ '#f))
                      (let* ((_%__stx1962119622%_ _%rest12184%_)
                             (_%g1219112203%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1962119622%_))))
                        (let ((_%__kont1962419625%_
                               (lambda (_%g1219312235%_ _%g1219412237%_)
                                 (let* ((_%__stx1952519526%_ _%g1219412237%_)
                                        (_%g1225512328%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1952519526%_))))
                                   (let ((_%__kont1952819529%_
                                          (lambda (_%g1225712685%_)
                                            (if (gx#stx-null? _%g1219312235%_)
                                                (let* ((_%g1270012708%_
                                                        (lambda (_%g1270112704%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1270112704%_)))
                                                       (_%g1269912727%_
                                                        (lambda (_%g1270112712%_)
                                                          ((lambda (_%g1270212715%_)
                                                             (_%lp12181%_
                                                              '()
                                                              _%datums12186%_
                                                              _%dispatch12187%_
                                                              (cons _%g1225712685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1270212715%_ '()))))
                   _%g1270112712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1269912727%_ _%e12177%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9717%_
                                                 _%g1219412237%_))))
                                         (_%__kont1953019531%_
                                          (lambda (_%g1226712625%_)
                                            (if (gx#stx-null? _%g1219312235%_)
                                                (_%lp12181%_
                                                 '()
                                                 _%datums12186%_
                                                 _%dispatch12187%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1263912642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1264012645%_)
                        (cons _%g1263912642%_ _%g1264012645%_))
                      '()
                      _%g1226712625%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9717%_
                                                 _%g1219412237%_))))
                                         (_%__kont1953419535%_
                                          (lambda (_%g1228012512%_
                                                   _%g1228112514%_)
                                            (if (null? (foldr (lambda (_%g1253212535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1253312538%_)
                        (cons _%g1253212535%_ _%g1253312538%_))
                      '()
                      _%g1228112514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12181%_
                                                 _%g1219312235%_
                                                 _%datums12186%_
                                                 _%dispatch12187%_
                                                 _%default12188%_)
                                                (let* ((_%g1254112549%_
                                                        (lambda (_%g1254212545%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1254212545%_)))
                                                       (_%g1254012576%_
                                                        (lambda (_%g1254212553%_)
                                                          ((lambda (_%g1254312556%_)
                                                             (_%lp12181%_
                                                              _%g1219312235%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1256712570%_
                                                 _%g1256812573%_)
                                          (cons _%g1256712570%_
                                                _%g1256812573%_))
                                        '()
                                        _%g1228112514%_))
                            _%datums12186%_)
                      (cons (cons _%g1228012512%_ (cons _%g1254312556%_ '()))
                            _%dispatch12187%_)
                      _%default12188%_))
                   _%g1254212553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1254012576%_
                                                   _%e12177%_)))))
                                         (_%__kont1953819539%_
                                          (lambda (_%g1230012401%_
                                                   _%g1230112403%_)
                                            (if (null? (foldr (lambda (_%g1242212425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1242312428%_)
                        (cons _%g1242212425%_ _%g1242312428%_))
                      '()
                      _%g1230112403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12181%_
                                                 _%g1219312235%_
                                                 _%datums12186%_
                                                 _%dispatch12187%_
                                                 _%default12188%_)
                                                (_%lp12181%_
                                                 _%g1219312235%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1243012433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1243112436%_)
                             (cons _%g1243012433%_ _%g1243112436%_))
                           '()
                           _%g1230112403%_))
               _%datums12186%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1243812441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1243912444%_)
                              (cons _%g1243812441%_ _%g1243912444%_))
                            '()
                            _%g1230012401%_))
               _%dispatch12187%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default12188%_)))))
                                     (let* ((_%__match1961819619%_
                                             (lambda (_%e1230212335%_
                                                      _%hd1230312339%_
                                                      _%tl1230412342%_
                                                      _%__splice1954019541%_
                                                      _%target1230512345%_
                                                      _%tl1230712348%_)
                                               (letrec ((_%loop1230812351%_
                                                         (lambda (_%hd1230612355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1231212358%_)
                   (if (gx#stx-pair? _%hd1230612355%_)
                       (let ((_%e1230912360%_ (gx#syntax-e _%hd1230612355%_)))
                         (let ((_%lp-tl1231112367%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1230912360%_)))
                               (_%lp-hd1231012364%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1230912360%_))))
                           (_%loop1230812351%_
                            _%lp-tl1231112367%_
                            (cons _%lp-hd1231012364%_ _%datum1231212358%_))))
                       (let ((_%datum1231312370%_
                              (reverse _%datum1231212358%_)))
                         (if (gx#stx-pair/null? _%tl1230412342%_)
                             (let ((_%__splice1954219543%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1230412342%_
                                     '0)))
                               (let ((_%tl1231612376%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1954219543%_
                                         '1)))
                                     (_%target1231412373%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1954219543%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1231612376%_)
                                     (letrec ((_%loop1231712379%_
                                               (lambda (_%hd1231512383%_
                                                        _%body1232112386%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1231512383%_)
                                                     (let ((_%e1231812388%_
                                                            (gx#syntax-e
                                                             _%hd1231512383%_)))
                                                       (let ((_%lp-tl1232012395%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1231812388%_)))
                     (_%lp-hd1231912392%_
                      (let () (declare (not safe)) (##car _%e1231812388%_))))
                 (_%loop1231712379%_
                  _%lp-tl1232012395%_
                  (cons _%lp-hd1231912392%_ _%body1232112386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1232212398%_
                                                            (reverse _%body1232112386%_)))
                                                       (_%__kont1953819539%_
                                                        _%body1232212398%_
                                                        _%datum1231312370%_))))))
                                       (_%loop1231712379%_
                                        _%target1231412373%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1225512328%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1225512328%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1230812351%_
                                                  _%target1230512345%_
                                                  '()))))
                                            (_%__match1960419605%_
                                             (lambda (_%e1228212454%_
                                                      _%hd1228312458%_
                                                      _%tl1228412461%_
                                                      _%__splice1953619537%_
                                                      _%target1228512464%_
                                                      _%tl1228712467%_)
                                               (letrec ((_%loop1228812470%_
                                                         (lambda (_%hd1228612474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1229212477%_)
                   (if (gx#stx-pair? _%hd1228612474%_)
                       (let ((_%e1228912479%_ (gx#syntax-e _%hd1228612474%_)))
                         (let ((_%lp-tl1229112486%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1228912479%_)))
                               (_%lp-hd1229012483%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1228912479%_))))
                           (_%loop1228812470%_
                            _%lp-tl1229112486%_
                            (cons _%lp-hd1229012483%_ _%datum1229212477%_))))
                       (let ((_%datum1229312489%_
                              (reverse _%datum1229212477%_)))
                         (if (gx#stx-pair? _%tl1228412461%_)
                             (let ((_%e1229412492%_
                                    (gx#syntax-e _%tl1228412461%_)))
                               (let ((_%tl1229612499%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1229412492%_)))
                                     (_%hd1229512496%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1229412492%_))))
                                 (if (gx#identifier? _%hd1229512496%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g20997_|
                                          _%hd1229512496%_)
                                         (if (gx#stx-pair? _%tl1229612499%_)
                                             (let ((_%e1229712502%_
                                                    (gx#syntax-e
                                                     _%tl1229612499%_)))
                                               (let ((_%tl1229912509%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1229712502%_)))
                                                     (_%hd1229812506%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1229712502%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1229912509%_)
                                                     (_%__kont1953419535%_
                                                      _%hd1229812506%_
                                                      _%datum1229312489%_)
                                                     (_%__match1961819619%_
                                                      _%e1228212454%_
                                                      _%hd1228312458%_
                                                      _%tl1228412461%_
                                                      _%__splice1953619537%_
                                                      _%target1228512464%_
                                                      _%tl1228712467%_))))
                                             (_%__match1961819619%_
                                              _%e1228212454%_
                                              _%hd1228312458%_
                                              _%tl1228412461%_
                                              _%__splice1953619537%_
                                              _%target1228512464%_
                                              _%tl1228712467%_))
                                         (_%__match1961819619%_
                                          _%e1228212454%_
                                          _%hd1228312458%_
                                          _%tl1228412461%_
                                          _%__splice1953619537%_
                                          _%target1228512464%_
                                          _%tl1228712467%_))
                                     (_%__match1961819619%_
                                      _%e1228212454%_
                                      _%hd1228312458%_
                                      _%tl1228412461%_
                                      _%__splice1953619537%_
                                      _%target1228512464%_
                                      _%tl1228712467%_))))
                             (_%__match1961819619%_
                              _%e1228212454%_
                              _%hd1228312458%_
                              _%tl1228412461%_
                              _%__splice1953619537%_
                              _%target1228512464%_
                              _%tl1228712467%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1228812470%_
                                                  _%target1228512464%_
                                                  '()))))
                                            (_%__match1959019591%_
                                             (lambda (_%e1226812587%_
                                                      _%hd1226912591%_
                                                      _%tl1227012594%_
                                                      _%__splice1953219533%_
                                                      _%target1227112597%_
                                                      _%tl1227312600%_)
                                               (letrec ((_%loop1227412603%_
                                                         (lambda (_%hd1227212607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1227812610%_)
                   (if (gx#stx-pair? _%hd1227212607%_)
                       (let ((_%e1227512612%_ (gx#syntax-e _%hd1227212607%_)))
                         (let ((_%lp-tl1227712619%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1227512612%_)))
                               (_%lp-hd1227612616%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1227512612%_))))
                           (_%loop1227412603%_
                            _%lp-tl1227712619%_
                            (cons _%lp-hd1227612616%_ _%body1227812610%_))))
                       (let ((_%body1227912622%_ (reverse _%body1227812610%_)))
                         (_%__kont1953019531%_ _%body1227912622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1227412603%_
                                                  _%target1227112597%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1952519526%_)
                                           (let ((_%e1225812655%_
                                                  (gx#syntax-e
                                                   _%__stx1952519526%_)))
                                             (let ((_%tl1226012662%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1225812655%_)))
                                                   (_%hd1225912659%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1225812655%_))))
                                               (if (gx#identifier?
                                                    _%hd1225912659%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g20998_|
                                                        _%hd1225912659%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1226012662%_)
                                                           (let ((_%e1226112665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1226012662%_)))
                     (let ((_%tl1226312672%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1226112665%_)))
                           (_%hd1226212669%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1226112665%_))))
                       (if (gx#identifier? _%hd1226212669%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g20999_|
                                _%hd1226212669%_)
                               (if (gx#stx-pair? _%tl1226312672%_)
                                   (let ((_%e1226412675%_
                                          (gx#syntax-e _%tl1226312672%_)))
                                     (let ((_%tl1226612682%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1226412675%_)))
                                           (_%hd1226512679%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1226412675%_))))
                                       (if (gx#stx-null? _%tl1226612682%_)
                                           (_%__kont1952819529%_
                                            _%hd1226512679%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1226012662%_)
                                               (let ((_%__splice1953219533%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1226012662%_
                                                       '0)))
                                                 (let ((_%tl1227312600%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953219533%_
                                                           '1)))
                                                       (_%target1227112597%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953219533%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1227312600%_)
                                                       (_%__match1959019591%_
                                                        _%e1225812655%_
                                                        _%hd1225912659%_
                                                        _%tl1226012662%_
                                                        _%__splice1953219533%_
                                                        _%target1227112597%_
                                                        _%tl1227312600%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1225912659%_)
                                                           (let ((_%__splice1953619537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1225912659%_
                           '0)))
                     (let ((_%tl1228712467%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953619537%_ '1)))
                           (_%target1228512464%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953619537%_ '0))))
                       (if (gx#stx-null? _%tl1228712467%_)
                           (_%__match1960419605%_
                            _%e1225812655%_
                            _%hd1225912659%_
                            _%tl1226012662%_
                            _%__splice1953619537%_
                            _%target1228512464%_
                            _%tl1228712467%_)
                           (let () (declare (not safe)) (_%g1225512328%_)))))
                   (let () (declare (not safe)) (_%g1225512328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1225912659%_)
                                                   (let ((_%__splice1953619537%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1225912659%_
                                                           '0)))
                                                     (let ((_%tl1228712467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953619537%_
                                                               '1)))
                                                           (_%target1228512464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953619537%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1228712467%_)
                                                           (_%__match1960419605%_
                                                            _%e1225812655%_
                                                            _%hd1225912659%_
                                                            _%tl1226012662%_
                                                            _%__splice1953619537%_
                                                            _%target1228512464%_
                                                            _%tl1228712467%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1225512328%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225512328%_)))))))
                                   (if (gx#stx-pair/null? _%tl1226012662%_)
                                       (let ((_%__splice1953219533%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1226012662%_
                                               '0)))
                                         (let ((_%tl1227312600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953219533%_
                                                   '1)))
                                               (_%target1227112597%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953219533%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1227312600%_)
                                               (_%__match1959019591%_
                                                _%e1225812655%_
                                                _%hd1225912659%_
                                                _%tl1226012662%_
                                                _%__splice1953219533%_
                                                _%target1227112597%_
                                                _%tl1227312600%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1225912659%_)
                                                   (let ((_%__splice1953619537%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1225912659%_
                                                           '0)))
                                                     (let ((_%tl1228712467%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953619537%_
                                                               '1)))
                                                           (_%target1228512464%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1953619537%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1228712467%_)
                                                           (_%__match1960419605%_
                                                            _%e1225812655%_
                                                            _%hd1225912659%_
                                                            _%tl1226012662%_
                                                            _%__splice1953619537%_
                                                            _%target1228512464%_
                                                            _%tl1228712467%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1225512328%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225512328%_))))))
                                       (if (gx#stx-pair/null? _%hd1225912659%_)
                                           (let ((_%__splice1953619537%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1225912659%_
                                                   '0)))
                                             (let ((_%tl1228712467%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953619537%_
                                                       '1)))
                                                   (_%target1228512464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953619537%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1228712467%_)
                                                   (_%__match1960419605%_
                                                    _%e1225812655%_
                                                    _%hd1225912659%_
                                                    _%tl1226012662%_
                                                    _%__splice1953619537%_
                                                    _%target1228512464%_
                                                    _%tl1228712467%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225512328%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225512328%_)))))
                               (if (gx#stx-pair/null? _%tl1226012662%_)
                                   (let ((_%__splice1953219533%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1226012662%_
                                           '0)))
                                     (let ((_%tl1227312600%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953219533%_
                                               '1)))
                                           (_%target1227112597%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953219533%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1227312600%_)
                                           (_%__match1959019591%_
                                            _%e1225812655%_
                                            _%hd1225912659%_
                                            _%tl1226012662%_
                                            _%__splice1953219533%_
                                            _%target1227112597%_
                                            _%tl1227312600%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1225912659%_)
                                               (let ((_%__splice1953619537%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1225912659%_
                                                       '0)))
                                                 (let ((_%tl1228712467%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953619537%_
                                                           '1)))
                                                       (_%target1228512464%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1953619537%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1228712467%_)
                                                       (_%__match1960419605%_
                                                        _%e1225812655%_
                                                        _%hd1225912659%_
                                                        _%tl1226012662%_
                                                        _%__splice1953619537%_
                                                        _%target1228512464%_
                                                        _%tl1228712467%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1225512328%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1225512328%_))))))
                                   (if (gx#stx-pair/null? _%hd1225912659%_)
                                       (let ((_%__splice1953619537%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1225912659%_
                                               '0)))
                                         (let ((_%tl1228712467%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953619537%_
                                                   '1)))
                                               (_%target1228512464%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1953619537%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1228712467%_)
                                               (_%__match1960419605%_
                                                _%e1225812655%_
                                                _%hd1225912659%_
                                                _%tl1226012662%_
                                                _%__splice1953619537%_
                                                _%target1228512464%_
                                                _%tl1228712467%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1225512328%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1225512328%_)))))
                           (if (gx#stx-pair/null? _%tl1226012662%_)
                               (let ((_%__splice1953219533%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1226012662%_
                                       '0)))
                                 (let ((_%tl1227312600%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1953219533%_
                                           '1)))
                                       (_%target1227112597%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1953219533%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1227312600%_)
                                       (_%__match1959019591%_
                                        _%e1225812655%_
                                        _%hd1225912659%_
                                        _%tl1226012662%_
                                        _%__splice1953219533%_
                                        _%target1227112597%_
                                        _%tl1227312600%_)
                                       (if (gx#stx-pair/null? _%hd1225912659%_)
                                           (let ((_%__splice1953619537%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1225912659%_
                                                   '0)))
                                             (let ((_%tl1228712467%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953619537%_
                                                       '1)))
                                                   (_%target1228512464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1953619537%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1228712467%_)
                                                   (_%__match1960419605%_
                                                    _%e1225812655%_
                                                    _%hd1225912659%_
                                                    _%tl1226012662%_
                                                    _%__splice1953619537%_
                                                    _%target1228512464%_
                                                    _%tl1228712467%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1225512328%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225512328%_))))))
                               (if (gx#stx-pair/null? _%hd1225912659%_)
                                   (let ((_%__splice1953619537%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1225912659%_
                                           '0)))
                                     (let ((_%tl1228712467%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953619537%_
                                               '1)))
                                           (_%target1228512464%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953619537%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1228712467%_)
                                           (_%__match1960419605%_
                                            _%e1225812655%_
                                            _%hd1225912659%_
                                            _%tl1226012662%_
                                            _%__splice1953619537%_
                                            _%target1228512464%_
                                            _%tl1228712467%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225512328%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225512328%_)))))))
                   (if (gx#stx-pair/null? _%tl1226012662%_)
                       (let ((_%__splice1953219533%_
                              (gx#syntax-split-splice->vector
                               _%tl1226012662%_
                               '0)))
                         (let ((_%tl1227312600%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1953219533%_ '1)))
                               (_%target1227112597%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1953219533%_ '0))))
                           (if (gx#stx-null? _%tl1227312600%_)
                               (_%__match1959019591%_
                                _%e1225812655%_
                                _%hd1225912659%_
                                _%tl1226012662%_
                                _%__splice1953219533%_
                                _%target1227112597%_
                                _%tl1227312600%_)
                               (if (gx#stx-pair/null? _%hd1225912659%_)
                                   (let ((_%__splice1953619537%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1225912659%_
                                           '0)))
                                     (let ((_%tl1228712467%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953619537%_
                                               '1)))
                                           (_%target1228512464%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1953619537%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1228712467%_)
                                           (_%__match1960419605%_
                                            _%e1225812655%_
                                            _%hd1225912659%_
                                            _%tl1226012662%_
                                            _%__splice1953619537%_
                                            _%target1228512464%_
                                            _%tl1228712467%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225512328%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225512328%_))))))
                       (if (gx#stx-pair/null? _%hd1225912659%_)
                           (let ((_%__splice1953619537%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1225912659%_
                                   '0)))
                             (let ((_%tl1228712467%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1953619537%_
                                       '1)))
                                   (_%target1228512464%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1953619537%_
                                       '0))))
                               (if (gx#stx-null? _%tl1228712467%_)
                                   (_%__match1960419605%_
                                    _%e1225812655%_
                                    _%hd1225912659%_
                                    _%tl1226012662%_
                                    _%__splice1953619537%_
                                    _%target1228512464%_
                                    _%tl1228712467%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1225512328%_)))))
                           (let () (declare (not safe)) (_%g1225512328%_)))))
               (if (gx#stx-pair/null? _%hd1225912659%_)
                   (let ((_%__splice1953619537%_
                          (gx#syntax-split-splice->vector
                           _%hd1225912659%_
                           '0)))
                     (let ((_%tl1228712467%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953619537%_ '1)))
                           (_%target1228512464%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1953619537%_ '0))))
                       (if (gx#stx-null? _%tl1228712467%_)
                           (_%__match1960419605%_
                            _%e1225812655%_
                            _%hd1225912659%_
                            _%tl1226012662%_
                            _%__splice1953619537%_
                            _%target1228512464%_
                            _%tl1228712467%_)
                           (let () (declare (not safe)) (_%g1225512328%_)))))
                   (let () (declare (not safe)) (_%g1225512328%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1225912659%_)
                                                       (let ((_%__splice1953619537%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1225912659%_
                                                               '0)))
                                                         (let ((_%tl1228712467%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1953619537%_ '1)))
                       (_%target1228512464%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1953619537%_ '0))))
                   (if (gx#stx-null? _%tl1228712467%_)
                       (_%__match1960419605%_
                        _%e1225812655%_
                        _%hd1225912659%_
                        _%tl1226012662%_
                        _%__splice1953619537%_
                        _%target1228512464%_
                        _%tl1228712467%_)
                       (let () (declare (not safe)) (_%g1225512328%_)))))
               (let () (declare (not safe)) (_%g1225512328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1225512328%_))))))))
                              (_%__kont1962619627%_
                               (lambda ()
                                 (_%check-duplicate-datums9722%_
                                  _%datums12186%_)
                                 (values (reverse _%datums12186%_)
                                         (reverse _%dispatch12187%_)
                                         (let ((_%$e12214%_ _%default12188%_))
                                           (if _%$e12214%_
                                               _%$e12214%_
                                               '#!void))))))
                          (let ((_%g1219012218%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1962119622%_)
                                       (_%__kont1962619627%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1219112203%_))))))
                            (if (gx#stx-pair? _%__stx1962119622%_)
                                (let ((_%e1219512225%_
                                       (gx#syntax-e _%__stx1962119622%_)))
                                  (let ((_%tl1219712232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1219512225%_)))
                                        (_%hd1219612229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1219512225%_))))
                                    (_%__kont1962419625%_
                                     _%tl1219712232%_
                                     _%hd1219612229%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1219012218%_)))))))))
                 (_%check-duplicate-datums9722%_
                  (lambda (_%datums12165%_)
                    (let ((_%ht12168%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst12171%_)
                         (for-each
                          (lambda (_%datum12174%_)
                            (if (hash-get _%ht12168%_ _%datum12174%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9717%_
                                 _%datum12174%_)
                                (hash-put! _%ht12168%_ _%datum12174%_ '#t)))
                          _%lst12171%_))
                       _%datums12165%_))))
                 (_%count-datums9723%_
                  (lambda (_%datums12158%_)
                    (foldl (lambda (_%lst12161%_ _%r12163%_)
                             (+ (length _%lst12161%_) _%r12163%_))
                           '0
                           _%datums12158%_)))
                 (_%symbolic-datums?9724%_
                  (lambda (_%datums12152%_)
                    (andmap (lambda (_%lst12155%_)
                              (andmap symbol? _%lst12155%_))
                            _%datums12152%_)))
                 (_%char-datums?9725%_
                  (lambda (_%datums12146%_)
                    (andmap (lambda (_%lst12149%_) (andmap char? _%lst12149%_))
                            _%datums12146%_)))
                 (_%fixnum-datums?9726%_
                  (lambda (_%datums12140%_)
                    (andmap (lambda (_%lst12143%_)
                              (andmap fixnum? _%lst12143%_))
                            _%datums12140%_)))
                 (_%eq-datums?9727%_
                  (lambda (_%datums12123%_)
                    (andmap (lambda (_%lst12126%_)
                              (andmap (lambda (_%x12129%_)
                                        (let ((_%$e12132%_
                                               (symbol? _%x12129%_)))
                                          (if _%$e12132%_
                                              _%$e12132%_
                                              (let ((_%$e12136%_
                                                     (keyword? _%x12129%_)))
                                                (if _%$e12136%_
                                                    _%$e12136%_
                                                    (immediate?
                                                     _%x12129%_))))))
                                      _%lst12126%_))
                            _%datums12123%_)))
                 (_%generate-simple-case9728%_
                  (lambda (_%e11889%_
                           _%datums11891%_
                           _%dispatch11892%_
                           _%default11893%_)
                    (let* ((_%g1189511903%_
                            (lambda (_%g1189611899%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1189611899%_)))
                           (_%g1189412119%_
                            (lambda (_%g1189611907%_)
                              ((lambda (_%g1189711910%_)
                                 (let _%recur11922%_ ((_%datums11925%_
                                                       _%datums11891%_)
                                                      (_%dispatch11927%_
                                                       _%dispatch11892%_))
                                   (let* ((_%__stx1963919640%_ _%datums11925%_)
                                          (_%g1193011951%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1963919640%_))))
                                     (let ((_%__kont1964219643%_
                                            (lambda (_%g1193212007%_
                                                     _%g1193312009%_)
                                              (let* ((_%g1202912041%_
                                                      (lambda (_%g1203012037%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1203012037%_)))
                                                     (_%g1202812111%_
                                                      (lambda (_%g1203012045%_)
                                                        (if (gx#stx-pair?
                                                             _%g1203012045%_)
                                                            (let ((_%e1203312048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1203012045%_)))
                      (let ((_%hd1203412052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1203312048%_)))
                            (_%tl1203512055%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1203312048%_))))
                        ((lambda (_%g1203112058%_ _%g1203212060%_)
                           (let* ((_%g1207212080%_
                                   (lambda (_%g1207312076%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1207312076%_)))
                                  (_%g1207112107%_
                                   (lambda (_%g1207312084%_)
                                     ((lambda (_%g1207412087%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1209812101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1209912104%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1209812101%_
                                             (cons _%g1189711910%_ '())))
                                 _%g1209912104%_))
                         '()
                         _%g1193312009%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g1203212060%_
                                                          (cons _%g1207412087%_
                                                                '())))))
                                      _%g1207312084%_))))
                             (_%g1207112107%_
                              (_%recur11922%_
                               _%g1193212007%_
                               _%g1203112058%_))))
                         _%tl1203512055%_
                         _%hd1203412052%_)))
                    (_%g1202912041%_ _%g1203012045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1202812111%_
                                                 _%dispatch11927%_))))
                                           (_%__kont1964619647%_
                                            (lambda () _%default11893%_)))
                                       (let ((_%__match1966219663%_
                                              (lambda (_%e1193411969%_
                                                       _%hd1193511973%_
                                                       _%tl1193611976%_
                                                       _%__splice1964419645%_
                                                       _%target1193711979%_
                                                       _%tl1193911982%_)
                                                (letrec ((_%loop1194011985%_
                                                          (lambda (_%hd1193811989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1194411992%_)
                    (if (gx#stx-pair? _%hd1193811989%_)
                        (let ((_%e1194111994%_ (gx#syntax-e _%hd1193811989%_)))
                          (let ((_%lp-tl1194312001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1194111994%_)))
                                (_%lp-hd1194211998%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1194111994%_))))
                            (_%loop1194011985%_
                             _%lp-tl1194312001%_
                             (cons _%lp-hd1194211998%_ _%datum1194411992%_))))
                        (let ((_%datum1194512004%_
                               (reverse _%datum1194411992%_)))
                          (_%__kont1964219643%_
                           _%tl1193611976%_
                           _%datum1194512004%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1194011985%_
                                                   _%target1193711979%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1963919640%_)
                                             (let ((_%e1193411969%_
                                                    (gx#syntax-e
                                                     _%__stx1963919640%_)))
                                               (let ((_%tl1193611976%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1193411969%_)))
                                                     (_%hd1193511973%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1193411969%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1193511973%_)
                                                     (let ((_%__splice1964419645%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1193511973%_
                                                             '0)))
                                                       (let ((_%tl1193911982%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1964419645%_ '1)))
                     (_%target1193711979%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1964419645%_ '0))))
                 (if (gx#stx-null? _%tl1193911982%_)
                     (_%__match1966219663%_
                      _%e1193411969%_
                      _%hd1193511973%_
                      _%tl1193611976%_
                      _%__splice1964419645%_
                      _%target1193711979%_
                      _%tl1193911982%_)
                     (_%__kont1964619647%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1964619647%_))))
                                             (_%__kont1964619647%_)))))))
                               _%g1189611907%_))))
                      (_%g1189412119%_ _%e11889%_))))
                 (_%datum-dispatch-index9729%_
                  (lambda (_%datums11763%_)
                    (let _%lp11766%_ ((_%rest11769%_ _%datums11763%_)
                                      (_%ix11771%_ '0)
                                      (_%r11772%_ '()))
                      (let* ((_%__stx1966519666%_ _%rest11769%_)
                             (_%g1177511796%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1966519666%_))))
                        (let ((_%__kont1966819669%_
                               (lambda (_%g1177711852%_ _%g1177811854%_)
                                 (_%lp11766%_
                                  _%g1177711852%_
                                  (fx1+ _%ix11771%_)
                                  (foldl (lambda (_%x11873%_ _%r11875%_)
                                           (cons (cons _%x11873%_ _%ix11771%_)
                                                 _%r11875%_))
                                         _%r11772%_
                                         (foldr (lambda (_%g1187611879%_
                                                         _%g1187711882%_)
                                                  (cons _%g1187611879%_
                                                        _%g1187711882%_))
                                                '()
                                                _%g1177811854%_)))))
                              (_%__kont1967219673%_ (lambda () _%r11772%_)))
                          (let ((_%__match1968819689%_
                                 (lambda (_%e1177911814%_
                                          _%hd1178011818%_
                                          _%tl1178111821%_
                                          _%__splice1967019671%_
                                          _%target1178211824%_
                                          _%tl1178411827%_)
                                   (letrec ((_%loop1178511830%_
                                             (lambda (_%hd1178311834%_
                                                      _%datum1178911837%_)
                                               (if (gx#stx-pair?
                                                    _%hd1178311834%_)
                                                   (let ((_%e1178611839%_
                                                          (gx#syntax-e
                                                           _%hd1178311834%_)))
                                                     (let ((_%lp-tl1178811846%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1178611839%_)))
                                                           (_%lp-hd1178711843%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1178611839%_))))
                                                       (_%loop1178511830%_
                                                        _%lp-tl1178811846%_
                                                        (cons _%lp-hd1178711843%_
                                                              _%datum1178911837%_))))
                                                   (let ((_%datum1179011849%_
                                                          (reverse _%datum1178911837%_)))
                                                     (_%__kont1966819669%_
                                                      _%tl1178111821%_
                                                      _%datum1179011849%_))))))
                                     (_%loop1178511830%_
                                      _%target1178211824%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1966519666%_)
                                (let ((_%e1177911814%_
                                       (gx#syntax-e _%__stx1966519666%_)))
                                  (let ((_%tl1178111821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1177911814%_)))
                                        (_%hd1178011818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1177911814%_))))
                                    (if (gx#stx-pair/null? _%hd1178011818%_)
                                        (let ((_%__splice1967019671%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1178011818%_
                                                '0)))
                                          (let ((_%tl1178411827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1967019671%_
                                                    '1)))
                                                (_%target1178211824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1967019671%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1178411827%_)
                                                (_%__match1968819689%_
                                                 _%e1177911814%_
                                                 _%hd1178011818%_
                                                 _%tl1178111821%_
                                                 _%__splice1967019671%_
                                                 _%target1178211824%_
                                                 _%tl1178411827%_)
                                                (_%__kont1967219673%_))))
                                        (_%__kont1967219673%_))))
                                (_%__kont1967219673%_))))))))
                 (_%duplicate-indexes?9730%_
                  (lambda (_%xs11744%_)
                    (let ((_%ht11747%_ (make-hash-table-eq)))
                      (let _%lp11750%_ ((_%rest11753%_ _%xs11744%_))
                        (if (pair? _%rest11753%_)
                            (let* ((_%ix11756%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11753%_)))
                                   (_%$e11759%_
                                    (hash-get _%ht11747%_ _%ix11756%_)))
                              (if _%$e11759%_
                                  _%$e11759%_
                                  (begin
                                    (hash-put! _%ht11747%_ _%ix11756%_ '#t)
                                    (_%lp11750%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11753%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9731%_
                  (lambda (_%indexes11713%_ _%hash-e11715%_)
                    (let _%lp11717%_ ((_%len11720%_
                                       (* '2 (length _%indexes11713%_))))
                      (let* ((_%hs11726%_
                              (map (lambda (_%x11723%_)
                                     (_%hash-e11715%_ (car _%x11723%_)))
                                   _%indexes11713%_))
                             (_%xs11732%_
                              (map (lambda (_%h11729%_)
                                     (fxmodulo _%h11729%_ _%len11720%_))
                                   _%hs11726%_)))
                        (if (_%duplicate-indexes?9730%_ _%xs11732%_)
                            (if (< _%len11720%_ '131072)
                                (_%lp11717%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11720%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9717%_
                                 _%indexes11713%_))
                            (let ((_%tab11737%_
                                   (make-vector _%len11720%_ '#f)))
                              (for-each
                               (lambda (_%entry11740%_ _%x11742%_)
                                 (vector-set!
                                  _%tab11737%_
                                  _%x11742%_
                                  _%entry11740%_))
                               _%indexes11713%_
                               _%xs11732%_)
                              _%tab11737%_))))))
                 (_%generate-symbolic-dispatch9732%_
                  (lambda (_%e11318%_
                           _%datums11320%_
                           _%dispatch11321%_
                           _%default11322%_)
                    (let* ((_%indexes11324%_
                            (_%datum-dispatch-index9729%_ _%datums11320%_))
                           (_%tab11327%_
                            (_%generate-hash-dispatch-table9731%_
                             _%indexes11324%_
                             symbol-hash)))
                      (if (= (length _%dispatch11321%_) '1)
                          (let* ((_%tab11335%_
                                  (vector-map
                                   (lambda (_%x11332%_)
                                     (if _%x11332%_ (car _%x11332%_) '#f))
                                   _%tab11327%_))
                                 (_%g1133811376%_
                                  (lambda (_%g1133911372%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1133911372%_)))
                                 (_%g1133711507%_
                                  (lambda (_%g1133911380%_)
                                    (if (gx#stx-pair? _%g1133911380%_)
                                        (let ((_%e1134711383%_
                                               (gx#syntax-e _%g1133911380%_)))
                                          (let ((_%hd1134811387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1134711383%_)))
                                                (_%tl1134911390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1134711383%_))))
                                            (if (gx#stx-pair? _%tl1134911390%_)
                                                (let ((_%e1135011393%_
                                                       (gx#syntax-e
                                                        _%tl1134911390%_)))
                                                  (let ((_%hd1135111397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1135011393%_)))
                                                        (_%tl1135211400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1135011393%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1135211400%_)
                                                        (let ((_%e1135311403%_
                                                               (gx#syntax-e
                                                                _%tl1135211400%_)))
                                                          (let ((_%hd1135411407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1135311403%_)))
                        (_%tl1135511410%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1135311403%_))))
                    (if (gx#stx-pair? _%tl1135511410%_)
                        (let ((_%e1135611413%_ (gx#syntax-e _%tl1135511410%_)))
                          (let ((_%hd1135711417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1135611413%_)))
                                (_%tl1135811420%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1135611413%_))))
                            (if (gx#stx-pair? _%hd1135711417%_)
                                (let ((_%e1135911423%_
                                       (gx#syntax-e _%hd1135711417%_)))
                                  (let ((_%hd1136011427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1135911423%_)))
                                        (_%tl1136111430%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1135911423%_))))
                                    (if (gx#stx-null? _%tl1136111430%_)
                                        (if (gx#stx-pair? _%tl1135811420%_)
                                            (let ((_%e1136211433%_
                                                   (gx#syntax-e
                                                    _%tl1135811420%_)))
                                              (let ((_%hd1136311437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1136211433%_)))
                                                    (_%tl1136411440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1136211433%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1136411440%_)
                                                    (let ((_%e1136511443%_
                                                           (gx#syntax-e
                                                            _%tl1136411440%_)))
                                                      (let ((_%hd1136611447%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1136511443%_)))
                    (_%tl1136711450%_
                     (let () (declare (not safe)) (##cdr _%e1136511443%_))))
                (if (gx#stx-pair? _%tl1136711450%_)
                    (let ((_%e1136811453%_ (gx#syntax-e _%tl1136711450%_)))
                      (let ((_%hd1136911457%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1136811453%_)))
                            (_%tl1137011460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1136811453%_))))
                        (if (gx#stx-null? _%tl1137011460%_)
                            ((lambda (_%g1134011463%_
                                      _%g1134111465%_
                                      _%g1134211466%_
                                      _%g1134311467%_
                                      _%g1134411468%_
                                      _%g1134511469%_
                                      _%g1134611470%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g1134511469%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%g1134211466%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g1134411468%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1134111465%_ '()))
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
                           (cons _%g1134611470%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%g1134611470%_
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
                                   (cons _%g1134011463%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%g1134411468%_
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
                             (cons _%g1134611470%_ '())))
                 (cons _%g1134311467%_ (cons (cons _%g1134511469%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%g1134511469%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1136911457%_
                             _%hd1136611447%_
                             _%hd1136311437%_
                             _%hd1136011427%_
                             _%hd1135411407%_
                             _%hd1135111397%_
                             _%hd1134811387%_)
                            (_%g1133811376%_ _%g1133911380%_))))
                    (_%g1133811376%_ _%g1133911380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1133811376%_
                                                     _%g1133911380%_))))
                                            (_%g1133811376%_ _%g1133911380%_))
                                        (_%g1133811376%_ _%g1133911380%_))))
                                (_%g1133811376%_ _%g1133911380%_))))
                        (_%g1133811376%_ _%g1133911380%_))))
                (_%g1133811376%_ _%g1133911380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1133811376%_
                                                 _%g1133911380%_))))
                                        (_%g1133811376%_ _%g1133911380%_)))))
                            (_%g1133711507%_
                             (list _%e11318%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11321%_
                                   _%default11322%_
                                   _%tab11335%_
                                   (vector-length _%tab11335%_))))
                          (let* ((_%g1151111555%_
                                  (lambda (_%g1151211551%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1151211551%_)))
                                 (_%g1151011709%_
                                  (lambda (_%g1151211559%_)
                                    (if (gx#stx-pair? _%g1151211559%_)
                                        (let ((_%e1152011562%_
                                               (gx#syntax-e _%g1151211559%_)))
                                          (let ((_%hd1152111566%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1152011562%_)))
                                                (_%tl1152211569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1152011562%_))))
                                            (if (gx#stx-pair? _%tl1152211569%_)
                                                (let ((_%e1152311572%_
                                                       (gx#syntax-e
                                                        _%tl1152211569%_)))
                                                  (let ((_%hd1152411576%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1152311572%_)))
                                                        (_%tl1152511579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1152311572%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1152511579%_)
                                                        (let ((_%e1152611582%_
                                                               (gx#syntax-e
                                                                _%tl1152511579%_)))
                                                          (let ((_%hd1152711586%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1152611582%_)))
                        (_%tl1152811589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1152611582%_))))
                    (if (gx#stx-pair? _%tl1152811589%_)
                        (let ((_%e1152911592%_ (gx#syntax-e _%tl1152811589%_)))
                          (let ((_%hd1153011596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1152911592%_)))
                                (_%tl1153111599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1152911592%_))))
                            (if (gx#stx-pair/null? _%hd1153011596%_)
                                (let ((_g21000_
                                       (gx#syntax-split-splice
                                        _%hd1153011596%_
                                        '0)))
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
                                          (error "Context expects 2 values"
                                                 _g21001_)))
                                    (let ((_%target1153211602%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21000_ 0)))
                                          (_%tl1153411605%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21000_ 1))))
                                      (if (gx#stx-null? _%tl1153411605%_)
                                          (letrec ((_%loop1153511608%_
                                                    (lambda (_%hd1153311612%_
                                                             _%dispatch1153911615%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1153311612%_)
                                                          (let ((_%e1153611617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1153311612%_)))
                    (let ((_%lp-hd1153711621%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1153611617%_)))
                          (_%lp-tl1153811624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1153611617%_))))
                      (_%loop1153511608%_
                       _%lp-tl1153811624%_
                       (cons _%lp-hd1153711621%_ _%dispatch1153911615%_))))
                  (let ((_%dispatch1154011627%_
                         (reverse _%dispatch1153911615%_)))
                    (if (gx#stx-pair? _%tl1153111599%_)
                        (let ((_%e1154111630%_ (gx#syntax-e _%tl1153111599%_)))
                          (let ((_%hd1154211634%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1154111630%_)))
                                (_%tl1154311637%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1154111630%_))))
                            (if (gx#stx-pair? _%tl1154311637%_)
                                (let ((_%e1154411640%_
                                       (gx#syntax-e _%tl1154311637%_)))
                                  (let ((_%hd1154511644%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1154411640%_)))
                                        (_%tl1154611647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1154411640%_))))
                                    (if (gx#stx-pair? _%tl1154611647%_)
                                        (let ((_%e1154711650%_
                                               (gx#syntax-e _%tl1154611647%_)))
                                          (let ((_%hd1154811654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1154711650%_)))
                                                (_%tl1154911657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1154711650%_))))
                                            (if (gx#stx-null? _%tl1154911657%_)
                                                ((lambda (_%g1151311660%_
                                                          _%g1151411662%_
                                                          _%g1151511663%_
                                                          _%g1151611664%_
                                                          _%g1151711665%_
                                                          _%g1151811666%_
                                                          _%g1151911667%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%g1151811666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%g1151511663%_
                                                           '())))
                                         '()))
                             (cons (cons _%g1151711665%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1151411662%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%g1151911667%_ '()))
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
                                           (cons _%g1151911667%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%g1151311660%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%g1151711665%_
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
                           (cons _%g1151911667%_ '())))
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
                                                   (foldr (lambda (_%g1170011703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1170111706%_)
                    (cons _%g1170011703%_ _%g1170111706%_))
                  '()
                  _%g1151611664%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%g1151811666%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1151811666%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1151811666%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1154811654%_
                                                 _%hd1154511644%_
                                                 _%hd1154211634%_
                                                 _%dispatch1154011627%_
                                                 _%hd1152711586%_
                                                 _%hd1152411576%_
                                                 _%hd1152111566%_)
                                                (_%g1151111555%_
                                                 _%g1151211559%_))))
                                        (_%g1151111555%_ _%g1151211559%_))))
                                (_%g1151111555%_ _%g1151211559%_))))
                        (_%g1151111555%_ _%g1151211559%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1153511608%_
                                             _%target1153211602%_
                                             '()))
                                          (_%g1151111555%_ _%g1151211559%_)))))
                                (_%g1151111555%_ _%g1151211559%_))))
                        (_%g1151111555%_ _%g1151211559%_))))
                (_%g1151111555%_ _%g1151211559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1151111555%_
                                                 _%g1151211559%_))))
                                        (_%g1151111555%_ _%g1151211559%_)))))
                            (_%g1151011709%_
                             (list _%e11318%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11321%_
                                   _%default11322%_
                                   _%tab11327%_
                                   (vector-length _%tab11327%_))))))))
                 (_%max-char9733%_
                  (lambda (_%datums11307%_)
                    (foldl (lambda (_%lst11310%_ _%r11312%_)
                             (foldl (lambda (_%char11314%_ _%r11316%_)
                                      (max (char->integer _%char11314%_)
                                           _%r11316%_))
                                    _%r11312%_
                                    _%lst11310%_))
                           '0
                           _%datums11307%_)))
                 (_%generate-char-dispatch-table9734%_
                  (lambda (_%indexes11286%_)
                    (let* ((_%ixs11292%_
                            (map (lambda (_%x11289%_)
                                   (char->integer (car _%x11289%_)))
                                 _%indexes11286%_))
                           (_%len11295%_ (fx1+ (foldl max '0 _%ixs11292%_)))
                           (_%vec11298%_ (make-vector _%len11295%_ '#f)))
                      (for-each
                       (lambda (_%entry11303%_ _%x11305%_)
                         (vector-set!
                          _%vec11298%_
                          _%x11305%_
                          (cdr _%entry11303%_)))
                       _%indexes11286%_
                       _%ixs11292%_)
                      _%vec11298%_)))
                 (_%simple-char-range?9735%_
                  (lambda (_%tab11262%_)
                    (let ((_%end11265%_ (vector-length _%tab11262%_)))
                      (let _%lp11268%_ ((_%i11271%_ '0))
                        (let ((_%ix11274%_
                               (vector-ref _%tab11262%_ _%i11271%_)))
                          (if _%ix11274%_
                              (let _%lp211277%_ ((_%i11280%_
                                                  (fx1+ _%i11271%_)))
                                (if (fx< _%i11280%_ _%end11265%_)
                                    (let ((_%ix*11283%_
                                           (vector-ref
                                            _%tab11262%_
                                            _%i11280%_)))
                                      (if (eq? _%ix11274%_ _%ix*11283%_)
                                          (_%lp211277%_ (fx1+ _%i11280%_))
                                          '#f))
                                    '#t))
                              (_%lp11268%_ (fx1+ _%i11271%_))))))))
                 (_%char-range-start9736%_
                  (lambda (_%tab11253%_)
                    (let _%lp11256%_ ((_%i11259%_ '0))
                      (if (vector-ref _%tab11253%_ _%i11259%_)
                          _%i11259%_
                          (_%lp11256%_ (fx1+ _%i11259%_))))))
                 (_%generate-char-dispatch9737%_
                  (lambda (_%e10878%_
                           _%datums10880%_
                           _%dispatch10881%_
                           _%default10882%_)
                    (if (< (_%max-char9733%_ _%datums10880%_) '128)
                        (let* ((_%indexes10884%_
                                (_%datum-dispatch-index9729%_ _%datums10880%_))
                               (_%tab10887%_
                                (_%generate-char-dispatch-table9734%_
                                 _%indexes10884%_)))
                          (if (_%simple-char-range?9735%_ _%tab10887%_)
                              (let ((_%start10892%_
                                     (_%char-range-start9736%_ _%tab10887%_))
                                    (_%end10894%_
                                     (vector-length _%tab10887%_)))
                                (let* ((_%g1089610930%_
                                        (lambda (_%g1089710926%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1089710926%_)))
                                       (_%g1089511047%_
                                        (lambda (_%g1089710934%_)
                                          (if (gx#stx-pair? _%g1089710934%_)
                                              (let ((_%e1090410937%_
                                                     (gx#syntax-e
                                                      _%g1089710934%_)))
                                                (let ((_%hd1090510941%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1090410937%_)))
                                                      (_%tl1090610944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1090410937%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1090610944%_)
                                                      (let ((_%e1090710947%_
                                                             (gx#syntax-e
                                                              _%tl1090610944%_)))
                                                        (let ((_%hd1090810951%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1090710947%_)))
                      (_%tl1090910954%_
                       (let () (declare (not safe)) (##cdr _%e1090710947%_))))
                  (if (gx#stx-pair? _%tl1090910954%_)
                      (let ((_%e1091010957%_ (gx#syntax-e _%tl1090910954%_)))
                        (let ((_%hd1091110961%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1091010957%_)))
                              (_%tl1091210964%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1091010957%_))))
                          (if (gx#stx-pair? _%hd1091110961%_)
                              (let ((_%e1091310967%_
                                     (gx#syntax-e _%hd1091110961%_)))
                                (let ((_%hd1091410971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1091310967%_)))
                                      (_%tl1091510974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1091310967%_))))
                                  (if (gx#stx-null? _%tl1091510974%_)
                                      (if (gx#stx-pair? _%tl1091210964%_)
                                          (let ((_%e1091610977%_
                                                 (gx#syntax-e
                                                  _%tl1091210964%_)))
                                            (let ((_%hd1091710981%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1091610977%_)))
                                                  (_%tl1091810984%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1091610977%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1091810984%_)
                                                  (let ((_%e1091910987%_
                                                         (gx#syntax-e
                                                          _%tl1091810984%_)))
                                                    (let ((_%hd1092010991%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1091910987%_)))
                                                          (_%tl1092110994%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1091910987%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1092110994%_)
                                                          (let ((_%e1092210997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1092110994%_)))
                    (let ((_%hd1092311001%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1092210997%_)))
                          (_%tl1092411004%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1092210997%_))))
                      (if (gx#stx-null? _%tl1092411004%_)
                          ((lambda (_%g1089811007%_
                                    _%g1089911009%_
                                    _%g1090011010%_
                                    _%g1090111011%_
                                    _%g1090211012%_
                                    _%g1090311013%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%g1090211012%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1090011010%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%g1090311013%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%g1090311013%_
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
                                       (cons _%g1089911009%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%g1089811007%_ '())))
                                 '())))
               (cons _%g1090111011%_ (cons (cons _%g1090211012%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%g1090211012%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1092311001%_
                           _%hd1092010991%_
                           _%hd1091710981%_
                           _%hd1091410971%_
                           _%hd1090810951%_
                           _%hd1090510941%_)
                          (_%g1089610930%_ _%g1089710934%_))))
                  (_%g1089610930%_ _%g1089710934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1089610930%_
                                                   _%g1089710934%_))))
                                          (_%g1089610930%_ _%g1089710934%_))
                                      (_%g1089610930%_ _%g1089710934%_))))
                              (_%g1089610930%_ _%g1089710934%_))))
                      (_%g1089610930%_ _%g1089710934%_))))
              (_%g1089610930%_ _%g1089710934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1089610930%_
                                               _%g1089710934%_)))))
                                  (_%g1089511047%_
                                   (list _%e10878%_
                                         (gx#genident 'default)
                                         _%dispatch10881%_
                                         _%default10882%_
                                         _%start10892%_
                                         _%end10894%_))))
                              (let* ((_%g1105111095%_
                                      (lambda (_%g1105211091%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1105211091%_)))
                                     (_%g1105011249%_
                                      (lambda (_%g1105211099%_)
                                        (if (gx#stx-pair? _%g1105211099%_)
                                            (let ((_%e1106011102%_
                                                   (gx#syntax-e
                                                    _%g1105211099%_)))
                                              (let ((_%hd1106111106%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1106011102%_)))
                                                    (_%tl1106211109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1106011102%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1106211109%_)
                                                    (let ((_%e1106311112%_
                                                           (gx#syntax-e
                                                            _%tl1106211109%_)))
                                                      (let ((_%hd1106411116%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1106311112%_)))
                    (_%tl1106511119%_
                     (let () (declare (not safe)) (##cdr _%e1106311112%_))))
                (if (gx#stx-pair? _%tl1106511119%_)
                    (let ((_%e1106611122%_ (gx#syntax-e _%tl1106511119%_)))
                      (let ((_%hd1106711126%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1106611122%_)))
                            (_%tl1106811129%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1106611122%_))))
                        (if (gx#stx-pair? _%tl1106811129%_)
                            (let ((_%e1106911132%_
                                   (gx#syntax-e _%tl1106811129%_)))
                              (let ((_%hd1107011136%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1106911132%_)))
                                    (_%tl1107111139%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1106911132%_))))
                                (if (gx#stx-pair/null? _%hd1107011136%_)
                                    (let ((_g21002_
                                           (gx#syntax-split-splice
                                            _%hd1107011136%_
                                            '0)))
                                      (begin
                                        (let ((_g21003_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g21002_)
                                                     (##values-length _g21002_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g21003_ 2)))
                                              (error "Context expects 2 values"
                                                     _g21003_)))
                                        (let ((_%target1107211142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21002_ 0)))
                                              (_%tl1107411145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21002_ 1))))
                                          (if (gx#stx-null? _%tl1107411145%_)
                                              (letrec ((_%loop1107511148%_
                                                        (lambda (_%hd1107311152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1107911155%_)
                  (if (gx#stx-pair? _%hd1107311152%_)
                      (let ((_%e1107611157%_ (gx#syntax-e _%hd1107311152%_)))
                        (let ((_%lp-hd1107711161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1107611157%_)))
                              (_%lp-tl1107811164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1107611157%_))))
                          (_%loop1107511148%_
                           _%lp-tl1107811164%_
                           (cons _%lp-hd1107711161%_ _%dispatch1107911155%_))))
                      (let ((_%dispatch1108011167%_
                             (reverse _%dispatch1107911155%_)))
                        (if (gx#stx-pair? _%tl1107111139%_)
                            (let ((_%e1108111170%_
                                   (gx#syntax-e _%tl1107111139%_)))
                              (let ((_%hd1108211174%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1108111170%_)))
                                    (_%tl1108311177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1108111170%_))))
                                (if (gx#stx-pair? _%tl1108311177%_)
                                    (let ((_%e1108411180%_
                                           (gx#syntax-e _%tl1108311177%_)))
                                      (let ((_%hd1108511184%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1108411180%_)))
                                            (_%tl1108611187%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1108411180%_))))
                                        (if (gx#stx-pair? _%tl1108611187%_)
                                            (let ((_%e1108711190%_
                                                   (gx#syntax-e
                                                    _%tl1108611187%_)))
                                              (let ((_%hd1108811194%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1108711190%_)))
                                                    (_%tl1108911197%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1108711190%_))))
                                                (if (gx#stx-null?
                                                     _%tl1108911197%_)
                                                    ((lambda (_%g1105311200%_
                                                              _%g1105411202%_
                                                              _%g1105511203%_
                                                              _%g1105611204%_
                                                              _%g1105711205%_
                                                              _%g1105811206%_
                                                              _%g1105911207%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%g1105811206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%g1105511203%_
                                                               '())))
                                             '()))
                                 (cons (cons _%g1105711205%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g1105411202%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%g1105911207%_ '()))
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
                                         (cons _%g1105911207%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%g1105311200%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%g1105711205%_
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
                                                       (foldr (lambda (_%g1124011243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1124111246%_)
                        (cons _%g1124011243%_ _%g1124111246%_))
                      '()
                      _%g1105611204%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1105811206%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1105811206%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%g1105811206%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1108811194%_
                                                     _%hd1108511184%_
                                                     _%hd1108211174%_
                                                     _%dispatch1108011167%_
                                                     _%hd1106711126%_
                                                     _%hd1106411116%_
                                                     _%hd1106111106%_)
                                                    (_%g1105111095%_
                                                     _%g1105211099%_))))
                                            (_%g1105111095%_
                                             _%g1105211099%_))))
                                    (_%g1105111095%_ _%g1105211099%_))))
                            (_%g1105111095%_ _%g1105211099%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1107511148%_
                                                 _%target1107211142%_
                                                 '()))
                                              (_%g1105111095%_
                                               _%g1105211099%_)))))
                                    (_%g1105111095%_ _%g1105211099%_))))
                            (_%g1105111095%_ _%g1105211099%_))))
                    (_%g1105111095%_ _%g1105211099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1105111095%_
                                                     _%g1105211099%_))))
                                            (_%g1105111095%_
                                             _%g1105211099%_)))))
                                (_%g1105011249%_
                                 (list _%e10878%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10881%_
                                       _%default10882%_
                                       _%tab10887%_
                                       (vector-length _%tab10887%_))))))
                        (_%generate-char-dispatch/hash9738%_
                         _%e10878%_
                         _%datums10880%_
                         _%dispatch10881%_
                         _%default10882%_))))
                 (_%generate-char-dispatch/hash9738%_
                  (lambda (_%e10658%_
                           _%datums10660%_
                           _%dispatch10661%_
                           _%default10662%_)
                    (let* ((_%indexes10664%_
                            (_%datum-dispatch-index9729%_ _%datums10660%_))
                           (_%tab10667%_
                            (_%generate-hash-dispatch-table9731%_
                             _%indexes10664%_
                             char->integer))
                           (_%g1067210716%_
                            (lambda (_%g1067310712%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1067310712%_)))
                           (_%g1067110874%_
                            (lambda (_%g1067310720%_)
                              (if (gx#stx-pair? _%g1067310720%_)
                                  (let ((_%e1068110723%_
                                         (gx#syntax-e _%g1067310720%_)))
                                    (let ((_%hd1068210727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1068110723%_)))
                                          (_%tl1068310730%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1068110723%_))))
                                      (if (gx#stx-pair? _%tl1068310730%_)
                                          (let ((_%e1068410733%_
                                                 (gx#syntax-e
                                                  _%tl1068310730%_)))
                                            (let ((_%hd1068510737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1068410733%_)))
                                                  (_%tl1068610740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1068410733%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1068610740%_)
                                                  (let ((_%e1068710743%_
                                                         (gx#syntax-e
                                                          _%tl1068610740%_)))
                                                    (let ((_%hd1068810747%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1068710743%_)))
                                                          (_%tl1068910750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1068710743%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1068910750%_)
                                                          (let ((_%e1069010753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1068910750%_)))
                    (let ((_%hd1069110757%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1069010753%_)))
                          (_%tl1069210760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1069010753%_))))
                      (if (gx#stx-pair/null? _%hd1069110757%_)
                          (let ((_g21004_
                                 (gx#syntax-split-splice _%hd1069110757%_ '0)))
                            (begin
                              (let ((_g21005_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21004_)
                                           (##values-length _g21004_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21005_ 2)))
                                    (error "Context expects 2 values"
                                           _g21005_)))
                              (let ((_%target1069310763%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21004_ 0)))
                                    (_%tl1069510766%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21004_ 1))))
                                (if (gx#stx-null? _%tl1069510766%_)
                                    (letrec ((_%loop1069610769%_
                                              (lambda (_%hd1069410773%_
                                                       _%dispatch1070010776%_)
                                                (if (gx#stx-pair?
                                                     _%hd1069410773%_)
                                                    (let ((_%e1069710778%_
                                                           (gx#syntax-e
                                                            _%hd1069410773%_)))
                                                      (let ((_%lp-hd1069810782%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1069710778%_)))
                    (_%lp-tl1069910785%_
                     (let () (declare (not safe)) (##cdr _%e1069710778%_))))
                (_%loop1069610769%_
                 _%lp-tl1069910785%_
                 (cons _%lp-hd1069810782%_ _%dispatch1070010776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1070110788%_
                                                           (reverse _%dispatch1070010776%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1069210760%_)
                                                          (let ((_%e1070210791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1069210760%_)))
                    (let ((_%hd1070310795%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1070210791%_)))
                          (_%tl1070410798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1070210791%_))))
                      (if (gx#stx-pair? _%tl1070410798%_)
                          (let ((_%e1070510801%_
                                 (gx#syntax-e _%tl1070410798%_)))
                            (let ((_%hd1070610805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1070510801%_)))
                                  (_%tl1070710808%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1070510801%_))))
                              (if (gx#stx-pair? _%tl1070710808%_)
                                  (let ((_%e1070810811%_
                                         (gx#syntax-e _%tl1070710808%_)))
                                    (let ((_%hd1070910815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1070810811%_)))
                                          (_%tl1071010818%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1070810811%_))))
                                      (if (gx#stx-null? _%tl1071010818%_)
                                          ((lambda (_%g1067410821%_
                                                    _%g1067510823%_
                                                    _%g1067610824%_
                                                    _%g1067710825%_
                                                    _%g1067810826%_
                                                    _%g1067910827%_
                                                    _%g1068010828%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1067910827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1067610824%_ '())))
                                   '()))
                       (cons (cons _%g1067810826%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1067510823%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%g1068010828%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%g1068010828%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%g1067410821%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%g1067810826%_
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
                     (cons _%g1068010828%_ '())))
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
                                             (foldr (lambda (_%g1086510868%_
                                                             _%g1086610871%_)
                                                      (cons _%g1086510868%_
                                                            _%g1086610871%_))
                                                    '()
                                                    _%g1067710825%_)))
                                 '())))
               (cons (cons _%g1067910827%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1067910827%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1067910827%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1070910815%_
                                           _%hd1070610805%_
                                           _%hd1070310795%_
                                           _%dispatch1070110788%_
                                           _%hd1068810747%_
                                           _%hd1068510737%_
                                           _%hd1068210727%_)
                                          (_%g1067210716%_ _%g1067310720%_))))
                                  (_%g1067210716%_ _%g1067310720%_))))
                          (_%g1067210716%_ _%g1067310720%_))))
                  (_%g1067210716%_ _%g1067310720%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1069610769%_
                                       _%target1069310763%_
                                       '()))
                                    (_%g1067210716%_ _%g1067310720%_)))))
                          (_%g1067210716%_ _%g1067310720%_))))
                  (_%g1067210716%_ _%g1067310720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1067210716%_
                                                   _%g1067310720%_))))
                                          (_%g1067210716%_ _%g1067310720%_))))
                                  (_%g1067210716%_ _%g1067310720%_)))))
                      (_%g1067110874%_
                       (list _%e10658%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10661%_
                             _%default10662%_
                             _%tab10667%_
                             (vector-length _%tab10667%_))))))
                 (_%min-fixnum9739%_
                  (lambda (_%datums10651%_)
                    (foldl (lambda (_%lst10654%_ _%r10656%_)
                             (foldl min _%r10656%_ _%lst10654%_))
                           ##max-fixnum
                           _%datums10651%_)))
                 (_%max-fixnum9740%_
                  (lambda (_%datums10644%_)
                    (foldl (lambda (_%lst10647%_ _%r10649%_)
                             (foldl max _%r10649%_ _%lst10647%_))
                           ##min-fixnum
                           _%datums10644%_)))
                 (_%generate-fixnum-dispatch-table9741%_
                  (lambda (_%indexes10626%_)
                    (let* ((_%ixs10629%_ (map car _%indexes10626%_))
                           (_%len10632%_ (fx1+ (foldl max '0 _%ixs10629%_)))
                           (_%vec10635%_ (make-vector _%len10632%_ '#f)))
                      (for-each
                       (lambda (_%entry10640%_ _%x10642%_)
                         (vector-set!
                          _%vec10635%_
                          _%x10642%_
                          (cdr _%entry10640%_)))
                       _%indexes10626%_
                       _%ixs10629%_)
                      _%vec10635%_)))
                 (_%generate-fixnum-dispatch9742%_
                  (lambda (_%e10362%_
                           _%datums10364%_
                           _%dispatch10365%_
                           _%default10366%_)
                    (if (and (>= (_%min-fixnum9739%_ _%datums10364%_) '0)
                             (< (_%max-fixnum9740%_ _%datums10364%_) '1024))
                        (let* ((_%indexes10368%_
                                (_%datum-dispatch-index9729%_ _%datums10364%_))
                               (_%tab10371%_
                                (_%generate-fixnum-dispatch-table9741%_
                                 _%indexes10368%_))
                               (_%dense?10374%_
                                (andmap values (vector->list _%tab10371%_)))
                               (_%g1037910423%_
                                (lambda (_%g1038010419%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1038010419%_)))
                               (_%g1037810622%_
                                (lambda (_%g1038010427%_)
                                  (if (gx#stx-pair? _%g1038010427%_)
                                      (let ((_%e1038810430%_
                                             (gx#syntax-e _%g1038010427%_)))
                                        (let ((_%hd1038910434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1038810430%_)))
                                              (_%tl1039010437%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1038810430%_))))
                                          (if (gx#stx-pair? _%tl1039010437%_)
                                              (let ((_%e1039110440%_
                                                     (gx#syntax-e
                                                      _%tl1039010437%_)))
                                                (let ((_%hd1039210444%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1039110440%_)))
                                                      (_%tl1039310447%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1039110440%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1039310447%_)
                                                      (let ((_%e1039410450%_
                                                             (gx#syntax-e
                                                              _%tl1039310447%_)))
                                                        (let ((_%hd1039510454%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1039410450%_)))
                      (_%tl1039610457%_
                       (let () (declare (not safe)) (##cdr _%e1039410450%_))))
                  (if (gx#stx-pair? _%tl1039610457%_)
                      (let ((_%e1039710460%_ (gx#syntax-e _%tl1039610457%_)))
                        (let ((_%hd1039810464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1039710460%_)))
                              (_%tl1039910467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1039710460%_))))
                          (if (gx#stx-pair/null? _%hd1039810464%_)
                              (let ((_g21006_
                                     (gx#syntax-split-splice
                                      _%hd1039810464%_
                                      '0)))
                                (begin
                                  (let ((_g21007_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21006_)
                                               (##values-length _g21006_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21007_ 2)))
                                        (error "Context expects 2 values"
                                               _g21007_)))
                                  (let ((_%target1040010470%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21006_ 0)))
                                        (_%tl1040210473%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21006_ 1))))
                                    (if (gx#stx-null? _%tl1040210473%_)
                                        (letrec ((_%loop1040310476%_
                                                  (lambda (_%hd1040110480%_
                                                           _%dispatch1040710483%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1040110480%_)
                                                        (let ((_%e1040410485%_
                                                               (gx#syntax-e
                                                                _%hd1040110480%_)))
                                                          (let ((_%lp-hd1040510489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1040410485%_)))
                        (_%lp-tl1040610492%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1040410485%_))))
                    (_%loop1040310476%_
                     _%lp-tl1040610492%_
                     (cons _%lp-hd1040510489%_ _%dispatch1040710483%_))))
                (let ((_%dispatch1040810495%_
                       (reverse _%dispatch1040710483%_)))
                  (if (gx#stx-pair? _%tl1039910467%_)
                      (let ((_%e1040910498%_ (gx#syntax-e _%tl1039910467%_)))
                        (let ((_%hd1041010502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1040910498%_)))
                              (_%tl1041110505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1040910498%_))))
                          (if (gx#stx-pair? _%tl1041110505%_)
                              (let ((_%e1041210508%_
                                     (gx#syntax-e _%tl1041110505%_)))
                                (let ((_%hd1041310512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1041210508%_)))
                                      (_%tl1041410515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1041210508%_))))
                                  (if (gx#stx-pair? _%tl1041410515%_)
                                      (let ((_%e1041510518%_
                                             (gx#syntax-e _%tl1041410515%_)))
                                        (let ((_%hd1041610522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1041510518%_)))
                                              (_%tl1041710525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1041510518%_))))
                                          (if (gx#stx-null? _%tl1041710525%_)
                                              ((lambda (_%g1038110528%_
                                                        _%g1038210530%_
                                                        _%g1038310531%_
                                                        _%g1038410532%_
                                                        _%g1038510533%_
                                                        _%g1038610534%_
                                                        _%g1038710535%_)
                                                 (let* ((_%g1057410582%_
                                                         (lambda (_%g1057510578%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1057510578%_)))
                                                        (_%g1057310602%_
                                                         (lambda (_%g1057510586%_)
                                                           ((lambda (_%g1057610589%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%g1038610534%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%g1038310531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%g1038510533%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g1038210530%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%g1038710535%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%g1038710535%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%g1038710535%_
                                                            (cons _%g1038110528%_
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
                          (cons _%g1038510533%_ (cons _%g1038710535%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1057610589%_ '())))
                                    (cons (cons _%g1038610534%_ '()) '()))))
                  (cons (cons _%g1038610534%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1057510586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1057310602%_
                                                    (if _%dense?10374%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1060510608%_ _%g1060610611%_)
                                     (cons _%g1060510608%_ _%g1060610611%_))
                                   '()
                                   _%g1038410532%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1061310616%_
                                                              _%g1061410619%_)
                                                       (cons _%g1061310616%_
                                                             _%g1061410619%_))
                                                     '()
                                                     _%g1038410532%_)))
                                  (cons (cons _%g1038610534%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1041610522%_
                                               _%hd1041310512%_
                                               _%hd1041010502%_
                                               _%dispatch1040810495%_
                                               _%hd1039510454%_
                                               _%hd1039210444%_
                                               _%hd1038910434%_)
                                              (_%g1037910423%_
                                               _%g1038010427%_))))
                                      (_%g1037910423%_ _%g1038010427%_))))
                              (_%g1037910423%_ _%g1038010427%_))))
                      (_%g1037910423%_ _%g1038010427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1040310476%_
                                           _%target1040010470%_
                                           '()))
                                        (_%g1037910423%_ _%g1038010427%_)))))
                              (_%g1037910423%_ _%g1038010427%_))))
                      (_%g1037910423%_ _%g1038010427%_))))
              (_%g1037910423%_ _%g1038010427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1037910423%_
                                               _%g1038010427%_))))
                                      (_%g1037910423%_ _%g1038010427%_)))))
                          (_%g1037810622%_
                           (list _%e10362%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10365%_
                                 _%default10366%_
                                 _%tab10371%_
                                 (vector-length _%tab10371%_))))
                        (_%generate-fixnum-dispatch/hash9743%_
                         _%e10362%_
                         _%datums10364%_
                         _%dispatch10365%_
                         _%default10366%_))))
                 (_%generate-fixnum-dispatch/hash9743%_
                  (lambda (_%e10142%_
                           _%datums10144%_
                           _%dispatch10145%_
                           _%default10146%_)
                    (let* ((_%indexes10148%_
                            (_%datum-dispatch-index9729%_ _%datums10144%_))
                           (_%tab10151%_
                            (_%generate-hash-dispatch-table9731%_
                             _%indexes10148%_
                             values))
                           (_%g1015610200%_
                            (lambda (_%g1015710196%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1015710196%_)))
                           (_%g1015510358%_
                            (lambda (_%g1015710204%_)
                              (if (gx#stx-pair? _%g1015710204%_)
                                  (let ((_%e1016510207%_
                                         (gx#syntax-e _%g1015710204%_)))
                                    (let ((_%hd1016610211%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1016510207%_)))
                                          (_%tl1016710214%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1016510207%_))))
                                      (if (gx#stx-pair? _%tl1016710214%_)
                                          (let ((_%e1016810217%_
                                                 (gx#syntax-e
                                                  _%tl1016710214%_)))
                                            (let ((_%hd1016910221%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1016810217%_)))
                                                  (_%tl1017010224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1016810217%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1017010224%_)
                                                  (let ((_%e1017110227%_
                                                         (gx#syntax-e
                                                          _%tl1017010224%_)))
                                                    (let ((_%hd1017210231%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1017110227%_)))
                                                          (_%tl1017310234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1017110227%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1017310234%_)
                                                          (let ((_%e1017410237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1017310234%_)))
                    (let ((_%hd1017510241%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1017410237%_)))
                          (_%tl1017610244%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1017410237%_))))
                      (if (gx#stx-pair/null? _%hd1017510241%_)
                          (let ((_g21008_
                                 (gx#syntax-split-splice _%hd1017510241%_ '0)))
                            (begin
                              (let ((_g21009_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21008_)
                                           (##values-length _g21008_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21009_ 2)))
                                    (error "Context expects 2 values"
                                           _g21009_)))
                              (let ((_%target1017710247%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21008_ 0)))
                                    (_%tl1017910250%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21008_ 1))))
                                (if (gx#stx-null? _%tl1017910250%_)
                                    (letrec ((_%loop1018010253%_
                                              (lambda (_%hd1017810257%_
                                                       _%dispatch1018410260%_)
                                                (if (gx#stx-pair?
                                                     _%hd1017810257%_)
                                                    (let ((_%e1018110262%_
                                                           (gx#syntax-e
                                                            _%hd1017810257%_)))
                                                      (let ((_%lp-hd1018210266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1018110262%_)))
                    (_%lp-tl1018310269%_
                     (let () (declare (not safe)) (##cdr _%e1018110262%_))))
                (_%loop1018010253%_
                 _%lp-tl1018310269%_
                 (cons _%lp-hd1018210266%_ _%dispatch1018410260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1018510272%_
                                                           (reverse _%dispatch1018410260%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1017610244%_)
                                                          (let ((_%e1018610275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1017610244%_)))
                    (let ((_%hd1018710279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1018610275%_)))
                          (_%tl1018810282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1018610275%_))))
                      (if (gx#stx-pair? _%tl1018810282%_)
                          (let ((_%e1018910285%_
                                 (gx#syntax-e _%tl1018810282%_)))
                            (let ((_%hd1019010289%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1018910285%_)))
                                  (_%tl1019110292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1018910285%_))))
                              (if (gx#stx-pair? _%tl1019110292%_)
                                  (let ((_%e1019210295%_
                                         (gx#syntax-e _%tl1019110292%_)))
                                    (let ((_%hd1019310299%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1019210295%_)))
                                          (_%tl1019410302%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1019210295%_))))
                                      (if (gx#stx-null? _%tl1019410302%_)
                                          ((lambda (_%g1015810305%_
                                                    _%g1015910307%_
                                                    _%g1016010308%_
                                                    _%g1016110309%_
                                                    _%g1016210310%_
                                                    _%g1016310311%_
                                                    _%g1016410312%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1016310311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1016010308%_ '())))
                                   '()))
                       (cons (cons _%g1016210310%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1015910307%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%g1016410312%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%g1016410312%_
                                           (cons _%g1015810305%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%g1016210310%_
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
                     (cons _%g1016410312%_ '())))
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
                                             (foldr (lambda (_%g1034910352%_
                                                             _%g1035010355%_)
                                                      (cons _%g1034910352%_
                                                            _%g1035010355%_))
                                                    '()
                                                    _%g1016110309%_)))
                                 '())))
               (cons (cons _%g1016310311%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1016310311%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1016310311%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1019310299%_
                                           _%hd1019010289%_
                                           _%hd1018710279%_
                                           _%dispatch1018510272%_
                                           _%hd1017210231%_
                                           _%hd1016910221%_
                                           _%hd1016610211%_)
                                          (_%g1015610200%_ _%g1015710204%_))))
                                  (_%g1015610200%_ _%g1015710204%_))))
                          (_%g1015610200%_ _%g1015710204%_))))
                  (_%g1015610200%_ _%g1015710204%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1018010253%_
                                       _%target1017710247%_
                                       '()))
                                    (_%g1015610200%_ _%g1015710204%_)))))
                          (_%g1015610200%_ _%g1015710204%_))))
                  (_%g1015610200%_ _%g1015710204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1015610200%_
                                                   _%g1015710204%_))))
                                          (_%g1015610200%_ _%g1015710204%_))))
                                  (_%g1015610200%_ _%g1015710204%_)))))
                      (_%g1015510358%_
                       (list _%e10142%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10145%_
                             _%default10146%_
                             _%tab10151%_
                             (vector-length _%tab10151%_))))))
                 (_%generate-generic-dispatch9744%_
                  (lambda (_%e9880%_
                           _%datums9882%_
                           _%dispatch9883%_
                           _%default9884%_)
                    (let ((_g21010_
                           (if (_%eq-datums?9727%_ _%datums9882%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9886%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21010_ 0)))
                              (_%hashf9888%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21010_ 1)))
                              (_%eqf9889%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21010_ 2))))
                          (let* ((_%indexes9891%_
                                  (_%datum-dispatch-index9729%_
                                   _%datums9882%_))
                                 (_%tab9894%_
                                  (_%generate-hash-dispatch-table9731%_
                                   _%indexes9891%_
                                   _%hash-e9886%_))
                                 (_%g98999951%_
                                  (lambda (_%g99009947%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g99009947%_)))
                                 (_%g989810138%_
                                  (lambda (_%g99009955%_)
                                    (if (gx#stx-pair? _%g99009955%_)
                                        (let ((_%e99109958%_
                                               (gx#syntax-e _%g99009955%_)))
                                          (let ((_%hd99119962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e99109958%_)))
                                                (_%tl99129965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e99109958%_))))
                                            (if (gx#stx-pair? _%tl99129965%_)
                                                (let ((_%e99139968%_
                                                       (gx#syntax-e
                                                        _%tl99129965%_)))
                                                  (let ((_%hd99149972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e99139968%_)))
                                                        (_%tl99159975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e99139968%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl99159975%_)
                                                        (let ((_%e99169978%_
                                                               (gx#syntax-e
                                                                _%tl99159975%_)))
                                                          (let ((_%hd99179982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e99169978%_)))
                        (_%tl99189985%_
                         (let () (declare (not safe)) (##cdr _%e99169978%_))))
                    (if (gx#stx-pair? _%tl99189985%_)
                        (let ((_%e99199988%_ (gx#syntax-e _%tl99189985%_)))
                          (let ((_%hd99209992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e99199988%_)))
                                (_%tl99219995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e99199988%_))))
                            (if (gx#stx-pair/null? _%hd99209992%_)
                                (let ((_g21011_
                                       (gx#syntax-split-splice
                                        _%hd99209992%_
                                        '0)))
                                  (begin
                                    (let ((_g21012_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21011_)
                                                 (##values-length _g21011_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21012_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21012_)))
                                    (let ((_%target99229998%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21011_ 0)))
                                          (_%tl992410001%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21011_ 1))))
                                      (if (gx#stx-null? _%tl992410001%_)
                                          (letrec ((_%loop992510004%_
                                                    (lambda (_%hd992310008%_
                                                             _%dispatch992910011%_)
                                                      (if (gx#stx-pair?
                                                           _%hd992310008%_)
                                                          (let ((_%e992610013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd992310008%_)))
                    (let ((_%lp-hd992710017%_
                           (let ()
                             (declare (not safe))
                             (##car _%e992610013%_)))
                          (_%lp-tl992810020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e992610013%_))))
                      (_%loop992510004%_
                       _%lp-tl992810020%_
                       (cons _%lp-hd992710017%_ _%dispatch992910011%_))))
                  (let ((_%dispatch993010023%_
                         (reverse _%dispatch992910011%_)))
                    (if (gx#stx-pair? _%tl99219995%_)
                        (let ((_%e993110026%_ (gx#syntax-e _%tl99219995%_)))
                          (let ((_%hd993210030%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e993110026%_)))
                                (_%tl993310033%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e993110026%_))))
                            (if (gx#stx-pair? _%tl993310033%_)
                                (let ((_%e993410036%_
                                       (gx#syntax-e _%tl993310033%_)))
                                  (let ((_%hd993510040%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e993410036%_)))
                                        (_%tl993610043%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e993410036%_))))
                                    (if (gx#stx-pair? _%tl993610043%_)
                                        (let ((_%e993710046%_
                                               (gx#syntax-e _%tl993610043%_)))
                                          (let ((_%hd993810050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e993710046%_)))
                                                (_%tl993910053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e993710046%_))))
                                            (if (gx#stx-pair? _%tl993910053%_)
                                                (let ((_%e994010056%_
                                                       (gx#syntax-e
                                                        _%tl993910053%_)))
                                                  (let ((_%hd994110060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e994010056%_)))
                                                        (_%tl994210063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e994010056%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl994210063%_)
                                                        (let ((_%e994310066%_
                                                               (gx#syntax-e
                                                                _%tl994210063%_)))
                                                          (let ((_%hd994410070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e994310066%_)))
                        (_%tl994510073%_
                         (let () (declare (not safe)) (##cdr _%e994310066%_))))
                    (if (gx#stx-null? _%tl994510073%_)
                        ((lambda (_%g990110076%_
                                  _%g990210078%_
                                  _%g990310079%_
                                  _%g990410080%_
                                  _%g990510081%_
                                  _%g990610082%_
                                  _%g990710083%_
                                  _%g990810084%_
                                  _%g990910085%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%g990810084%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g990510081%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%g990710083%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%g990410080%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%g990210078%_
                                         (cons _%g990910085%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%g990310079%_
                                                           '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g990710083%_
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
                                               (cons (cons _%g990110076%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%g990910085%_ '())))
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
                                                 (foldr (lambda (_%g1012910132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1013010135%_)
                  (cons _%g1012910132%_ _%g1013010135%_))
                '()
                _%g990610082%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%g990810084%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g990810084%_ '())
                                               '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd994410070%_
                         _%hd994110060%_
                         _%hd993810050%_
                         _%hd993510040%_
                         _%hd993210030%_
                         _%dispatch993010023%_
                         _%hd99179982%_
                         _%hd99149972%_
                         _%hd99119962%_)
                        (_%g98999951%_ _%g99009955%_))))
                (_%g98999951%_ _%g99009955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g98999951%_
                                                 _%g99009955%_))))
                                        (_%g98999951%_ _%g99009955%_))))
                                (_%g98999951%_ _%g99009955%_))))
                        (_%g98999951%_ _%g99009955%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop992510004%_
                                             _%target99229998%_
                                             '()))
                                          (_%g98999951%_ _%g99009955%_)))))
                                (_%g98999951%_ _%g99009955%_))))
                        (_%g98999951%_ _%g99009955%_))))
                (_%g98999951%_ _%g99009955%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g98999951%_
                                                 _%g99009955%_))))
                                        (_%g98999951%_ _%g99009955%_)))))
                            (_%g989810138%_
                             (list _%e9880%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9883%_
                                   _%default9884%_
                                   _%tab9894%_
                                   (vector-length _%tab9894%_)
                                   _%hashf9888%_
                                   _%eqf9889%_)))))))))
          (let* ((_%g97469770%_
                  (lambda (_%g97479766%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g97479766%_)))
                 (_%g97459876%_
                  (lambda (_%g97479774%_)
                    (if (gx#stx-pair? _%g97479774%_)
                        (let ((_%e97509777%_ (gx#syntax-e _%g97479774%_)))
                          (let ((_%hd97519781%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e97509777%_)))
                                (_%tl97529784%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e97509777%_))))
                            (if (gx#stx-pair? _%tl97529784%_)
                                (let ((_%e97539787%_
                                       (gx#syntax-e _%tl97529784%_)))
                                  (let ((_%hd97549791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e97539787%_)))
                                        (_%tl97559794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e97539787%_))))
                                    (if (gx#stx-pair/null? _%tl97559794%_)
                                        (let ((_g21013_
                                               (gx#syntax-split-splice
                                                _%tl97559794%_
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
                                            (let ((_%target97569797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21013_
                                                      0)))
                                                  (_%tl97589800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21013_
                                                      1))))
                                              (if (gx#stx-null? _%tl97589800%_)
                                                  (letrec ((_%loop97599803%_
                                                            (lambda (_%hd97579807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause97639810%_)
                      (if (gx#stx-pair? _%hd97579807%_)
                          (let ((_%e97609812%_ (gx#syntax-e _%hd97579807%_)))
                            (let ((_%lp-hd97619816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e97609812%_)))
                                  (_%lp-tl97629819%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e97609812%_))))
                              (_%loop97599803%_
                               _%lp-tl97629819%_
                               (cons _%lp-hd97619816%_ _%clause97639810%_))))
                          (let ((_%clause97649822%_
                                 (reverse _%clause97639810%_)))
                            ((lambda (_%g97489825%_ _%g97499827%_)
                               (let ((_g21015_
                                      (_%parse-clauses9720%_
                                       _%g97499827%_
                                       (foldr (lambda (_%g98459848%_
                                                       _%g98469851%_)
                                                (cons _%g98459848%_
                                                      _%g98469851%_))
                                              '()
                                              _%g97489825%_))))
                                 (begin
                                   (let ((_g21016_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21015_)
                                                (##values-length _g21015_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21016_ 3)))
                                         (error "Context expects 3 values"
                                                _g21016_)))
                                   (let ((_%datums9854%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21015_ 0)))
                                         (_%dispatch9856%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21015_ 1)))
                                         (_%default9857%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21015_ 2))))
                                     (let ((_%datum-count9859%_
                                            (_%count-datums9723%_
                                             _%datums9854%_)))
                                       (if (< _%datum-count9859%_ '6)
                                           (_%generate-simple-case9728%_
                                            _%g97499827%_
                                            _%datums9854%_
                                            _%dispatch9856%_
                                            _%default9857%_)
                                           (if (_%char-datums?9725%_
                                                _%datums9854%_)
                                               (_%generate-char-dispatch9737%_
                                                _%g97499827%_
                                                _%datums9854%_
                                                _%dispatch9856%_
                                                _%default9857%_)
                                               (if (_%fixnum-datums?9726%_
                                                    _%datums9854%_)
                                                   (_%generate-fixnum-dispatch9742%_
                                                    _%g97499827%_
                                                    _%datums9854%_
                                                    _%dispatch9856%_
                                                    _%default9857%_)
                                                   (if (< _%datum-count9859%_
                                                          '12)
                                                       (_%generate-simple-case9728%_
                                                        _%g97499827%_
                                                        _%datums9854%_
                                                        _%dispatch9856%_
                                                        _%default9857%_)
                                                       (if (_%symbolic-datums?9724%_
                                                            _%datums9854%_)
                                                           (_%generate-symbolic-dispatch9732%_
                                                            _%g97499827%_
                                                            _%datums9854%_
                                                            _%dispatch9856%_
                                                            _%default9857%_)
                                                           (_%generate-generic-dispatch9744%_
                                                            _%g97499827%_
                                                            _%datums9854%_
                                                            _%dispatch9856%_
                                                            _%default9857%_)))))))))))
                             _%clause97649822%_
                             _%hd97549791%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop97599803%_
                                                     _%target97569797%_
                                                     '()))
                                                  (_%g97469770%_
                                                   _%g97479774%_)))))
                                        (_%g97469770%_ _%g97479774%_))))
                                (_%g97469770%_ _%g97479774%_))))
                        (_%g97469770%_ _%g97479774%_)))))
            (_%g97459876%_ _%stx9717%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12754%_)
        (let* ((_%g1275712775%_
                (lambda (_%g1275812771%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1275812771%_)))
               (_%g1275612847%_
                (lambda (_%g1275812779%_)
                  (if (gx#stx-pair? _%g1275812779%_)
                      (let ((_%e1276112782%_ (gx#syntax-e _%g1275812779%_)))
                        (let ((_%hd1276212786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1276112782%_)))
                              (_%tl1276312789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1276112782%_))))
                          (if (gx#stx-pair? _%tl1276312789%_)
                              (let ((_%e1276412792%_
                                     (gx#syntax-e _%tl1276312789%_)))
                                (let ((_%hd1276512796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1276412792%_)))
                                      (_%tl1276612799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1276412792%_))))
                                  (if (gx#stx-pair? _%tl1276612799%_)
                                      (let ((_%e1276712802%_
                                             (gx#syntax-e _%tl1276612799%_)))
                                        (let ((_%hd1276812806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1276712802%_)))
                                              (_%tl1276912809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1276712802%_))))
                                          (if (gx#stx-null? _%tl1276912809%_)
                                              ((lambda (_%g1275912812%_
                                                        _%g1276012814%_)
                                                 (let ((_%datum-e12830%_
                                                        (gx#stx-e
                                                         _%g1276012814%_)))
                                                   (if (or (symbol? _%datum-e12830%_)
                                                           (keyword?
                                                            _%datum-e12830%_)
                                                           (immediate?
                                                            _%datum-e12830%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1276012814%_ '()))
                           (cons _%g1275912812%_ '())))
               (if (number? _%datum-e12830%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1276012814%_ '()))
                               (cons _%g1275912812%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1276012814%_ '()))
                               (cons _%g1275912812%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1276812806%_
                                               _%hd1276512796%_)
                                              (_%g1275712775%_
                                               _%g1275812779%_))))
                                      (_%g1275712775%_ _%g1275812779%_))))
                              (_%g1275712775%_ _%g1275812779%_))))
                      (_%g1275712775%_ _%g1275812779%_)))))
          (_%g1275612847%_ _%stx12754%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12851%_)
        (let* ((_%g1285512879%_
                (lambda (_%g1285612875%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1285612875%_)))
               (_%g1285412962%_
                (lambda (_%g1285612883%_)
                  (if (gx#stx-pair? _%g1285612883%_)
                      (let ((_%e1285912886%_ (gx#syntax-e _%g1285612883%_)))
                        (let ((_%hd1286012890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1285912886%_)))
                              (_%tl1286112893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1285912886%_))))
                          (if (gx#stx-pair? _%tl1286112893%_)
                              (let ((_%e1286212896%_
                                     (gx#syntax-e _%tl1286112893%_)))
                                (let ((_%hd1286312900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1286212896%_)))
                                      (_%tl1286412903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1286212896%_))))
                                  (if (gx#stx-pair/null? _%tl1286412903%_)
                                      (let ((_g21017_
                                             (gx#syntax-split-splice
                                              _%tl1286412903%_
                                              '0)))
                                        (begin
                                          (let ((_g21018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21017_)
                                                       (##values-length
                                                        _g21017_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21018_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21018_)))
                                          (let ((_%target1286512906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21017_ 0)))
                                                (_%tl1286712909%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21017_ 1))))
                                            (if (gx#stx-null? _%tl1286712909%_)
                                                (letrec ((_%loop1286812912%_
                                                          (lambda (_%hd1286612916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1287212919%_)
                    (if (gx#stx-pair? _%hd1286612916%_)
                        (let ((_%e1286912921%_ (gx#syntax-e _%hd1286612916%_)))
                          (let ((_%lp-hd1287012925%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1286912921%_)))
                                (_%lp-tl1287112928%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1286912921%_))))
                            (_%loop1286812912%_
                             _%lp-tl1287112928%_
                             (cons _%lp-hd1287012925%_ _%K1287212919%_))))
                        (let ((_%K1287312931%_ (reverse _%K1287212919%_)))
                          ((lambda (_%g1285712934%_ _%g1285812936%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%g1285812936%_
                                               (foldr (lambda (_%g1295312956%_
                                                               _%g1295412959%_)
                                                        (cons _%g1295312956%_
                                                              _%g1295412959%_))
                                                      '()
                                                      _%g1285712934%_)))))
                           _%K1287312931%_
                           _%hd1286312900%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1286812912%_
                                                   _%target1286512906%_
                                                   '()))
                                                (_%g1285512879%_
                                                 _%g1285612883%_)))))
                                      (_%g1285512879%_ _%g1285612883%_))))
                              (_%g1285512879%_ _%g1285612883%_))))
                      (_%g1285512879%_ _%g1285612883%_)))))
          (_%g1285412962%_ _%$stx12851%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12967%_)
        (let* ((_%__stx1969119692%_ _%stx12967%_)
               (_%g1297413070%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1969119692%_))))
          (let ((_%__kont1969419695%_
                 (lambda (_%g1297613545%_ _%g1297713547%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1969619697%_
                 (lambda (_%g1298713487%_ _%g1298813489%_ _%g1298913490%_)
                   _%g1298713487%_))
                (_%__kont1969819699%_
                 (lambda (_%g1300213384%_
                          _%g1300313386%_
                          _%g1300413387%_
                          _%g1300513388%_)
                   (let* ((_%g1340913417%_
                           (lambda (_%g1341013413%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1341013413%_)))
                          (_%g1340813436%_
                           (lambda (_%g1341013421%_)
                             ((lambda (_%g1341113424%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%g1300413387%_
                                                        (cons _%g1341113424%_
                                                              '())))
                                            (cons _%g1300313386%_
                                                  (cons _%g1300213384%_
                                                        '())))))
                              _%g1341013421%_))))
                     (_%g1340813436%_ (gx#stx-e _%g1300513388%_)))))
                (_%__kont1970019701%_
                 (lambda (_%g1302113234%_
                          _%g1302213236%_
                          _%g1302313237%_
                          _%g1302413238%_
                          _%g1302513239%_)
                   (let* ((_%g1326313278%_
                           (lambda (_%g1326413274%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1326413274%_)))
                          (_%g1326213323%_
                           (lambda (_%g1326413282%_)
                             (if (gx#stx-pair? _%g1326413282%_)
                                 (let ((_%e1326713285%_
                                        (gx#syntax-e _%g1326413282%_)))
                                   (let ((_%hd1326813289%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1326713285%_)))
                                         (_%tl1326913292%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1326713285%_))))
                                     (if (gx#stx-pair? _%tl1326913292%_)
                                         (let ((_%e1327013295%_
                                                (gx#syntax-e
                                                 _%tl1326913292%_)))
                                           (let ((_%hd1327113299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1327013295%_)))
                                                 (_%tl1327213302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1327013295%_))))
                                             (if (gx#stx-null?
                                                  _%tl1327213302%_)
                                                 ((lambda (_%g1326513305%_
                                                           _%g1326613307%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%g1302413238%_
                                    (cons _%g1326613307%_ '())))
                        (cons _%g1302313237%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%g1302413238%_
                                                            (cons _%g1326513305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1302213236%_
                                                      (cons _%g1302113234%_
                                                            '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1327113299%_
                                                  _%hd1326813289%_)
                                                 (_%g1326313278%_
                                                  _%g1326413282%_))))
                                         (_%g1326313278%_ _%g1326413282%_))))
                                 (_%g1326313278%_ _%g1326413282%_)))))
                     (_%g1326213323%_
                      (list (gx#stx-e _%g1302513239%_)
                            (fx1+ (gx#stx-e _%g1302513239%_)))))))
                (_%__kont1970219703%_
                 (lambda (_%g1304413135%_ _%g1304513137%_ _%g1304613138%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1304613138%_
                               (cons _%g1304513137%_
                                     (foldr (lambda (_%g1315813161%_
                                                     _%g1315913164%_)
                                              (cons _%g1315813161%_
                                                    _%g1315913164%_))
                                            '()
                                            _%g1304413135%_)))))))
            (let ((_%__match1984819849%_
                   (lambda (_%e1304713077%_
                            _%hd1304813081%_
                            _%tl1304913084%_
                            _%e1305013087%_
                            _%hd1305113091%_
                            _%tl1305213094%_
                            _%e1305313097%_
                            _%hd1305413101%_
                            _%tl1305513104%_
                            _%__splice1970419705%_
                            _%target1305613107%_
                            _%tl1305813110%_)
                     (letrec ((_%loop1305913113%_
                               (lambda (_%hd1305713117%_ _%K1306313120%_)
                                 (if (gx#stx-pair? _%hd1305713117%_)
                                     (let ((_%e1306013122%_
                                            (gx#syntax-e _%hd1305713117%_)))
                                       (let ((_%lp-tl1306213129%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1306013122%_)))
                                             (_%lp-hd1306113126%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1306013122%_))))
                                         (_%loop1305913113%_
                                          _%lp-tl1306213129%_
                                          (cons _%lp-hd1306113126%_
                                                _%K1306313120%_))))
                                     (let ((_%K1306413132%_
                                            (reverse _%K1306313120%_)))
                                       (_%__kont1970219703%_
                                        _%K1306413132%_
                                        _%hd1305413101%_
                                        _%hd1305113091%_))))))
                       (_%loop1305913113%_ _%target1305613107%_ '())))))
              (if (gx#stx-pair? _%__stx1969119692%_)
                  (let ((_%e1297813515%_ (gx#syntax-e _%__stx1969119692%_)))
                    (let ((_%tl1298013522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1297813515%_)))
                          (_%hd1297913519%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1297813515%_))))
                      (if (gx#stx-pair? _%tl1298013522%_)
                          (let ((_%e1298113525%_
                                 (gx#syntax-e _%tl1298013522%_)))
                            (let ((_%tl1298313532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1298113525%_)))
                                  (_%hd1298213529%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1298113525%_))))
                              (if (gx#stx-pair? _%tl1298313532%_)
                                  (let ((_%e1298413535%_
                                         (gx#syntax-e _%tl1298313532%_)))
                                    (let ((_%tl1298613542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1298413535%_)))
                                          (_%hd1298513539%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1298413535%_))))
                                      (if (gx#stx-null? _%tl1298613542%_)
                                          (_%__kont1969419695%_
                                           _%hd1298513539%_
                                           _%hd1298213529%_)
                                          (if (gx#stx-pair? _%tl1298613542%_)
                                              (let ((_%e1299913477%_
                                                     (gx#syntax-e
                                                      _%tl1298613542%_)))
                                                (let ((_%tl1300113484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1299913477%_)))
                                                      (_%hd1300013481%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1299913477%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1300113484%_)
                                                      (_%__kont1969619697%_
                                                       _%hd1300013481%_
                                                       _%hd1298513539%_
                                                       _%hd1298213529%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1300113484%_)
                                                          (let ((_%e1301813374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1300113484%_)))
                    (let ((_%tl1302013381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1301813374%_)))
                          (_%hd1301913378%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1301813374%_))))
                      (if (gx#stx-null? _%tl1302013381%_)
                          (_%__kont1969819699%_
                           _%hd1301913378%_
                           _%hd1300013481%_
                           _%hd1298513539%_
                           _%hd1298213529%_)
                          (if (gx#stx-pair? _%tl1302013381%_)
                              (let ((_%e1304113224%_
                                     (gx#syntax-e _%tl1302013381%_)))
                                (let ((_%tl1304313231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1304113224%_)))
                                      (_%hd1304213228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1304113224%_))))
                                  (if (gx#stx-null? _%tl1304313231%_)
                                      (_%__kont1970019701%_
                                       _%hd1304213228%_
                                       _%hd1301913378%_
                                       _%hd1300013481%_
                                       _%hd1298513539%_
                                       _%hd1298213529%_)
                                      (if (gx#stx-pair/null? _%tl1298613542%_)
                                          (let ((_%__splice1970419705%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1298613542%_
                                                  '0)))
                                            (let ((_%tl1305813110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1970419705%_
                                                      '1)))
                                                  (_%target1305613107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1970419705%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1305813110%_)
                                                  (_%__match1984819849%_
                                                   _%e1297813515%_
                                                   _%hd1297913519%_
                                                   _%tl1298013522%_
                                                   _%e1298113525%_
                                                   _%hd1298213529%_
                                                   _%tl1298313532%_
                                                   _%e1298413535%_
                                                   _%hd1298513539%_
                                                   _%tl1298613542%_
                                                   _%__splice1970419705%_
                                                   _%target1305613107%_
                                                   _%tl1305813110%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1297413070%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1297413070%_))))))
                              (if (gx#stx-pair/null? _%tl1298613542%_)
                                  (let ((_%__splice1970419705%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1298613542%_
                                          '0)))
                                    (let ((_%tl1305813110%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1970419705%_
                                              '1)))
                                          (_%target1305613107%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1970419705%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1305813110%_)
                                          (_%__match1984819849%_
                                           _%e1297813515%_
                                           _%hd1297913519%_
                                           _%tl1298013522%_
                                           _%e1298113525%_
                                           _%hd1298213529%_
                                           _%tl1298313532%_
                                           _%e1298413535%_
                                           _%hd1298513539%_
                                           _%tl1298613542%_
                                           _%__splice1970419705%_
                                           _%target1305613107%_
                                           _%tl1305813110%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1297413070%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1297413070%_)))))))
                  (if (gx#stx-pair/null? _%tl1298613542%_)
                      (let ((_%__splice1970419705%_
                             (gx#syntax-split-splice->vector
                              _%tl1298613542%_
                              '0)))
                        (let ((_%tl1305813110%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1970419705%_ '1)))
                              (_%target1305613107%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1970419705%_ '0))))
                          (if (gx#stx-null? _%tl1305813110%_)
                              (_%__match1984819849%_
                               _%e1297813515%_
                               _%hd1297913519%_
                               _%tl1298013522%_
                               _%e1298113525%_
                               _%hd1298213529%_
                               _%tl1298313532%_
                               _%e1298413535%_
                               _%hd1298513539%_
                               _%tl1298613542%_
                               _%__splice1970419705%_
                               _%target1305613107%_
                               _%tl1305813110%_)
                              (let ()
                                (declare (not safe))
                                (_%g1297413070%_)))))
                      (let () (declare (not safe)) (_%g1297413070%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1298613542%_)
                                                  (let ((_%__splice1970419705%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1298613542%_
                                                          '0)))
                                                    (let ((_%tl1305813110%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1970419705%_
                                                              '1)))
                                                          (_%target1305613107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1970419705%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1305813110%_)
                                                          (_%__match1984819849%_
                                                           _%e1297813515%_
                                                           _%hd1297913519%_
                                                           _%tl1298013522%_
                                                           _%e1298113525%_
                                                           _%hd1298213529%_
                                                           _%tl1298313532%_
                                                           _%e1298413535%_
                                                           _%hd1298513539%_
                                                           _%tl1298613542%_
                                                           _%__splice1970419705%_
                                                           _%target1305613107%_
                                                           _%tl1305813110%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1297413070%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1297413070%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1297413070%_)))))
                          (let () (declare (not safe)) (_%g1297413070%_)))))
                  (let () (declare (not safe)) (_%g1297413070%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13567%_)
        (letrec ((_%split13570%_
                  (lambda (_%lst13925%_ _%mid13927%_)
                    (let _%lp13929%_ ((_%i13932%_ '0)
                                      (_%rest13934%_ _%lst13925%_)
                                      (_%left13935%_ '()))
                      (if (fx< _%i13932%_ _%mid13927%_)
                          (_%lp13929%_
                           (fx1+ _%i13932%_)
                           (cdr _%rest13934%_)
                           (cons (car _%rest13934%_) _%left13935%_))
                          (values (reverse _%left13935%_) _%rest13934%_))))))
          (let* ((_%g1357313601%_
                  (lambda (_%g1357413597%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1357413597%_)))
                 (_%g1357213921%_
                  (lambda (_%g1357413605%_)
                    (if (gx#stx-pair? _%g1357413605%_)
                        (let ((_%e1357813608%_ (gx#syntax-e _%g1357413605%_)))
                          (let ((_%hd1357913612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1357813608%_)))
                                (_%tl1358013615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1357813608%_))))
                            (if (gx#stx-pair? _%tl1358013615%_)
                                (let ((_%e1358113618%_
                                       (gx#syntax-e _%tl1358013615%_)))
                                  (let ((_%hd1358213622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1358113618%_)))
                                        (_%tl1358313625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1358113618%_))))
                                    (if (gx#stx-pair? _%tl1358313625%_)
                                        (let ((_%e1358413628%_
                                               (gx#syntax-e _%tl1358313625%_)))
                                          (let ((_%hd1358513632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1358413628%_)))
                                                (_%tl1358613635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1358413628%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1358613635%_)
                                                (let ((_g21019_
                                                       (gx#syntax-split-splice
                                                        _%tl1358613635%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21019_)
                         (##values-length _g21019_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21020_ 2)))
                  (error "Context expects 2 values" _g21020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1358713638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21019_
                                                              0)))
                                                          (_%tl1358913641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21019_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1358913641%_)
                                                          (letrec ((_%loop1359013644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1358813648%_ _%K1359413651%_)
                              (if (gx#stx-pair? _%hd1358813648%_)
                                  (let ((_%e1359113653%_
                                         (gx#syntax-e _%hd1358813648%_)))
                                    (let ((_%lp-hd1359213657%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1359113653%_)))
                                          (_%lp-tl1359313660%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1359113653%_))))
                                      (_%loop1359013644%_
                                       _%lp-tl1359313660%_
                                       (cons _%lp-hd1359213657%_
                                             _%K1359413651%_))))
                                  (let ((_%K1359513663%_
                                         (reverse _%K1359413651%_)))
                                    ((lambda (_%g1357513666%_
                                              _%g1357613668%_
                                              _%g1357713669%_)
                                       (let* ((_%len13699%_
                                               (length (foldr (lambda (_%g1369013693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1369113696%_)
                        (cons _%g1369013693%_ _%g1369113696%_))
                      '()
                      _%g1357513666%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13702%_
                                               (quotient _%len13699%_ '2))
                                              (_g21021_
                                               (_%split13570%_
                                                (foldr (lambda (_%g1370413707%_
                                                                _%g1370513710%_)
                                                         (cons _%g1370413707%_
                                                               _%g1370513710%_))
                                                       '()
                                                       _%g1357513666%_)
                                                _%mid13702%_)))
                                         (begin
                                           (let ((_g21022_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21021_)
                                                        (##values-length
                                                         _g21021_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21022_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21022_)))
                                           (let ((_%left13713%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g21021_ 0)))
                                                 (_%right13715%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g21021_
                                                     1))))
                                             (let* ((_%g1371913760%_
                                                     (lambda (_%g1372013756%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1372013756%_)))
                                                    (_%g1371813917%_
                                                     (lambda (_%g1372013764%_)
                                                       (if (gx#stx-pair?
                                                            _%g1372013764%_)
                                                           (let ((_%e1372513767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1372013764%_)))
                     (let ((_%hd1372613771%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1372513767%_)))
                           (_%tl1372713774%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1372513767%_))))
                       (if (gx#stx-pair? _%tl1372713774%_)
                           (let ((_%e1372813777%_
                                  (gx#syntax-e _%tl1372713774%_)))
                             (let ((_%hd1372913781%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1372813777%_)))
                                   (_%tl1373013784%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1372813777%_))))
                               (if (gx#stx-pair/null? _%hd1372913781%_)
                                   (let ((_g21023_
                                          (gx#syntax-split-splice
                                           _%hd1372913781%_
                                           '0)))
                                     (begin
                                       (let ((_g21024_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21023_)
                                                    (##values-length _g21023_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21024_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21024_)))
                                       (let ((_%target1373113787%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21023_ 0)))
                                             (_%tl1373313790%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21023_ 1))))
                                         (if (gx#stx-null? _%tl1373313790%_)
                                             (letrec ((_%loop1373413793%_
                                                       (lambda (_%hd1373213797%_
                                                                _%K-left1373813800%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1373213797%_)
                                                             (let ((_%e1373513802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1373213797%_)))
                       (let ((_%lp-hd1373613806%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1373513802%_)))
                             (_%lp-tl1373713809%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1373513802%_))))
                         (_%loop1373413793%_
                          _%lp-tl1373713809%_
                          (cons _%lp-hd1373613806%_ _%K-left1373813800%_))))
                     (let ((_%K-left1373913812%_
                            (reverse _%K-left1373813800%_)))
                       (if (gx#stx-pair? _%tl1373013784%_)
                           (let ((_%e1374013815%_
                                  (gx#syntax-e _%tl1373013784%_)))
                             (let ((_%hd1374113819%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1374013815%_)))
                                   (_%tl1374213822%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1374013815%_))))
                               (if (gx#stx-pair/null? _%hd1374113819%_)
                                   (let ((_g21025_
                                          (gx#syntax-split-splice
                                           _%hd1374113819%_
                                           '0)))
                                     (begin
                                       (let ((_g21026_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21025_)
                                                    (##values-length _g21025_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21026_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21026_)))
                                       (let ((_%target1374313825%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21025_ 0)))
                                             (_%tl1374513828%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21025_ 1))))
                                         (if (gx#stx-null? _%tl1374513828%_)
                                             (letrec ((_%loop1374613831%_
                                                       (lambda (_%hd1374413835%_
                                                                _%K-right1375013838%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1374413835%_)
                                                             (let ((_%e1374713840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1374413835%_)))
                       (let ((_%lp-hd1374813844%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1374713840%_)))
                             (_%lp-tl1374913847%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1374713840%_))))
                         (_%loop1374613831%_
                          _%lp-tl1374913847%_
                          (cons _%lp-hd1374813844%_ _%K-right1375013838%_))))
                     (let ((_%K-right1375113850%_
                            (reverse _%K-right1375013838%_)))
                       (if (gx#stx-pair? _%tl1374213822%_)
                           (let ((_%e1375213853%_
                                  (gx#syntax-e _%tl1374213822%_)))
                             (let ((_%hd1375313857%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1375213853%_)))
                                   (_%tl1375413860%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1375213853%_))))
                               (if (gx#stx-null? _%tl1375413860%_)
                                   ((lambda (_%g1372113863%_
                                             _%g1372213865%_
                                             _%g1372313866%_
                                             _%g1372413867%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%g1357613668%_
                                                              (cons _%g1372113863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%g1357713669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1357613668%_
                                  (foldr (lambda (_%g1390013905%_
                                                  _%g1390113908%_)
                                           (cons _%g1390013905%_
                                                 _%g1390113908%_))
                                         '()
                                         _%g1372313866%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%g1372113863%_
                                  (cons _%g1357613668%_
                                        (foldr (lambda (_%g1390213911%_
                                                        _%g1390313914%_)
                                                 (cons _%g1390213911%_
                                                       _%g1390313914%_))
                                               '()
                                               _%g1372213865%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1375313857%_
                                    _%K-right1375113850%_
                                    _%K-left1373913812%_
                                    _%hd1372613771%_)
                                   (_%g1371913760%_ _%g1372013764%_))))
                           (_%g1371913760%_ _%g1372013764%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1374613831%_
                                                _%target1374313825%_
                                                '()))
                                             (_%g1371913760%_
                                              _%g1372013764%_)))))
                                   (_%g1371913760%_ _%g1372013764%_))))
                           (_%g1371913760%_ _%g1372013764%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1373413793%_
                                                _%target1373113787%_
                                                '()))
                                             (_%g1371913760%_
                                              _%g1372013764%_)))))
                                   (_%g1371913760%_ _%g1372013764%_))))
                           (_%g1371913760%_ _%g1372013764%_))))
                   (_%g1371913760%_ _%g1372013764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1371813917%_
                                                (list _%mid13702%_
                                                      _%left13713%_
                                                      _%right13715%_
                                                      (fx+ _%mid13702%_
                                                           (gx#stx-e
                                                            _%g1357713669%_)))))))))
                                     _%K1359513663%_
                                     _%hd1358513632%_
                                     _%hd1358213622%_))))))
                    (_%loop1359013644%_ _%target1358713638%_ '()))
                  (_%g1357313601%_ _%g1357413605%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1357313601%_
                                                 _%g1357413605%_))))
                                        (_%g1357313601%_ _%g1357413605%_))))
                                (_%g1357313601%_ _%g1357413605%_))))
                        (_%g1357313601%_ _%g1357413605%_)))))
            (_%g1357213921%_ _%stx13567%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13941%_)
        (let* ((_%__stx1985119852%_ _%$stx13941%_)
               (_%g1394613977%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1985119852%_))))
          (let ((_%__kont1985419855%_
                 (lambda (_%g1394814087%_) _%g1394814087%_))
                (_%__kont1985619857%_
                 (lambda (_%g1395514032%_ _%g1395614034%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1395614034%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1405114054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1405214057%_)
                        (cons _%g1405114054%_ _%g1405214057%_))
                      '()
                      _%g1395514032%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1989419895%_
                   (lambda (_%e1395713984%_
                            _%hd1395813988%_
                            _%tl1395913991%_
                            _%e1396013994%_
                            _%hd1396113998%_
                            _%tl1396214001%_
                            _%__splice1985819859%_
                            _%target1396314004%_
                            _%tl1396514007%_)
                     (letrec ((_%loop1396614010%_
                               (lambda (_%hd1396414014%_ _%rest1397014017%_)
                                 (if (gx#stx-pair? _%hd1396414014%_)
                                     (let ((_%e1396714019%_
                                            (gx#syntax-e _%hd1396414014%_)))
                                       (let ((_%lp-tl1396914026%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1396714019%_)))
                                             (_%lp-hd1396814023%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1396714019%_))))
                                         (_%loop1396614010%_
                                          _%lp-tl1396914026%_
                                          (cons _%lp-hd1396814023%_
                                                _%rest1397014017%_))))
                                     (let ((_%rest1397114029%_
                                            (reverse _%rest1397014017%_)))
                                       (_%__kont1985619857%_
                                        _%rest1397114029%_
                                        _%hd1396113998%_))))))
                       (_%loop1396614010%_ _%target1396314004%_ '())))))
              (if (gx#stx-pair? _%__stx1985119852%_)
                  (let ((_%e1394914067%_ (gx#syntax-e _%__stx1985119852%_)))
                    (let ((_%tl1395114074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1394914067%_)))
                          (_%hd1395014071%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1394914067%_))))
                      (if (gx#stx-pair? _%tl1395114074%_)
                          (let ((_%e1395214077%_
                                 (gx#syntax-e _%tl1395114074%_)))
                            (let ((_%tl1395414084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1395214077%_)))
                                  (_%hd1395314081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1395214077%_))))
                              (if (gx#stx-null? _%tl1395414084%_)
                                  (_%__kont1985419855%_ _%hd1395314081%_)
                                  (if (gx#stx-pair/null? _%tl1395414084%_)
                                      (let ((_%__splice1985819859%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1395414084%_
                                              '0)))
                                        (let ((_%tl1396514007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1985819859%_
                                                  '1)))
                                              (_%target1396314004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1985819859%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1396514007%_)
                                              (_%__match1989419895%_
                                               _%e1394914067%_
                                               _%hd1395014071%_
                                               _%tl1395114074%_
                                               _%e1395214077%_
                                               _%hd1395314081%_
                                               _%tl1395414084%_
                                               _%__splice1985819859%_
                                               _%target1396314004%_
                                               _%tl1396514007%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1394613977%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1394613977%_))))))
                          (let () (declare (not safe)) (_%g1394613977%_)))))
                  (let () (declare (not safe)) (_%g1394613977%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14105%_)
        (let* ((_%__stx1989719898%_ _%$stx14105%_)
               (_%g1411114164%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1989719898%_))))
          (let ((_%__kont1990019901%_
                 (lambda (_%g1411314364%_ _%g1411414366%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1411414366%_
                                           (cons _%g1411314364%_ '()))
                                     '())
                               (cons _%g1411414366%_ '())))))
                (_%__kont1990219903%_
                 (lambda (_%g1412414308%_ _%g1412514310%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1412514310%_
                                           (cons _%g1412414308%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1412514310%_)
                                     '())))))
                (_%__kont1990419905%_
                 (lambda (_%g1413814229%_ _%g1413914231%_ _%g1414014232%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1414014232%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1413914231%_
                                                             (foldr (lambda (_%g1425214255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1425314258%_)
                              (cons _%g1425214255%_ _%g1425314258%_))
                            '()
                            _%g1413814229%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1414014232%_ '()))))))
            (let* ((_%__match1998419985%_
                    (lambda (_%e1414114171%_
                             _%hd1414214175%_
                             _%tl1414314178%_
                             _%e1414414181%_
                             _%hd1414514185%_
                             _%tl1414614188%_
                             _%e1414714191%_
                             _%hd1414814195%_
                             _%tl1414914198%_
                             _%__splice1990619907%_
                             _%target1415014201%_
                             _%tl1415214204%_)
                      (letrec ((_%loop1415314207%_
                                (lambda (_%hd1415114211%_ _%body1415714214%_)
                                  (if (gx#stx-pair? _%hd1415114211%_)
                                      (let ((_%e1415414216%_
                                             (gx#syntax-e _%hd1415114211%_)))
                                        (let ((_%lp-tl1415614223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1415414216%_)))
                                              (_%lp-hd1415514220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1415414216%_))))
                                          (_%loop1415314207%_
                                           _%lp-tl1415614223%_
                                           (cons _%lp-hd1415514220%_
                                                 _%body1415714214%_))))
                                      (let ((_%body1415814226%_
                                             (reverse _%body1415714214%_)))
                                        (let ((_%g1413814229%_
                                               _%body1415814226%_)
                                              (_%g1413914231%_
                                               _%tl1414914198%_)
                                              (_%g1414014232%_
                                               _%hd1414814195%_))
                                          (if (gx#identifier? _%g1414014232%_)
                                              (_%__kont1990419905%_
                                               _%g1413814229%_
                                               _%g1413914231%_
                                               _%g1414014232%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411114164%_)))))))))
                        (_%loop1415314207%_ _%target1415014201%_ '()))))
                   (_%__match1995819959%_
                    (lambda (_%e1412614268%_
                             _%hd1412714272%_
                             _%tl1412814275%_
                             _%e1412914278%_
                             _%hd1413014282%_
                             _%tl1413114285%_
                             _%e1413214288%_
                             _%hd1413314292%_
                             _%tl1413414295%_
                             _%e1413514298%_
                             _%hd1413614302%_
                             _%tl1413714305%_)
                      (let ((_%g1412414308%_ _%hd1413614302%_)
                            (_%g1412514310%_ _%tl1413414295%_))
                        (if (gx#identifier-list? _%g1412514310%_)
                            (_%__kont1990219903%_
                             _%g1412414308%_
                             _%g1412514310%_)
                            (if (gx#stx-pair/null? _%tl1413114285%_)
                                (let ((_%__splice1990619907%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1413114285%_
                                        '0)))
                                  (let ((_%tl1415214204%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1990619907%_
                                            '1)))
                                        (_%target1415014201%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1990619907%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1415214204%_)
                                        (_%__match1998419985%_
                                         _%e1412614268%_
                                         _%hd1412714272%_
                                         _%tl1412814275%_
                                         _%e1412914278%_
                                         _%hd1413014282%_
                                         _%tl1413114285%_
                                         _%e1413214288%_
                                         _%hd1413314292%_
                                         _%tl1413414295%_
                                         _%__splice1990619907%_
                                         _%target1415014201%_
                                         _%tl1415214204%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1411114164%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1411114164%_)))))))
                   (_%__match1992819929%_
                    (lambda (_%e1411514334%_
                             _%hd1411614338%_
                             _%tl1411714341%_
                             _%e1411814344%_
                             _%hd1411914348%_
                             _%tl1412014351%_
                             _%e1412114354%_
                             _%hd1412214358%_
                             _%tl1412314361%_)
                      (let ((_%g1411314364%_ _%hd1412214358%_)
                            (_%g1411414366%_ _%hd1411914348%_))
                        (if (gx#identifier? _%g1411414366%_)
                            (_%__kont1990019901%_
                             _%g1411314364%_
                             _%g1411414366%_)
                            (if (gx#stx-pair? _%hd1411914348%_)
                                (let ((_%e1413214288%_
                                       (gx#syntax-e _%hd1411914348%_)))
                                  (let ((_%tl1413414295%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1413214288%_)))
                                        (_%hd1413314292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1413214288%_))))
                                    (if (gx#identifier? _%hd1413314292%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21027_|
                                             _%hd1413314292%_)
                                            (_%__match1995819959%_
                                             _%e1411514334%_
                                             _%hd1411614338%_
                                             _%tl1411714341%_
                                             _%e1411814344%_
                                             _%hd1411914348%_
                                             _%tl1412014351%_
                                             _%e1413214288%_
                                             _%hd1413314292%_
                                             _%tl1413414295%_
                                             _%e1412114354%_
                                             _%hd1412214358%_
                                             _%tl1412314361%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1412014351%_)
                                                (let ((_%__splice1990619907%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1412014351%_
                                                        '0)))
                                                  (let ((_%tl1415214204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1990619907%_
                                                            '1)))
                                                        (_%target1415014201%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1990619907%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1415214204%_)
                                                        (_%__match1998419985%_
                                                         _%e1411514334%_
                                                         _%hd1411614338%_
                                                         _%tl1411714341%_
                                                         _%e1411814344%_
                                                         _%hd1411914348%_
                                                         _%tl1412014351%_
                                                         _%e1413214288%_
                                                         _%hd1413314292%_
                                                         _%tl1413414295%_
                                                         _%__splice1990619907%_
                                                         _%target1415014201%_
                                                         _%tl1415214204%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1411114164%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1411114164%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1412014351%_)
                                            (let ((_%__splice1990619907%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1412014351%_
                                                    '0)))
                                              (let ((_%tl1415214204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1990619907%_
                                                        '1)))
                                                    (_%target1415014201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1990619907%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1415214204%_)
                                                    (_%__match1998419985%_
                                                     _%e1411514334%_
                                                     _%hd1411614338%_
                                                     _%tl1411714341%_
                                                     _%e1411814344%_
                                                     _%hd1411914348%_
                                                     _%tl1412014351%_
                                                     _%e1413214288%_
                                                     _%hd1413314292%_
                                                     _%tl1413414295%_
                                                     _%__splice1990619907%_
                                                     _%target1415014201%_
                                                     _%tl1415214204%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1411114164%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1411114164%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1411114164%_))))))))
              (if (gx#stx-pair? _%__stx1989719898%_)
                  (let ((_%e1411514334%_ (gx#syntax-e _%__stx1989719898%_)))
                    (let ((_%tl1411714341%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1411514334%_)))
                          (_%hd1411614338%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1411514334%_))))
                      (if (gx#stx-pair? _%tl1411714341%_)
                          (let ((_%e1411814344%_
                                 (gx#syntax-e _%tl1411714341%_)))
                            (let ((_%tl1412014351%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1411814344%_)))
                                  (_%hd1411914348%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1411814344%_))))
                              (if (gx#stx-pair? _%tl1412014351%_)
                                  (let ((_%e1412114354%_
                                         (gx#syntax-e _%tl1412014351%_)))
                                    (let ((_%tl1412314361%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1412114354%_)))
                                          (_%hd1412214358%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1412114354%_))))
                                      (if (gx#stx-null? _%tl1412314361%_)
                                          (_%__match1992819929%_
                                           _%e1411514334%_
                                           _%hd1411614338%_
                                           _%tl1411714341%_
                                           _%e1411814344%_
                                           _%hd1411914348%_
                                           _%tl1412014351%_
                                           _%e1412114354%_
                                           _%hd1412214358%_
                                           _%tl1412314361%_)
                                          (if (gx#stx-pair? _%hd1411914348%_)
                                              (let ((_%e1413214288%_
                                                     (gx#syntax-e
                                                      _%hd1411914348%_)))
                                                (let ((_%tl1413414295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1413214288%_)))
                                                      (_%hd1413314292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1413214288%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1412014351%_)
                                                      (let ((_%__splice1990619907%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1412014351%_
                                                              '0)))
                                                        (let ((_%tl1415214204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1990619907%_ '1)))
                      (_%target1415014201%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1990619907%_ '0))))
                  (if (gx#stx-null? _%tl1415214204%_)
                      (_%__match1998419985%_
                       _%e1411514334%_
                       _%hd1411614338%_
                       _%tl1411714341%_
                       _%e1411814344%_
                       _%hd1411914348%_
                       _%tl1412014351%_
                       _%e1413214288%_
                       _%hd1413314292%_
                       _%tl1413414295%_
                       _%__splice1990619907%_
                       _%target1415014201%_
                       _%tl1415214204%_)
                      (let () (declare (not safe)) (_%g1411114164%_)))))
              (let () (declare (not safe)) (_%g1411114164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411114164%_))))))
                                  (if (gx#stx-pair? _%hd1411914348%_)
                                      (let ((_%e1413214288%_
                                             (gx#syntax-e _%hd1411914348%_)))
                                        (let ((_%tl1413414295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1413214288%_)))
                                              (_%hd1413314292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1413214288%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1412014351%_)
                                              (let ((_%__splice1990619907%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1412014351%_
                                                      '0)))
                                                (let ((_%tl1415214204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1990619907%_
                                                          '1)))
                                                      (_%target1415014201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1990619907%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1415214204%_)
                                                      (_%__match1998419985%_
                                                       _%e1411514334%_
                                                       _%hd1411614338%_
                                                       _%tl1411714341%_
                                                       _%e1411814344%_
                                                       _%hd1411914348%_
                                                       _%tl1412014351%_
                                                       _%e1413214288%_
                                                       _%hd1413314292%_
                                                       _%tl1413414295%_
                                                       _%__splice1990619907%_
                                                       _%target1415014201%_
                                                       _%tl1415214204%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1411114164%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1411114164%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1411114164%_))))))
                          (let () (declare (not safe)) (_%g1411114164%_)))))
                  (let () (declare (not safe)) (_%g1411114164%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14386%_)
        (letrec ((_%let-bind?14389%_
                  (lambda (_%x15298%_)
                    (let* ((_%__stx1998719988%_ _%x15298%_)
                           (_%g1530315322%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx1998719988%_))))
                      (let ((_%__kont1999019991%_
                             (lambda (_%g1530515390%_ _%g1530615392%_)
                               (_%let-head?14392%_ _%g1530615392%_)))
                            (_%__kont1999219993%_
                             (lambda (_%g1531315350%_) '#t))
                            (_%__kont1999419995%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx1998719988%_)
                            (let ((_%e1530715370%_
                                   (gx#syntax-e _%__stx1998719988%_)))
                              (let ((_%tl1530915377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1530715370%_)))
                                    (_%hd1530815374%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1530715370%_))))
                                (if (gx#stx-pair? _%tl1530915377%_)
                                    (let ((_%e1531015380%_
                                           (gx#syntax-e _%tl1530915377%_)))
                                      (let ((_%tl1531215387%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1531015380%_)))
                                            (_%hd1531115384%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1531015380%_))))
                                        (if (gx#stx-null? _%tl1531215387%_)
                                            (_%__kont1999019991%_
                                             _%hd1531115384%_
                                             _%hd1530815374%_)
                                            (_%__kont1999419995%_))))
                                    (if (gx#stx-null? _%tl1530915377%_)
                                        (_%__kont1999219993%_ _%hd1530815374%_)
                                        (_%__kont1999419995%_)))))
                            (_%__kont1999419995%_))))))
                 (_%let-bind14391%_
                  (lambda (_%x15200%_)
                    (let* ((_%__stx2002120022%_ _%x15200%_)
                           (_%g1520415223%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2002120022%_))))
                      (let ((_%__kont2002420025%_
                             (lambda (_%g1520615279%_ _%g1520715281%_)
                               _%x15200%_))
                            (_%__kont2002620027%_
                             (lambda (_%g1521415240%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1521415240%_ '())))))
                        (if (gx#stx-pair? _%__stx2002120022%_)
                            (let ((_%e1520815259%_
                                   (gx#syntax-e _%__stx2002120022%_)))
                              (let ((_%tl1521015266%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1520815259%_)))
                                    (_%hd1520915263%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1520815259%_))))
                                (if (gx#stx-pair? _%tl1521015266%_)
                                    (let ((_%e1521115269%_
                                           (gx#syntax-e _%tl1521015266%_)))
                                      (let ((_%tl1521315276%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1521115269%_)))
                                            (_%hd1521215273%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1521115269%_))))
                                        (if (gx#stx-null? _%tl1521315276%_)
                                            (_%__kont2002420025%_
                                             _%hd1521215273%_
                                             _%hd1520915263%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1520415223%_)))))
                                    (if (gx#stx-null? _%tl1521015266%_)
                                        (_%__kont2002620027%_ _%hd1520915263%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1520415223%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1520415223%_)))))))
                 (_%let-head?14392%_
                  (lambda (_%x15140%_)
                    (let* ((_%__stx2005320054%_ _%x15140%_)
                           (_%g1514415155%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2005320054%_))))
                      (let ((_%__kont2005620057%_
                             (lambda (_%g1514615183%_)
                               (gx#stx-andmap gx#identifier? _%g1514615183%_)))
                            (_%__kont2005820059%_
                             (lambda () (gx#identifier? _%x15140%_))))
                        (if (gx#stx-pair? _%__stx2005320054%_)
                            (let ((_%e1514715173%_
                                   (gx#syntax-e _%__stx2005320054%_)))
                              (let ((_%tl1514915180%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1514715173%_)))
                                    (_%hd1514815177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1514715173%_))))
                                (if (gx#identifier? _%hd1514815177%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21028_|
                                         _%hd1514815177%_)
                                        (_%__kont2005620057%_ _%tl1514915180%_)
                                        (_%__kont2005820059%_))
                                    (_%__kont2005820059%_))))
                            (_%__kont2005820059%_))))))
                 (_%let-head14393%_
                  (lambda (_%x15080%_)
                    (let* ((_%__stx2007320074%_ _%x15080%_)
                           (_%g1508415095%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2007320074%_))))
                      (let ((_%__kont2007620077%_
                             (lambda (_%g1508615123%_) _%g1508615123%_))
                            (_%__kont2007820079%_
                             (lambda () (list _%x15080%_))))
                        (if (gx#stx-pair? _%__stx2007320074%_)
                            (let ((_%e1508715113%_
                                   (gx#syntax-e _%__stx2007320074%_)))
                              (let ((_%tl1508915120%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1508715113%_)))
                                    (_%hd1508815117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1508715113%_))))
                                (if (gx#identifier? _%hd1508815117%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21029_|
                                         _%hd1508815117%_)
                                        (_%__kont2007620077%_ _%tl1508915120%_)
                                        (_%__kont2007820079%_))
                                    (_%__kont2007820079%_))))
                            (_%__kont2007820079%_)))))))
          (let* ((_%__stx2009320094%_ _%stx14386%_)
                 (_%g1439714469%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2009320094%_))))
            (let ((_%__kont2009620097%_
                   (lambda (_%g1439915053%_
                            _%g1440015055%_
                            _%g1440115056%_
                            _%g1440215057%_)
                     (cons _%g1440215057%_
                           (cons (cons (cons _%g1440115056%_
                                             (cons _%g1440015055%_ '()))
                                       '())
                                 _%g1439915053%_))))
                  (_%__kont2009820099%_
                   (lambda (_%g1441514975%_ _%g1441614977%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1441614977%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1499715000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1499815003%_)
                    (cons _%g1499715000%_ _%g1499815003%_))
                  '()
                  _%g1441514975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2010220103%_
                   (lambda (_%g1443814552%_ _%g1443914554%_)
                     (let* ((_%g1458514611%_
                             (lambda (_%g1458614607%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1458614607%_)))
                            (_%g1458414888%_
                             (lambda (_%g1458614615%_)
                               (if (gx#stx-pair/null? _%g1458614615%_)
                                   (let ((_g21030_
                                          (gx#syntax-split-splice
                                           _%g1458614615%_
                                           '0)))
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
                                             (error "Context expects 2 values"
                                                    _g21031_)))
                                       (let ((_%target1458914618%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21030_ 0)))
                                             (_%tl1459114621%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21030_ 1))))
                                         (if (gx#stx-null? _%tl1459114621%_)
                                             (letrec ((_%loop1459214624%_
                                                       (lambda (_%hd1459014628%_
                                                                _%e1459614631%_
                                                                _%hd1459714632%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1459014628%_)
                                                             (let ((_%e1459314634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1459014628%_)))
                       (let ((_%lp-hd1459414638%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1459314634%_)))
                             (_%lp-tl1459514641%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1459314634%_))))
                         (if (gx#stx-pair? _%lp-hd1459414638%_)
                             (let ((_%e1460014644%_
                                    (gx#syntax-e _%lp-hd1459414638%_)))
                               (let ((_%hd1460114648%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1460014644%_)))
                                     (_%tl1460214651%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1460014644%_))))
                                 (if (gx#stx-pair? _%tl1460214651%_)
                                     (let ((_%e1460314654%_
                                            (gx#syntax-e _%tl1460214651%_)))
                                       (let ((_%hd1460414658%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1460314654%_)))
                                             (_%tl1460514661%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1460314654%_))))
                                         (if (gx#stx-null? _%tl1460514661%_)
                                             (_%loop1459214624%_
                                              _%lp-tl1459514641%_
                                              (cons _%hd1460414658%_
                                                    _%e1459614631%_)
                                              (cons _%hd1460114648%_
                                                    _%hd1459714632%_))
                                             (_%g1458514611%_
                                              _%g1458614615%_))))
                                     (_%g1458514611%_ _%g1458614615%_))))
                             (_%g1458514611%_ _%g1458614615%_))))
                     (let ((_%e1459814664%_ (reverse _%e1459614631%_))
                           (_%hd1459914666%_ (reverse _%hd1459714632%_)))
                       ((lambda (_%g1458714668%_ _%g1458814670%_)
                          (let* ((_%g1468614703%_
                                  (lambda (_%g1468714699%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1468714699%_)))
                                 (_%g1468514876%_
                                  (lambda (_%g1468714707%_)
                                    (if (gx#stx-pair/null? _%g1468714707%_)
                                        (let ((_g21032_
                                               (gx#syntax-split-splice
                                                _%g1468714707%_
                                                '0)))
                                          (begin
                                            (let ((_g21033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21032_)
                                                         (##values-length
                                                          _g21032_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21033_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21033_)))
                                            (let ((_%target1468914710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21032_
                                                      0)))
                                                  (_%tl1469114713%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21032_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1469114713%_)
                                                  (letrec ((_%loop1469214716%_
                                                            (lambda (_%hd1469014720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1469614723%_)
                      (if (gx#stx-pair? _%hd1469014720%_)
                          (let ((_%e1469314725%_
                                 (gx#syntax-e _%hd1469014720%_)))
                            (let ((_%lp-hd1469414729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1469314725%_)))
                                  (_%lp-tl1469514732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1469314725%_))))
                              (_%loop1469214716%_
                               _%lp-tl1469514732%_
                               (cons _%lp-hd1469414729%_ _%$e1469614723%_))))
                          (let ((_%$e1469714735%_ (reverse _%$e1469614723%_)))
                            ((lambda (_%g1468814738%_)
                               (let* ((_%g1475514772%_
                                       (lambda (_%g1475614768%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1475614768%_)))
                                      (_%g1475414864%_
                                       (lambda (_%g1475614776%_)
                                         (if (gx#stx-pair/null?
                                              _%g1475614776%_)
                                             (let ((_g21034_
                                                    (gx#syntax-split-splice
                                                     _%g1475614776%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21035_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21034_)
                                                              (##values-length
                                                               _g21034_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1475814779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21034_
                                                           0)))
                                                       (_%tl1476014782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21034_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1476014782%_)
                                                       (letrec ((_%loop1476114785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1475914789%_ _%hd-bind1476514792%_)
                           (if (gx#stx-pair? _%hd1475914789%_)
                               (let ((_%e1476214794%_
                                      (gx#syntax-e _%hd1475914789%_)))
                                 (let ((_%lp-hd1476314798%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1476214794%_)))
                                       (_%lp-tl1476414801%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1476214794%_))))
                                   (_%loop1476114785%_
                                    _%lp-tl1476414801%_
                                    (cons _%lp-hd1476314798%_
                                          _%hd-bind1476514792%_))))
                               (let ((_%hd-bind1476614804%_
                                      (reverse _%hd-bind1476514792%_)))
                                 ((lambda (_%g1475714807%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g1458714668%_
                                                   _%g1468814738%_)
                                                  (foldr (lambda (_%g1482514836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1482614839%_
                          _%g1482714841%_)
                   (cons (cons (cons _%g1482614839%_ '())
                               (cons _%g1482514836%_ '()))
                         _%g1482714841%_))
                 '()
                 _%g1458714668%_
                 _%g1468814738%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1482814844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1482914847%_)
                             (cons _%g1482814844%_ _%g1482914847%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%g1468814738%_
                                                _%g1475714807%_)
                                               (foldr (lambda (_%g1483014850%_
                                                               _%g1483114853%_
                                                               _%g1483214855%_)
                                                        (cons (cons _%g1483114853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1483014850%_ '()))
                      _%g1483214855%_))
              '()
              _%g1468814738%_
              _%g1475714807%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1483314858%_
                                                             _%g1483414861%_)
                                                      (cons _%g1483314858%_
                                                            _%g1483414861%_))
                                                    '()
                                                    _%g1443814552%_)))
                                 '())
                           _%g1468814738%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1476614804%_))))))
                 (_%loop1476114785%_ _%target1475814779%_ '()))
               (_%g1475514772%_ _%g1475614776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1475514772%_
                                              _%g1475614776%_)))))
                                 (_%g1475414864%_
                                  (gx#stx-map
                                   _%let-head14393%_
                                   (foldr (lambda (_%g1486714870%_
                                                   _%g1486814873%_)
                                            (cons _%g1486714870%_
                                                  _%g1486814873%_))
                                          '()
                                          _%g1458814670%_)))))
                             _%$e1469714735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1469214716%_
                                                     _%target1468914710%_
                                                     '()))
                                                  (_%g1468614703%_
                                                   _%g1468714707%_)))))
                                        (_%g1468614703%_ _%g1468714707%_)))))
                            (_%g1468514876%_
                             (gx#gentemps
                              (foldr (lambda (_%g1487914882%_ _%g1488014885%_)
                                       (cons _%g1487914882%_ _%g1488014885%_))
                                     '()
                                     _%g1458814670%_)))))
                        _%e1459814664%_
                        _%hd1459914666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1459214624%_
                                                _%target1458914618%_
                                                '()
                                                '()))
                                             (_%g1458514611%_
                                              _%g1458614615%_)))))
                                   (_%g1458514611%_ _%g1458614615%_)))))
                       (_%g1458414888%_
                        (gx#stx-map
                         _%let-bind14391%_
                         (foldr (lambda (_%g1489114894%_ _%g1489214897%_)
                                  (cons _%g1489114894%_ _%g1489214897%_))
                                '()
                                _%g1443914554%_)))))))
              (let* ((_%__match2019020191%_
                      (lambda (_%e1444014476%_
                               _%hd1444114480%_
                               _%tl1444214483%_
                               _%e1444314486%_
                               _%hd1444414490%_
                               _%tl1444514493%_
                               _%__splice2010420105%_
                               _%target1444614496%_
                               _%tl1444814499%_)
                        (letrec ((_%loop1444914502%_
                                  (lambda (_%hd1444714506%_ _%bind1445314509%_)
                                    (if (gx#stx-pair? _%hd1444714506%_)
                                        (let ((_%e1445014511%_
                                               (gx#syntax-e _%hd1444714506%_)))
                                          (let ((_%lp-tl1445214518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1445014511%_)))
                                                (_%lp-hd1445114515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1445014511%_))))
                                            (_%loop1444914502%_
                                             _%lp-tl1445214518%_
                                             (cons _%lp-hd1445114515%_
                                                   _%bind1445314509%_))))
                                        (let ((_%bind1445414521%_
                                               (reverse _%bind1445314509%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1444514493%_)
                                              (let ((_%__splice2010620107%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1444514493%_
                                                      '0)))
                                                (let ((_%tl1445714527%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2010620107%_
                                                          '1)))
                                                      (_%target1445514524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2010620107%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1445714527%_)
                                                      (letrec ((_%loop1445814530%_
                                                                (lambda (_%hd1445614534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1446214537%_)
                          (if (gx#stx-pair? _%hd1445614534%_)
                              (let ((_%e1445914539%_
                                     (gx#syntax-e _%hd1445614534%_)))
                                (let ((_%lp-tl1446114546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1445914539%_)))
                                      (_%lp-hd1446014543%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1445914539%_))))
                                  (_%loop1445814530%_
                                   _%lp-tl1446114546%_
                                   (cons _%lp-hd1446014543%_
                                         _%body1446214537%_))))
                              (let ((_%body1446314549%_
                                     (reverse _%body1446214537%_)))
                                (let ((_%g1443814552%_ _%body1446314549%_)
                                      (_%g1443914554%_ _%bind1445414521%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14389%_
                                       (foldr (lambda (_%g1457614579%_
                                                       _%g1457714582%_)
                                                (cons _%g1457614579%_
                                                      _%g1457714582%_))
                                              '()
                                              _%g1443914554%_))
                                      (_%__kont2010220103%_
                                       _%g1443814552%_
                                       _%g1443914554%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1439714469%_)))))))))
                (_%loop1445814530%_ _%target1445514524%_ '()))
              (let () (declare (not safe)) (_%g1439714469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1439714469%_))))))))
                          (_%loop1444914502%_ _%target1444614496%_ '()))))
                     (_%__match2017020171%_
                      (lambda (_%e1441714907%_
                               _%hd1441814911%_
                               _%tl1441914914%_
                               _%e1442014917%_
                               _%hd1442114921%_
                               _%tl1442214924%_
                               _%e1442314927%_
                               _%hd1442414931%_
                               _%tl1442514934%_
                               _%e1442614937%_
                               _%hd1442714941%_
                               _%tl1442814944%_
                               _%__splice2010020101%_
                               _%target1442914947%_
                               _%tl1443114950%_)
                        (letrec ((_%loop1443214953%_
                                  (lambda (_%hd1443014957%_ _%body1443614960%_)
                                    (if (gx#stx-pair? _%hd1443014957%_)
                                        (let ((_%e1443314962%_
                                               (gx#syntax-e _%hd1443014957%_)))
                                          (let ((_%lp-tl1443514969%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1443314962%_)))
                                                (_%lp-hd1443414966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1443314962%_))))
                                            (_%loop1443214953%_
                                             _%lp-tl1443514969%_
                                             (cons _%lp-hd1443414966%_
                                                   _%body1443614960%_))))
                                        (let ((_%body1443714972%_
                                               (reverse _%body1443614960%_)))
                                          (_%__kont2009820099%_
                                           _%body1443714972%_
                                           _%hd1442714941%_))))))
                          (_%loop1443214953%_ _%target1442914947%_ '()))))
                     (_%__match2013420135%_
                      (lambda (_%e1440315013%_
                               _%hd1440415017%_
                               _%tl1440515020%_
                               _%e1440615023%_
                               _%hd1440715027%_
                               _%tl1440815030%_
                               _%e1440915033%_
                               _%hd1441015037%_
                               _%tl1441115040%_
                               _%e1441215043%_
                               _%hd1441315047%_
                               _%tl1441415050%_)
                        (let ((_%g1439915053%_ _%tl1440815030%_)
                              (_%g1440015055%_ _%hd1441315047%_)
                              (_%g1440115056%_ _%hd1441015037%_)
                              (_%g1440215057%_ _%hd1440415017%_))
                          (if (_%let-head?14392%_ _%g1440115056%_)
                              (_%__kont2009620097%_
                               _%g1439915053%_
                               _%g1440015055%_
                               _%g1440115056%_
                               _%g1440215057%_)
                              (if (gx#stx-pair? _%hd1441015037%_)
                                  (let ((_%e1442614937%_
                                         (gx#syntax-e _%hd1441015037%_)))
                                    (let ((_%tl1442814944%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1442614937%_)))
                                          (_%hd1442714941%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1442614937%_))))
                                      (if (gx#stx-pair/null? _%hd1440715027%_)
                                          (let ((_%__splice2010420105%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1440715027%_
                                                  '0)))
                                            (let ((_%tl1444814499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2010420105%_
                                                      '1)))
                                                  (_%target1444614496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2010420105%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1444814499%_)
                                                  (_%__match2019020191%_
                                                   _%e1440315013%_
                                                   _%hd1440415017%_
                                                   _%tl1440515020%_
                                                   _%e1440615023%_
                                                   _%hd1440715027%_
                                                   _%tl1440815030%_
                                                   _%__splice2010420105%_
                                                   _%target1444614496%_
                                                   _%tl1444814499%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1439714469%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1439714469%_)))))
                                  (if (gx#stx-pair/null? _%hd1440715027%_)
                                      (let ((_%__splice2010420105%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1440715027%_
                                              '0)))
                                        (let ((_%tl1444814499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2010420105%_
                                                  '1)))
                                              (_%target1444614496%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2010420105%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1444814499%_)
                                              (_%__match2019020191%_
                                               _%e1440315013%_
                                               _%hd1440415017%_
                                               _%tl1440515020%_
                                               _%e1440615023%_
                                               _%hd1440715027%_
                                               _%tl1440815030%_
                                               _%__splice2010420105%_
                                               _%target1444614496%_
                                               _%tl1444814499%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1439714469%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1439714469%_)))))))))
                (if (gx#stx-pair? _%__stx2009320094%_)
                    (let ((_%e1440315013%_ (gx#syntax-e _%__stx2009320094%_)))
                      (let ((_%tl1440515020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1440315013%_)))
                            (_%hd1440415017%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1440315013%_))))
                        (if (gx#stx-pair? _%tl1440515020%_)
                            (let ((_%e1440615023%_
                                   (gx#syntax-e _%tl1440515020%_)))
                              (let ((_%tl1440815030%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1440615023%_)))
                                    (_%hd1440715027%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1440615023%_))))
                                (if (gx#stx-pair? _%hd1440715027%_)
                                    (let ((_%e1440915033%_
                                           (gx#syntax-e _%hd1440715027%_)))
                                      (let ((_%tl1441115040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1440915033%_)))
                                            (_%hd1441015037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1440915033%_))))
                                        (if (gx#stx-pair? _%tl1441115040%_)
                                            (let ((_%e1441215043%_
                                                   (gx#syntax-e
                                                    _%tl1441115040%_)))
                                              (let ((_%tl1441415050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1441215043%_)))
                                                    (_%hd1441315047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1441215043%_))))
                                                (if (gx#stx-null?
                                                     _%tl1441415050%_)
                                                    (_%__match2013420135%_
                                                     _%e1440315013%_
                                                     _%hd1440415017%_
                                                     _%tl1440515020%_
                                                     _%e1440615023%_
                                                     _%hd1440715027%_
                                                     _%tl1440815030%_
                                                     _%e1440915033%_
                                                     _%hd1441015037%_
                                                     _%tl1441115040%_
                                                     _%e1441215043%_
                                                     _%hd1441315047%_
                                                     _%tl1441415050%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1441015037%_)
                                                        (let ((_%e1442614937%_
                                                               (gx#syntax-e
                                                                _%hd1441015037%_)))
                                                          (let ((_%tl1442814944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1442614937%_)))
                        (_%hd1442714941%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1442614937%_))))
                    (if (gx#stx-pair/null? _%hd1440715027%_)
                        (let ((_%__splice2010420105%_
                               (gx#syntax-split-splice->vector
                                _%hd1440715027%_
                                '0)))
                          (let ((_%tl1444814499%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010420105%_ '1)))
                                (_%target1444614496%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010420105%_ '0))))
                            (if (gx#stx-null? _%tl1444814499%_)
                                (_%__match2019020191%_
                                 _%e1440315013%_
                                 _%hd1440415017%_
                                 _%tl1440515020%_
                                 _%e1440615023%_
                                 _%hd1440715027%_
                                 _%tl1440815030%_
                                 _%__splice2010420105%_
                                 _%target1444614496%_
                                 _%tl1444814499%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1439714469%_)))))
                        (let () (declare (not safe)) (_%g1439714469%_)))))
                (if (gx#stx-pair/null? _%hd1440715027%_)
                    (let ((_%__splice2010420105%_
                           (gx#syntax-split-splice->vector
                            _%hd1440715027%_
                            '0)))
                      (let ((_%tl1444814499%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010420105%_ '1)))
                            (_%target1444614496%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010420105%_ '0))))
                        (if (gx#stx-null? _%tl1444814499%_)
                            (_%__match2019020191%_
                             _%e1440315013%_
                             _%hd1440415017%_
                             _%tl1440515020%_
                             _%e1440615023%_
                             _%hd1440715027%_
                             _%tl1440815030%_
                             _%__splice2010420105%_
                             _%target1444614496%_
                             _%tl1444814499%_)
                            (let () (declare (not safe)) (_%g1439714469%_)))))
                    (let () (declare (not safe)) (_%g1439714469%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1441015037%_)
                                                (let ((_%e1442614937%_
                                                       (gx#syntax-e
                                                        _%hd1441015037%_)))
                                                  (let ((_%tl1442814944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1442614937%_)))
                                                        (_%hd1442714941%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1442614937%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1442814944%_)
                                                        (if (gx#stx-null?
                                                             _%tl1441115040%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1440815030%_)
                        (let ((_%__splice2010020101%_
                               (gx#syntax-split-splice->vector
                                _%tl1440815030%_
                                '0)))
                          (let ((_%tl1443114950%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010020101%_ '1)))
                                (_%target1442914947%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010020101%_ '0))))
                            (if (gx#stx-null? _%tl1443114950%_)
                                (_%__match2017020171%_
                                 _%e1440315013%_
                                 _%hd1440415017%_
                                 _%tl1440515020%_
                                 _%e1440615023%_
                                 _%hd1440715027%_
                                 _%tl1440815030%_
                                 _%e1440915033%_
                                 _%hd1441015037%_
                                 _%tl1441115040%_
                                 _%e1442614937%_
                                 _%hd1442714941%_
                                 _%tl1442814944%_
                                 _%__splice2010020101%_
                                 _%target1442914947%_
                                 _%tl1443114950%_)
                                (if (gx#stx-pair/null? _%hd1440715027%_)
                                    (let ((_%__splice2010420105%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1440715027%_
                                            '0)))
                                      (let ((_%tl1444814499%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2010420105%_
                                                '1)))
                                            (_%target1444614496%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2010420105%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1444814499%_)
                                            (_%__match2019020191%_
                                             _%e1440315013%_
                                             _%hd1440415017%_
                                             _%tl1440515020%_
                                             _%e1440615023%_
                                             _%hd1440715027%_
                                             _%tl1440815030%_
                                             _%__splice2010420105%_
                                             _%target1444614496%_
                                             _%tl1444814499%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1439714469%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1439714469%_))))))
                        (if (gx#stx-pair/null? _%hd1440715027%_)
                            (let ((_%__splice2010420105%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1440715027%_
                                    '0)))
                              (let ((_%tl1444814499%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2010420105%_
                                        '1)))
                                    (_%target1444614496%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2010420105%_
                                        '0))))
                                (if (gx#stx-null? _%tl1444814499%_)
                                    (_%__match2019020191%_
                                     _%e1440315013%_
                                     _%hd1440415017%_
                                     _%tl1440515020%_
                                     _%e1440615023%_
                                     _%hd1440715027%_
                                     _%tl1440815030%_
                                     _%__splice2010420105%_
                                     _%target1444614496%_
                                     _%tl1444814499%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1439714469%_)))))
                            (let () (declare (not safe)) (_%g1439714469%_))))
                    (if (gx#stx-pair/null? _%hd1440715027%_)
                        (let ((_%__splice2010420105%_
                               (gx#syntax-split-splice->vector
                                _%hd1440715027%_
                                '0)))
                          (let ((_%tl1444814499%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010420105%_ '1)))
                                (_%target1444614496%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2010420105%_ '0))))
                            (if (gx#stx-null? _%tl1444814499%_)
                                (_%__match2019020191%_
                                 _%e1440315013%_
                                 _%hd1440415017%_
                                 _%tl1440515020%_
                                 _%e1440615023%_
                                 _%hd1440715027%_
                                 _%tl1440815030%_
                                 _%__splice2010420105%_
                                 _%target1444614496%_
                                 _%tl1444814499%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1439714469%_)))))
                        (let () (declare (not safe)) (_%g1439714469%_))))
                (if (gx#stx-pair/null? _%hd1440715027%_)
                    (let ((_%__splice2010420105%_
                           (gx#syntax-split-splice->vector
                            _%hd1440715027%_
                            '0)))
                      (let ((_%tl1444814499%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010420105%_ '1)))
                            (_%target1444614496%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2010420105%_ '0))))
                        (if (gx#stx-null? _%tl1444814499%_)
                            (_%__match2019020191%_
                             _%e1440315013%_
                             _%hd1440415017%_
                             _%tl1440515020%_
                             _%e1440615023%_
                             _%hd1440715027%_
                             _%tl1440815030%_
                             _%__splice2010420105%_
                             _%target1444614496%_
                             _%tl1444814499%_)
                            (let () (declare (not safe)) (_%g1439714469%_)))))
                    (let () (declare (not safe)) (_%g1439714469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1440715027%_)
                                                    (let ((_%__splice2010420105%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1440715027%_
                                                            '0)))
                                                      (let ((_%tl1444814499%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2010420105%_ '1)))
                    (_%target1444614496%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2010420105%_ '0))))
                (if (gx#stx-null? _%tl1444814499%_)
                    (_%__match2019020191%_
                     _%e1440315013%_
                     _%hd1440415017%_
                     _%tl1440515020%_
                     _%e1440615023%_
                     _%hd1440715027%_
                     _%tl1440815030%_
                     _%__splice2010420105%_
                     _%target1444614496%_
                     _%tl1444814499%_)
                    (let () (declare (not safe)) (_%g1439714469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1439714469%_)))))))
                                    (if (gx#stx-pair/null? _%hd1440715027%_)
                                        (let ((_%__splice2010420105%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1440715027%_
                                                '0)))
                                          (let ((_%tl1444814499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2010420105%_
                                                    '1)))
                                                (_%target1444614496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2010420105%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1444814499%_)
                                                (_%__match2019020191%_
                                                 _%e1440315013%_
                                                 _%hd1440415017%_
                                                 _%tl1440515020%_
                                                 _%e1440615023%_
                                                 _%hd1440715027%_
                                                 _%tl1440815030%_
                                                 _%__splice2010420105%_
                                                 _%target1444614496%_
                                                 _%tl1444814499%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1439714469%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1439714469%_))))))
                            (let () (declare (not safe)) (_%g1439714469%_)))))
                    (let () (declare (not safe)) (_%g1439714469%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15415%_)
        (let* ((_%__stx2019320194%_ _%$stx15415%_)
               (_%g1542115472%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2019320194%_))))
          (let ((_%__kont2019620197%_ (lambda () '#t))
                (_%__kont2019820199%_
                 (lambda (_%g1542915626%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1564215645%_ _%g1564315648%_)
                                        (cons _%g1564215645%_ _%g1564315648%_))
                                      '()
                                      _%g1542915626%_)))))
                (_%__kont2020220203%_
                 (lambda (_%g1544515537%_
                          _%g1544615539%_
                          _%g1544715540%_
                          _%g1544815541%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1544715540%_ '())
                               (cons (cons _%g1544815541%_
                                           (cons _%g1544615539%_
                                                 (foldr (lambda (_%g1556215565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1556315568%_)
                  (cons _%g1556215565%_ _%g1556315568%_))
                '()
                _%g1544515537%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2027020271%_
                    (lambda (_%e1544915479%_
                             _%hd1545015483%_
                             _%tl1545115486%_
                             _%e1545215489%_
                             _%hd1545315493%_
                             _%tl1545415496%_
                             _%e1545515499%_
                             _%hd1545615503%_
                             _%tl1545715506%_
                             _%__splice2020420205%_
                             _%target1545815509%_
                             _%tl1546015512%_)
                      (letrec ((_%loop1546115515%_
                                (lambda (_%hd1545915519%_ _%body1546515522%_)
                                  (if (gx#stx-pair? _%hd1545915519%_)
                                      (let ((_%e1546215524%_
                                             (gx#syntax-e _%hd1545915519%_)))
                                        (let ((_%lp-tl1546415531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1546215524%_)))
                                              (_%lp-hd1546315528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1546215524%_))))
                                          (_%loop1546115515%_
                                           _%lp-tl1546415531%_
                                           (cons _%lp-hd1546315528%_
                                                 _%body1546515522%_))))
                                      (let ((_%body1546615534%_
                                             (reverse _%body1546515522%_)))
                                        (_%__kont2020220203%_
                                         _%body1546615534%_
                                         _%tl1545715506%_
                                         _%hd1545615503%_
                                         _%hd1545015483%_))))))
                        (_%loop1546115515%_ _%target1545815509%_ '()))))
                   (_%__match2024420245%_
                    (lambda (_%e1543015578%_
                             _%hd1543115582%_
                             _%tl1543215585%_
                             _%e1543315588%_
                             _%hd1543415592%_
                             _%tl1543515595%_
                             _%__splice2020020201%_
                             _%target1543615598%_
                             _%tl1543815601%_)
                      (letrec ((_%loop1543915604%_
                                (lambda (_%hd1543715608%_ _%body1544315611%_)
                                  (if (gx#stx-pair? _%hd1543715608%_)
                                      (let ((_%e1544015613%_
                                             (gx#syntax-e _%hd1543715608%_)))
                                        (let ((_%lp-tl1544215620%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1544015613%_)))
                                              (_%lp-hd1544115617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1544015613%_))))
                                          (_%loop1543915604%_
                                           _%lp-tl1544215620%_
                                           (cons _%lp-hd1544115617%_
                                                 _%body1544315611%_))))
                                      (let ((_%body1544415623%_
                                             (reverse _%body1544315611%_)))
                                        (_%__kont2019820199%_
                                         _%body1544415623%_))))))
                        (_%loop1543915604%_ _%target1543615598%_ '())))))
              (if (gx#stx-pair? _%__stx2019320194%_)
                  (let ((_%e1542315658%_ (gx#syntax-e _%__stx2019320194%_)))
                    (let ((_%tl1542515665%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1542315658%_)))
                          (_%hd1542415662%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1542315658%_))))
                      (if (gx#stx-pair? _%tl1542515665%_)
                          (let ((_%e1542615668%_
                                 (gx#syntax-e _%tl1542515665%_)))
                            (let ((_%tl1542815675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1542615668%_)))
                                  (_%hd1542715672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1542615668%_))))
                              (if (gx#stx-null? _%hd1542715672%_)
                                  (if (gx#stx-null? _%tl1542815675%_)
                                      (_%__kont2019620197%_)
                                      (if (gx#stx-pair/null? _%tl1542815675%_)
                                          (let ((_%__splice2020020201%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1542815675%_
                                                  '0)))
                                            (let ((_%tl1543815601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2020020201%_
                                                      '1)))
                                                  (_%target1543615598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2020020201%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1543815601%_)
                                                  (_%__match2024420245%_
                                                   _%e1542315658%_
                                                   _%hd1542415662%_
                                                   _%tl1542515665%_
                                                   _%e1542615668%_
                                                   _%hd1542715672%_
                                                   _%tl1542815675%_
                                                   _%__splice2020020201%_
                                                   _%target1543615598%_
                                                   _%tl1543815601%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1542115472%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1542115472%_))))
                                  (if (gx#stx-pair? _%hd1542715672%_)
                                      (let ((_%e1545515499%_
                                             (gx#syntax-e _%hd1542715672%_)))
                                        (let ((_%tl1545715506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1545515499%_)))
                                              (_%hd1545615503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1545515499%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1542815675%_)
                                              (let ((_%__splice2020420205%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1542815675%_
                                                      '0)))
                                                (let ((_%tl1546015512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2020420205%_
                                                          '1)))
                                                      (_%target1545815509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2020420205%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1546015512%_)
                                                      (_%__match2027020271%_
                                                       _%e1542315658%_
                                                       _%hd1542415662%_
                                                       _%tl1542515665%_
                                                       _%e1542615668%_
                                                       _%hd1542715672%_
                                                       _%tl1542815675%_
                                                       _%e1545515499%_
                                                       _%hd1545615503%_
                                                       _%tl1545715506%_
                                                       _%__splice2020420205%_
                                                       _%target1545815509%_
                                                       _%tl1546015512%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1542115472%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1542115472%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1542115472%_))))))
                          (let () (declare (not safe)) (_%g1542115472%_)))))
                  (let () (declare (not safe)) (_%g1542115472%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15688%_)
        (let* ((_%__stx2027320274%_ _%$stx15688%_)
               (_%g1569915777%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2027320274%_))))
          (let ((_%__kont2027620277%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2027820279%_
                 (lambda (_%g1570416108%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1570416108%_ '()))))
                (_%__kont2028020281%_
                 (lambda (_%g1571416056%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1571416056%_ '()))))
                (_%__kont2028220283%_
                 (lambda (_%g1572416003%_) _%g1572416003%_))
                (_%__kont2028420285%_
                 (lambda (_%g1573515945%_ _%g1573615947%_) _%g1573615947%_))
                (_%__kont2028620287%_
                 (lambda (_%g1574615887%_
                          _%g1574715889%_
                          _%g1574815890%_
                          _%g1574915891%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1574915891%_ _%g1574615887%_)
                                     (cons _%g1574815890%_ '()))))))
                (_%__kont2028820289%_
                 (lambda (_%g1575915833%_ _%g1576015835%_ _%g1576115836%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1576015835%_
                               (cons (cons _%g1576115836%_ _%g1575915833%_)
                                     '())))))
                (_%__kont2029020291%_
                 (lambda (_%g1576815794%_) _%g1576815794%_)))
            (let* ((_%__match2041220413%_
                    (lambda (_%e1575015857%_
                             _%hd1575115861%_
                             _%tl1575215864%_
                             _%e1575315867%_
                             _%hd1575415871%_
                             _%tl1575515874%_
                             _%e1575615877%_
                             _%hd1575715881%_
                             _%tl1575815884%_)
                      (let ((_%g1574615887%_ _%tl1575815884%_)
                            (_%g1574715889%_ _%hd1575715881%_)
                            (_%g1574815890%_ _%hd1575415871%_)
                            (_%g1574915891%_ _%hd1575115861%_))
                        (if (gx#ellipsis? _%g1574715889%_)
                            (_%__kont2028620287%_
                             _%g1574615887%_
                             _%g1574715889%_
                             _%g1574815890%_
                             _%g1574915891%_)
                            (_%__kont2028820289%_
                             _%tl1575515874%_
                             _%hd1575415871%_
                             _%hd1575115861%_)))))
                   (_%__match2039420395%_
                    (lambda (_%e1573715915%_
                             _%hd1573815919%_
                             _%tl1573915922%_
                             _%e1574015925%_
                             _%hd1574115929%_
                             _%tl1574215932%_
                             _%e1574315935%_
                             _%hd1574415939%_
                             _%tl1574515942%_)
                      (let ((_%g1573515945%_ _%hd1574415939%_)
                            (_%g1573615947%_ _%hd1574115929%_))
                        (if (gx#ellipsis? _%g1573515945%_)
                            (_%__kont2028420285%_
                             _%g1573515945%_
                             _%g1573615947%_)
                            (_%__match2041220413%_
                             _%e1573715915%_
                             _%hd1573815919%_
                             _%tl1573915922%_
                             _%e1574015925%_
                             _%hd1574115929%_
                             _%tl1574215932%_
                             _%e1574315935%_
                             _%hd1574415939%_
                             _%tl1574515942%_))))))
              (if (gx#stx-pair? _%__stx2027320274%_)
                  (let ((_%e1570116130%_ (gx#syntax-e _%__stx2027320274%_)))
                    (let ((_%tl1570316137%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1570116130%_)))
                          (_%hd1570216134%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1570116130%_))))
                      (if (gx#stx-null? _%tl1570316137%_)
                          (_%__kont2027620277%_)
                          (if (gx#stx-pair? _%tl1570316137%_)
                              (let ((_%e1570816088%_
                                     (gx#syntax-e _%tl1570316137%_)))
                                (let ((_%tl1571016095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1570816088%_)))
                                      (_%hd1570916092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1570816088%_))))
                                  (if (gx#identifier? _%hd1570916092%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21036_|
                                           _%hd1570916092%_)
                                          (if (gx#stx-pair? _%tl1571016095%_)
                                              (let ((_%e1571116098%_
                                                     (gx#syntax-e
                                                      _%tl1571016095%_)))
                                                (let ((_%tl1571316105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1571116098%_)))
                                                      (_%hd1571216102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1571116098%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1571316105%_)
                                                      (_%__kont2027820279%_
                                                       _%hd1571216102%_)
                                                      (_%__match2041220413%_
                                                       _%e1570116130%_
                                                       _%hd1570216134%_
                                                       _%tl1570316137%_
                                                       _%e1570816088%_
                                                       _%hd1570916092%_
                                                       _%tl1571016095%_
                                                       _%e1571116098%_
                                                       _%hd1571216102%_
                                                       _%tl1571316105%_))))
                                              (_%__kont2028820289%_
                                               _%tl1571016095%_
                                               _%hd1570916092%_
                                               _%hd1570216134%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21037_|
                                               _%hd1570916092%_)
                                              (if (gx#stx-pair?
                                                   _%tl1571016095%_)
                                                  (let ((_%e1572116046%_
                                                         (gx#syntax-e
                                                          _%tl1571016095%_)))
                                                    (let ((_%tl1572316053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1572116046%_)))
                                                          (_%hd1572216050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1572116046%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1572316053%_)
                                                          (_%__kont2028020281%_
                                                           _%hd1572216050%_)
                                                          (_%__match2041220413%_
                                                           _%e1570116130%_
                                                           _%hd1570216134%_
                                                           _%tl1570316137%_
                                                           _%e1570816088%_
                                                           _%hd1570916092%_
                                                           _%tl1571016095%_
                                                           _%e1572116046%_
                                                           _%hd1572216050%_
                                                           _%tl1572316053%_))))
                                                  (_%__kont2028820289%_
                                                   _%tl1571016095%_
                                                   _%hd1570916092%_
                                                   _%hd1570216134%_))
                                              (if (gx#stx-pair?
                                                   _%tl1571016095%_)
                                                  (let ((_%e1574315935%_
                                                         (gx#syntax-e
                                                          _%tl1571016095%_)))
                                                    (let ((_%tl1574515942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1574315935%_)))
                                                          (_%hd1574415939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1574315935%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1574515942%_)
                                                          (_%__match2039420395%_
                                                           _%e1570116130%_
                                                           _%hd1570216134%_
                                                           _%tl1570316137%_
                                                           _%e1570816088%_
                                                           _%hd1570916092%_
                                                           _%tl1571016095%_
                                                           _%e1574315935%_
                                                           _%hd1574415939%_
                                                           _%tl1574515942%_)
                                                          (_%__match2041220413%_
                                                           _%e1570116130%_
                                                           _%hd1570216134%_
                                                           _%tl1570316137%_
                                                           _%e1570816088%_
                                                           _%hd1570916092%_
                                                           _%tl1571016095%_
                                                           _%e1574315935%_
                                                           _%hd1574415939%_
                                                           _%tl1574515942%_))))
                                                  (_%__kont2028820289%_
                                                   _%tl1571016095%_
                                                   _%hd1570916092%_
                                                   _%hd1570216134%_))))
                                      (if (gx#stx-datum? _%hd1570916092%_)
                                          (let ((_%e1573115989%_
                                                 (gx#stx-e _%hd1570916092%_)))
                                            (if (equal? _%e1573115989%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1571016095%_)
                                                    (let ((_%e1573215993%_
                                                           (gx#syntax-e
                                                            _%tl1571016095%_)))
                                                      (let ((_%tl1573416000%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1573215993%_)))
                    (_%hd1573315997%_
                     (let () (declare (not safe)) (##car _%e1573215993%_))))
                (if (gx#stx-null? _%tl1573416000%_)
                    (_%__kont2028220283%_ _%hd1573315997%_)
                    (_%__match2041220413%_
                     _%e1570116130%_
                     _%hd1570216134%_
                     _%tl1570316137%_
                     _%e1570816088%_
                     _%hd1570916092%_
                     _%tl1571016095%_
                     _%e1573215993%_
                     _%hd1573315997%_
                     _%tl1573416000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2028820289%_
                                                     _%tl1571016095%_
                                                     _%hd1570916092%_
                                                     _%hd1570216134%_))
                                                (if (gx#stx-pair?
                                                     _%tl1571016095%_)
                                                    (let ((_%e1574315935%_
                                                           (gx#syntax-e
                                                            _%tl1571016095%_)))
                                                      (let ((_%tl1574515942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1574315935%_)))
                    (_%hd1574415939%_
                     (let () (declare (not safe)) (##car _%e1574315935%_))))
                (if (gx#stx-null? _%tl1574515942%_)
                    (_%__match2039420395%_
                     _%e1570116130%_
                     _%hd1570216134%_
                     _%tl1570316137%_
                     _%e1570816088%_
                     _%hd1570916092%_
                     _%tl1571016095%_
                     _%e1574315935%_
                     _%hd1574415939%_
                     _%tl1574515942%_)
                    (_%__match2041220413%_
                     _%e1570116130%_
                     _%hd1570216134%_
                     _%tl1570316137%_
                     _%e1570816088%_
                     _%hd1570916092%_
                     _%tl1571016095%_
                     _%e1574315935%_
                     _%hd1574415939%_
                     _%tl1574515942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2028820289%_
                                                     _%tl1571016095%_
                                                     _%hd1570916092%_
                                                     _%hd1570216134%_))))
                                          (if (gx#stx-pair? _%tl1571016095%_)
                                              (let ((_%e1574315935%_
                                                     (gx#syntax-e
                                                      _%tl1571016095%_)))
                                                (let ((_%tl1574515942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1574315935%_)))
                                                      (_%hd1574415939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1574315935%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1574515942%_)
                                                      (_%__match2039420395%_
                                                       _%e1570116130%_
                                                       _%hd1570216134%_
                                                       _%tl1570316137%_
                                                       _%e1570816088%_
                                                       _%hd1570916092%_
                                                       _%tl1571016095%_
                                                       _%e1574315935%_
                                                       _%hd1574415939%_
                                                       _%tl1574515942%_)
                                                      (_%__match2041220413%_
                                                       _%e1570116130%_
                                                       _%hd1570216134%_
                                                       _%tl1570316137%_
                                                       _%e1570816088%_
                                                       _%hd1570916092%_
                                                       _%tl1571016095%_
                                                       _%e1574315935%_
                                                       _%hd1574415939%_
                                                       _%tl1574515942%_))))
                                              (_%__kont2028820289%_
                                               _%tl1571016095%_
                                               _%hd1570916092%_
                                               _%hd1570216134%_))))))
                              (_%__kont2029020291%_ _%tl1570316137%_)))))
                  (let () (declare (not safe)) (_%g1569915777%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16148%_)
        (letrec ((_%simple-quote?16151%_
                  (lambda (_%e16841%_)
                    (let* ((_%__stx2043320434%_ _%e16841%_)
                           (_%g1684916886%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2043320434%_))))
                      (let ((_%__kont2043620437%_ (lambda () '#f))
                            (_%__kont2043820439%_ (lambda () '#f))
                            (_%__kont2044020441%_
                             (lambda (_%g1686316998%_ _%g1686417000%_)
                               (if (_%simple-quote?16151%_ _%g1686417000%_)
                                   (_%simple-quote?16151%_ _%g1686316998%_)
                                   '#f)))
                            (_%__kont2044220443%_
                             (lambda (_%g1686816959%_)
                               (_%simple-quote?16151%_
                                (foldr (lambda (_%g1697216975%_
                                                _%g1697316978%_)
                                         (cons _%g1697216975%_
                                               _%g1697316978%_))
                                       '()
                                       _%g1686816959%_))))
                            (_%__kont2044620447%_
                             (lambda (_%g1687916908%_)
                               (_%simple-quote?16151%_ _%g1687916908%_)))
                            (_%__kont2044820449%_ (lambda () '#t)))
                        (let* ((_%g1684716920%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2043320434%_)
                                      (let ((_%e1688016904%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2043320434%_))))
                                        (_%__kont2044620447%_ _%e1688016904%_))
                                      (_%__kont2044820449%_))))
                               (_%__match2050420505%_
                                (lambda (_%e1686916927%_
                                         _%__splice2044420445%_
                                         _%target1687016931%_
                                         _%tl1687216934%_)
                                  (letrec ((_%loop1687316937%_
                                            (lambda (_%hd1687116941%_
                                                     _%e1687716944%_)
                                              (if (gx#stx-pair?
                                                   _%hd1687116941%_)
                                                  (let ((_%e1687416946%_
                                                         (gx#syntax-e
                                                          _%hd1687116941%_)))
                                                    (let ((_%lp-tl1687616953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1687416946%_)))
                                                          (_%lp-hd1687516950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1687416946%_))))
                                                      (_%loop1687316937%_
                                                       _%lp-tl1687616953%_
                                                       (cons _%lp-hd1687516950%_
                                                             _%e1687716944%_))))
                                                  (let ((_%e1687816956%_
                                                         (reverse _%e1687716944%_)))
                                                    (_%__kont2044220443%_
                                                     _%e1687816956%_))))))
                                    (_%loop1687316937%_
                                     _%target1687016931%_
                                     '()))))
                               (_%g1684616981%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2043320434%_)
                                      (let ((_%e1686916927%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2043320434%_))))
                                        (if (gx#stx-pair/null? _%e1686916927%_)
                                            (let ((_%__splice2044420445%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1686916927%_
                                                    '0)))
                                              (let ((_%tl1687216934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044420445%_
                                                        '1)))
                                                    (_%target1687016931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2044420445%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1687216934%_)
                                                    (_%__match2050420505%_
                                                     _%e1686916927%_
                                                     _%__splice2044420445%_
                                                     _%target1687016931%_
                                                     _%tl1687216934%_)
                                                    (_%__kont2044820449%_))))
                                            (_%__kont2044820449%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1684716920%_))))))
                          (if (gx#stx-pair? _%__stx2043320434%_)
                              (let ((_%e1685117049%_
                                     (gx#syntax-e _%__stx2043320434%_)))
                                (let ((_%tl1685317056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1685117049%_)))
                                      (_%hd1685217053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1685117049%_))))
                                  (if (gx#identifier? _%hd1685217053%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21038_|
                                           _%hd1685217053%_)
                                          (if (gx#stx-pair? _%tl1685317056%_)
                                              (let ((_%e1685417059%_
                                                     (gx#syntax-e
                                                      _%tl1685317056%_)))
                                                (let ((_%tl1685617066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1685417059%_)))
                                                      (_%hd1685517063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1685417059%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1685617066%_)
                                                      (_%__kont2043620437%_)
                                                      (_%__kont2044020441%_
                                                       _%tl1685317056%_
                                                       _%hd1685217053%_))))
                                              (_%__kont2044020441%_
                                               _%tl1685317056%_
                                               _%hd1685217053%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21039_|
                                               _%hd1685217053%_)
                                              (if (gx#stx-pair?
                                                   _%tl1685317056%_)
                                                  (let ((_%e1686017028%_
                                                         (gx#syntax-e
                                                          _%tl1685317056%_)))
                                                    (let ((_%tl1686217035%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1686017028%_)))
                                                          (_%hd1686117032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1686017028%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1686217035%_)
                                                          (_%__kont2043820439%_)
                                                          (_%__kont2044020441%_
                                                           _%tl1685317056%_
                                                           _%hd1685217053%_))))
                                                  (_%__kont2044020441%_
                                                   _%tl1685317056%_
                                                   _%hd1685217053%_))
                                              (_%__kont2044020441%_
                                               _%tl1685317056%_
                                               _%hd1685217053%_)))
                                      (_%__kont2044020441%_
                                       _%tl1685317056%_
                                       _%hd1685217053%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1684616981%_))))))))
                 (_%generate16153%_
                  (lambda (_%e16215%_ _%d16217%_)
                    (let* ((_%__stx2051120512%_ _%e16215%_)
                           (_%g1622616284%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2051120512%_))))
                      (let ((_%__kont2051420515%_
                             (lambda (_%g1622816793%_)
                               (let* ((_%g1680616814%_
                                       (lambda (_%g1680716810%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1680716810%_)))
                                      (_%g1680516833%_
                                       (lambda (_%g1680716818%_)
                                         ((lambda (_%g1680816821%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%g1680816821%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1680716818%_))))
                                 (_%g1680516833%_
                                  (_%generate16153%_
                                   _%g1622816793%_
                                   (fx1+ _%d16217%_))))))
                            (_%__kont2051620517%_
                             (lambda (_%g1623516722%_)
                               (if (fxzero? _%d16217%_)
                                   _%g1623516722%_
                                   (let* ((_%g1673516743%_
                                           (lambda (_%g1673616739%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1673616739%_)))
                                          (_%g1673416762%_
                                           (lambda (_%g1673616747%_)
                                             ((lambda (_%g1673716750%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%g1673716750%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1673616747%_))))
                                     (_%g1673416762%_
                                      (_%generate16153%_
                                       _%g1623516722%_
                                       (fx1- _%d16217%_)))))))
                            (_%__kont2051820519%_
                             (lambda (_%g1624216651%_)
                               (if (fxzero? _%d16217%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1624216651%_
                                                           '()))))
                                   (let* ((_%g1666416672%_
                                           (lambda (_%g1666516668%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1666516668%_)))
                                          (_%g1666316691%_
                                           (lambda (_%g1666516676%_)
                                             ((lambda (_%g1666616679%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%g1666616679%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1666516676%_))))
                                     (_%g1666316691%_
                                      (_%generate16153%_
                                       _%g1624216651%_
                                       (fx1- _%d16217%_)))))))
                            (_%__kont2052020521%_
                             (lambda (_%g1624916576%_ _%g1625016578%_)
                               (let* ((_%g1659316601%_
                                       (lambda (_%g1659416597%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1659416597%_)))
                                      (_%g1659216620%_
                                       (lambda (_%g1659416605%_)
                                         ((lambda (_%g1659516608%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%g1659516608%_
                                                              (cons _%g1625016578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1659416605%_))))
                                 (_%g1659216620%_
                                  (_%generate16153%_
                                   _%g1624916576%_
                                   _%d16217%_)))))
                            (_%__kont2052220523%_
                             (lambda (_%g1626016462%_ _%g1626116464%_)
                               (let* ((_%g1647516490%_
                                       (lambda (_%g1647616486%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1647616486%_)))
                                      (_%g1647416535%_
                                       (lambda (_%g1647616494%_)
                                         (if (gx#stx-pair? _%g1647616494%_)
                                             (let ((_%e1647916497%_
                                                    (gx#syntax-e
                                                     _%g1647616494%_)))
                                               (let ((_%hd1648016501%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1647916497%_)))
                                                     (_%tl1648116504%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1647916497%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1648116504%_)
                                                     (let ((_%e1648216507%_
                                                            (gx#syntax-e
                                                             _%tl1648116504%_)))
                                                       (let ((_%hd1648316511%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1648216507%_)))
                     (_%tl1648416514%_
                      (let () (declare (not safe)) (##cdr _%e1648216507%_))))
                 (if (gx#stx-null? _%tl1648416514%_)
                     ((lambda (_%g1647716517%_ _%g1647816519%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%g1647816519%_
                                    (cons _%g1647716517%_ '()))))
                      _%hd1648316511%_
                      _%hd1648016501%_)
                     (_%g1647516490%_ _%g1647616494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1647516490%_
                                                      _%g1647616494%_))))
                                             (_%g1647516490%_
                                              _%g1647616494%_)))))
                                 (_%g1647416535%_
                                  (list (_%generate16153%_
                                         _%g1626116464%_
                                         _%d16217%_)
                                        (_%generate16153%_
                                         _%g1626016462%_
                                         _%d16217%_))))))
                            (_%__kont2052420525%_
                             (lambda (_%g1626516392%_)
                               (let* ((_%g1640616414%_
                                       (lambda (_%g1640716410%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1640716410%_)))
                                      (_%g1640516433%_
                                       (lambda (_%g1640716418%_)
                                         ((lambda (_%g1640816421%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%g1640816421%_ '())))
                                          _%g1640716418%_))))
                                 (_%g1640516433%_
                                  (_%generate16153%_
                                   (foldr (lambda (_%g1643616439%_
                                                   _%g1643716442%_)
                                            (cons _%g1643616439%_
                                                  _%g1643716442%_))
                                          '()
                                          _%g1626516392%_)
                                   _%d16217%_)))))
                            (_%__kont2052820529%_
                             (lambda (_%g1627616312%_)
                               (let* ((_%g1632216330%_
                                       (lambda (_%g1632316326%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1632316326%_)))
                                      (_%g1632116349%_
                                       (lambda (_%g1632316334%_)
                                         ((lambda (_%g1632416337%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%g1632416337%_ '())))
                                          _%g1632316334%_))))
                                 (_%g1632116349%_
                                  (_%generate16153%_
                                   _%g1627616312%_
                                   _%d16217%_)))))
                            (_%__kont2053020531%_
                             (lambda (_%g1627816291%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1627816291%_ '())))))
                        (let* ((_%g1622416353%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2051120512%_)
                                      (let ((_%e1627716308%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2051120512%_))))
                                        (_%__kont2052820529%_ _%e1627716308%_))
                                      (_%__kont2053020531%_
                                       _%__stx2051120512%_))))
                               (_%__match2063020631%_
                                (lambda (_%e1626616360%_
                                         _%__splice2052620527%_
                                         _%target1626716364%_
                                         _%tl1626916367%_)
                                  (letrec ((_%loop1627016370%_
                                            (lambda (_%hd1626816374%_
                                                     _%e1627416377%_)
                                              (if (gx#stx-pair?
                                                   _%hd1626816374%_)
                                                  (let ((_%e1627116379%_
                                                         (gx#syntax-e
                                                          _%hd1626816374%_)))
                                                    (let ((_%lp-tl1627316386%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1627116379%_)))
                                                          (_%lp-hd1627216383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1627116379%_))))
                                                      (_%loop1627016370%_
                                                       _%lp-tl1627316386%_
                                                       (cons _%lp-hd1627216383%_
                                                             _%e1627416377%_))))
                                                  (let ((_%e1627516389%_
                                                         (reverse _%e1627416377%_)))
                                                    (_%__kont2052420525%_
                                                     _%e1627516389%_))))))
                                    (_%loop1627016370%_
                                     _%target1626716364%_
                                     '()))))
                               (_%g1622316445%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2051120512%_)
                                      (let ((_%e1626616360%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2051120512%_))))
                                        (if (gx#stx-pair/null? _%e1626616360%_)
                                            (let ((_%__splice2052620527%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1626616360%_
                                                    '0)))
                                              (let ((_%tl1626916367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2052620527%_
                                                        '1)))
                                                    (_%target1626716364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2052620527%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1626916367%_)
                                                    (_%__match2063020631%_
                                                     _%e1626616360%_
                                                     _%__splice2052620527%_
                                                     _%target1626716364%_
                                                     _%tl1626916367%_)
                                                    (_%__kont2053020531%_
                                                     _%__stx2051120512%_))))
                                            (_%__kont2053020531%_
                                             _%__stx2051120512%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1622416353%_))))))
                          (if (gx#stx-pair? _%__stx2051120512%_)
                              (let ((_%e1622916773%_
                                     (gx#syntax-e _%__stx2051120512%_)))
                                (let ((_%tl1623116780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1622916773%_)))
                                      (_%hd1623016777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1622916773%_))))
                                  (if (gx#identifier? _%hd1623016777%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21040_|
                                           _%hd1623016777%_)
                                          (if (gx#stx-pair? _%tl1623116780%_)
                                              (let ((_%e1623216783%_
                                                     (gx#syntax-e
                                                      _%tl1623116780%_)))
                                                (let ((_%tl1623416790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1623216783%_)))
                                                      (_%hd1623316787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1623216783%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1623416790%_)
                                                      (_%__kont2051420515%_
                                                       _%hd1623316787%_)
                                                      (_%__kont2052220523%_
                                                       _%tl1623116780%_
                                                       _%hd1623016777%_))))
                                              (_%__kont2052220523%_
                                               _%tl1623116780%_
                                               _%hd1623016777%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21041_|
                                               _%hd1623016777%_)
                                              (if (gx#stx-pair?
                                                   _%tl1623116780%_)
                                                  (let ((_%e1623916712%_
                                                         (gx#syntax-e
                                                          _%tl1623116780%_)))
                                                    (let ((_%tl1624116719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1623916712%_)))
                                                          (_%hd1624016716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1623916712%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1624116719%_)
                                                          (_%__kont2051620517%_
                                                           _%hd1624016716%_)
                                                          (_%__kont2052220523%_
                                                           _%tl1623116780%_
                                                           _%hd1623016777%_))))
                                                  (_%__kont2052220523%_
                                                   _%tl1623116780%_
                                                   _%hd1623016777%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21042_|
                                                   _%hd1623016777%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1623116780%_)
                                                      (let ((_%e1624616641%_
                                                             (gx#syntax-e
                                                              _%tl1623116780%_)))
                                                        (let ((_%tl1624816648%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1624616641%_)))
                      (_%hd1624716645%_
                       (let () (declare (not safe)) (##car _%e1624616641%_))))
                  (if (gx#stx-null? _%tl1624816648%_)
                      (_%__kont2051820519%_ _%hd1624716645%_)
                      (_%__kont2052220523%_
                       _%tl1623116780%_
                       _%hd1623016777%_))))
              (_%__kont2052220523%_ _%tl1623116780%_ _%hd1623016777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2052220523%_
                                                   _%tl1623116780%_
                                                   _%hd1623016777%_))))
                                      (if (gx#stx-pair? _%hd1623016777%_)
                                          (let ((_%e1625416556%_
                                                 (gx#syntax-e
                                                  _%hd1623016777%_)))
                                            (let ((_%tl1625616563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1625416556%_)))
                                                  (_%hd1625516560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1625416556%_))))
                                              (if (gx#identifier?
                                                   _%hd1625516560%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21043_|
                                                       _%hd1625516560%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1625616563%_)
                                                          (let ((_%e1625716566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1625616563%_)))
                    (let ((_%tl1625916573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1625716566%_)))
                          (_%hd1625816570%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1625716566%_))))
                      (if (gx#stx-null? _%tl1625916573%_)
                          (if (fxzero? _%d16217%_)
                              (let ((_%g1624916576%_ _%tl1623116780%_)
                                    (_%g1625016578%_ _%hd1625816570%_))
                                (_%__kont2052020521%_
                                 _%g1624916576%_
                                 _%g1625016578%_))
                              (_%__kont2052220523%_
                               _%tl1623116780%_
                               _%hd1623016777%_))
                          (_%__kont2052220523%_
                           _%tl1623116780%_
                           _%hd1623016777%_))))
                  (_%__kont2052220523%_ _%tl1623116780%_ _%hd1623016777%_))
              (_%__kont2052220523%_ _%tl1623116780%_ _%hd1623016777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2052220523%_
                                                   _%tl1623116780%_
                                                   _%hd1623016777%_))))
                                          (_%__kont2052220523%_
                                           _%tl1623116780%_
                                           _%hd1623016777%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1622316445%_)))))))))
          (let* ((_%g1615516169%_
                  (lambda (_%g1615616165%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1615616165%_)))
                 (_%g1615416211%_
                  (lambda (_%g1615616173%_)
                    (if (gx#stx-pair? _%g1615616173%_)
                        (let ((_%e1615816176%_ (gx#syntax-e _%g1615616173%_)))
                          (let ((_%hd1615916180%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1615816176%_)))
                                (_%tl1616016183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1615816176%_))))
                            (if (gx#stx-pair? _%tl1616016183%_)
                                (let ((_%e1616116186%_
                                       (gx#syntax-e _%tl1616016183%_)))
                                  (let ((_%hd1616216190%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1616116186%_)))
                                        (_%tl1616316193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1616116186%_))))
                                    (if (gx#stx-null? _%tl1616316193%_)
                                        ((lambda (_%g1615716196%_)
                                           (if (_%simple-quote?16151%_
                                                _%g1615716196%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1615716196%_
                                                           '()))
                                               (_%generate16153%_
                                                _%g1615716196%_
                                                '0)))
                                         _%hd1616216190%_)
                                        (_%g1615516169%_ _%g1615616173%_))))
                                (_%g1615516169%_ _%g1615616173%_))))
                        (_%g1615516169%_ _%g1615616173%_)))))
            (_%g1615416211%_ _%stx16148%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17079%_)
        (let* ((_%__stx2063720638%_ _%$stx17079%_)
               (_%g1708517119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2063720638%_))))
          (let ((_%__kont2064020641%_
                 (lambda (_%g1708717251%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1708717251%_ '()))))
                (_%__kont2064220643%_
                 (lambda (_%g1709417207%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1709417207%_ '()))))
                (_%__kont2064420645%_
                 (lambda (_%g1710717146%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1710717146%_ '())))
                               '())))))
            (let ((_%__match2066020661%_
                   (lambda (_%e1708817231%_
                            _%hd1708917235%_
                            _%tl1709017238%_
                            _%e1709117241%_
                            _%hd1709217245%_
                            _%tl1709317248%_)
                     (let ((_%g1708717251%_ _%hd1709217245%_))
                       (if (gx#stx-datum? _%g1708717251%_)
                           (_%__kont2064020641%_ _%g1708717251%_)
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
                                            |gerbil/core/sugar~Sugar-2[1]#_g21044_|
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
                                                       (_%__kont2064220643%_
                                                        _%hd1710517201%_)
                                                       (_%__kont2064420645%_
                                                        _%hd1709217245%_))))
                                               (_%__kont2064420645%_
                                                _%hd1709217245%_))
                                           (_%__kont2064420645%_
                                            _%hd1709217245%_))
                                       (_%__kont2064420645%_
                                        _%hd1709217245%_))))
                               (_%__kont2064420645%_ _%hd1709217245%_)))))))
              (if (gx#stx-pair? _%__stx2063720638%_)
                  (let ((_%e1708817231%_ (gx#syntax-e _%__stx2063720638%_)))
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
                                  (_%__match2066020661%_
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
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21044_|
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
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17268%_)
        (let* ((_%__stx2070920710%_ _%$stx17268%_)
               (_%g1727417308%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2070920710%_))))
          (let ((_%__kont2071220713%_
                 (lambda (_%g1727617440%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1727617440%_ '()))))
                (_%__kont2071420715%_
                 (lambda (_%g1728317396%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1728317396%_ '()))))
                (_%__kont2071620717%_
                 (lambda (_%g1729617335%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1729617335%_ '())))
                               '())))))
            (let ((_%__match2073220733%_
                   (lambda (_%e1727717420%_
                            _%hd1727817424%_
                            _%tl1727917427%_
                            _%e1728017430%_
                            _%hd1728117434%_
                            _%tl1728217437%_)
                     (let ((_%g1727617440%_ _%hd1728117434%_))
                       (if (gx#stx-datum? _%g1727617440%_)
                           (_%__kont2071220713%_ _%g1727617440%_)
                           (if (gx#stx-pair? _%hd1728117434%_)
                               (let ((_%e1729017376%_
                                      (gx#syntax-e _%hd1728117434%_)))
                                 (let ((_%tl1729217383%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1729017376%_)))
                                       (_%hd1729117380%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1729017376%_))))
                                   (if (gx#identifier? _%hd1729117380%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21045_|
                                            _%hd1729117380%_)
                                           (if (gx#stx-pair? _%tl1729217383%_)
                                               (let ((_%e1729317386%_
                                                      (gx#syntax-e
                                                       _%tl1729217383%_)))
                                                 (let ((_%tl1729517393%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1729317386%_)))
                                                       (_%hd1729417390%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1729317386%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1729517393%_)
                                                       (_%__kont2071420715%_
                                                        _%hd1729417390%_)
                                                       (_%__kont2071620717%_
                                                        _%hd1728117434%_))))
                                               (_%__kont2071620717%_
                                                _%hd1728117434%_))
                                           (_%__kont2071620717%_
                                            _%hd1728117434%_))
                                       (_%__kont2071620717%_
                                        _%hd1728117434%_))))
                               (_%__kont2071620717%_ _%hd1728117434%_)))))))
              (if (gx#stx-pair? _%__stx2070920710%_)
                  (let ((_%e1727717420%_ (gx#syntax-e _%__stx2070920710%_)))
                    (let ((_%tl1727917427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1727717420%_)))
                          (_%hd1727817424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1727717420%_))))
                      (if (gx#stx-pair? _%tl1727917427%_)
                          (let ((_%e1728017430%_
                                 (gx#syntax-e _%tl1727917427%_)))
                            (let ((_%tl1728217437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1728017430%_)))
                                  (_%hd1728117434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1728017430%_))))
                              (if (gx#stx-null? _%tl1728217437%_)
                                  (_%__match2073220733%_
                                   _%e1727717420%_
                                   _%hd1727817424%_
                                   _%tl1727917427%_
                                   _%e1728017430%_
                                   _%hd1728117434%_
                                   _%tl1728217437%_)
                                  (if (gx#stx-pair? _%hd1728117434%_)
                                      (let ((_%e1729017376%_
                                             (gx#syntax-e _%hd1728117434%_)))
                                        (let ((_%tl1729217383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1729017376%_)))
                                              (_%hd1729117380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1729017376%_))))
                                          (if (gx#identifier? _%hd1729117380%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21045_|
                                                   _%hd1729117380%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1729217383%_)
                                                      (let ((_%e1729317386%_
                                                             (gx#syntax-e
                                                              _%tl1729217383%_)))
                                                        (let ((_%tl1729517393%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1729317386%_)))
                      (_%hd1729417390%_
                       (let () (declare (not safe)) (##car _%e1729317386%_))))
                  (let () (declare (not safe)) (_%g1727417308%_))))
              (let () (declare (not safe)) (_%g1727417308%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1727417308%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1727417308%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1727417308%_))))))
                          (let () (declare (not safe)) (_%g1727417308%_)))))
                  (let () (declare (not safe)) (_%g1727417308%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17457%_)
        (letrec ((_%generate17460%_
                  (lambda (_%rest17579%_)
                    (let _%lp17582%_ ((_%rest17585%_ _%rest17579%_)
                                      (_%hd17587%_ '())
                                      (_%body17588%_ '()))
                      (let* ((_%__stx2080120802%_ _%rest17585%_)
                             (_%g1759117603%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2080120802%_))))
                        (let ((_%__kont2080420805%_
                               (lambda (_%g1759317631%_ _%g1759417633%_)
                                 (let* ((_%__stx2078120782%_ _%g1759417633%_)
                                        (_%g1765017657%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2078120782%_))))
                                   (let ((_%__kont2078420785%_
                                          (lambda ()
                                            (let ((_%arg17693%_ (gx#genident)))
                                              (_%lp17582%_
                                               _%g1759317631%_
                                               (cons _%arg17693%_ _%hd17587%_)
                                               (cons _%arg17693%_
                                                     _%body17588%_)))))
                                         (_%__kont2078620787%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1759317631%_)
                                                (let ((_%tail17679%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17679%_
                         _%hd17587%_)
                  (foldl cons (list _%tail17679%_) _%body17588%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17457%_
                                                 _%g1759417633%_))))
                                         (_%__kont2078820789%_
                                          (lambda ()
                                            (_%lp17582%_
                                             _%g1759317631%_
                                             _%hd17587%_
                                             (cons _%g1759417633%_
                                                   _%body17588%_)))))
                                     (if (gx#identifier? _%__stx2078120782%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21046_|
                                              _%__stx2078120782%_)
                                             (_%__kont2078420785%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21047_|
                                                  _%__stx2078120782%_)
                                                 (_%__kont2078620787%_)
                                                 (_%__kont2078820789%_)))
                                         (_%__kont2078820789%_))))))
                              (_%__kont2080620807%_
                               (lambda ()
                                 (values (reverse _%hd17587%_)
                                         (reverse _%body17588%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2080120802%_)
                              (let ((_%e1759517621%_
                                     (gx#syntax-e _%__stx2080120802%_)))
                                (let ((_%tl1759717628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1759517621%_)))
                                      (_%hd1759617625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1759517621%_))))
                                  (_%__kont2080420805%_
                                   _%tl1759717628%_
                                   _%hd1759617625%_)))
                              (_%__kont2080620807%_))))))))
          (let* ((_%g1746317474%_
                  (lambda (_%g1746417470%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1746417470%_)))
                 (_%g1746217575%_
                  (lambda (_%g1746417478%_)
                    (if (gx#stx-pair? _%g1746417478%_)
                        (let ((_%e1746617481%_ (gx#syntax-e _%g1746417478%_)))
                          (let ((_%hd1746717485%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1746617481%_)))
                                (_%tl1746817488%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1746617481%_))))
                            ((lambda (_%g1746517491%_)
                               (if (and (gx#stx-list? _%g1746517491%_)
                                        (not (gx#stx-null? _%g1746517491%_)))
                                   (let ((_g21048_
                                          (_%generate17460%_ _%g1746517491%_)))
                                     (begin
                                       (let ((_g21049_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21048_)
                                                    (##values-length _g21048_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21049_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21049_)))
                                       (let ((_%hd17504%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21048_ 0)))
                                             (_%body17506%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21048_ 1)))
                                             (_%tail?17507%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21048_ 2))))
                                         (let* ((_%g1750917517%_
                                                 (lambda (_%g1751017513%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1751017513%_)))
                                                (_%g1750817571%_
                                                 (lambda (_%g1751017521%_)
                                                   ((lambda (_%g1751117524%_)
                                                      (let* ((_%g1753717545%_
                                                              (lambda (_%g1753817541%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1753817541%_)))
                     (_%g1753617567%_
                      (lambda (_%g1753817549%_)
                        ((lambda (_%g1753917552%_)
                           (if _%tail?17507%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1751117524%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%g1753917552%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1751117524%_
                                           (cons _%g1753917552%_ '())))))
                         _%g1753817549%_))))
                (_%g1753617567%_ _%body17506%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1751017521%_))))
                                           (_%g1750817571%_ _%hd17504%_)))))
                                   (_%g1746317474%_ _%g1746417478%_)))
                             _%tl1746817488%_)))
                        (_%g1746317474%_ _%g1746417478%_)))))
            (_%g1746217575%_ _%stx17457%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17705%_)
        (let ((_%g1770817715%_
               (lambda (_%g1770917711%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1770917711%_))))
          (_%g1770817715%_ _%$stx17705%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17719%_)
        (let ((_%g1772217729%_
               (lambda (_%g1772317725%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1772317725%_))))
          (_%g1772217729%_ _%$stx17719%_))))))

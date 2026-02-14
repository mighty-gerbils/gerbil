(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g21024_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21025_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21026_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21054_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
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
  (define |gerbil/core/sugar~Sugar-2[1]#_g21063_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21064_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21065_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21066_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21067_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21068_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21069_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
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
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21072_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21073_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g21074_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_%stx5428%_)
        (letrec ((_%simple-lambda?5431%_
                  (lambda (_%hd8815%_)
                    (gx#stx-andmap gx#identifier? _%hd8815%_)))
                 (_%opt-lambda?5433%_
                  (lambda (_%hd8667%_)
                    (let _%lp8670%_ ((_%rest8673%_ _%hd8667%_)
                                     (_%opt?8675%_ '#f))
                      (let* ((_%__stx1905419055%_ _%rest8673%_)
                             (_%g86788690%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1905419055%_))))
                        (let ((_%__kont1905719058%_
                               (lambda (_%g86808722%_ _%g86818724%_)
                                 (let* ((_%__stx1903019031%_ _%g86818724%_)
                                        (_%g87408754%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1903019031%_))))
                                   (let ((_%__kont1903319034%_
                                          (lambda (_%g87428792%_)
                                            (_%lp8670%_ _%g86808722%_ '#t)))
                                         (_%__kont1903519036%_
                                          (lambda ()
                                            (if (gx#identifier? _%g86818724%_)
                                                (if (not _%opt?8675%_)
                                                    (_%lp8670%_
                                                     _%g86808722%_
                                                     '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((_%__match1905119052%_
                                            (lambda (_%e87438772%_
                                                     _%hd87448776%_
                                                     _%tl87458779%_
                                                     _%e87468782%_
                                                     _%hd87478786%_
                                                     _%tl87488789%_)
                                              (let ((_%g87428792%_
                                                     _%hd87448776%_))
                                                (if (gx#identifier?
                                                     _%g87428792%_)
                                                    (_%__kont1903319034%_
                                                     _%g87428792%_)
                                                    (_%__kont1903519036%_))))))
                                       (if (gx#stx-pair? _%__stx1903019031%_)
                                           (let ((_%e87438772%_
                                                  (gx#syntax-e
                                                   _%__stx1903019031%_)))
                                             (let ((_%tl87458779%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e87438772%_)))
                                                   (_%hd87448776%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e87438772%_))))
                                               (if (gx#stx-pair?
                                                    _%tl87458779%_)
                                                   (let ((_%e87468782%_
                                                          (gx#syntax-e
                                                           _%tl87458779%_)))
                                                     (let ((_%tl87488789%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e87468782%_)))
                                                           (_%hd87478786%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e87468782%_))))
                                                       (if (gx#stx-null?
                                                            _%tl87488789%_)
                                                           (_%__match1905119052%_
                                                            _%e87438772%_
                                                            _%hd87448776%_
                                                            _%tl87458779%_
                                                            _%e87468782%_
                                                            _%hd87478786%_
                                                            _%tl87488789%_)
                                                           (_%__kont1903519036%_))))
                                                   (_%__kont1903519036%_))))
                                           (_%__kont1903519036%_)))))))
                              (_%__kont1905919060%_
                               (lambda ()
                                 (if _%opt?8675%_
                                     (let ((_%$e8701%_
                                            (gx#stx-null? _%rest8673%_)))
                                       (if _%$e8701%_
                                           _%$e8701%_
                                           (gx#identifier? _%rest8673%_)))
                                     '#f))))
                          (if (gx#stx-pair? _%__stx1905419055%_)
                              (let ((_%e86828712%_
                                     (gx#syntax-e _%__stx1905419055%_)))
                                (let ((_%tl86848719%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e86828712%_)))
                                      (_%hd86838716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e86828712%_))))
                                  (_%__kont1905719058%_
                                   _%tl86848719%_
                                   _%hd86838716%_)))
                              (_%__kont1905919060%_)))))))
                 (_%opt-lambda-split5434%_
                  (lambda (_%hd8519%_)
                    (let _%lp8522%_ ((_%rest8525%_ _%hd8519%_)
                                     (_%pre8527%_ '())
                                     (_%opt8528%_ '()))
                      (let* ((_%__stx1909419095%_ _%rest8525%_)
                             (_%g85318543%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1909419095%_))))
                        (let ((_%__kont1909719098%_
                               (lambda (_%g85338571%_ _%g85348573%_)
                                 (let* ((_%__stx1907019071%_ _%g85348573%_)
                                        (_%g85898604%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1907019071%_))))
                                   (let ((_%__kont1907319074%_
                                          (lambda (_%g85918642%_ _%g85928644%_)
                                            (_%lp8522%_
                                             _%g85338571%_
                                             _%pre8527%_
                                             (cons (cons _%g85928644%_
                                                         _%g85918642%_)
                                                   _%opt8528%_))))
                                         (_%__kont1907519076%_
                                          (lambda ()
                                            (_%lp8522%_
                                             _%g85338571%_
                                             (cons _%g85348573%_ _%pre8527%_)
                                             _%opt8528%_))))
                                     (if (gx#stx-pair? _%__stx1907019071%_)
                                         (let ((_%e85938622%_
                                                (gx#syntax-e
                                                 _%__stx1907019071%_)))
                                           (let ((_%tl85958629%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e85938622%_)))
                                                 (_%hd85948626%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e85938622%_))))
                                             (if (gx#stx-pair? _%tl85958629%_)
                                                 (let ((_%e85968632%_
                                                        (gx#syntax-e
                                                         _%tl85958629%_)))
                                                   (let ((_%tl85988639%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e85968632%_)))
                                                         (_%hd85978636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e85968632%_))))
                                                     (if (gx#stx-null?
                                                          _%tl85988639%_)
                                                         (_%__kont1907319074%_
                                                          _%hd85978636%_
                                                          _%hd85948626%_)
                                                         (_%__kont1907519076%_))))
                                                 (_%__kont1907519076%_))))
                                         (_%__kont1907519076%_))))))
                              (_%__kont1909919100%_
                               (lambda ()
                                 (values (reverse _%pre8527%_)
                                         (reverse _%opt8528%_)
                                         _%rest8525%_))))
                          (if (gx#stx-pair? _%__stx1909419095%_)
                              (let ((_%e85358561%_
                                     (gx#syntax-e _%__stx1909419095%_)))
                                (let ((_%tl85378568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e85358561%_)))
                                      (_%hd85368565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e85358561%_))))
                                  (_%__kont1909719098%_
                                   _%tl85378568%_
                                   _%hd85368565%_)))
                              (_%__kont1909919100%_)))))))
                 (_%kw-lambda?5435%_
                  (lambda (_%hd8187%_)
                    (let _%lp8190%_ ((_%rest8193%_ _%hd8187%_)
                                     (_%opt?8195%_ '#f)
                                     (_%key?8196%_ '#f))
                      (let* ((_%__stx1915819159%_ _%rest8193%_)
                             (_%g82018231%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1915819159%_))))
                        (let ((_%__kont1916119162%_
                               (lambda (_%g82038426%_
                                        _%g82048428%_
                                        _%g82058429%_)
                                 (let* ((_%__stx1913419135%_ _%g82048428%_)
                                        (_%g84448458%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1913419135%_))))
                                   (let ((_%__kont1913719138%_
                                          (lambda (_%g84468496%_)
                                            (if (gx#identifier? _%g84468496%_)
                                                (_%lp8190%_
                                                 _%g82038426%_
                                                 _%opt?8195%_
                                                 '#t)
                                                '#f)))
                                         (_%__kont1913919140%_
                                          (lambda ()
                                            (if (gx#identifier? _%g82048428%_)
                                                (_%lp8190%_
                                                 _%g82038426%_
                                                 _%opt?8195%_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1913419135%_)
                                         (let ((_%e84478476%_
                                                (gx#syntax-e
                                                 _%__stx1913419135%_)))
                                           (let ((_%tl84498483%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e84478476%_)))
                                                 (_%hd84488480%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e84478476%_))))
                                             (if (gx#stx-pair? _%tl84498483%_)
                                                 (let ((_%e84508486%_
                                                        (gx#syntax-e
                                                         _%tl84498483%_)))
                                                   (let ((_%tl84528493%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e84508486%_)))
                                                         (_%hd84518490%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e84508486%_))))
                                                     (if (gx#stx-null?
                                                          _%tl84528493%_)
                                                         (_%__kont1913719138%_
                                                          _%hd84488480%_)
                                                         (_%__kont1913919140%_))))
                                                 (_%__kont1913919140%_))))
                                         (_%__kont1913919140%_))))))
                              (_%__kont1916319164%_
                               (lambda (_%g82128383%_ _%g82138385%_)
                                 (if (gx#identifier? _%g82138385%_)
                                     (_%lp8190%_
                                      _%g82128383%_
                                      _%opt?8195%_
                                      '#t)
                                     '#f)))
                              (_%__kont1916519166%_
                               (lambda (_%g82218263%_ _%g82228265%_)
                                 (let* ((_%__stx1911019111%_ _%g82228265%_)
                                        (_%g82818295%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1911019111%_))))
                                   (let ((_%__kont1911319114%_
                                          (lambda (_%g82838333%_)
                                            (if (gx#identifier? _%g82838333%_)
                                                (_%lp8190%_
                                                 _%g82218263%_
                                                 '#t
                                                 _%key?8196%_)
                                                '#f)))
                                         (_%__kont1911519116%_
                                          (lambda ()
                                            (if (gx#identifier? _%g82228265%_)
                                                (if (not _%opt?8195%_)
                                                    (_%lp8190%_
                                                     _%g82218263%_
                                                     '#f
                                                     _%key?8196%_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? _%__stx1911019111%_)
                                         (let ((_%e82848313%_
                                                (gx#syntax-e
                                                 _%__stx1911019111%_)))
                                           (let ((_%tl82868320%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e82848313%_)))
                                                 (_%hd82858317%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e82848313%_))))
                                             (if (gx#stx-pair? _%tl82868320%_)
                                                 (let ((_%e82878323%_
                                                        (gx#syntax-e
                                                         _%tl82868320%_)))
                                                   (let ((_%tl82898330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e82878323%_)))
                                                         (_%hd82888327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e82878323%_))))
                                                     (if (gx#stx-null?
                                                          _%tl82898330%_)
                                                         (_%__kont1911319114%_
                                                          _%hd82858317%_)
                                                         (_%__kont1911519116%_))))
                                                 (_%__kont1911519116%_))))
                                         (_%__kont1911519116%_))))))
                              (_%__kont1916719168%_
                               (lambda ()
                                 (if _%key?8196%_
                                     (let ((_%$e8242%_
                                            (gx#stx-null? _%rest8193%_)))
                                       (if _%$e8242%_
                                           _%$e8242%_
                                           (gx#identifier? _%rest8193%_)))
                                     '#f))))
                          (let ((_%__match1918119182%_
                                 (lambda (_%e82068406%_
                                          _%hd82078410%_
                                          _%tl82088413%_
                                          _%e82098416%_
                                          _%hd82108420%_
                                          _%tl82118423%_)
                                   (let ((_%g82038426%_ _%tl82118423%_)
                                         (_%g82048428%_ _%hd82108420%_)
                                         (_%g82058429%_ _%hd82078410%_))
                                     (if (gx#stx-keyword? _%g82058429%_)
                                         (_%__kont1916119162%_
                                          _%g82038426%_
                                          _%g82048428%_
                                          _%g82058429%_)
                                         (if (gx#stx-datum? _%hd82078410%_)
                                             (let ((_%e82178369%_
                                                    (gx#stx-e _%hd82078410%_)))
                                               (if (equal? _%e82178369%_
                                                           '#!key)
                                                   (_%__kont1916319164%_
                                                    _%tl82118423%_
                                                    _%hd82108420%_)
                                                   (_%__kont1916519166%_
                                                    _%tl82088413%_
                                                    _%hd82078410%_)))
                                             (_%__kont1916519166%_
                                              _%tl82088413%_
                                              _%hd82078410%_)))))))
                            (if (gx#stx-pair? _%__stx1915819159%_)
                                (let ((_%e82068406%_
                                       (gx#syntax-e _%__stx1915819159%_)))
                                  (let ((_%tl82088413%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e82068406%_)))
                                        (_%hd82078410%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e82068406%_))))
                                    (if (gx#stx-pair? _%tl82088413%_)
                                        (let ((_%e82098416%_
                                               (gx#syntax-e _%tl82088413%_)))
                                          (let ((_%tl82118423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e82098416%_)))
                                                (_%hd82108420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e82098416%_))))
                                            (_%__match1918119182%_
                                             _%e82068406%_
                                             _%hd82078410%_
                                             _%tl82088413%_
                                             _%e82098416%_
                                             _%hd82108420%_
                                             _%tl82118423%_)))
                                        (if (gx#stx-datum? _%hd82078410%_)
                                            (let ((_%e82178369%_
                                                   (gx#stx-e _%hd82078410%_)))
                                              (_%__kont1916519166%_
                                               _%tl82088413%_
                                               _%hd82078410%_))
                                            (_%__kont1916519166%_
                                             _%tl82088413%_
                                             _%hd82078410%_)))))
                                (_%__kont1916719168%_))))))))
                 (_%kw-lambda-split5436%_
                  (lambda (_%hd7920%_)
                    (let _%lp7923%_ ((_%rest7926%_ _%hd7920%_)
                                     (_%kwvar7928%_ '#f)
                                     (_%kwargs7929%_ '())
                                     (_%args7930%_ '()))
                      (let* ((_%__stx1923219233%_ _%rest7926%_)
                             (_%g79357965%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1923219233%_))))
                        (let ((_%__kont1923519236%_
                               (lambda (_%g79378084%_
                                        _%g79388086%_
                                        _%g79398087%_)
                                 (let ((_%key8101%_ (gx#stx-e _%g79398087%_)))
                                   (if (find (lambda (_%kwarg8104%_)
                                               (eq? _%key8101%_
                                                    (car _%kwarg8104%_)))
                                             _%kwargs7929%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _%stx5428%_
                                        _%hd7920%_
                                        _%key8101%_)
                                       (let* ((_%__stx1920819209%_
                                               _%g79388086%_)
                                              (_%g81088123%_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx1920819209%_))))
                                         (let ((_%__kont1921119212%_
                                                (lambda (_%g81108161%_
                                                         _%g81118163%_)
                                                  (_%lp7923%_
                                                   _%g79378084%_
                                                   _%kwvar7928%_
                                                   (cons (list _%key8101%_
                                                               _%g81118163%_
                                                               _%g81108161%_)
                                                         _%kwargs7929%_)
                                                   _%args7930%_)))
                                               (_%__kont1921319214%_
                                                (lambda ()
                                                  (_%lp7923%_
                                                   _%g79378084%_
                                                   _%kwvar7928%_
                                                   (cons (list _%key8101%_
                                                               _%g79388086%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _%g79398087%_ '()))))
                 _%kwargs7929%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%args7930%_))))
                                           (if (gx#stx-pair?
                                                _%__stx1920819209%_)
                                               (let ((_%e81128141%_
                                                      (gx#syntax-e
                                                       _%__stx1920819209%_)))
                                                 (let ((_%tl81148148%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e81128141%_)))
                                                       (_%hd81138145%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e81128141%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl81148148%_)
                                                       (let ((_%e81158151%_
                                                              (gx#syntax-e
                                                               _%tl81148148%_)))
                                                         (let ((_%tl81178158%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e81158151%_)))
                       (_%hd81168155%_
                        (let () (declare (not safe)) (##car _%e81158151%_))))
                   (if (gx#stx-null? _%tl81178158%_)
                       (_%__kont1921119212%_ _%hd81168155%_ _%hd81138145%_)
                       (_%__kont1921319214%_))))
               (_%__kont1921319214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%__kont1921319214%_))))))))
                              (_%__kont1923719238%_
                               (lambda (_%g79468041%_ _%g79478043%_)
                                 (if _%kwvar7928%_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _%stx5428%_
                                      _%hd7920%_
                                      _%g79478043%_)
                                     (_%lp7923%_
                                      _%g79468041%_
                                      _%g79478043%_
                                      _%kwargs7929%_
                                      _%args7930%_))))
                              (_%__kont1923919240%_
                               (lambda (_%g79557993%_ _%g79567995%_)
                                 (_%lp7923%_
                                  _%g79557993%_
                                  _%kwvar7928%_
                                  _%kwargs7929%_
                                  (cons _%g79567995%_ _%args7930%_))))
                              (_%__kont1924119242%_
                               (lambda ()
                                 (values _%kwvar7928%_
                                         (reverse _%kwargs7929%_)
                                         (foldl cons
                                                _%rest7926%_
                                                _%args7930%_)))))
                          (let ((_%__match1925519256%_
                                 (lambda (_%e79408064%_
                                          _%hd79418068%_
                                          _%tl79428071%_
                                          _%e79438074%_
                                          _%hd79448078%_
                                          _%tl79458081%_)
                                   (let ((_%g79378084%_ _%tl79458081%_)
                                         (_%g79388086%_ _%hd79448078%_)
                                         (_%g79398087%_ _%hd79418068%_))
                                     (if (gx#stx-keyword? _%g79398087%_)
                                         (_%__kont1923519236%_
                                          _%g79378084%_
                                          _%g79388086%_
                                          _%g79398087%_)
                                         (if (gx#stx-datum? _%hd79418068%_)
                                             (let ((_%e79518027%_
                                                    (gx#stx-e _%hd79418068%_)))
                                               (if (equal? _%e79518027%_
                                                           '#!key)
                                                   (_%__kont1923719238%_
                                                    _%tl79458081%_
                                                    _%hd79448078%_)
                                                   (_%__kont1923919240%_
                                                    _%tl79428071%_
                                                    _%hd79418068%_)))
                                             (_%__kont1923919240%_
                                              _%tl79428071%_
                                              _%hd79418068%_)))))))
                            (if (gx#stx-pair? _%__stx1923219233%_)
                                (let ((_%e79408064%_
                                       (gx#syntax-e _%__stx1923219233%_)))
                                  (let ((_%tl79428071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e79408064%_)))
                                        (_%hd79418068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e79408064%_))))
                                    (if (gx#stx-pair? _%tl79428071%_)
                                        (let ((_%e79438074%_
                                               (gx#syntax-e _%tl79428071%_)))
                                          (let ((_%tl79458081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e79438074%_)))
                                                (_%hd79448078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e79438074%_))))
                                            (_%__match1925519256%_
                                             _%e79408064%_
                                             _%hd79418068%_
                                             _%tl79428071%_
                                             _%e79438074%_
                                             _%hd79448078%_
                                             _%tl79458081%_)))
                                        (if (gx#stx-datum? _%hd79418068%_)
                                            (let ((_%e79518027%_
                                                   (gx#stx-e _%hd79418068%_)))
                                              (_%__kont1923919240%_
                                               _%tl79428071%_
                                               _%hd79418068%_))
                                            (_%__kont1923919240%_
                                             _%tl79428071%_
                                             _%hd79418068%_)))))
                                (_%__kont1924119242%_))))))))
                 (_%check-duplicate-bindings5437%_
                  (lambda (_%hd7612%_)
                    (let _%lp7615%_ ((_%rest7618%_ _%hd7612%_)
                                     (_%ids7620%_ '()))
                      (let* ((_%__stx1930619307%_ _%rest7618%_)
                             (_%g76237635%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1930619307%_))))
                        (let ((_%__kont1930919310%_
                               (lambda (_%g76257663%_ _%g76267665%_)
                                 (if (gx#identifier? _%g76267665%_)
                                     (_%lp7615%_
                                      _%g76257663%_
                                      (cons _%g76267665%_ _%ids7620%_))
                                     (if (gx#stx-pair? _%g76267665%_)
                                         (let* ((_%g76847698%_
                                                 (lambda (_%g76857694%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g76857694%_)))
                                                (_%g76837740%_
                                                 (lambda (_%g76857702%_)
                                                   (if (gx#stx-pair?
                                                        _%g76857702%_)
                                                       (let ((_%e76877705%_
                                                              (gx#syntax-e
                                                               _%g76857702%_)))
                                                         (let ((_%hd76887709%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e76877705%_)))
                       (_%tl76897712%_
                        (let () (declare (not safe)) (##cdr _%e76877705%_))))
                   (if (gx#stx-pair? _%tl76897712%_)
                       (let ((_%e76907715%_ (gx#syntax-e _%tl76897712%_)))
                         (let ((_%hd76917719%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e76907715%_)))
                               (_%tl76927722%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e76907715%_))))
                           (if (gx#stx-null? _%tl76927722%_)
                               ((lambda (_%g76867725%_)
                                  (_%lp7615%_
                                   _%g76257663%_
                                   (cons _%g76867725%_ _%ids7620%_)))
                                _%hd76887709%_)
                               (_%g76847698%_ _%g76857702%_))))
                       (_%g76847698%_ _%g76857702%_))))
               (_%g76847698%_ _%g76857702%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g76837740%_ _%g76267665%_))
                                         (if (gx#stx-keyword? _%g76267665%_)
                                             (let* ((_%g77467758%_
                                                     (lambda (_%g77477754%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g77477754%_)))
                                                    (_%g77457861%_
                                                     (lambda (_%g77477762%_)
                                                       (if (gx#stx-pair?
                                                            _%g77477762%_)
                                                           (let ((_%e77507765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g77477762%_)))
                     (let ((_%hd77517769%_
                            (let ()
                              (declare (not safe))
                              (##car _%e77507765%_)))
                           (_%tl77527772%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e77507765%_))))
                       ((lambda (_%g77487775%_ _%g77497777%_)
                          (let* ((_%__stx1928219283%_ _%g77497777%_)
                                 (_%g77907804%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx1928219283%_))))
                            (let ((_%__kont1928519286%_
                                   (lambda (_%g77927842%_)
                                     (_%lp7615%_
                                      _%g77487775%_
                                      (cons _%g77927842%_ _%ids7620%_))))
                                  (_%__kont1928719288%_
                                   (lambda ()
                                     (_%lp7615%_
                                      _%g77487775%_
                                      (cons _%g77497777%_ _%ids7620%_)))))
                              (if (gx#stx-pair? _%__stx1928219283%_)
                                  (let ((_%e77937822%_
                                         (gx#syntax-e _%__stx1928219283%_)))
                                    (let ((_%tl77957829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e77937822%_)))
                                          (_%hd77947826%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e77937822%_))))
                                      (if (gx#stx-pair? _%tl77957829%_)
                                          (let ((_%e77967832%_
                                                 (gx#syntax-e _%tl77957829%_)))
                                            (let ((_%tl77987839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e77967832%_)))
                                                  (_%hd77977836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e77967832%_))))
                                              (if (gx#stx-null? _%tl77987839%_)
                                                  (_%__kont1928519286%_
                                                   _%hd77947826%_)
                                                  (_%__kont1928719288%_))))
                                          (_%__kont1928719288%_))))
                                  (_%__kont1928719288%_)))))
                        _%tl77527772%_
                        _%hd77517769%_)))
                   (_%g77467758%_ _%g77477762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g77457861%_ _%g76257663%_))
                                             (if (eq? (gx#stx-e _%g76267665%_)
                                                      '#!key)
                                                 (let* ((_%g78677879%_
                                                         (lambda (_%g78687875%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g78687875%_)))
                                                        (_%g78667910%_
                                                         (lambda (_%g78687883%_)
                                                           (if (gx#stx-pair?
                                                                _%g78687883%_)
                                                               (let ((_%e78717886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g78687883%_)))
                         (let ((_%hd78727890%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e78717886%_)))
                               (_%tl78737893%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e78717886%_))))
                           ((lambda (_%g78697896%_ _%g78707898%_)
                              (_%lp7615%_
                               _%g78697896%_
                               (cons _%g78707898%_ _%ids7620%_)))
                            _%tl78737893%_
                            _%hd78727890%_)))
                       (_%g78677879%_ _%g78687883%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g78667910%_
                                                    _%g76257663%_))
                                                 (error '"BUG: check-duplicate-bindings"
                                                        _%stx5428%_
                                                        _%rest7618%_)))))))
                              (_%__kont1931119312%_
                               (lambda ()
                                 (gx#check-duplicate-identifiers
                                  (if (gx#stx-null? _%rest7618%_)
                                      _%ids7620%_
                                      (cons _%rest7618%_ _%ids7620%_))
                                  _%stx5428%_))))
                          (if (gx#stx-pair? _%__stx1930619307%_)
                              (let ((_%e76277653%_
                                     (gx#syntax-e _%__stx1930619307%_)))
                                (let ((_%tl76297660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e76277653%_)))
                                      (_%hd76287657%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e76277653%_))))
                                  (_%__kont1930919310%_
                                   _%tl76297660%_
                                   _%hd76287657%_)))
                              (_%__kont1931119312%_)))))))
                 (_%generate-opt-primary5438%_
                  (lambda (_%pre7408%_ _%opt7410%_ _%tail7411%_ _%body7412%_)
                    (let* ((_%g74147455%_
                            (lambda (_%g74157451%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g74157451%_)))
                           (_%g74137608%_
                            (lambda (_%g74157459%_)
                              (if (gx#stx-pair? _%g74157459%_)
                                  (let ((_%e74207462%_
                                         (gx#syntax-e _%g74157459%_)))
                                    (let ((_%hd74217466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74207462%_)))
                                          (_%tl74227469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74207462%_))))
                                      (if (gx#stx-pair/null? _%hd74217466%_)
                                          (let ((_g20989_
                                                 (gx#syntax-split-splice
                                                  _%hd74217466%_
                                                  '0)))
                                            (begin
                                              (let ((_g20990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20989_)
                                                           (##values-length
                                                            _g20989_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20990_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20990_)))
                                              (let ((_%target74237472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20989_
                                                        0)))
                                                    (_%tl74257475%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20989_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74257475%_)
                                                    (letrec ((_%loop74267478%_
                                                              (lambda (_%hd74247482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%pre74307485%_)
                        (if (gx#stx-pair? _%hd74247482%_)
                            (let ((_%e74277487%_ (gx#syntax-e _%hd74247482%_)))
                              (let ((_%lp-hd74287491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74277487%_)))
                                    (_%lp-tl74297494%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74277487%_))))
                                (_%loop74267478%_
                                 _%lp-tl74297494%_
                                 (cons _%lp-hd74287491%_ _%pre74307485%_))))
                            (let ((_%pre74317497%_ (reverse _%pre74307485%_)))
                              (if (gx#stx-pair? _%tl74227469%_)
                                  (let ((_%e74327500%_
                                         (gx#syntax-e _%tl74227469%_)))
                                    (let ((_%hd74337504%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74327500%_)))
                                          (_%tl74347507%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74327500%_))))
                                      (if (gx#stx-pair/null? _%hd74337504%_)
                                          (let ((_g20991_
                                                 (gx#syntax-split-splice
                                                  _%hd74337504%_
                                                  '0)))
                                            (begin
                                              (let ((_g20992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20991_)
                                                           (##values-length
                                                            _g20991_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20992_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20992_)))
                                              (let ((_%target74357510%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20991_
                                                        0)))
                                                    (_%tl74377513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g20991_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl74377513%_)
                                                    (letrec ((_%loop74387516%_
                                                              (lambda (_%hd74367520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%opt74427523%_)
                        (if (gx#stx-pair? _%hd74367520%_)
                            (let ((_%e74397525%_ (gx#syntax-e _%hd74367520%_)))
                              (let ((_%lp-hd74407529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e74397525%_)))
                                    (_%lp-tl74417532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e74397525%_))))
                                (_%loop74387516%_
                                 _%lp-tl74417532%_
                                 (cons _%lp-hd74407529%_ _%opt74427523%_))))
                            (let ((_%opt74437535%_ (reverse _%opt74427523%_)))
                              (if (gx#stx-pair? _%tl74347507%_)
                                  (let ((_%e74447538%_
                                         (gx#syntax-e _%tl74347507%_)))
                                    (let ((_%hd74457542%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e74447538%_)))
                                          (_%tl74467545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e74447538%_))))
                                      (if (gx#stx-pair? _%tl74467545%_)
                                          (let ((_%e74477548%_
                                                 (gx#syntax-e _%tl74467545%_)))
                                            (let ((_%hd74487552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e74477548%_)))
                                                  (_%tl74497555%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e74477548%_))))
                                              (if (gx#stx-null? _%tl74497555%_)
                                                  ((lambda (_%g74167558%_
                                                            _%g74177560%_
                                                            _%g74187561%_
                                                            _%g74197562%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons (foldr (lambda (_%g75917596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _%g75927599%_)
                                  (cons _%g75917596%_ _%g75927599%_))
                                (foldr (lambda (_%g75937602%_ _%g75947605%_)
                                         (cons _%g75937602%_ _%g75947605%_))
                                       _%g74177560%_
                                       _%g74187561%_)
                                _%g74197562%_)
                         _%g74167558%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd74487552%_
                                                   _%hd74457542%_
                                                   _%opt74437535%_
                                                   _%pre74317497%_)
                                                  (_%g74147455%_
                                                   _%g74157459%_))))
                                          (_%g74147455%_ _%g74157459%_))))
                                  (_%g74147455%_ _%g74157459%_)))))))
              (_%loop74387516%_ _%target74357510%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g74147455%_
                                                     _%g74157459%_)))))
                                          (_%g74147455%_ _%g74157459%_))))
                                  (_%g74147455%_ _%g74157459%_)))))))
              (_%loop74267478%_ _%target74237472%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g74147455%_
                                                     _%g74157459%_)))))
                                          (_%g74147455%_ _%g74157459%_))))
                                  (_%g74147455%_ _%g74157459%_)))))
                      (_%g74137608%_
                       (list _%pre7408%_
                             (map car _%opt7410%_)
                             _%tail7411%_
                             _%body7412%_)))))
                 (_%generate-opt-dispatch5439%_
                  (lambda (_%primary7402%_
                           _%pre7404%_
                           _%opt7405%_
                           _%tail7406%_)
                    (cons (list _%pre7404%_
                                (_%generate-opt-clause5441%_
                                 _%primary7402%_
                                 _%pre7404%_
                                 _%opt7405%_))
                          (_%generate-opt-dispatch*5440%_
                           _%primary7402%_
                           _%pre7404%_
                           _%opt7405%_
                           _%tail7406%_))))
                 (_%generate-opt-dispatch*5440%_
                  (lambda (_%primary6959%_
                           _%pre6961%_
                           _%opt6962%_
                           _%tail6963%_)
                    (let _%recur6965%_ ((_%opt-rest6968%_ _%opt6962%_)
                                        (_%right6970%_ '()))
                      (if (pair? _%opt-rest6968%_)
                          (let* ((_%hd6974%_ (caar _%opt-rest6968%_))
                                 (_%rest6977%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6968%_)))
                                 (_%right*6980%_
                                  (cons _%hd6974%_ _%right6970%_))
                                 (_%g69837000%_
                                  (lambda (_%g69846996%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g69846996%_)))
                                 (_%g69827180%_
                                  (lambda (_%g69847004%_)
                                    (if (gx#stx-pair/null? _%g69847004%_)
                                        (let ((_g20993_
                                               (gx#syntax-split-splice
                                                _%g69847004%_
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
                                            (let ((_%target69867007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20993_
                                                      0)))
                                                  (_%tl69887010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g20993_
                                                      1))))
                                              (if (gx#stx-null? _%tl69887010%_)
                                                  (letrec ((_%loop69897013%_
                                                            (lambda (_%hd69877017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%pre-bind69937020%_)
                      (if (gx#stx-pair? _%hd69877017%_)
                          (let ((_%e69907022%_ (gx#syntax-e _%hd69877017%_)))
                            (let ((_%lp-hd69917026%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e69907022%_)))
                                  (_%lp-tl69927029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e69907022%_))))
                              (_%loop69897013%_
                               _%lp-tl69927029%_
                               (cons _%lp-hd69917026%_ _%pre-bind69937020%_))))
                          (let ((_%pre-bind69947032%_
                                 (reverse _%pre-bind69937020%_)))
                            ((lambda (_%g69857035%_)
                               (let* ((_%g70577074%_
                                       (lambda (_%g70587070%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g70587070%_)))
                                      (_%g70567176%_
                                       (lambda (_%g70587078%_)
                                         (if (gx#stx-pair/null? _%g70587078%_)
                                             (let ((_g20995_
                                                    (gx#syntax-split-splice
                                                     _%g70587078%_
                                                     '0)))
                                               (begin
                                                 (let ((_g20996_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g20995_)
                                                              (##values-length
                                                               _g20995_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g20996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g20996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target70607081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20995_
                                                           0)))
                                                       (_%tl70627084%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g20995_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl70627084%_)
                                                       (letrec ((_%loop70637087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd70617091%_ _%opt-bind70677094%_)
                           (if (gx#stx-pair? _%hd70617091%_)
                               (let ((_%e70647096%_
                                      (gx#syntax-e _%hd70617091%_)))
                                 (let ((_%lp-hd70657100%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e70647096%_)))
                                       (_%lp-tl70667103%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e70647096%_))))
                                   (_%loop70637087%_
                                    _%lp-tl70667103%_
                                    (cons _%lp-hd70657100%_
                                          _%opt-bind70677094%_))))
                               (let ((_%opt-bind70687106%_
                                      (reverse _%opt-bind70677094%_)))
                                 ((lambda (_%g70597109%_)
                                    (let* ((_%g71267134%_
                                            (lambda (_%g71277130%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g71277130%_)))
                                           (_%g71257172%_
                                            (lambda (_%g71277138%_)
                                              ((lambda (_%g71287141%_)
                                                 (cons (list (foldr (lambda (_%g71557160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g71567163%_)
                              (cons _%g71557160%_ _%g71567163%_))
                            (foldr (lambda (_%g71577166%_ _%g71587169%_)
                                     (cons _%g71577166%_ _%g71587169%_))
                                   (cons _%g71287141%_ '())
                                   _%g70597109%_)
                            _%g69857035%_)
                     (_%generate-opt-clause5441%_
                      _%primary6959%_
                      (foldr cons (reverse _%right*6980%_) _%pre6961%_)
                      _%rest6977%_))
               (_%recur6965%_ _%rest6977%_ _%right*6980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g71277138%_))))
                                      (_%g71257172%_ _%hd6974%_)))
                                  _%opt-bind70687106%_))))))
                 (_%loop70637087%_ _%target70607081%_ '()))
               (_%g70577074%_ _%g70587078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g70577074%_ _%g70587078%_)))))
                                 (_%g70567176%_ (reverse _%right6970%_))))
                             _%pre-bind69947032%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop69897013%_
                                                     _%target69867007%_
                                                     '()))
                                                  (_%g69837000%_
                                                   _%g69847004%_)))))
                                        (_%g69837000%_ _%g69847004%_)))))
                            (_%g69827180%_ _%pre6961%_))
                          (if (gx#stx-null? _%tail6963%_)
                              '()
                              (let* ((_%g71887229%_
                                      (lambda (_%g71897225%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g71897225%_)))
                                     (_%g71877398%_
                                      (lambda (_%g71897233%_)
                                        (if (gx#stx-pair? _%g71897233%_)
                                            (let ((_%e71947236%_
                                                   (gx#syntax-e
                                                    _%g71897233%_)))
                                              (let ((_%hd71957240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e71947236%_)))
                                                    (_%tl71967243%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e71947236%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd71957240%_)
                                                    (let ((_g20997_
                                                           (gx#syntax-split-splice
                                                            _%hd71957240%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g20998_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20997_)
                             (##values-length _g20997_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20998_ 2)))
                      (error "Context expects 2 values" _g20998_)))
                (let ((_%target71977246%_
                       (let () (declare (not safe)) (##values-ref _g20997_ 0)))
                      (_%tl71997249%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20997_ 1))))
                  (if (gx#stx-null? _%tl71997249%_)
                      (letrec ((_%loop72007252%_
                                (lambda (_%hd71987256%_ _%pre72047259%_)
                                  (if (gx#stx-pair? _%hd71987256%_)
                                      (let ((_%e72017261%_
                                             (gx#syntax-e _%hd71987256%_)))
                                        (let ((_%lp-hd72027265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e72017261%_)))
                                              (_%lp-tl72037268%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e72017261%_))))
                                          (_%loop72007252%_
                                           _%lp-tl72037268%_
                                           (cons _%lp-hd72027265%_
                                                 _%pre72047259%_))))
                                      (let ((_%pre72057271%_
                                             (reverse _%pre72047259%_)))
                                        (if (gx#stx-pair? _%tl71967243%_)
                                            (let ((_%e72067274%_
                                                   (gx#syntax-e
                                                    _%tl71967243%_)))
                                              (let ((_%hd72077278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e72067274%_)))
                                                    (_%tl72087281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e72067274%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd72077278%_)
                                                    (let ((_g20999_
                                                           (gx#syntax-split-splice
                                                            _%hd72077278%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g21000_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g20999_)
                             (##values-length _g20999_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g21000_ 2)))
                      (error "Context expects 2 values" _g21000_)))
                (let ((_%target72097284%_
                       (let () (declare (not safe)) (##values-ref _g20999_ 0)))
                      (_%tl72117287%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g20999_ 1))))
                  (if (gx#stx-null? _%tl72117287%_)
                      (letrec ((_%loop72127290%_
                                (lambda (_%hd72107294%_ _%opt72167297%_)
                                  (if (gx#stx-pair? _%hd72107294%_)
                                      (let ((_%e72137299%_
                                             (gx#syntax-e _%hd72107294%_)))
                                        (let ((_%lp-hd72147303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e72137299%_)))
                                              (_%lp-tl72157306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e72137299%_))))
                                          (_%loop72127290%_
                                           _%lp-tl72157306%_
                                           (cons _%lp-hd72147303%_
                                                 _%opt72167297%_))))
                                      (let ((_%opt72177309%_
                                             (reverse _%opt72167297%_)))
                                        (if (gx#stx-pair? _%tl72087281%_)
                                            (let ((_%e72187312%_
                                                   (gx#syntax-e
                                                    _%tl72087281%_)))
                                              (let ((_%hd72197316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e72187312%_)))
                                                    (_%tl72207319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e72187312%_))))
                                                (if (gx#stx-pair?
                                                     _%tl72207319%_)
                                                    (let ((_%e72217322%_
                                                           (gx#syntax-e
                                                            _%tl72207319%_)))
                                                      (let ((_%hd72227326%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e72217322%_)))
                    (_%tl72237329%_
                     (let () (declare (not safe)) (##cdr _%e72217322%_))))
                (if (gx#stx-null? _%tl72237329%_)
                    ((lambda (_%g71907332%_
                              _%g71917334%_
                              _%g71927335%_
                              _%g71937336%_)
                       (list (list (foldr (lambda (_%g73657370%_ _%g73667373%_)
                                            (cons _%g73657370%_ _%g73667373%_))
                                          (foldr (lambda (_%g73677376%_
                                                          _%g73687379%_)
                                                   (cons _%g73677376%_
                                                         _%g73687379%_))
                                                 _%g71917334%_
                                                 _%g71927335%_)
                                          _%g71937336%_)
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'apply)
                                          (cons _%g71907332%_
                                                (foldr (lambda (_%g73817386%_
                                                                _%g73827389%_)
                                                         (cons _%g73817386%_
                                                               _%g73827389%_))
                                                       (foldr (lambda (_%g73837392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g73847395%_)
                        (cons _%g73837392%_ _%g73847395%_))
                      (cons _%g71917334%_ '())
                      _%g71927335%_)
               _%g71937336%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx5428%_)))))
                     _%hd72227326%_
                     _%hd72197316%_
                     _%opt72177309%_
                     _%pre72057271%_)
                    (_%g71887229%_ _%g71897233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71887229%_
                                                     _%g71897233%_))))
                                            (_%g71887229%_ _%g71897233%_)))))))
                        (_%loop72127290%_ _%target72097284%_ '()))
                      (_%g71887229%_ _%g71897233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71887229%_
                                                     _%g71897233%_))))
                                            (_%g71887229%_ _%g71897233%_)))))))
                        (_%loop72007252%_ _%target71977246%_ '()))
                      (_%g71887229%_ _%g71897233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g71887229%_
                                                     _%g71897233%_))))
                                            (_%g71887229%_ _%g71897233%_)))))
                                (_%g71877398%_
                                 (list _%pre6961%_
                                       (reverse _%right6970%_)
                                       _%tail6963%_
                                       _%primary6959%_))))))))
                 (_%generate-opt-clause5441%_
                  (lambda (_%primary6661%_ _%pre6663%_ _%opt6664%_)
                    (let _%recur6666%_ ((_%opt-rest6669%_ _%opt6664%_)
                                        (_%right6671%_ '()))
                      (if (pair? _%opt-rest6669%_)
                          (let* ((_%hd6673%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%opt-rest6669%_)))
                                 (_%rest6676%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%opt-rest6669%_)))
                                 (_%g66796687%_
                                  (lambda (_%g66806683%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g66806683%_)))
                                 (_%g66786776%_
                                  (lambda (_%g66806691%_)
                                    ((lambda (_%g66816694%_)
                                       (let* ((_%g67106718%_
                                               (lambda (_%g67116714%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g67116714%_)))
                                              (_%g67096772%_
                                               (lambda (_%g67116722%_)
                                                 ((lambda (_%g67126725%_)
                                                    (let* ((_%g67386746%_
                                                            (lambda (_%g67396742%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g67396742%_)))
                                                           (_%g67376768%_
                                                            (lambda (_%g67396750%_)
                                                              ((lambda (_%g67406753%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons (cons (cons (cons _%g66816694%_ '())
                                                 (cons _%g67126725%_ '()))
                                           '())
                                     (cons _%g67406753%_ '()))))
                       _%g67396750%_))))
              (_%g67376768%_
               (_%recur6666%_
                _%rest6676%_
                (cons _%g66816694%_ _%right6671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g67116722%_))))
                                         (_%g67096772%_ (cdr _%hd6673%_))))
                                     _%g66806691%_))))
                            (_%g66786776%_ (car _%hd6673%_)))
                          (let* ((_%g67806817%_
                                  (lambda (_%g67816813%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g67816813%_)))
                                 (_%g67796955%_
                                  (lambda (_%g67816821%_)
                                    (if (gx#stx-pair? _%g67816821%_)
                                        (let ((_%e67856824%_
                                               (gx#syntax-e _%g67816821%_)))
                                          (let ((_%hd67866828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67856824%_)))
                                                (_%tl67876831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67856824%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67866828%_)
                                                (let ((_g21001_
                                                       (gx#syntax-split-splice
                                                        _%hd67866828%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21001_)
                         (##values-length _g21001_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21002_ 2)))
                  (error "Context expects 2 values" _g21002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target67886834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21001_
                                                              0)))
                                                          (_%tl67906837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21001_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl67906837%_)
                                                          (letrec ((_%loop67916840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd67896844%_ _%pre67956847%_)
                              (if (gx#stx-pair? _%hd67896844%_)
                                  (let ((_%e67926849%_
                                         (gx#syntax-e _%hd67896844%_)))
                                    (let ((_%lp-hd67936853%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e67926849%_)))
                                          (_%lp-tl67946856%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e67926849%_))))
                                      (_%loop67916840%_
                                       _%lp-tl67946856%_
                                       (cons _%lp-hd67936853%_
                                             _%pre67956847%_))))
                                  (let ((_%pre67966859%_
                                         (reverse _%pre67956847%_)))
                                    (if (gx#stx-pair? _%tl67876831%_)
                                        (let ((_%e67976862%_
                                               (gx#syntax-e _%tl67876831%_)))
                                          (let ((_%hd67986866%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e67976862%_)))
                                                (_%tl67996869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e67976862%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd67986866%_)
                                                (let ((_g21003_
                                                       (gx#syntax-split-splice
                                                        _%hd67986866%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21003_)
                         (##values-length _g21003_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21004_ 2)))
                  (error "Context expects 2 values" _g21004_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target68006872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21003_
                                                              0)))
                                                          (_%tl68026875%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21003_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl68026875%_)
                                                          (letrec ((_%loop68036878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd68016882%_ _%opt68076885%_)
                              (if (gx#stx-pair? _%hd68016882%_)
                                  (let ((_%e68046887%_
                                         (gx#syntax-e _%hd68016882%_)))
                                    (let ((_%lp-hd68056891%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e68046887%_)))
                                          (_%lp-tl68066894%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e68046887%_))))
                                      (_%loop68036878%_
                                       _%lp-tl68066894%_
                                       (cons _%lp-hd68056891%_
                                             _%opt68076885%_))))
                                  (let ((_%opt68086897%_
                                         (reverse _%opt68076885%_)))
                                    (if (gx#stx-pair? _%tl67996869%_)
                                        (let ((_%e68096900%_
                                               (gx#syntax-e _%tl67996869%_)))
                                          (let ((_%hd68106904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e68096900%_)))
                                                (_%tl68116907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e68096900%_))))
                                            (if (gx#stx-null? _%tl68116907%_)
                                                ((lambda (_%g67826910%_
                                                          _%g67836912%_
                                                          _%g67846913%_)
                                                   (gx#stx-wrap-source
                                                    (cons _%g67826910%_
                                                          (foldr (lambda (_%g69386943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g69396946%_)
                           (cons _%g69386943%_ _%g69396946%_))
                         (foldr (lambda (_%g69406949%_ _%g69416952%_)
                                  (cons _%g69406949%_ _%g69416952%_))
                                '()
                                _%g67836912%_)
                         _%g67846913%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _%stx5428%_)))
                                                 _%hd68106904%_
                                                 _%opt68086897%_
                                                 _%pre67966859%_)
                                                (_%g67806817%_
                                                 _%g67816821%_))))
                                        (_%g67806817%_ _%g67816821%_)))))))
                    (_%loop68036878%_ _%target68006872%_ '()))
                  (_%g67806817%_ _%g67816821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67806817%_
                                                 _%g67816821%_))))
                                        (_%g67806817%_ _%g67816821%_)))))))
                    (_%loop67916840%_ _%target67886834%_ '()))
                  (_%g67806817%_ _%g67816821%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g67806817%_
                                                 _%g67816821%_))))
                                        (_%g67806817%_ _%g67816821%_)))))
                            (_%g67796955%_
                             (list _%pre6663%_
                                   (reverse _%right6671%_)
                                   _%primary6661%_)))))))
                 (_%generate-kw-primary5442%_
                  (lambda (_%key6041%_
                           _%kwargs6043%_
                           _%args6044%_
                           _%body6045%_)
                    (letrec ((_%make-body6047%_
                              (lambda (_%kwargs6530%_ _%kwvals6532%_)
                                (if (pair? _%kwargs6530%_)
                                    (let* ((_%kwarg6534%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%kwargs6530%_)))
                                           (_%var6537%_ (cadr _%kwarg6534%_))
                                           (_%default6540%_
                                            (caddr _%kwarg6534%_))
                                           (_%kwval6543%_ (car _%kwvals6532%_))
                                           (_%rest-kwargs6546%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%kwargs6530%_)))
                                           (_%rest-kwvals6549%_
                                            (cdr _%kwvals6532%_))
                                           (_%g65546577%_
                                            (lambda (_%g65556573%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g65556573%_)))
                                           (_%g65536657%_
                                            (lambda (_%g65556581%_)
                                              (if (gx#stx-pair? _%g65556581%_)
                                                  (let ((_%e65606584%_
                                                         (gx#syntax-e
                                                          _%g65556581%_)))
                                                    (let ((_%hd65616588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e65606584%_)))
                                                          (_%tl65626591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e65606584%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl65626591%_)
                                                          (let ((_%e65636594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl65626591%_)))
                    (let ((_%hd65646598%_
                           (let () (declare (not safe)) (##car _%e65636594%_)))
                          (_%tl65656601%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e65636594%_))))
                      (if (gx#stx-pair? _%tl65656601%_)
                          (let ((_%e65666604%_ (gx#syntax-e _%tl65656601%_)))
                            (let ((_%hd65676608%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e65666604%_)))
                                  (_%tl65686611%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e65666604%_))))
                              (if (gx#stx-pair? _%tl65686611%_)
                                  (let ((_%e65696614%_
                                         (gx#syntax-e _%tl65686611%_)))
                                    (let ((_%hd65706618%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e65696614%_)))
                                          (_%tl65716621%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e65696614%_))))
                                      (if (gx#stx-null? _%tl65716621%_)
                                          ((lambda (_%g65566624%_
                                                    _%g65576626%_
                                                    _%g65586627%_
                                                    _%g65596628%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'let-values)
                                                   (cons (cons (cons (cons _%g65596628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'eq?)
                                                     (cons _%g65586627%_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'absent-value)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%g65576626%_
                                                     (cons _%g65586627%_
                                                           '()))))
                                   '()))
                       '())
                 (cons _%g65566624%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd65706618%_
                                           _%hd65676608%_
                                           _%hd65646598%_
                                           _%hd65616588%_)
                                          (_%g65546577%_ _%g65556581%_))))
                                  (_%g65546577%_ _%g65556581%_))))
                          (_%g65546577%_ _%g65556581%_))))
                  (_%g65546577%_ _%g65556581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g65546577%_
                                                   _%g65556581%_)))))
                                      (_%g65536657%_
                                       (list _%var6537%_
                                             _%kwval6543%_
                                             _%default6540%_
                                             (_%make-body6047%_
                                              _%rest-kwargs6546%_
                                              _%rest-kwvals6549%_))))
                                    (cons 'begin _%body6045%_))))
                             (_%make-main6049%_
                              (lambda ()
                                (let* ((_%g63406348%_
                                        (lambda (_%g63416344%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g63416344%_)))
                                       (_%g63396522%_
                                        (lambda (_%g63416352%_)
                                          ((lambda (_%g63426355%_)
                                             (let* ((_%g63676384%_
                                                     (lambda (_%g63686380%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g63686380%_)))
                                                    (_%g63666518%_
                                                     (lambda (_%g63686388%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g63686388%_)
                                                           (let ((_g21005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g63686388%_ '0)))
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
                             (error "Context expects 2 values" _g21006_)))
                       (let ((_%target63706391%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21005_ 0)))
                             (_%tl63726394%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21005_ 1))))
                         (if (gx#stx-null? _%tl63726394%_)
                             (letrec ((_%loop63736397%_
                                       (lambda (_%hd63716401%_
                                                _%kwval63776404%_)
                                         (if (gx#stx-pair? _%hd63716401%_)
                                             (let ((_%e63746406%_
                                                    (gx#syntax-e
                                                     _%hd63716401%_)))
                                               (let ((_%lp-hd63756410%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e63746406%_)))
                                                     (_%lp-tl63766413%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e63746406%_))))
                                                 (_%loop63736397%_
                                                  _%lp-tl63766413%_
                                                  (cons _%lp-hd63756410%_
                                                        _%kwval63776404%_))))
                                             (let ((_%kwval63786416%_
                                                    (reverse _%kwval63776404%_)))
                                               ((lambda (_%g63696419%_)
                                                  (let* ((_%g64366444%_
                                                          (lambda (_%g64376440%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g64376440%_)))
                                                         (_%g64356514%_
                                                          (lambda (_%g64376448%_)
                                                            ((lambda (_%g64386451%_)
                                                               (let* ((_%g64646472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g64656468%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g64656468%_)))
                              (_%g64636502%_
                               (lambda (_%g64656476%_)
                                 ((lambda (_%g64666479%_)
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (cons _%g63426355%_
                                                       (foldr (lambda (_%g64936496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g64946499%_)
                        (cons _%g64936496%_ _%g64946499%_))
                      _%g64386451%_
                      _%g63696419%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%g64666479%_ '())))
                                     (gx#stx-source _%stx5428%_)))
                                  _%g64656476%_))))
                         (_%g64636502%_
                          (_%make-body6047%_
                           _%kwargs6043%_
                           (foldr (lambda (_%g65056508%_ _%g65066511%_)
                                    (cons _%g65056508%_ _%g65066511%_))
                                  '()
                                  _%g63696419%_)))))
                     _%g64376448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g64356514%_
                                                     _%args6044%_)))
                                                _%kwval63786416%_))))))
                               (_%loop63736397%_ _%target63706391%_ '()))
                             (_%g63676384%_ _%g63686388%_)))))
                   (_%g63676384%_ _%g63686388%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g63666518%_
                                                (gx#gentemps
                                                 (map cadr _%kwargs6043%_)))))
                                           _%g63416352%_))))
                                  (_%g63396522%_
                                   (let ((_%$e6526%_ _%key6041%_))
                                     (if _%$e6526%_
                                         _%$e6526%_
                                         (gx#syntax-local-introduce
                                          '@@keywords)))))))
                             (_%make-dispatch6050%_
                              (lambda (_%main6150%_)
                                (let* ((_%g61536161%_
                                        (lambda (_%g61546157%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g61546157%_)))
                                       (_%g61526330%_
                                        (lambda (_%g61546165%_)
                                          ((lambda (_%g61556168%_)
                                             (let* ((_%g61806197%_
                                                     (lambda (_%g61816193%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g61816193%_)))
                                                    (_%g61796291%_
                                                     (lambda (_%g61816201%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g61816201%_)
                                                           (let ((_g21007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g61816201%_ '0)))
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
                             (error "Context expects 2 values" _g21008_)))
                       (let ((_%target61836204%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21007_ 0)))
                             (_%tl61856207%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g21007_ 1))))
                         (if (gx#stx-null? _%tl61856207%_)
                             (letrec ((_%loop61866210%_
                                       (lambda (_%hd61846214%_
                                                _%get-kw61906217%_)
                                         (if (gx#stx-pair? _%hd61846214%_)
                                             (let ((_%e61876219%_
                                                    (gx#syntax-e
                                                     _%hd61846214%_)))
                                               (let ((_%lp-hd61886223%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e61876219%_)))
                                                     (_%lp-tl61896226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e61876219%_))))
                                                 (_%loop61866210%_
                                                  _%lp-tl61896226%_
                                                  (cons _%lp-hd61886223%_
                                                        _%get-kw61906217%_))))
                                             (let ((_%get-kw61916229%_
                                                    (reverse _%get-kw61906217%_)))
                                               ((lambda (_%g61826232%_)
                                                  (let* ((_%g62496257%_
                                                          (lambda (_%g62506253%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g62506253%_)))
                                                         (_%g62486287%_
                                                          (lambda (_%g62506261%_)
                                                            ((lambda (_%g62516264%_)
                                                               (gx#stx-wrap-source
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'lambda)
                              (cons (cons _%g61556168%_
                                          (gx#datum->syntax '#f 'args))
                                    (cons (cons (gx#datum->syntax '#f 'apply)
                                                (cons _%g62516264%_
                                                      (cons _%g61556168%_
                                                            (foldr (lambda (_%g62786281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g62796284%_)
                             (cons _%g62786281%_ _%g62796284%_))
                           (cons (gx#datum->syntax '#f 'args) '())
                           _%g61826232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (gx#stx-source _%stx5428%_)))
                     _%g62506261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g62486287%_
                                                     _%main6150%_)))
                                                _%get-kw61916229%_))))))
                               (_%loop61866210%_ _%target61836204%_ '()))
                             (_%g61806197%_ _%g61816201%_)))))
                   (_%g61806197%_ _%g61816201%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g61796291%_
                                                (map (lambda (_%kwarg6295%_)
                                                       (let* ((_%g62986306%_
                                                               (lambda (_%g62996302%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g62996302%_)))
                      (_%g62976326%_
                       (lambda (_%g62996310%_)
                         ((lambda (_%g63006313%_)
                            (cons (gx#datum->syntax '#f 'symbolic-table-ref)
                                  (cons _%g61556168%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g63006313%_ '()))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'absent-value)
                                                    '())))))
                          _%g62996310%_))))
                 (_%g62976326%_ (car _%kwarg6295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs6043%_))))
                                           _%g61546165%_))))
                                  (_%g61526330%_
                                   (let ((_%$e6334%_ _%key6041%_))
                                     (if _%$e6334%_
                                         _%$e6334%_
                                         (gx#syntax-local-introduce
                                          '@@keywords))))))))
                      (let* ((_%g60526060%_
                              (lambda (_%g60536056%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g60536056%_)))
                             (_%g60516146%_
                              (lambda (_%g60536064%_)
                                ((lambda (_%g60546067%_)
                                   (let* ((_%g60806088%_
                                           (lambda (_%g60816084%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g60816084%_)))
                                          (_%g60796142%_
                                           (lambda (_%g60816092%_)
                                             ((lambda (_%g60826095%_)
                                                (let* ((_%g61086116%_
                                                        (lambda (_%g61096112%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g61096112%_)))
                                                       (_%g61076138%_
                                                        (lambda (_%g61096120%_)
                                                          ((lambda (_%g61106123%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (cons (cons (cons _%g60546067%_ '())
                                             (cons _%g61106123%_ '()))
                                       '())
                                 (cons _%g60826095%_ '()))))
                   _%g61096120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g61076138%_
                                                   (_%make-main6049%_))))
                                              _%g60816092%_))))
                                     (_%g60796142%_
                                      (_%make-dispatch6050%_ _%g60546067%_))))
                                 _%g60536064%_))))
                        (_%g60516146%_ (gx#genident 'kw-lambda-main))))))
                 (_%generate-kw-dispatch5443%_
                  (lambda (_%primary5954%_ _%kwargs5956%_ _%strict?5957%_)
                    (let* ((_%g59595978%_
                            (lambda (_%g59605974%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g59605974%_)))
                           (_%g59586037%_
                            (lambda (_%g59605982%_)
                              (if (gx#stx-pair? _%g59605982%_)
                                  (let ((_%e59645985%_
                                         (gx#syntax-e _%g59605982%_)))
                                    (let ((_%hd59655989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e59645985%_)))
                                          (_%tl59665992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e59645985%_))))
                                      (if (gx#stx-pair? _%tl59665992%_)
                                          (let ((_%e59675995%_
                                                 (gx#syntax-e _%tl59665992%_)))
                                            (let ((_%hd59685999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e59675995%_)))
                                                  (_%tl59696002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e59675995%_))))
                                              (if (gx#stx-pair? _%tl59696002%_)
                                                  (let ((_%e59706005%_
                                                         (gx#syntax-e
                                                          _%tl59696002%_)))
                                                    (let ((_%hd59716009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e59706005%_)))
                                                          (_%tl59726012%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e59706005%_))))
                                                      (if (gx#stx-null?
                                                           _%tl59726012%_)
                                                          ((lambda (_%g59616015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g59626017%_
                            _%g59636018%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g59616015%_
                                 (cons (cons (gx#datum->syntax '#f 'apply)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'keyword-dispatch)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g59636018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons _%g59626017%_ (cons _%g59616015%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _%hd59716009%_
                   _%hd59685999%_
                   _%hd59655989%_)
                  (_%g59595978%_ _%g59605982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g59595978%_
                                                   _%g59605982%_))))
                                          (_%g59595978%_ _%g59605982%_))))
                                  (_%g59595978%_ _%g59605982%_)))))
                      (_%g59586037%_
                       (list (if _%strict?5957%_
                                 (_%generate-kw-table5444%_
                                  (map car _%kwargs5956%_))
                                 '#f)
                             _%primary5954%_
                             (gx#genident 'args))))))
                 (_%generate-kw-table5444%_
                  (lambda (_%kws5928%_)
                    (let _%rehash5931%_ ((_%pht5934%_
                                          (let ((__tmp21013
                                                 (length _%kws5928%_)))
                                            (declare (not safe))
                                            (##make-vector __tmp21013 '#f))))
                      (let _%lp5937%_ ((_%rest5940%_ _%kws5928%_))
                        (if (pair? _%rest5940%_)
                            (let* ((_%key5943%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest5940%_)))
                                   (_%rest5946%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest5940%_)))
                                   (_%pos5949%_
                                    (let ((__tmp21010
                                           (keyword-hash _%key5943%_))
                                          (__tmp21009
                                           (vector-length _%pht5934%_)))
                                      (declare (not safe))
                                      (##fxmodulo __tmp21010 __tmp21009))))
                              (if (vector-ref _%pht5934%_ _%pos5949%_)
                                  (if (let ((__tmp21011
                                             (vector-length _%pht5934%_)))
                                        (declare (not safe))
                                        (##fx< __tmp21011 '8192))
                                      (_%rehash5931%_
                                       (make-vector
                                        (quotient
                                         (let ((__tmp21012
                                                (vector-length _%pht5934%_)))
                                           (declare (not safe))
                                           (##fx* '3 __tmp21012))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _%kws5928%_))
                                  (begin
                                    (vector-set!
                                     _%pht5934%_
                                     _%pos5949%_
                                     _%key5943%_)
                                    (_%lp5937%_ _%rest5946%_))))
                            _%pht5934%_))))))
          (let* ((_%__stx1932219323%_ _%stx5428%_)
                 (_%g54485479%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx1932219323%_))))
            (let ((_%__kont1932519326%_
                   (lambda (_%g54505909%_ _%g54515911%_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _%g54515911%_ _%g54505909%_))))
                  (_%__kont1932719328%_
                   (lambda (_%g54585683%_ _%g54595685%_)
                     (let ((_g21014_ (_%opt-lambda-split5434%_ _%g54595685%_)))
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
                               (error "Context expects 3 values" _g21015_)))
                         (let ((_%pre5698%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21014_ 0)))
                               (_%opt5700%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21014_ 1)))
                               (_%tail5701%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g21014_ 2))))
                           (let* ((_%g57035711%_
                                   (lambda (_%g57045707%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g57045707%_)))
                                  (_%g57025878%_
                                   (lambda (_%g57045715%_)
                                     ((lambda (_%g57055718%_)
                                        (let* ((_%g57315739%_
                                                (lambda (_%g57325735%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g57325735%_)))
                                               (_%g57305874%_
                                                (lambda (_%g57325743%_)
                                                  ((lambda (_%g57335746%_)
                                                     (let* ((_%g57595776%_
                                                             (lambda (_%g57605772%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g57605772%_)))
                                                            (_%g57585870%_
                                                             (lambda (_%g57605780%_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g57605780%_)
                           (let ((_g21016_
                                  (gx#syntax-split-splice _%g57605780%_ '0)))
                             (begin
                               (let ((_g21017_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g21016_)
                                            (##values-length _g21016_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g21017_ 2)))
                                     (error "Context expects 2 values"
                                            _g21017_)))
                               (let ((_%target57625783%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21016_ 0)))
                                     (_%tl57645786%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g21016_ 1))))
                                 (if (gx#stx-null? _%tl57645786%_)
                                     (letrec ((_%loop57655789%_
                                               (lambda (_%hd57635793%_
                                                        _%clause57695796%_)
                                                 (if (gx#stx-pair?
                                                      _%hd57635793%_)
                                                     (let ((_%e57665798%_
                                                            (gx#syntax-e
                                                             _%hd57635793%_)))
                                                       (let ((_%lp-hd57675802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e57665798%_)))
                     (_%lp-tl57685805%_
                      (let () (declare (not safe)) (##cdr _%e57665798%_))))
                 (_%loop57655789%_
                  _%lp-tl57685805%_
                  (cons _%lp-hd57675802%_ _%clause57695796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause57705808%_
                                                            (reverse _%clause57695796%_)))
                                                       ((lambda (_%g57615811%_)
                                                          (let* ((_%g58285836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g58295832%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g58295832%_)))
                         (_%g58275858%_
                          (lambda (_%g58295840%_)
                            ((lambda (_%g58305843%_)
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _%g57055718%_ '())
                                                       (cons _%g57335746%_
                                                             '()))
                                                 '())
                                           (cons _%g58305843%_ '()))))
                             _%g58295840%_))))
                    (_%g58275858%_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'case-lambda)
                            (foldr (lambda (_%g58615864%_ _%g58625867%_)
                                     (cons _%g58615864%_ _%g58625867%_))
                                   '()
                                   _%g57615811%_))
                      (gx#stx-source _%stx5428%_)))))
                _%clause57705808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop57655789%_
                                        _%target57625783%_
                                        '()))
                                     (_%g57595776%_ _%g57605780%_)))))
                           (_%g57595776%_ _%g57605780%_)))))
               (_%g57585870%_
                (_%generate-opt-dispatch5439%_
                 _%g57055718%_
                 _%pre5698%_
                 _%opt5700%_
                 _%tail5701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g57325743%_))))
                                          (_%g57305874%_
                                           (gx#stx-wrap-source
                                            (_%generate-opt-primary5438%_
                                             _%pre5698%_
                                             _%opt5700%_
                                             _%tail5701%_
                                             _%g54585683%_)
                                            (gx#stx-source _%stx5428%_)))))
                                      _%g57045715%_))))
                             (_%g57025878%_ (gx#genident 'opt-lambda))))))))
                  (_%__kont1932919330%_
                   (lambda (_%g54665506%_ _%g54675508%_)
                     (let* ((_%g55245531%_
                             (lambda (_%g55255527%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g55255527%_)))
                            (_%g55235652%_
                             (lambda (_%g55255535%_)
                               ((lambda ()
                                  (let ((_g21018_
                                         (_%kw-lambda-split5436%_
                                          _%g54675508%_)))
                                    (begin
                                      (let ((_g21019_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g21018_)
                                                   (##values-length _g21018_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g21019_ 3)))
                                            (error "Context expects 3 values"
                                                   _g21019_)))
                                      (let ((_%key5544%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21018_ 0)))
                                            (_%kwargs5546%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21018_ 1)))
                                            (_%args5547%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g21018_ 2))))
                                        (let* ((_%g55495557%_
                                                (lambda (_%g55505553%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g55505553%_)))
                                               (_%g55485648%_
                                                (lambda (_%g55505561%_)
                                                  ((lambda (_%g55515564%_)
                                                     (let* ((_%g55825590%_
                                                             (lambda (_%g55835586%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g55835586%_)))
                                                            (_%g55815644%_
                                                             (lambda (_%g55835594%_)
                                                               ((lambda (_%g55845597%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g56105618%_
                                  (lambda (_%g56115614%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g56115614%_)))
                                 (_%g56095640%_
                                  (lambda (_%g56115622%_)
                                    ((lambda (_%g56125625%_)
                                       (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (cons (cons (cons _%g55515564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _%g55845597%_ '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%g56125625%_ '()))))
                                     _%g56115622%_))))
                            (_%g56095640%_
                             (gx#stx-wrap-source
                              (_%generate-kw-dispatch5443%_
                               _%g55515564%_
                               _%kwargs5546%_
                               (not _%key5544%_))
                              (gx#stx-source _%stx5428%_)))))
                        _%g55835594%_))))
               (_%g55815644%_
                (gx#stx-wrap-source
                 (_%generate-kw-primary5442%_
                  _%key5544%_
                  _%kwargs5546%_
                  _%args5547%_
                  _%g54665506%_)
                 (gx#stx-source _%stx5428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g55505561%_))))
                                          (_%g55485648%_
                                           (gx#genident 'kw-lambda)))))))))))
                       (_%g55235652%_
                        (_%check-duplicate-bindings5437%_ _%g54675508%_))))))
              (let* ((_%__match1936719368%_
                      (lambda (_%e54685486%_
                               _%hd54695490%_
                               _%tl54705493%_
                               _%e54715496%_
                               _%hd54725500%_
                               _%tl54735503%_)
                        (let ((_%g54665506%_ _%tl54735503%_)
                              (_%g54675508%_ _%hd54725500%_))
                          (if (_%kw-lambda?5435%_ _%g54675508%_)
                              (_%__kont1932919330%_
                               _%g54665506%_
                               _%g54675508%_)
                              (let () (declare (not safe)) (_%g54485479%_))))))
                     (_%__match1935519356%_
                      (lambda (_%e54605663%_
                               _%hd54615667%_
                               _%tl54625670%_
                               _%e54635673%_
                               _%hd54645677%_
                               _%tl54655680%_)
                        (let ((_%g54585683%_ _%tl54655680%_)
                              (_%g54595685%_ _%hd54645677%_))
                          (if (_%opt-lambda?5433%_ _%g54595685%_)
                              (_%__kont1932719328%_
                               _%g54585683%_
                               _%g54595685%_)
                              (_%__match1936719368%_
                               _%e54605663%_
                               _%hd54615667%_
                               _%tl54625670%_
                               _%e54635673%_
                               _%hd54645677%_
                               _%tl54655680%_)))))
                     (_%__match1934319344%_
                      (lambda (_%e54525889%_
                               _%hd54535893%_
                               _%tl54545896%_
                               _%e54555899%_
                               _%hd54565903%_
                               _%tl54575906%_)
                        (let ((_%g54505909%_ _%tl54575906%_)
                              (_%g54515911%_ _%hd54565903%_))
                          (if (_%simple-lambda?5431%_ _%g54515911%_)
                              (_%__kont1932519326%_
                               _%g54505909%_
                               _%g54515911%_)
                              (_%__match1935519356%_
                               _%e54525889%_
                               _%hd54535893%_
                               _%tl54545896%_
                               _%e54555899%_
                               _%hd54565903%_
                               _%tl54575906%_))))))
                (if (gx#stx-pair? _%__stx1932219323%_)
                    (let ((_%e54525889%_ (gx#syntax-e _%__stx1932219323%_)))
                      (let ((_%tl54545896%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e54525889%_)))
                            (_%hd54535893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e54525889%_))))
                        (if (gx#stx-pair? _%tl54545896%_)
                            (let ((_%e54555899%_ (gx#syntax-e _%tl54545896%_)))
                              (let ((_%tl54575906%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e54555899%_)))
                                    (_%hd54565903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e54555899%_))))
                                (_%__match1934319344%_
                                 _%e54525889%_
                                 _%hd54535893%_
                                 _%tl54545896%_
                                 _%e54555899%_
                                 _%hd54565903%_
                                 _%tl54575906%_)))
                            (let () (declare (not safe)) (_%g54485479%_)))))
                    (let () (declare (not safe)) (_%g54485479%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_%$stx8831%_)
        (let* ((_%__stx1937019371%_ _%$stx8831%_)
               (_%g88398951%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1937019371%_))))
          (let ((_%__kont1937319374%_
                 (lambda (_%g88419389%_
                          _%g88429391%_
                          _%g88439392%_
                          _%g88449393%_)
                   (cons (gx#datum->syntax '#f 'def)
                         (cons (cons _%g88449393%_ _%g88439392%_)
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88429391%_
                                                 (foldr (lambda (_%g94159418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g94169421%_)
                  (cons _%g94159418%_ _%g94169421%_))
                '()
                _%g88419389%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1937719378%_
                 (lambda (_%g88669276%_
                          _%g88679278%_
                          _%g88689279%_
                          _%g88699280%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88699280%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88689279%_
                                                 (foldr (lambda (_%g93059308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g93069311%_)
                  (cons _%g93059308%_ _%g93069311%_))
                '()
                _%g88669276%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons 'macro:
                                           (cons _%g88679278%_ '())))))))
                (_%__kont1938119382%_
                 (lambda (_%g88959156%_ _%g88969158%_ _%g88979159%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g88979159%_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _%g88969158%_
                                                 (foldr (lambda (_%g91789181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g91799184%_)
                  (cons _%g91789181%_ _%g91799184%_))
                '()
                _%g88959156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont1938519386%_
                 (lambda (_%g89169074%_ _%g89179076%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g89179076%_ '())
                               (cons _%g89169074%_ '())))))
                (_%__kont1938719388%_
                 (lambda (_%g89279012%_ _%g89289014%_ _%g89299015%_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _%g89299015%_ '())
                               (cons _%g89289014%_
                                     (cons 'macro:
                                           (cons _%g89279012%_ '()))))))))
            (let* ((_%__match1954919550%_
                    (lambda (_%e89308958%_
                             _%hd89318962%_
                             _%tl89328965%_
                             _%e89338968%_
                             _%hd89348972%_
                             _%tl89358975%_
                             _%e89368978%_
                             _%hd89378982%_
                             _%tl89388985%_
                             _%e89398988%_
                             _%hd89408992%_
                             _%tl89418995%_
                             _%e89428998%_
                             _%e89439002%_
                             _%hd89449006%_
                             _%tl89459009%_)
                      (let ((_%g89279012%_ _%hd89449006%_)
                            (_%g89289014%_ _%hd89378982%_)
                            (_%g89299015%_ _%hd89348972%_))
                        (if (and (gx#identifier? _%g89299015%_)
                                 (gx#identifier? _%g89279012%_))
                            (_%__kont1938719388%_
                             _%g89279012%_
                             _%g89289014%_
                             _%g89299015%_)
                            (let () (declare (not safe)) (_%g88398951%_))))))
                   (_%__match1951119512%_
                    (lambda (_%e89189044%_
                             _%hd89199048%_
                             _%tl89209051%_
                             _%e89219054%_
                             _%hd89229058%_
                             _%tl89239061%_
                             _%e89249064%_
                             _%hd89259068%_
                             _%tl89269071%_)
                      (let ((_%g89169074%_ _%hd89259068%_)
                            (_%g89179076%_ _%hd89229058%_))
                        (if (gx#identifier? _%g89179076%_)
                            (_%__kont1938519386%_ _%g89169074%_ _%g89179076%_)
                            (let () (declare (not safe)) (_%g88398951%_))))))
                   (_%__match1950319504%_
                    (lambda (_%e89189044%_
                             _%hd89199048%_
                             _%tl89209051%_
                             _%e89219054%_
                             _%hd89229058%_
                             _%tl89239061%_)
                      (if (gx#stx-pair? _%tl89239061%_)
                          (let ((_%e89249064%_ (gx#syntax-e _%tl89239061%_)))
                            (let ((_%tl89269071%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89249064%_)))
                                  (_%hd89259068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89249064%_))))
                              (if (gx#stx-null? _%tl89269071%_)
                                  (_%__match1951119512%_
                                   _%e89189044%_
                                   _%hd89199048%_
                                   _%tl89209051%_
                                   _%e89219054%_
                                   _%hd89229058%_
                                   _%tl89239061%_
                                   _%e89249064%_
                                   _%hd89259068%_
                                   _%tl89269071%_)
                                  (if (gx#stx-pair? _%tl89269071%_)
                                      (let ((_%e89398988%_
                                             (gx#syntax-e _%tl89269071%_)))
                                        (let ((_%tl89418995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89398988%_)))
                                              (_%hd89408992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89398988%_))))
                                          (if (gx#stx-datum? _%hd89408992%_)
                                              (let ((_%e89428998%_
                                                     (gx#stx-e
                                                      _%hd89408992%_)))
                                                (if (equal? _%e89428998%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89418995%_)
                                                        (let ((_%e89439002%_
                                                               (gx#syntax-e
                                                                _%tl89418995%_)))
                                                          (let ((_%tl89459009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89439002%_)))
                        (_%hd89449006%_
                         (let () (declare (not safe)) (##car _%e89439002%_))))
                    (if (gx#stx-null? _%tl89459009%_)
                        (_%__match1954919550%_
                         _%e89189044%_
                         _%hd89199048%_
                         _%tl89209051%_
                         _%e89219054%_
                         _%hd89229058%_
                         _%tl89239061%_
                         _%e89249064%_
                         _%hd89259068%_
                         _%tl89269071%_
                         _%e89398988%_
                         _%hd89408992%_
                         _%tl89418995%_
                         _%e89428998%_
                         _%e89439002%_
                         _%hd89449006%_
                         _%tl89459009%_)
                        (let () (declare (not safe)) (_%g88398951%_)))))
                (let () (declare (not safe)) (_%g88398951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88398951%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_))))))
                          (let () (declare (not safe)) (_%g88398951%_)))))
                   (_%__match1949119492%_
                    (lambda (_%e88989098%_
                             _%hd88999102%_
                             _%tl89009105%_
                             _%e89019108%_
                             _%hd89029112%_
                             _%tl89039115%_
                             _%e89049118%_
                             _%hd89059122%_
                             _%tl89069125%_
                             _%__splice1938319384%_
                             _%target89079128%_
                             _%tl89099131%_)
                      (letrec ((_%loop89109134%_
                                (lambda (_%hd89089138%_ _%body89149141%_)
                                  (if (gx#stx-pair? _%hd89089138%_)
                                      (let ((_%e89119143%_
                                             (gx#syntax-e _%hd89089138%_)))
                                        (let ((_%lp-tl89139150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89119143%_)))
                                              (_%lp-hd89129147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89119143%_))))
                                          (_%loop89109134%_
                                           _%lp-tl89139150%_
                                           (cons _%lp-hd89129147%_
                                                 _%body89149141%_))))
                                      (let ((_%body89159153%_
                                             (reverse _%body89149141%_)))
                                        (let ((_%g88959156%_ _%body89159153%_)
                                              (_%g88969158%_ _%tl89069125%_)
                                              (_%g88979159%_ _%hd89059122%_))
                                          (if (gx#identifier? _%g88979159%_)
                                              (_%__kont1938119382%_
                                               _%g88959156%_
                                               _%g88969158%_
                                               _%g88979159%_)
                                              (_%__match1950319504%_
                                               _%e88989098%_
                                               _%hd88999102%_
                                               _%tl89009105%_
                                               _%e89019108%_
                                               _%hd89029112%_
                                               _%tl89039115%_))))))))
                        (_%loop89109134%_ _%target89079128%_ '()))))
                   (_%__match1948319484%_
                    (lambda (_%e88989098%_
                             _%hd88999102%_
                             _%tl89009105%_
                             _%e89019108%_
                             _%hd89029112%_
                             _%tl89039115%_
                             _%e89049118%_
                             _%hd89059122%_
                             _%tl89069125%_)
                      (if (gx#stx-pair/null? _%tl89039115%_)
                          (let ((_%__splice1938319384%_
                                 (gx#syntax-split-splice->vector
                                  _%tl89039115%_
                                  '0)))
                            (let ((_%tl89099131%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice1938319384%_ '1)))
                                  (_%target89079128%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice1938319384%_
                                      '0))))
                              (if (gx#stx-null? _%tl89099131%_)
                                  (_%__match1949119492%_
                                   _%e88989098%_
                                   _%hd88999102%_
                                   _%tl89009105%_
                                   _%e89019108%_
                                   _%hd89029112%_
                                   _%tl89039115%_
                                   _%e89049118%_
                                   _%hd89059122%_
                                   _%tl89069125%_
                                   _%__splice1938319384%_
                                   _%target89079128%_
                                   _%tl89099131%_)
                                  (if (gx#stx-pair? _%tl89039115%_)
                                      (let ((_%e89249064%_
                                             (gx#syntax-e _%tl89039115%_)))
                                        (let ((_%tl89269071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89249064%_)))
                                              (_%hd89259068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89249064%_))))
                                          (if (gx#stx-null? _%tl89269071%_)
                                              (_%__match1951119512%_
                                               _%e88989098%_
                                               _%hd88999102%_
                                               _%tl89009105%_
                                               _%e89019108%_
                                               _%hd89029112%_
                                               _%tl89039115%_
                                               _%e89249064%_
                                               _%hd89259068%_
                                               _%tl89269071%_)
                                              (if (gx#stx-pair? _%tl89269071%_)
                                                  (let ((_%e89398988%_
                                                         (gx#syntax-e
                                                          _%tl89269071%_)))
                                                    (let ((_%tl89418995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89398988%_)))
                                                          (_%hd89408992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89398988%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89408992%_)
                                                          (let ((_%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89408992%_)))
                    (if (equal? _%e89428998%_ 'macro:)
                        (if (gx#stx-pair? _%tl89418995%_)
                            (let ((_%e89439002%_ (gx#syntax-e _%tl89418995%_)))
                              (let ((_%tl89459009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89439002%_)))
                                    (_%hd89449006%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89439002%_))))
                                (if (gx#stx-null? _%tl89459009%_)
                                    (_%__match1954919550%_
                                     _%e88989098%_
                                     _%hd88999102%_
                                     _%tl89009105%_
                                     _%e89019108%_
                                     _%hd89029112%_
                                     _%tl89039115%_
                                     _%e89249064%_
                                     _%hd89259068%_
                                     _%tl89269071%_
                                     _%e89398988%_
                                     _%hd89408992%_
                                     _%tl89418995%_
                                     _%e89428998%_
                                     _%e89439002%_
                                     _%hd89449006%_
                                     _%tl89459009%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88398951%_)))))
                            (let () (declare (not safe)) (_%g88398951%_)))
                        (let () (declare (not safe)) (_%g88398951%_))))
                  (let () (declare (not safe)) (_%g88398951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_))))))
                          (if (gx#stx-pair? _%tl89039115%_)
                              (let ((_%e89249064%_
                                     (gx#syntax-e _%tl89039115%_)))
                                (let ((_%tl89269071%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89249064%_)))
                                      (_%hd89259068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89249064%_))))
                                  (if (gx#stx-null? _%tl89269071%_)
                                      (_%__match1951119512%_
                                       _%e88989098%_
                                       _%hd88999102%_
                                       _%tl89009105%_
                                       _%e89019108%_
                                       _%hd89029112%_
                                       _%tl89039115%_
                                       _%e89249064%_
                                       _%hd89259068%_
                                       _%tl89269071%_)
                                      (if (gx#stx-pair? _%tl89269071%_)
                                          (let ((_%e89398988%_
                                                 (gx#syntax-e _%tl89269071%_)))
                                            (let ((_%tl89418995%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e89398988%_)))
                                                  (_%hd89408992%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e89398988%_))))
                                              (if (gx#stx-datum?
                                                   _%hd89408992%_)
                                                  (let ((_%e89428998%_
                                                         (gx#stx-e
                                                          _%hd89408992%_)))
                                                    (if (equal? _%e89428998%_
                                                                'macro:)
                                                        (if (gx#stx-pair?
                                                             _%tl89418995%_)
                                                            (let ((_%e89439002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl89418995%_)))
                      (let ((_%tl89459009%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e89439002%_)))
                            (_%hd89449006%_
                             (let ()
                               (declare (not safe))
                               (##car _%e89439002%_))))
                        (if (gx#stx-null? _%tl89459009%_)
                            (_%__match1954919550%_
                             _%e88989098%_
                             _%hd88999102%_
                             _%tl89009105%_
                             _%e89019108%_
                             _%hd89029112%_
                             _%tl89039115%_
                             _%e89249064%_
                             _%hd89259068%_
                             _%tl89269071%_
                             _%e89398988%_
                             _%hd89408992%_
                             _%tl89418995%_
                             _%e89428998%_
                             _%e89439002%_
                             _%hd89449006%_
                             _%tl89459009%_)
                            (let () (declare (not safe)) (_%g88398951%_)))))
                    (let () (declare (not safe)) (_%g88398951%_)))
                (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88398951%_))))))
                              (let () (declare (not safe)) (_%g88398951%_))))))
                   (_%__match1946519466%_
                    (lambda (_%e88709194%_
                             _%hd88719198%_
                             _%tl88729201%_
                             _%e88739204%_
                             _%hd88749208%_
                             _%tl88759211%_
                             _%e88769214%_
                             _%hd88779218%_
                             _%tl88789221%_
                             _%e88799224%_
                             _%hd88809228%_
                             _%tl88819231%_
                             _%e88829234%_
                             _%e88839238%_
                             _%hd88849242%_
                             _%tl88859245%_
                             _%__splice1937919380%_
                             _%target88869248%_
                             _%tl88889251%_)
                      (letrec ((_%loop88899254%_
                                (lambda (_%hd88879258%_ _%body88939261%_)
                                  (if (gx#stx-pair? _%hd88879258%_)
                                      (let ((_%e88909263%_
                                             (gx#syntax-e _%hd88879258%_)))
                                        (let ((_%lp-tl88929270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88909263%_)))
                                              (_%lp-hd88919267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88909263%_))))
                                          (_%loop88899254%_
                                           _%lp-tl88929270%_
                                           (cons _%lp-hd88919267%_
                                                 _%body88939261%_))))
                                      (let ((_%body88949273%_
                                             (reverse _%body88939261%_)))
                                        (let ((_%g88669276%_ _%body88949273%_)
                                              (_%g88679278%_ _%hd88849242%_)
                                              (_%g88689279%_ _%tl88789221%_)
                                              (_%g88699280%_ _%hd88779218%_))
                                          (if (and (gx#identifier?
                                                    _%g88699280%_)
                                                   (gx#identifier?
                                                    _%g88679278%_))
                                              (_%__kont1937719378%_
                                               _%g88669276%_
                                               _%g88679278%_
                                               _%g88689279%_
                                               _%g88699280%_)
                                              (_%__match1948319484%_
                                               _%e88709194%_
                                               _%hd88719198%_
                                               _%tl88729201%_
                                               _%e88739204%_
                                               _%hd88749208%_
                                               _%tl88759211%_
                                               _%e88769214%_
                                               _%hd88779218%_
                                               _%tl88789221%_))))))))
                        (_%loop88899254%_ _%target88869248%_ '()))))
                   (_%__match1942119422%_
                    (lambda (_%e88459321%_
                             _%hd88469325%_
                             _%tl88479328%_
                             _%e88489331%_
                             _%hd88499335%_
                             _%tl88509338%_
                             _%e88519341%_
                             _%hd88529345%_
                             _%tl88539348%_
                             _%e88549351%_
                             _%hd88559355%_
                             _%tl88569358%_
                             _%__splice1937519376%_
                             _%target88579361%_
                             _%tl88599364%_)
                      (letrec ((_%loop88609367%_
                                (lambda (_%hd88589371%_ _%body88649374%_)
                                  (if (gx#stx-pair? _%hd88589371%_)
                                      (let ((_%e88619376%_
                                             (gx#syntax-e _%hd88589371%_)))
                                        (let ((_%lp-tl88639383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e88619376%_)))
                                              (_%lp-hd88629380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e88619376%_))))
                                          (_%loop88609367%_
                                           _%lp-tl88639383%_
                                           (cons _%lp-hd88629380%_
                                                 _%body88649374%_))))
                                      (let ((_%body88659386%_
                                             (reverse _%body88649374%_)))
                                        (_%__kont1937319374%_
                                         _%body88659386%_
                                         _%tl88539348%_
                                         _%tl88569358%_
                                         _%hd88559355%_))))))
                        (_%loop88609367%_ _%target88579361%_ '())))))
              (if (gx#stx-pair? _%__stx1937019371%_)
                  (let ((_%e88459321%_ (gx#syntax-e _%__stx1937019371%_)))
                    (let ((_%tl88479328%_
                           (let () (declare (not safe)) (##cdr _%e88459321%_)))
                          (_%hd88469325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e88459321%_))))
                      (if (gx#stx-pair? _%tl88479328%_)
                          (let ((_%e88489331%_ (gx#syntax-e _%tl88479328%_)))
                            (let ((_%tl88509338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e88489331%_)))
                                  (_%hd88499335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e88489331%_))))
                              (if (gx#stx-pair? _%hd88499335%_)
                                  (let ((_%e88519341%_
                                         (gx#syntax-e _%hd88499335%_)))
                                    (let ((_%tl88539348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e88519341%_)))
                                          (_%hd88529345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e88519341%_))))
                                      (if (gx#stx-pair? _%hd88529345%_)
                                          (let ((_%e88549351%_
                                                 (gx#syntax-e _%hd88529345%_)))
                                            (let ((_%tl88569358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e88549351%_)))
                                                  (_%hd88559355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e88549351%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl88509338%_)
                                                  (let ((_%__splice1937519376%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88509338%_
                                                          '0)))
                                                    (let ((_%tl88599364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1937519376%_
                                                              '1)))
                                                          (_%target88579361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1937519376%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl88599364%_)
                                                          (_%__match1942119422%_
                                                           _%e88459321%_
                                                           _%hd88469325%_
                                                           _%tl88479328%_
                                                           _%e88489331%_
                                                           _%hd88499335%_
                                                           _%tl88509338%_
                                                           _%e88519341%_
                                                           _%hd88529345%_
                                                           _%tl88539348%_
                                                           _%e88549351%_
                                                           _%hd88559355%_
                                                           _%tl88569358%_
                                                           _%__splice1937519376%_
                                                           _%target88579361%_
                                                           _%tl88599364%_)
                                                          (if (gx#stx-pair?
                                                               _%tl88509338%_)
                                                              (let ((_%e88799224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl88509338%_)))
                        (let ((_%tl88819231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e88799224%_)))
                              (_%hd88809228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e88799224%_))))
                          (if (gx#stx-datum? _%hd88809228%_)
                              (let ((_%e88829234%_ (gx#stx-e _%hd88809228%_)))
                                (if (equal? _%e88829234%_ 'macro:)
                                    (if (gx#stx-pair? _%tl88819231%_)
                                        (let ((_%e88839238%_
                                               (gx#syntax-e _%tl88819231%_)))
                                          (let ((_%tl88859245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e88839238%_)))
                                                (_%hd88849242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e88839238%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl88859245%_)
                                                (let ((_%__splice1937919380%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl88859245%_
                                                        '0)))
                                                  (let ((_%tl88889251%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1937919380%_
                                                            '1)))
                                                        (_%target88869248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1937919380%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl88889251%_)
                                                        (_%__match1946519466%_
                                                         _%e88459321%_
                                                         _%hd88469325%_
                                                         _%tl88479328%_
                                                         _%e88489331%_
                                                         _%hd88499335%_
                                                         _%tl88509338%_
                                                         _%e88519341%_
                                                         _%hd88529345%_
                                                         _%tl88539348%_
                                                         _%e88799224%_
                                                         _%hd88809228%_
                                                         _%tl88819231%_
                                                         _%e88829234%_
                                                         _%e88839238%_
                                                         _%hd88849242%_
                                                         _%tl88859245%_
                                                         _%__splice1937919380%_
                                                         _%target88869248%_
                                                         _%tl88889251%_)
                                                        (if (gx#stx-datum?
                                                             _%hd88849242%_)
                                                            (let ((_%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _%hd88849242%_)))
                      (if (equal? _%e89428998%_ 'macro:)
                          (if (gx#stx-pair? _%tl88859245%_)
                              (let ((_%e89439002%_
                                     (gx#syntax-e _%tl88859245%_)))
                                (let ((_%tl89459009%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89439002%_)))
                                      (_%hd89449006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89439002%_))))
                                  (if (gx#stx-null? _%tl89459009%_)
                                      (_%__match1954919550%_
                                       _%e88459321%_
                                       _%hd88469325%_
                                       _%tl88479328%_
                                       _%e88489331%_
                                       _%hd88499335%_
                                       _%tl88509338%_
                                       _%e88799224%_
                                       _%hd88809228%_
                                       _%tl88819231%_
                                       _%e88839238%_
                                       _%hd88849242%_
                                       _%tl88859245%_
                                       _%e89428998%_
                                       _%e89439002%_
                                       _%hd89449006%_
                                       _%tl89459009%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_)))))
                              (let () (declare (not safe)) (_%g88398951%_)))
                          (let () (declare (not safe)) (_%g88398951%_))))
                    (let () (declare (not safe)) (_%g88398951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-datum?
                                                     _%hd88849242%_)
                                                    (let ((_%e89428998%_
                                                           (gx#stx-e
                                                            _%hd88849242%_)))
                                                      (if (equal? _%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88859245%_)
                      (let ((_%e89439002%_ (gx#syntax-e _%tl88859245%_)))
                        (let ((_%tl89459009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89439002%_)))
                              (_%hd89449006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89439002%_))))
                          (if (gx#stx-null? _%tl89459009%_)
                              (_%__match1954919550%_
                               _%e88459321%_
                               _%hd88469325%_
                               _%tl88479328%_
                               _%e88489331%_
                               _%hd88499335%_
                               _%tl88509338%_
                               _%e88799224%_
                               _%hd88809228%_
                               _%tl88819231%_
                               _%e88839238%_
                               _%hd88849242%_
                               _%tl88859245%_
                               _%e89428998%_
                               _%e89439002%_
                               _%hd89449006%_
                               _%tl89459009%_)
                              (let () (declare (not safe)) (_%g88398951%_)))))
                      (let () (declare (not safe)) (_%g88398951%_)))
                  (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_))))))
                                        (if (gx#stx-null? _%tl88819231%_)
                                            (_%__match1951119512%_
                                             _%e88459321%_
                                             _%hd88469325%_
                                             _%tl88479328%_
                                             _%e88489331%_
                                             _%hd88499335%_
                                             _%tl88509338%_
                                             _%e88799224%_
                                             _%hd88809228%_
                                             _%tl88819231%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_))))
                                    (if (gx#stx-null? _%tl88819231%_)
                                        (_%__match1951119512%_
                                         _%e88459321%_
                                         _%hd88469325%_
                                         _%tl88479328%_
                                         _%e88489331%_
                                         _%hd88499335%_
                                         _%tl88509338%_
                                         _%e88799224%_
                                         _%hd88809228%_
                                         _%tl88819231%_)
                                        (if (gx#stx-pair? _%tl88819231%_)
                                            (let ((_%e89398988%_
                                                   (gx#syntax-e
                                                    _%tl88819231%_)))
                                              (let ((_%tl89418995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89398988%_)))
                                                    (_%hd89408992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89398988%_))))
                                                (if (gx#stx-datum?
                                                     _%hd89408992%_)
                                                    (let ((_%e89428998%_
                                                           (gx#stx-e
                                                            _%hd89408992%_)))
                                                      (if (equal? _%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl89418995%_)
                      (let ((_%e89439002%_ (gx#syntax-e _%tl89418995%_)))
                        (let ((_%tl89459009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89439002%_)))
                              (_%hd89449006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89439002%_))))
                          (if (gx#stx-null? _%tl89459009%_)
                              (_%__match1954919550%_
                               _%e88459321%_
                               _%hd88469325%_
                               _%tl88479328%_
                               _%e88489331%_
                               _%hd88499335%_
                               _%tl88509338%_
                               _%e88799224%_
                               _%hd88809228%_
                               _%tl88819231%_
                               _%e89398988%_
                               _%hd89408992%_
                               _%tl89418995%_
                               _%e89428998%_
                               _%e89439002%_
                               _%hd89449006%_
                               _%tl89459009%_)
                              (let () (declare (not safe)) (_%g88398951%_)))))
                      (let () (declare (not safe)) (_%g88398951%_)))
                  (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_))))))
                              (if (gx#stx-null? _%tl88819231%_)
                                  (_%__match1951119512%_
                                   _%e88459321%_
                                   _%hd88469325%_
                                   _%tl88479328%_
                                   _%e88489331%_
                                   _%hd88499335%_
                                   _%tl88509338%_
                                   _%e88799224%_
                                   _%hd88809228%_
                                   _%tl88819231%_)
                                  (if (gx#stx-pair? _%tl88819231%_)
                                      (let ((_%e89398988%_
                                             (gx#syntax-e _%tl88819231%_)))
                                        (let ((_%tl89418995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89398988%_)))
                                              (_%hd89408992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89398988%_))))
                                          (if (gx#stx-datum? _%hd89408992%_)
                                              (let ((_%e89428998%_
                                                     (gx#stx-e
                                                      _%hd89408992%_)))
                                                (if (equal? _%e89428998%_
                                                            'macro:)
                                                    (if (gx#stx-pair?
                                                         _%tl89418995%_)
                                                        (let ((_%e89439002%_
                                                               (gx#syntax-e
                                                                _%tl89418995%_)))
                                                          (let ((_%tl89459009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e89439002%_)))
                        (_%hd89449006%_
                         (let () (declare (not safe)) (##car _%e89439002%_))))
                    (if (gx#stx-null? _%tl89459009%_)
                        (_%__match1954919550%_
                         _%e88459321%_
                         _%hd88469325%_
                         _%tl88479328%_
                         _%e88489331%_
                         _%hd88499335%_
                         _%tl88509338%_
                         _%e88799224%_
                         _%hd88809228%_
                         _%tl88819231%_
                         _%e89398988%_
                         _%hd89408992%_
                         _%tl89418995%_
                         _%e89428998%_
                         _%e89439002%_
                         _%hd89449006%_
                         _%tl89459009%_)
                        (let () (declare (not safe)) (_%g88398951%_)))))
                (let () (declare (not safe)) (_%g88398951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88398951%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_)))))))
                      (let () (declare (not safe)) (_%g88398951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%tl88509338%_)
                                                      (let ((_%e88799224%_
                                                             (gx#syntax-e
                                                              _%tl88509338%_)))
                                                        (let ((_%tl88819231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e88799224%_)))
                      (_%hd88809228%_
                       (let () (declare (not safe)) (##car _%e88799224%_))))
                  (if (gx#stx-datum? _%hd88809228%_)
                      (let ((_%e88829234%_ (gx#stx-e _%hd88809228%_)))
                        (if (equal? _%e88829234%_ 'macro:)
                            (if (gx#stx-pair? _%tl88819231%_)
                                (let ((_%e88839238%_
                                       (gx#syntax-e _%tl88819231%_)))
                                  (let ((_%tl88859245%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e88839238%_)))
                                        (_%hd88849242%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e88839238%_))))
                                    (if (gx#stx-pair/null? _%tl88859245%_)
                                        (let ((_%__splice1937919380%_
                                               (gx#syntax-split-splice->vector
                                                _%tl88859245%_
                                                '0)))
                                          (let ((_%tl88889251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1937919380%_
                                                    '1)))
                                                (_%target88869248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1937919380%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl88889251%_)
                                                (_%__match1946519466%_
                                                 _%e88459321%_
                                                 _%hd88469325%_
                                                 _%tl88479328%_
                                                 _%e88489331%_
                                                 _%hd88499335%_
                                                 _%tl88509338%_
                                                 _%e88519341%_
                                                 _%hd88529345%_
                                                 _%tl88539348%_
                                                 _%e88799224%_
                                                 _%hd88809228%_
                                                 _%tl88819231%_
                                                 _%e88829234%_
                                                 _%e88839238%_
                                                 _%hd88849242%_
                                                 _%tl88859245%_
                                                 _%__splice1937919380%_
                                                 _%target88869248%_
                                                 _%tl88889251%_)
                                                (if (gx#stx-datum?
                                                     _%hd88849242%_)
                                                    (let ((_%e89428998%_
                                                           (gx#stx-e
                                                            _%hd88849242%_)))
                                                      (if (equal? _%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'macro:)
                  (if (gx#stx-pair? _%tl88859245%_)
                      (let ((_%e89439002%_ (gx#syntax-e _%tl88859245%_)))
                        (let ((_%tl89459009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e89439002%_)))
                              (_%hd89449006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e89439002%_))))
                          (if (gx#stx-null? _%tl89459009%_)
                              (_%__match1954919550%_
                               _%e88459321%_
                               _%hd88469325%_
                               _%tl88479328%_
                               _%e88489331%_
                               _%hd88499335%_
                               _%tl88509338%_
                               _%e88799224%_
                               _%hd88809228%_
                               _%tl88819231%_
                               _%e88839238%_
                               _%hd88849242%_
                               _%tl88859245%_
                               _%e89428998%_
                               _%e89439002%_
                               _%hd89449006%_
                               _%tl89459009%_)
                              (let () (declare (not safe)) (_%g88398951%_)))))
                      (let () (declare (not safe)) (_%g88398951%_)))
                  (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_))))))
                                        (if (gx#stx-datum? _%hd88849242%_)
                                            (let ((_%e89428998%_
                                                   (gx#stx-e _%hd88849242%_)))
                                              (if (equal? _%e89428998%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl88859245%_)
                                                      (let ((_%e89439002%_
                                                             (gx#syntax-e
                                                              _%tl88859245%_)))
                                                        (let ((_%tl89459009%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89439002%_)))
                      (_%hd89449006%_
                       (let () (declare (not safe)) (##car _%e89439002%_))))
                  (if (gx#stx-null? _%tl89459009%_)
                      (_%__match1954919550%_
                       _%e88459321%_
                       _%hd88469325%_
                       _%tl88479328%_
                       _%e88489331%_
                       _%hd88499335%_
                       _%tl88509338%_
                       _%e88799224%_
                       _%hd88809228%_
                       _%tl88819231%_
                       _%e88839238%_
                       _%hd88849242%_
                       _%tl88859245%_
                       _%e89428998%_
                       _%e89439002%_
                       _%hd89449006%_
                       _%tl89459009%_)
                      (let () (declare (not safe)) (_%g88398951%_)))))
              (let () (declare (not safe)) (_%g88398951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_))))))
                                (if (gx#stx-null? _%tl88819231%_)
                                    (_%__match1951119512%_
                                     _%e88459321%_
                                     _%hd88469325%_
                                     _%tl88479328%_
                                     _%e88489331%_
                                     _%hd88499335%_
                                     _%tl88509338%_
                                     _%e88799224%_
                                     _%hd88809228%_
                                     _%tl88819231%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88398951%_))))
                            (if (gx#stx-null? _%tl88819231%_)
                                (_%__match1951119512%_
                                 _%e88459321%_
                                 _%hd88469325%_
                                 _%tl88479328%_
                                 _%e88489331%_
                                 _%hd88499335%_
                                 _%tl88509338%_
                                 _%e88799224%_
                                 _%hd88809228%_
                                 _%tl88819231%_)
                                (if (gx#stx-pair? _%tl88819231%_)
                                    (let ((_%e89398988%_
                                           (gx#syntax-e _%tl88819231%_)))
                                      (let ((_%tl89418995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e89398988%_)))
                                            (_%hd89408992%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e89398988%_))))
                                        (if (gx#stx-datum? _%hd89408992%_)
                                            (let ((_%e89428998%_
                                                   (gx#stx-e _%hd89408992%_)))
                                              (if (equal? _%e89428998%_
                                                          'macro:)
                                                  (if (gx#stx-pair?
                                                       _%tl89418995%_)
                                                      (let ((_%e89439002%_
                                                             (gx#syntax-e
                                                              _%tl89418995%_)))
                                                        (let ((_%tl89459009%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e89439002%_)))
                      (_%hd89449006%_
                       (let () (declare (not safe)) (##car _%e89439002%_))))
                  (if (gx#stx-null? _%tl89459009%_)
                      (_%__match1954919550%_
                       _%e88459321%_
                       _%hd88469325%_
                       _%tl88479328%_
                       _%e88489331%_
                       _%hd88499335%_
                       _%tl88509338%_
                       _%e88799224%_
                       _%hd88809228%_
                       _%tl88819231%_
                       _%e89398988%_
                       _%hd89408992%_
                       _%tl89418995%_
                       _%e89428998%_
                       _%e89439002%_
                       _%hd89449006%_
                       _%tl89459009%_)
                      (let () (declare (not safe)) (_%g88398951%_)))))
              (let () (declare (not safe)) (_%g88398951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g88398951%_))))))
                      (if (gx#stx-null? _%tl88819231%_)
                          (_%__match1951119512%_
                           _%e88459321%_
                           _%hd88469325%_
                           _%tl88479328%_
                           _%e88489331%_
                           _%hd88499335%_
                           _%tl88509338%_
                           _%e88799224%_
                           _%hd88809228%_
                           _%tl88819231%_)
                          (if (gx#stx-pair? _%tl88819231%_)
                              (let ((_%e89398988%_
                                     (gx#syntax-e _%tl88819231%_)))
                                (let ((_%tl89418995%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e89398988%_)))
                                      (_%hd89408992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e89398988%_))))
                                  (if (gx#stx-datum? _%hd89408992%_)
                                      (let ((_%e89428998%_
                                             (gx#stx-e _%hd89408992%_)))
                                        (if (equal? _%e89428998%_ 'macro:)
                                            (if (gx#stx-pair? _%tl89418995%_)
                                                (let ((_%e89439002%_
                                                       (gx#syntax-e
                                                        _%tl89418995%_)))
                                                  (let ((_%tl89459009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e89439002%_)))
                                                        (_%hd89449006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e89439002%_))))
                                                    (if (gx#stx-null?
                                                         _%tl89459009%_)
                                                        (_%__match1954919550%_
                                                         _%e88459321%_
                                                         _%hd88469325%_
                                                         _%tl88479328%_
                                                         _%e88489331%_
                                                         _%hd88499335%_
                                                         _%tl88509338%_
                                                         _%e88799224%_
                                                         _%hd88809228%_
                                                         _%tl88819231%_
                                                         _%e89398988%_
                                                         _%hd89408992%_
                                                         _%tl89418995%_
                                                         _%e89428998%_
                                                         _%e89439002%_
                                                         _%hd89449006%_
                                                         _%tl89459009%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g88398951%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88398951%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g88398951%_)))))))
              (let () (declare (not safe)) (_%g88398951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%tl88509338%_)
                                              (let ((_%e88799224%_
                                                     (gx#syntax-e
                                                      _%tl88509338%_)))
                                                (let ((_%tl88819231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e88799224%_)))
                                                      (_%hd88809228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e88799224%_))))
                                                  (if (gx#stx-datum?
                                                       _%hd88809228%_)
                                                      (let ((_%e88829234%_
                                                             (gx#stx-e
                                                              _%hd88809228%_)))
                                                        (if (equal? _%e88829234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'macro:)
                    (if (gx#stx-pair? _%tl88819231%_)
                        (let ((_%e88839238%_ (gx#syntax-e _%tl88819231%_)))
                          (let ((_%tl88859245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e88839238%_)))
                                (_%hd88849242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e88839238%_))))
                            (if (gx#stx-pair/null? _%tl88859245%_)
                                (let ((_%__splice1937919380%_
                                       (gx#syntax-split-splice->vector
                                        _%tl88859245%_
                                        '0)))
                                  (let ((_%tl88889251%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1937919380%_
                                            '1)))
                                        (_%target88869248%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1937919380%_
                                            '0))))
                                    (if (gx#stx-null? _%tl88889251%_)
                                        (_%__match1946519466%_
                                         _%e88459321%_
                                         _%hd88469325%_
                                         _%tl88479328%_
                                         _%e88489331%_
                                         _%hd88499335%_
                                         _%tl88509338%_
                                         _%e88519341%_
                                         _%hd88529345%_
                                         _%tl88539348%_
                                         _%e88799224%_
                                         _%hd88809228%_
                                         _%tl88819231%_
                                         _%e88829234%_
                                         _%e88839238%_
                                         _%hd88849242%_
                                         _%tl88859245%_
                                         _%__splice1937919380%_
                                         _%target88869248%_
                                         _%tl88889251%_)
                                        (if (gx#stx-pair/null? _%tl88509338%_)
                                            (let ((_%__splice1938319384%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl88509338%_
                                                    '0)))
                                              (let ((_%tl89099131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1938319384%_
                                                        '1)))
                                                    (_%target89079128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1938319384%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl89099131%_)
                                                    (_%__match1949119492%_
                                                     _%e88459321%_
                                                     _%hd88469325%_
                                                     _%tl88479328%_
                                                     _%e88489331%_
                                                     _%hd88499335%_
                                                     _%tl88509338%_
                                                     _%e88519341%_
                                                     _%hd88529345%_
                                                     _%tl88539348%_
                                                     _%__splice1938319384%_
                                                     _%target89079128%_
                                                     _%tl89099131%_)
                                                    (if (gx#stx-datum?
                                                         _%hd88849242%_)
                                                        (let ((_%e89428998%_
                                                               (gx#stx-e
                                                                _%hd88849242%_)))
                                                          (if (equal? _%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'macro:)
                      (if (gx#stx-pair? _%tl88859245%_)
                          (let ((_%e89439002%_ (gx#syntax-e _%tl88859245%_)))
                            (let ((_%tl89459009%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89439002%_)))
                                  (_%hd89449006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89439002%_))))
                              (if (gx#stx-null? _%tl89459009%_)
                                  (_%__match1954919550%_
                                   _%e88459321%_
                                   _%hd88469325%_
                                   _%tl88479328%_
                                   _%e88489331%_
                                   _%hd88499335%_
                                   _%tl88509338%_
                                   _%e88799224%_
                                   _%hd88809228%_
                                   _%tl88819231%_
                                   _%e88839238%_
                                   _%hd88849242%_
                                   _%tl88859245%_
                                   _%e89428998%_
                                   _%e89439002%_
                                   _%hd89449006%_
                                   _%tl89459009%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g88398951%_)))))
                          (let () (declare (not safe)) (_%g88398951%_)))
                      (let () (declare (not safe)) (_%g88398951%_))))
                (let () (declare (not safe)) (_%g88398951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-datum? _%hd88849242%_)
                                                (let ((_%e89428998%_
                                                       (gx#stx-e
                                                        _%hd88849242%_)))
                                                  (if (equal? _%e89428998%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88859245%_)
                                                          (let ((_%e89439002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88859245%_)))
                    (let ((_%tl89459009%_
                           (let () (declare (not safe)) (##cdr _%e89439002%_)))
                          (_%hd89449006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89439002%_))))
                      (if (gx#stx-null? _%tl89459009%_)
                          (_%__match1954919550%_
                           _%e88459321%_
                           _%hd88469325%_
                           _%tl88479328%_
                           _%e88489331%_
                           _%hd88499335%_
                           _%tl88509338%_
                           _%e88799224%_
                           _%hd88809228%_
                           _%tl88819231%_
                           _%e88839238%_
                           _%hd88849242%_
                           _%tl88859245%_
                           _%e89428998%_
                           _%e89439002%_
                           _%hd89449006%_
                           _%tl89459009%_)
                          (let () (declare (not safe)) (_%g88398951%_)))))
                  (let () (declare (not safe)) (_%g88398951%_)))
              (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88398951%_)))))))
                                (if (gx#stx-pair/null? _%tl88509338%_)
                                    (let ((_%__splice1938319384%_
                                           (gx#syntax-split-splice->vector
                                            _%tl88509338%_
                                            '0)))
                                      (let ((_%tl89099131%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1938319384%_
                                                '1)))
                                            (_%target89079128%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice1938319384%_
                                                '0))))
                                        (if (gx#stx-null? _%tl89099131%_)
                                            (_%__match1949119492%_
                                             _%e88459321%_
                                             _%hd88469325%_
                                             _%tl88479328%_
                                             _%e88489331%_
                                             _%hd88499335%_
                                             _%tl88509338%_
                                             _%e88519341%_
                                             _%hd88529345%_
                                             _%tl88539348%_
                                             _%__splice1938319384%_
                                             _%target89079128%_
                                             _%tl89099131%_)
                                            (if (gx#stx-datum? _%hd88849242%_)
                                                (let ((_%e89428998%_
                                                       (gx#stx-e
                                                        _%hd88849242%_)))
                                                  (if (equal? _%e89428998%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl88859245%_)
                                                          (let ((_%e89439002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl88859245%_)))
                    (let ((_%tl89459009%_
                           (let () (declare (not safe)) (##cdr _%e89439002%_)))
                          (_%hd89449006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89439002%_))))
                      (if (gx#stx-null? _%tl89459009%_)
                          (_%__match1954919550%_
                           _%e88459321%_
                           _%hd88469325%_
                           _%tl88479328%_
                           _%e88489331%_
                           _%hd88499335%_
                           _%tl88509338%_
                           _%e88799224%_
                           _%hd88809228%_
                           _%tl88819231%_
                           _%e88839238%_
                           _%hd88849242%_
                           _%tl88859245%_
                           _%e89428998%_
                           _%e89439002%_
                           _%hd89449006%_
                           _%tl89459009%_)
                          (let () (declare (not safe)) (_%g88398951%_)))))
                  (let () (declare (not safe)) (_%g88398951%_)))
              (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88398951%_))))))
                                    (if (gx#stx-datum? _%hd88849242%_)
                                        (let ((_%e89428998%_
                                               (gx#stx-e _%hd88849242%_)))
                                          (if (equal? _%e89428998%_ 'macro:)
                                              (if (gx#stx-pair? _%tl88859245%_)
                                                  (let ((_%e89439002%_
                                                         (gx#syntax-e
                                                          _%tl88859245%_)))
                                                    (let ((_%tl89459009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89439002%_)))
                                                          (_%hd89449006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89439002%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89459009%_)
                                                          (_%__match1954919550%_
                                                           _%e88459321%_
                                                           _%hd88469325%_
                                                           _%tl88479328%_
                                                           _%e88489331%_
                                                           _%hd88499335%_
                                                           _%tl88509338%_
                                                           _%e88799224%_
                                                           _%hd88809228%_
                                                           _%tl88819231%_
                                                           _%e88839238%_
                                                           _%hd88849242%_
                                                           _%tl88859245%_
                                                           _%e89428998%_
                                                           _%e89439002%_
                                                           _%hd89449006%_
                                                           _%tl89459009%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88398951%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88398951%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88398951%_)))))))
                        (if (gx#stx-pair/null? _%tl88509338%_)
                            (let ((_%__splice1938319384%_
                                   (gx#syntax-split-splice->vector
                                    _%tl88509338%_
                                    '0)))
                              (let ((_%tl89099131%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1938319384%_
                                        '1)))
                                    (_%target89079128%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice1938319384%_
                                        '0))))
                                (if (gx#stx-null? _%tl89099131%_)
                                    (_%__match1949119492%_
                                     _%e88459321%_
                                     _%hd88469325%_
                                     _%tl88479328%_
                                     _%e88489331%_
                                     _%hd88499335%_
                                     _%tl88509338%_
                                     _%e88519341%_
                                     _%hd88529345%_
                                     _%tl88539348%_
                                     _%__splice1938319384%_
                                     _%target89079128%_
                                     _%tl89099131%_)
                                    (if (gx#stx-null? _%tl88819231%_)
                                        (_%__match1951119512%_
                                         _%e88459321%_
                                         _%hd88469325%_
                                         _%tl88479328%_
                                         _%e88489331%_
                                         _%hd88499335%_
                                         _%tl88509338%_
                                         _%e88799224%_
                                         _%hd88809228%_
                                         _%tl88819231%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g88398951%_))))))
                            (if (gx#stx-null? _%tl88819231%_)
                                (_%__match1951119512%_
                                 _%e88459321%_
                                 _%hd88469325%_
                                 _%tl88479328%_
                                 _%e88489331%_
                                 _%hd88499335%_
                                 _%tl88509338%_
                                 _%e88799224%_
                                 _%hd88809228%_
                                 _%tl88819231%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g88398951%_)))))
                    (if (gx#stx-pair/null? _%tl88509338%_)
                        (let ((_%__splice1938319384%_
                               (gx#syntax-split-splice->vector
                                _%tl88509338%_
                                '0)))
                          (let ((_%tl89099131%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1938319384%_ '1)))
                                (_%target89079128%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice1938319384%_ '0))))
                            (if (gx#stx-null? _%tl89099131%_)
                                (_%__match1949119492%_
                                 _%e88459321%_
                                 _%hd88469325%_
                                 _%tl88479328%_
                                 _%e88489331%_
                                 _%hd88499335%_
                                 _%tl88509338%_
                                 _%e88519341%_
                                 _%hd88529345%_
                                 _%tl88539348%_
                                 _%__splice1938319384%_
                                 _%target89079128%_
                                 _%tl89099131%_)
                                (if (gx#stx-null? _%tl88819231%_)
                                    (_%__match1951119512%_
                                     _%e88459321%_
                                     _%hd88469325%_
                                     _%tl88479328%_
                                     _%e88489331%_
                                     _%hd88499335%_
                                     _%tl88509338%_
                                     _%e88799224%_
                                     _%hd88809228%_
                                     _%tl88819231%_)
                                    (if (gx#stx-pair? _%tl88819231%_)
                                        (let ((_%e89398988%_
                                               (gx#syntax-e _%tl88819231%_)))
                                          (let ((_%tl89418995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e89398988%_)))
                                                (_%hd89408992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e89398988%_))))
                                            (if (gx#stx-datum? _%hd89408992%_)
                                                (let ((_%e89428998%_
                                                       (gx#stx-e
                                                        _%hd89408992%_)))
                                                  (if (equal? _%e89428998%_
                                                              'macro:)
                                                      (if (gx#stx-pair?
                                                           _%tl89418995%_)
                                                          (let ((_%e89439002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl89418995%_)))
                    (let ((_%tl89459009%_
                           (let () (declare (not safe)) (##cdr _%e89439002%_)))
                          (_%hd89449006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e89439002%_))))
                      (if (gx#stx-null? _%tl89459009%_)
                          (_%__match1954919550%_
                           _%e88459321%_
                           _%hd88469325%_
                           _%tl88479328%_
                           _%e88489331%_
                           _%hd88499335%_
                           _%tl88509338%_
                           _%e88799224%_
                           _%hd88809228%_
                           _%tl88819231%_
                           _%e89398988%_
                           _%hd89408992%_
                           _%tl89418995%_
                           _%e89428998%_
                           _%e89439002%_
                           _%hd89449006%_
                           _%tl89459009%_)
                          (let () (declare (not safe)) (_%g88398951%_)))))
                  (let () (declare (not safe)) (_%g88398951%_)))
              (let () (declare (not safe)) (_%g88398951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88398951%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88398951%_)))))))
                        (if (gx#stx-null? _%tl88819231%_)
                            (_%__match1951119512%_
                             _%e88459321%_
                             _%hd88469325%_
                             _%tl88479328%_
                             _%e88489331%_
                             _%hd88499335%_
                             _%tl88509338%_
                             _%e88799224%_
                             _%hd88809228%_
                             _%tl88819231%_)
                            (if (gx#stx-pair? _%tl88819231%_)
                                (let ((_%e89398988%_
                                       (gx#syntax-e _%tl88819231%_)))
                                  (let ((_%tl89418995%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e89398988%_)))
                                        (_%hd89408992%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e89398988%_))))
                                    (if (gx#stx-datum? _%hd89408992%_)
                                        (let ((_%e89428998%_
                                               (gx#stx-e _%hd89408992%_)))
                                          (if (equal? _%e89428998%_ 'macro:)
                                              (if (gx#stx-pair? _%tl89418995%_)
                                                  (let ((_%e89439002%_
                                                         (gx#syntax-e
                                                          _%tl89418995%_)))
                                                    (let ((_%tl89459009%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89439002%_)))
                                                          (_%hd89449006%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89439002%_))))
                                                      (if (gx#stx-null?
                                                           _%tl89459009%_)
                                                          (_%__match1954919550%_
                                                           _%e88459321%_
                                                           _%hd88469325%_
                                                           _%tl88479328%_
                                                           _%e88489331%_
                                                           _%hd88499335%_
                                                           _%tl88509338%_
                                                           _%e88799224%_
                                                           _%hd88809228%_
                                                           _%tl88819231%_
                                                           _%e89398988%_
                                                           _%hd89408992%_
                                                           _%tl89418995%_
                                                           _%e89428998%_
                                                           _%e89439002%_
                                                           _%hd89449006%_
                                                           _%tl89459009%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88398951%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g88398951%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88398951%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g88398951%_)))))))
              (if (gx#stx-pair/null? _%tl88509338%_)
                  (let ((_%__splice1938319384%_
                         (gx#syntax-split-splice->vector _%tl88509338%_ '0)))
                    (let ((_%tl89099131%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1938319384%_ '1)))
                          (_%target89079128%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice1938319384%_ '0))))
                      (if (gx#stx-null? _%tl89099131%_)
                          (_%__match1949119492%_
                           _%e88459321%_
                           _%hd88469325%_
                           _%tl88479328%_
                           _%e88489331%_
                           _%hd88499335%_
                           _%tl88509338%_
                           _%e88519341%_
                           _%hd88529345%_
                           _%tl88539348%_
                           _%__splice1938319384%_
                           _%target89079128%_
                           _%tl89099131%_)
                          (if (gx#stx-null? _%tl88819231%_)
                              (_%__match1951119512%_
                               _%e88459321%_
                               _%hd88469325%_
                               _%tl88479328%_
                               _%e88489331%_
                               _%hd88499335%_
                               _%tl88509338%_
                               _%e88799224%_
                               _%hd88809228%_
                               _%tl88819231%_)
                              (if (gx#stx-pair? _%tl88819231%_)
                                  (let ((_%e89398988%_
                                         (gx#syntax-e _%tl88819231%_)))
                                    (let ((_%tl89418995%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e89398988%_)))
                                          (_%hd89408992%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e89398988%_))))
                                      (if (gx#stx-datum? _%hd89408992%_)
                                          (let ((_%e89428998%_
                                                 (gx#stx-e _%hd89408992%_)))
                                            (if (equal? _%e89428998%_ 'macro:)
                                                (if (gx#stx-pair?
                                                     _%tl89418995%_)
                                                    (let ((_%e89439002%_
                                                           (gx#syntax-e
                                                            _%tl89418995%_)))
                                                      (let ((_%tl89459009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e89439002%_)))
                    (_%hd89449006%_
                     (let () (declare (not safe)) (##car _%e89439002%_))))
                (if (gx#stx-null? _%tl89459009%_)
                    (_%__match1954919550%_
                     _%e88459321%_
                     _%hd88469325%_
                     _%tl88479328%_
                     _%e88489331%_
                     _%hd88499335%_
                     _%tl88509338%_
                     _%e88799224%_
                     _%hd88809228%_
                     _%tl88819231%_
                     _%e89398988%_
                     _%hd89408992%_
                     _%tl89418995%_
                     _%e89428998%_
                     _%e89439002%_
                     _%hd89449006%_
                     _%tl89459009%_)
                    (let () (declare (not safe)) (_%g88398951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g88398951%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g88398951%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88398951%_)))))))
                  (if (gx#stx-null? _%tl88819231%_)
                      (_%__match1951119512%_
                       _%e88459321%_
                       _%hd88469325%_
                       _%tl88479328%_
                       _%e88489331%_
                       _%hd88499335%_
                       _%tl88509338%_
                       _%e88799224%_
                       _%hd88809228%_
                       _%tl88819231%_)
                      (if (gx#stx-pair? _%tl88819231%_)
                          (let ((_%e89398988%_ (gx#syntax-e _%tl88819231%_)))
                            (let ((_%tl89418995%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e89398988%_)))
                                  (_%hd89408992%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e89398988%_))))
                              (if (gx#stx-datum? _%hd89408992%_)
                                  (let ((_%e89428998%_
                                         (gx#stx-e _%hd89408992%_)))
                                    (if (equal? _%e89428998%_ 'macro:)
                                        (if (gx#stx-pair? _%tl89418995%_)
                                            (let ((_%e89439002%_
                                                   (gx#syntax-e
                                                    _%tl89418995%_)))
                                              (let ((_%tl89459009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e89439002%_)))
                                                    (_%hd89449006%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e89439002%_))))
                                                (if (gx#stx-null?
                                                     _%tl89459009%_)
                                                    (_%__match1954919550%_
                                                     _%e88459321%_
                                                     _%hd88469325%_
                                                     _%tl88479328%_
                                                     _%e88489331%_
                                                     _%hd88499335%_
                                                     _%tl88509338%_
                                                     _%e88799224%_
                                                     _%hd88809228%_
                                                     _%tl88819231%_
                                                     _%e89398988%_
                                                     _%hd89408992%_
                                                     _%tl89418995%_
                                                     _%e89428998%_
                                                     _%e89439002%_
                                                     _%hd89449006%_
                                                     _%tl89459009%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g88398951%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g88398951%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g88398951%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g88398951%_)))))
                          (let () (declare (not safe)) (_%g88398951%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl88509338%_)
                                                  (let ((_%__splice1938319384%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl88509338%_
                                                          '0)))
                                                    (let ((_%tl89099131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1938319384%_
                                                              '1)))
                                                          (_%target89079128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1938319384%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl89099131%_)
                                                          (_%__match1949119492%_
                                                           _%e88459321%_
                                                           _%hd88469325%_
                                                           _%tl88479328%_
                                                           _%e88489331%_
                                                           _%hd88499335%_
                                                           _%tl88509338%_
                                                           _%e88519341%_
                                                           _%hd88529345%_
                                                           _%tl88539348%_
                                                           _%__splice1938319384%_
                                                           _%target89079128%_
                                                           _%tl89099131%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g88398951%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_)))))))
                                  (if (gx#stx-pair? _%tl88509338%_)
                                      (let ((_%e89249064%_
                                             (gx#syntax-e _%tl88509338%_)))
                                        (let ((_%tl89269071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e89249064%_)))
                                              (_%hd89259068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e89249064%_))))
                                          (if (gx#stx-null? _%tl89269071%_)
                                              (_%__match1951119512%_
                                               _%e88459321%_
                                               _%hd88469325%_
                                               _%tl88479328%_
                                               _%e88489331%_
                                               _%hd88499335%_
                                               _%tl88509338%_
                                               _%e89249064%_
                                               _%hd89259068%_
                                               _%tl89269071%_)
                                              (if (gx#stx-pair? _%tl89269071%_)
                                                  (let ((_%e89398988%_
                                                         (gx#syntax-e
                                                          _%tl89269071%_)))
                                                    (let ((_%tl89418995%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e89398988%_)))
                                                          (_%hd89408992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e89398988%_))))
                                                      (if (gx#stx-datum?
                                                           _%hd89408992%_)
                                                          (let ((_%e89428998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%hd89408992%_)))
                    (if (equal? _%e89428998%_ 'macro:)
                        (if (gx#stx-pair? _%tl89418995%_)
                            (let ((_%e89439002%_ (gx#syntax-e _%tl89418995%_)))
                              (let ((_%tl89459009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e89439002%_)))
                                    (_%hd89449006%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e89439002%_))))
                                (if (gx#stx-null? _%tl89459009%_)
                                    (_%__match1954919550%_
                                     _%e88459321%_
                                     _%hd88469325%_
                                     _%tl88479328%_
                                     _%e88489331%_
                                     _%hd88499335%_
                                     _%tl88509338%_
                                     _%e89249064%_
                                     _%hd89259068%_
                                     _%tl89269071%_
                                     _%e89398988%_
                                     _%hd89408992%_
                                     _%tl89418995%_
                                     _%e89428998%_
                                     _%e89439002%_
                                     _%hd89449006%_
                                     _%tl89459009%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g88398951%_)))))
                            (let () (declare (not safe)) (_%g88398951%_)))
                        (let () (declare (not safe)) (_%g88398951%_))))
                  (let () (declare (not safe)) (_%g88398951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g88398951%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g88398951%_))))))
                          (let () (declare (not safe)) (_%g88398951%_)))))
                  (let () (declare (not safe)) (_%g88398951%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_%$stx9431%_)
        (let* ((_%g94359459%_
                (lambda (_%g94369455%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g94369455%_)))
               (_%g94349542%_
                (lambda (_%g94369463%_)
                  (if (gx#stx-pair? _%g94369463%_)
                      (let ((_%e94399466%_ (gx#syntax-e _%g94369463%_)))
                        (let ((_%hd94409470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e94399466%_)))
                              (_%tl94419473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e94399466%_))))
                          (if (gx#stx-pair? _%tl94419473%_)
                              (let ((_%e94429476%_
                                     (gx#syntax-e _%tl94419473%_)))
                                (let ((_%hd94439480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e94429476%_)))
                                      (_%tl94449483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e94429476%_))))
                                  (if (gx#stx-pair/null? _%tl94449483%_)
                                      (let ((_g21020_
                                             (gx#syntax-split-splice
                                              _%tl94449483%_
                                              '0)))
                                        (begin
                                          (let ((_g21021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21020_)
                                                       (##values-length
                                                        _g21020_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21021_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21021_)))
                                          (let ((_%target94459486%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21020_ 0)))
                                                (_%tl94479489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21020_ 1))))
                                            (if (gx#stx-null? _%tl94479489%_)
                                                (letrec ((_%loop94489492%_
                                                          (lambda (_%hd94469496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clauses94529499%_)
                    (if (gx#stx-pair? _%hd94469496%_)
                        (let ((_%e94499501%_ (gx#syntax-e _%hd94469496%_)))
                          (let ((_%lp-hd94509505%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e94499501%_)))
                                (_%lp-tl94519508%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e94499501%_))))
                            (_%loop94489492%_
                             _%lp-tl94519508%_
                             (cons _%lp-hd94509505%_ _%clauses94529499%_))))
                        (let ((_%clauses94539511%_
                               (reverse _%clauses94529499%_)))
                          ((lambda (_%g94379514%_ _%g94389516%_)
                             (if (gx#identifier? _%g94389516%_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _%g94389516%_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (foldr (lambda (_%g95339536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g95349539%_)
                          (cons _%g95339536%_ _%g95349539%_))
                        '()
                        _%g94379514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_%g94359459%_ _%g94369463%_)))
                           _%clauses94539511%_
                           _%hd94439480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop94489492%_
                                                   _%target94459486%_
                                                   '()))
                                                (_%g94359459%_
                                                 _%g94369463%_)))))
                                      (_%g94359459%_ _%g94369463%_))))
                              (_%g94359459%_ _%g94369463%_))))
                      (_%g94359459%_ _%g94369463%_)))))
          (_%g94349542%_ _%$stx9431%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_%$stx9547%_)
        (let* ((_%g95519569%_
                (lambda (_%g95529565%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g95529565%_)))
               (_%g95509624%_
                (lambda (_%g95529573%_)
                  (if (gx#stx-pair? _%g95529573%_)
                      (let ((_%e95559576%_ (gx#syntax-e _%g95529573%_)))
                        (let ((_%hd95569580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e95559576%_)))
                              (_%tl95579583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e95559576%_))))
                          (if (gx#stx-pair? _%tl95579583%_)
                              (let ((_%e95589586%_
                                     (gx#syntax-e _%tl95579583%_)))
                                (let ((_%hd95599590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e95589586%_)))
                                      (_%tl95609593%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e95589586%_))))
                                  (if (gx#stx-pair? _%tl95609593%_)
                                      (let ((_%e95619596%_
                                             (gx#syntax-e _%tl95609593%_)))
                                        (let ((_%hd95629600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e95619596%_)))
                                              (_%tl95639603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e95619596%_))))
                                          (if (gx#stx-null? _%tl95639603%_)
                                              ((lambda (_%g95539606%_
                                                        _%g95549608%_)
                                                 (if (gx#identifier-list?
                                                      _%g95549608%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _%g95549608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g95539606%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g95519569%_
                                                      _%g95529573%_)))
                                               _%hd95629600%_
                                               _%hd95599590%_)
                                              (_%g95519569%_ _%g95529573%_))))
                                      (_%g95519569%_ _%g95529573%_))))
                              (_%g95519569%_ _%g95529573%_))))
                      (_%g95519569%_ _%g95529573%_)))))
          (_%g95509624%_ _%$stx9547%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_%$stx9628%_)
        (let* ((_%g96329656%_
                (lambda (_%g96339652%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g96339652%_)))
               (_%g96319739%_
                (lambda (_%g96339660%_)
                  (if (gx#stx-pair? _%g96339660%_)
                      (let ((_%e96369663%_ (gx#syntax-e _%g96339660%_)))
                        (let ((_%hd96379667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e96369663%_)))
                              (_%tl96389670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e96369663%_))))
                          (if (gx#stx-pair? _%tl96389670%_)
                              (let ((_%e96399673%_
                                     (gx#syntax-e _%tl96389670%_)))
                                (let ((_%hd96409677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e96399673%_)))
                                      (_%tl96419680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e96399673%_))))
                                  (if (gx#stx-pair/null? _%tl96419680%_)
                                      (let ((_g21022_
                                             (gx#syntax-split-splice
                                              _%tl96419680%_
                                              '0)))
                                        (begin
                                          (let ((_g21023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21022_)
                                                       (##values-length
                                                        _g21022_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21023_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21023_)))
                                          (let ((_%target96429683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21022_ 0)))
                                                (_%tl96449686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21022_ 1))))
                                            (if (gx#stx-null? _%tl96449686%_)
                                                (letrec ((_%loop96459689%_
                                                          (lambda (_%hd96439693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause96499696%_)
                    (if (gx#stx-pair? _%hd96439693%_)
                        (let ((_%e96469698%_ (gx#syntax-e _%hd96439693%_)))
                          (let ((_%lp-hd96479702%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e96469698%_)))
                                (_%lp-tl96489705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e96469698%_))))
                            (_%loop96459689%_
                             _%lp-tl96489705%_
                             (cons _%lp-hd96479702%_ _%clause96499696%_))))
                        (let ((_%clause96509708%_
                               (reverse _%clause96499696%_)))
                          ((lambda (_%g96349711%_ _%g96359713%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _%g96359713%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_%g97309733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g97319736%_)
                            (cons _%g97309733%_ _%g97319736%_))
                          '()
                          _%g96349711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause96509708%_
                           _%hd96409677%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop96459689%_
                                                   _%target96429683%_
                                                   '()))
                                                (_%g96329656%_
                                                 _%g96339660%_)))))
                                      (_%g96329656%_ _%g96339660%_))))
                              (_%g96329656%_ _%g96339660%_))))
                      (_%g96329656%_ _%g96339660%_)))))
          (_%g96319739%_ _%$stx9628%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_%stx9744%_)
        (letrec ((_%parse-clauses9747%_
                  (lambda (_%e12204%_ _%clauses12206%_)
                    (let _%lp12208%_ ((_%rest12211%_ _%clauses12206%_)
                                      (_%datums12213%_ '())
                                      (_%dispatch12214%_ '())
                                      (_%default12215%_ '#f))
                      (let* ((_%__stx1964819649%_ _%rest12211%_)
                             (_%g1221812230%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1964819649%_))))
                        (let ((_%__kont1965119652%_
                               (lambda (_%g1222012262%_ _%g1222112264%_)
                                 (let* ((_%__stx1955219553%_ _%g1222112264%_)
                                        (_%g1228212355%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx1955219553%_))))
                                   (let ((_%__kont1955519556%_
                                          (lambda (_%g1228412712%_)
                                            (if (gx#stx-null? _%g1222012262%_)
                                                (let* ((_%g1272712735%_
                                                        (lambda (_%g1272812731%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1272812731%_)))
                                                       (_%g1272612754%_
                                                        (lambda (_%g1272812739%_)
                                                          ((lambda (_%g1272912742%_)
                                                             (_%lp12208%_
                                                              '()
                                                              _%datums12213%_
                                                              _%dispatch12214%_
                                                              (cons _%g1228412712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1272912742%_ '()))))
                   _%g1272812739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1272612754%_ _%e12204%_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9744%_
                                                 _%g1222112264%_))))
                                         (_%__kont1955719558%_
                                          (lambda (_%g1229412652%_)
                                            (if (gx#stx-null? _%g1222012262%_)
                                                (_%lp12208%_
                                                 '()
                                                 _%datums12213%_
                                                 _%dispatch12214%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1266612669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1266712672%_)
                        (cons _%g1266612669%_ _%g1266712672%_))
                      '()
                      _%g1229412652%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _%stx9744%_
                                                 _%g1222112264%_))))
                                         (_%__kont1956119562%_
                                          (lambda (_%g1230712539%_
                                                   _%g1230812541%_)
                                            (if (null? (foldr (lambda (_%g1255912562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1256012565%_)
                        (cons _%g1255912562%_ _%g1256012565%_))
                      '()
                      _%g1230812541%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12208%_
                                                 _%g1222012262%_
                                                 _%datums12213%_
                                                 _%dispatch12214%_
                                                 _%default12215%_)
                                                (let* ((_%g1256812576%_
                                                        (lambda (_%g1256912572%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g1256912572%_)))
                                                       (_%g1256712603%_
                                                        (lambda (_%g1256912580%_)
                                                          ((lambda (_%g1257012583%_)
                                                             (_%lp12208%_
                                                              _%g1222012262%_
                                                              (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (foldr (lambda (_%g1259412597%_
                                                 _%g1259512600%_)
                                          (cons _%g1259412597%_
                                                _%g1259512600%_))
                                        '()
                                        _%g1230812541%_))
                            _%datums12213%_)
                      (cons (cons _%g1230712539%_ (cons _%g1257012583%_ '()))
                            _%dispatch12214%_)
                      _%default12215%_))
                   _%g1256912580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1256712603%_
                                                   _%e12204%_)))))
                                         (_%__kont1956519566%_
                                          (lambda (_%g1232712428%_
                                                   _%g1232812430%_)
                                            (if (null? (foldr (lambda (_%g1244912452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1245012455%_)
                        (cons _%g1244912452%_ _%g1245012455%_))
                      '()
                      _%g1232812430%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%lp12208%_
                                                 _%g1222012262%_
                                                 _%datums12213%_
                                                 _%dispatch12214%_
                                                 _%default12215%_)
                                                (_%lp12208%_
                                                 _%g1222012262%_
                                                 (cons (map gx#stx-e
                                                            (foldr (lambda (_%g1245712460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1245812463%_)
                             (cons _%g1245712460%_ _%g1245812463%_))
                           '()
                           _%g1232812430%_))
               _%datums12213%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (foldr (lambda (_%g1246512468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1246612471%_)
                              (cons _%g1246512468%_ _%g1246612471%_))
                            '()
                            _%g1232712428%_))
               _%dispatch12214%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%default12215%_)))))
                                     (let* ((_%__match1964519646%_
                                             (lambda (_%e1232912362%_
                                                      _%hd1233012366%_
                                                      _%tl1233112369%_
                                                      _%__splice1956719568%_
                                                      _%target1233212372%_
                                                      _%tl1233412375%_)
                                               (letrec ((_%loop1233512378%_
                                                         (lambda (_%hd1233312382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1233912385%_)
                   (if (gx#stx-pair? _%hd1233312382%_)
                       (let ((_%e1233612387%_ (gx#syntax-e _%hd1233312382%_)))
                         (let ((_%lp-tl1233812394%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1233612387%_)))
                               (_%lp-hd1233712391%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1233612387%_))))
                           (_%loop1233512378%_
                            _%lp-tl1233812394%_
                            (cons _%lp-hd1233712391%_ _%datum1233912385%_))))
                       (let ((_%datum1234012397%_
                              (reverse _%datum1233912385%_)))
                         (if (gx#stx-pair/null? _%tl1233112369%_)
                             (let ((_%__splice1956919570%_
                                    (gx#syntax-split-splice->vector
                                     _%tl1233112369%_
                                     '0)))
                               (let ((_%tl1234312403%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1956919570%_
                                         '1)))
                                     (_%target1234112400%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice1956919570%_
                                         '0))))
                                 (if (gx#stx-null? _%tl1234312403%_)
                                     (letrec ((_%loop1234412406%_
                                               (lambda (_%hd1234212410%_
                                                        _%body1234812413%_)
                                                 (if (gx#stx-pair?
                                                      _%hd1234212410%_)
                                                     (let ((_%e1234512415%_
                                                            (gx#syntax-e
                                                             _%hd1234212410%_)))
                                                       (let ((_%lp-tl1234712422%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e1234512415%_)))
                     (_%lp-hd1234612419%_
                      (let () (declare (not safe)) (##car _%e1234512415%_))))
                 (_%loop1234412406%_
                  _%lp-tl1234712422%_
                  (cons _%lp-hd1234612419%_ _%body1234812413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%body1234912425%_
                                                            (reverse _%body1234812413%_)))
                                                       (_%__kont1956519566%_
                                                        _%body1234912425%_
                                                        _%datum1234012397%_))))))
                                       (_%loop1234412406%_
                                        _%target1234112400%_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_%g1228212355%_)))))
                             (let ()
                               (declare (not safe))
                               (_%g1228212355%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1233512378%_
                                                  _%target1233212372%_
                                                  '()))))
                                            (_%__match1963119632%_
                                             (lambda (_%e1230912481%_
                                                      _%hd1231012485%_
                                                      _%tl1231112488%_
                                                      _%__splice1956319564%_
                                                      _%target1231212491%_
                                                      _%tl1231412494%_)
                                               (letrec ((_%loop1231512497%_
                                                         (lambda (_%hd1231312501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%datum1231912504%_)
                   (if (gx#stx-pair? _%hd1231312501%_)
                       (let ((_%e1231612506%_ (gx#syntax-e _%hd1231312501%_)))
                         (let ((_%lp-tl1231812513%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1231612506%_)))
                               (_%lp-hd1231712510%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1231612506%_))))
                           (_%loop1231512497%_
                            _%lp-tl1231812513%_
                            (cons _%lp-hd1231712510%_ _%datum1231912504%_))))
                       (let ((_%datum1232012516%_
                              (reverse _%datum1231912504%_)))
                         (if (gx#stx-pair? _%tl1231112488%_)
                             (let ((_%e1232112519%_
                                    (gx#syntax-e _%tl1231112488%_)))
                               (let ((_%tl1232312526%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1232112519%_)))
                                     (_%hd1232212523%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1232112519%_))))
                                 (if (gx#identifier? _%hd1232212523%_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g21024_|
                                          _%hd1232212523%_)
                                         (if (gx#stx-pair? _%tl1232312526%_)
                                             (let ((_%e1232412529%_
                                                    (gx#syntax-e
                                                     _%tl1232312526%_)))
                                               (let ((_%tl1232612536%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1232412529%_)))
                                                     (_%hd1232512533%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1232412529%_))))
                                                 (if (gx#stx-null?
                                                      _%tl1232612536%_)
                                                     (_%__kont1956119562%_
                                                      _%hd1232512533%_
                                                      _%datum1232012516%_)
                                                     (_%__match1964519646%_
                                                      _%e1230912481%_
                                                      _%hd1231012485%_
                                                      _%tl1231112488%_
                                                      _%__splice1956319564%_
                                                      _%target1231212491%_
                                                      _%tl1231412494%_))))
                                             (_%__match1964519646%_
                                              _%e1230912481%_
                                              _%hd1231012485%_
                                              _%tl1231112488%_
                                              _%__splice1956319564%_
                                              _%target1231212491%_
                                              _%tl1231412494%_))
                                         (_%__match1964519646%_
                                          _%e1230912481%_
                                          _%hd1231012485%_
                                          _%tl1231112488%_
                                          _%__splice1956319564%_
                                          _%target1231212491%_
                                          _%tl1231412494%_))
                                     (_%__match1964519646%_
                                      _%e1230912481%_
                                      _%hd1231012485%_
                                      _%tl1231112488%_
                                      _%__splice1956319564%_
                                      _%target1231212491%_
                                      _%tl1231412494%_))))
                             (_%__match1964519646%_
                              _%e1230912481%_
                              _%hd1231012485%_
                              _%tl1231112488%_
                              _%__splice1956319564%_
                              _%target1231212491%_
                              _%tl1231412494%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1231512497%_
                                                  _%target1231212491%_
                                                  '()))))
                                            (_%__match1961719618%_
                                             (lambda (_%e1229512614%_
                                                      _%hd1229612618%_
                                                      _%tl1229712621%_
                                                      _%__splice1955919560%_
                                                      _%target1229812624%_
                                                      _%tl1230012627%_)
                                               (letrec ((_%loop1230112630%_
                                                         (lambda (_%hd1229912634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%body1230512637%_)
                   (if (gx#stx-pair? _%hd1229912634%_)
                       (let ((_%e1230212639%_ (gx#syntax-e _%hd1229912634%_)))
                         (let ((_%lp-tl1230412646%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e1230212639%_)))
                               (_%lp-hd1230312643%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e1230212639%_))))
                           (_%loop1230112630%_
                            _%lp-tl1230412646%_
                            (cons _%lp-hd1230312643%_ _%body1230512637%_))))
                       (let ((_%body1230612649%_ (reverse _%body1230512637%_)))
                         (_%__kont1955719558%_ _%body1230612649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop1230112630%_
                                                  _%target1229812624%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx1955219553%_)
                                           (let ((_%e1228512682%_
                                                  (gx#syntax-e
                                                   _%__stx1955219553%_)))
                                             (let ((_%tl1228712689%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e1228512682%_)))
                                                   (_%hd1228612686%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e1228512682%_))))
                                               (if (gx#identifier?
                                                    _%hd1228612686%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g21025_|
                                                        _%hd1228612686%_)
                                                       (if (gx#stx-pair?
                                                            _%tl1228712689%_)
                                                           (let ((_%e1228812692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl1228712689%_)))
                     (let ((_%tl1229012699%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1228812692%_)))
                           (_%hd1228912696%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1228812692%_))))
                       (if (gx#identifier? _%hd1228912696%_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g21026_|
                                _%hd1228912696%_)
                               (if (gx#stx-pair? _%tl1229012699%_)
                                   (let ((_%e1229112702%_
                                          (gx#syntax-e _%tl1229012699%_)))
                                     (let ((_%tl1229312709%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e1229112702%_)))
                                           (_%hd1229212706%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e1229112702%_))))
                                       (if (gx#stx-null? _%tl1229312709%_)
                                           (_%__kont1955519556%_
                                            _%hd1229212706%_)
                                           (if (gx#stx-pair/null?
                                                _%tl1228712689%_)
                                               (let ((_%__splice1955919560%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl1228712689%_
                                                       '0)))
                                                 (let ((_%tl1230012627%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1955919560%_
                                                           '1)))
                                                       (_%target1229812624%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1955919560%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1230012627%_)
                                                       (_%__match1961719618%_
                                                        _%e1228512682%_
                                                        _%hd1228612686%_
                                                        _%tl1228712689%_
                                                        _%__splice1955919560%_
                                                        _%target1229812624%_
                                                        _%tl1230012627%_)
                                                       (if (gx#stx-pair/null?
                                                            _%hd1228612686%_)
                                                           (let ((_%__splice1956319564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%hd1228612686%_
                           '0)))
                     (let ((_%tl1231412494%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '1)))
                           (_%target1231212491%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '0))))
                       (if (gx#stx-null? _%tl1231412494%_)
                           (_%__match1963119632%_
                            _%e1228512682%_
                            _%hd1228612686%_
                            _%tl1228712689%_
                            _%__splice1956319564%_
                            _%target1231212491%_
                            _%tl1231412494%_)
                           (let () (declare (not safe)) (_%g1228212355%_)))))
                   (let () (declare (not safe)) (_%g1228212355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%hd1228612686%_)
                                                   (let ((_%__splice1956319564%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1228612686%_
                                                           '0)))
                                                     (let ((_%tl1231412494%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '1)))
                                                           (_%target1231212491%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1231412494%_)
                                                           (_%__match1963119632%_
                                                            _%e1228512682%_
                                                            _%hd1228612686%_
                                                            _%tl1228712689%_
                                                            _%__splice1956319564%_
                                                            _%target1231212491%_
                                                            _%tl1231412494%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1228212355%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1228212355%_)))))))
                                   (if (gx#stx-pair/null? _%tl1228712689%_)
                                       (let ((_%__splice1955919560%_
                                              (gx#syntax-split-splice->vector
                                               _%tl1228712689%_
                                               '0)))
                                         (let ((_%tl1230012627%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1955919560%_
                                                   '1)))
                                               (_%target1229812624%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1955919560%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1230012627%_)
                                               (_%__match1961719618%_
                                                _%e1228512682%_
                                                _%hd1228612686%_
                                                _%tl1228712689%_
                                                _%__splice1955919560%_
                                                _%target1229812624%_
                                                _%tl1230012627%_)
                                               (if (gx#stx-pair/null?
                                                    _%hd1228612686%_)
                                                   (let ((_%__splice1956319564%_
                                                          (gx#syntax-split-splice->vector
                                                           _%hd1228612686%_
                                                           '0)))
                                                     (let ((_%tl1231412494%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '1)))
                                                           (_%target1231212491%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice1956319564%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl1231412494%_)
                                                           (_%__match1963119632%_
                                                            _%e1228512682%_
                                                            _%hd1228612686%_
                                                            _%tl1228712689%_
                                                            _%__splice1956319564%_
                                                            _%target1231212491%_
                                                            _%tl1231412494%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g1228212355%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1228212355%_))))))
                                       (if (gx#stx-pair/null? _%hd1228612686%_)
                                           (let ((_%__splice1956319564%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1228612686%_
                                                   '0)))
                                             (let ((_%tl1231412494%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '1)))
                                                   (_%target1231212491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1231412494%_)
                                                   (_%__match1963119632%_
                                                    _%e1228512682%_
                                                    _%hd1228612686%_
                                                    _%tl1228712689%_
                                                    _%__splice1956319564%_
                                                    _%target1231212491%_
                                                    _%tl1231412494%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1228212355%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1228212355%_)))))
                               (if (gx#stx-pair/null? _%tl1228712689%_)
                                   (let ((_%__splice1955919560%_
                                          (gx#syntax-split-splice->vector
                                           _%tl1228712689%_
                                           '0)))
                                     (let ((_%tl1230012627%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1955919560%_
                                               '1)))
                                           (_%target1229812624%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1955919560%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1230012627%_)
                                           (_%__match1961719618%_
                                            _%e1228512682%_
                                            _%hd1228612686%_
                                            _%tl1228712689%_
                                            _%__splice1955919560%_
                                            _%target1229812624%_
                                            _%tl1230012627%_)
                                           (if (gx#stx-pair/null?
                                                _%hd1228612686%_)
                                               (let ((_%__splice1956319564%_
                                                      (gx#syntax-split-splice->vector
                                                       _%hd1228612686%_
                                                       '0)))
                                                 (let ((_%tl1231412494%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956319564%_
                                                           '1)))
                                                       (_%target1231212491%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice1956319564%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl1231412494%_)
                                                       (_%__match1963119632%_
                                                        _%e1228512682%_
                                                        _%hd1228612686%_
                                                        _%tl1228712689%_
                                                        _%__splice1956319564%_
                                                        _%target1231212491%_
                                                        _%tl1231412494%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g1228212355%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1228212355%_))))))
                                   (if (gx#stx-pair/null? _%hd1228612686%_)
                                       (let ((_%__splice1956319564%_
                                              (gx#syntax-split-splice->vector
                                               _%hd1228612686%_
                                               '0)))
                                         (let ((_%tl1231412494%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956319564%_
                                                   '1)))
                                               (_%target1231212491%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice1956319564%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl1231412494%_)
                                               (_%__match1963119632%_
                                                _%e1228512682%_
                                                _%hd1228612686%_
                                                _%tl1228712689%_
                                                _%__splice1956319564%_
                                                _%target1231212491%_
                                                _%tl1231412494%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g1228212355%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g1228212355%_)))))
                           (if (gx#stx-pair/null? _%tl1228712689%_)
                               (let ((_%__splice1955919560%_
                                      (gx#syntax-split-splice->vector
                                       _%tl1228712689%_
                                       '0)))
                                 (let ((_%tl1230012627%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1955919560%_
                                           '1)))
                                       (_%target1229812624%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice1955919560%_
                                           '0))))
                                   (if (gx#stx-null? _%tl1230012627%_)
                                       (_%__match1961719618%_
                                        _%e1228512682%_
                                        _%hd1228612686%_
                                        _%tl1228712689%_
                                        _%__splice1955919560%_
                                        _%target1229812624%_
                                        _%tl1230012627%_)
                                       (if (gx#stx-pair/null? _%hd1228612686%_)
                                           (let ((_%__splice1956319564%_
                                                  (gx#syntax-split-splice->vector
                                                   _%hd1228612686%_
                                                   '0)))
                                             (let ((_%tl1231412494%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '1)))
                                                   (_%target1231212491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice1956319564%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl1231412494%_)
                                                   (_%__match1963119632%_
                                                    _%e1228512682%_
                                                    _%hd1228612686%_
                                                    _%tl1228712689%_
                                                    _%__splice1956319564%_
                                                    _%target1231212491%_
                                                    _%tl1231412494%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g1228212355%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g1228212355%_))))))
                               (if (gx#stx-pair/null? _%hd1228612686%_)
                                   (let ((_%__splice1956319564%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1228612686%_
                                           '0)))
                                     (let ((_%tl1231412494%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '1)))
                                           (_%target1231212491%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1231412494%_)
                                           (_%__match1963119632%_
                                            _%e1228512682%_
                                            _%hd1228612686%_
                                            _%tl1228712689%_
                                            _%__splice1956319564%_
                                            _%target1231212491%_
                                            _%tl1231412494%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1228212355%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1228212355%_)))))))
                   (if (gx#stx-pair/null? _%tl1228712689%_)
                       (let ((_%__splice1955919560%_
                              (gx#syntax-split-splice->vector
                               _%tl1228712689%_
                               '0)))
                         (let ((_%tl1230012627%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1955919560%_ '1)))
                               (_%target1229812624%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice1955919560%_ '0))))
                           (if (gx#stx-null? _%tl1230012627%_)
                               (_%__match1961719618%_
                                _%e1228512682%_
                                _%hd1228612686%_
                                _%tl1228712689%_
                                _%__splice1955919560%_
                                _%target1229812624%_
                                _%tl1230012627%_)
                               (if (gx#stx-pair/null? _%hd1228612686%_)
                                   (let ((_%__splice1956319564%_
                                          (gx#syntax-split-splice->vector
                                           _%hd1228612686%_
                                           '0)))
                                     (let ((_%tl1231412494%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '1)))
                                           (_%target1231212491%_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               _%__splice1956319564%_
                                               '0))))
                                       (if (gx#stx-null? _%tl1231412494%_)
                                           (_%__match1963119632%_
                                            _%e1228512682%_
                                            _%hd1228612686%_
                                            _%tl1228712689%_
                                            _%__splice1956319564%_
                                            _%target1231212491%_
                                            _%tl1231412494%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g1228212355%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g1228212355%_))))))
                       (if (gx#stx-pair/null? _%hd1228612686%_)
                           (let ((_%__splice1956319564%_
                                  (gx#syntax-split-splice->vector
                                   _%hd1228612686%_
                                   '0)))
                             (let ((_%tl1231412494%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956319564%_
                                       '1)))
                                   (_%target1231212491%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice1956319564%_
                                       '0))))
                               (if (gx#stx-null? _%tl1231412494%_)
                                   (_%__match1963119632%_
                                    _%e1228512682%_
                                    _%hd1228612686%_
                                    _%tl1228712689%_
                                    _%__splice1956319564%_
                                    _%target1231212491%_
                                    _%tl1231412494%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g1228212355%_)))))
                           (let () (declare (not safe)) (_%g1228212355%_)))))
               (if (gx#stx-pair/null? _%hd1228612686%_)
                   (let ((_%__splice1956319564%_
                          (gx#syntax-split-splice->vector
                           _%hd1228612686%_
                           '0)))
                     (let ((_%tl1231412494%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '1)))
                           (_%target1231212491%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice1956319564%_ '0))))
                       (if (gx#stx-null? _%tl1231412494%_)
                           (_%__match1963119632%_
                            _%e1228512682%_
                            _%hd1228612686%_
                            _%tl1228712689%_
                            _%__splice1956319564%_
                            _%target1231212491%_
                            _%tl1231412494%_)
                           (let () (declare (not safe)) (_%g1228212355%_)))))
                   (let () (declare (not safe)) (_%g1228212355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%hd1228612686%_)
                                                       (let ((_%__splice1956319564%_
                                                              (gx#syntax-split-splice->vector
                                                               _%hd1228612686%_
                                                               '0)))
                                                         (let ((_%tl1231412494%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice1956319564%_ '1)))
                       (_%target1231212491%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice1956319564%_ '0))))
                   (if (gx#stx-null? _%tl1231412494%_)
                       (_%__match1963119632%_
                        _%e1228512682%_
                        _%hd1228612686%_
                        _%tl1228712689%_
                        _%__splice1956319564%_
                        _%target1231212491%_
                        _%tl1231412494%_)
                       (let () (declare (not safe)) (_%g1228212355%_)))))
               (let () (declare (not safe)) (_%g1228212355%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_%g1228212355%_))))))))
                              (_%__kont1965319654%_
                               (lambda ()
                                 (_%check-duplicate-datums9749%_
                                  _%datums12213%_)
                                 (values (reverse _%datums12213%_)
                                         (reverse _%dispatch12214%_)
                                         (let ((_%$e12241%_ _%default12215%_))
                                           (if _%$e12241%_
                                               _%$e12241%_
                                               '#!void))))))
                          (let ((_%g1221712245%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx1964819649%_)
                                       (_%__kont1965319654%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g1221812230%_))))))
                            (if (gx#stx-pair? _%__stx1964819649%_)
                                (let ((_%e1222212252%_
                                       (gx#syntax-e _%__stx1964819649%_)))
                                  (let ((_%tl1222412259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1222212252%_)))
                                        (_%hd1222312256%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1222212252%_))))
                                    (_%__kont1965119652%_
                                     _%tl1222412259%_
                                     _%hd1222312256%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g1221712245%_)))))))))
                 (_%check-duplicate-datums9749%_
                  (lambda (_%datums12192%_)
                    (let ((_%ht12195%_ (make-hash-table)))
                      (for-each
                       (lambda (_%lst12198%_)
                         (for-each
                          (lambda (_%datum12201%_)
                            (if (hash-get _%ht12195%_ _%datum12201%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _%stx9744%_
                                 _%datum12201%_)
                                (hash-put! _%ht12195%_ _%datum12201%_ '#t)))
                          _%lst12198%_))
                       _%datums12192%_))))
                 (_%count-datums9750%_
                  (lambda (_%datums12185%_)
                    (foldl (lambda (_%lst12188%_ _%r12190%_)
                             (+ (length _%lst12188%_) _%r12190%_))
                           '0
                           _%datums12185%_)))
                 (_%symbolic-datums?9751%_
                  (lambda (_%datums12179%_)
                    (andmap (lambda (_%lst12182%_)
                              (andmap symbol? _%lst12182%_))
                            _%datums12179%_)))
                 (_%char-datums?9752%_
                  (lambda (_%datums12173%_)
                    (andmap (lambda (_%lst12176%_) (andmap char? _%lst12176%_))
                            _%datums12173%_)))
                 (_%fixnum-datums?9753%_
                  (lambda (_%datums12167%_)
                    (andmap (lambda (_%lst12170%_)
                              (andmap fixnum? _%lst12170%_))
                            _%datums12167%_)))
                 (_%eq-datums?9754%_
                  (lambda (_%datums12150%_)
                    (andmap (lambda (_%lst12153%_)
                              (andmap (lambda (_%x12156%_)
                                        (let ((_%$e12159%_
                                               (symbol? _%x12156%_)))
                                          (if _%$e12159%_
                                              _%$e12159%_
                                              (let ((_%$e12163%_
                                                     (keyword? _%x12156%_)))
                                                (if _%$e12163%_
                                                    _%$e12163%_
                                                    (immediate?
                                                     _%x12156%_))))))
                                      _%lst12153%_))
                            _%datums12150%_)))
                 (_%generate-simple-case9755%_
                  (lambda (_%e11916%_
                           _%datums11918%_
                           _%dispatch11919%_
                           _%default11920%_)
                    (let* ((_%g1192211930%_
                            (lambda (_%g1192311926%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1192311926%_)))
                           (_%g1192112146%_
                            (lambda (_%g1192311934%_)
                              ((lambda (_%g1192411937%_)
                                 (let _%recur11949%_ ((_%datums11952%_
                                                       _%datums11918%_)
                                                      (_%dispatch11954%_
                                                       _%dispatch11919%_))
                                   (let* ((_%__stx1966619667%_ _%datums11952%_)
                                          (_%g1195711978%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx1966619667%_))))
                                     (let ((_%__kont1966919670%_
                                            (lambda (_%g1195912034%_
                                                     _%g1196012036%_)
                                              (let* ((_%g1205612068%_
                                                      (lambda (_%g1205712064%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g1205712064%_)))
                                                     (_%g1205512138%_
                                                      (lambda (_%g1205712072%_)
                                                        (if (gx#stx-pair?
                                                             _%g1205712072%_)
                                                            (let ((_%e1206012075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%g1205712072%_)))
                      (let ((_%hd1206112079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1206012075%_)))
                            (_%tl1206212082%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1206012075%_))))
                        ((lambda (_%g1205812085%_ _%g1205912087%_)
                           (let* ((_%g1209912107%_
                                   (lambda (_%g1210012103%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g1210012103%_)))
                                  (_%g1209812134%_
                                   (lambda (_%g1210012111%_)
                                     ((lambda (_%g1210112114%_)
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'or)
                                                          (foldr (lambda (_%g1212512128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g1212612131%_)
                           (cons (cons (gx#datum->syntax '#f '~case-test)
                                       (cons _%g1212512128%_
                                             (cons _%g1192411937%_ '())))
                                 _%g1212612131%_))
                         '()
                         _%g1196012036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%g1205912087%_
                                                          (cons _%g1210112114%_
                                                                '())))))
                                      _%g1210012111%_))))
                             (_%g1209812134%_
                              (_%recur11949%_
                               _%g1195912034%_
                               _%g1205812085%_))))
                         _%tl1206212082%_
                         _%hd1206112079%_)))
                    (_%g1205612068%_ _%g1205712072%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1205512138%_
                                                 _%dispatch11954%_))))
                                           (_%__kont1967319674%_
                                            (lambda () _%default11920%_)))
                                       (let ((_%__match1968919690%_
                                              (lambda (_%e1196111996%_
                                                       _%hd1196212000%_
                                                       _%tl1196312003%_
                                                       _%__splice1967119672%_
                                                       _%target1196412006%_
                                                       _%tl1196612009%_)
                                                (letrec ((_%loop1196712012%_
                                                          (lambda (_%hd1196512016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%datum1197112019%_)
                    (if (gx#stx-pair? _%hd1196512016%_)
                        (let ((_%e1196812021%_ (gx#syntax-e _%hd1196512016%_)))
                          (let ((_%lp-tl1197012028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1196812021%_)))
                                (_%lp-hd1196912025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1196812021%_))))
                            (_%loop1196712012%_
                             _%lp-tl1197012028%_
                             (cons _%lp-hd1196912025%_ _%datum1197112019%_))))
                        (let ((_%datum1197212031%_
                               (reverse _%datum1197112019%_)))
                          (_%__kont1966919670%_
                           _%tl1196312003%_
                           _%datum1197212031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1196712012%_
                                                   _%target1196412006%_
                                                   '())))))
                                         (if (gx#stx-pair? _%__stx1966619667%_)
                                             (let ((_%e1196111996%_
                                                    (gx#syntax-e
                                                     _%__stx1966619667%_)))
                                               (let ((_%tl1196312003%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1196111996%_)))
                                                     (_%hd1196212000%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1196111996%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%hd1196212000%_)
                                                     (let ((_%__splice1967119672%_
                                                            (gx#syntax-split-splice->vector
                                                             _%hd1196212000%_
                                                             '0)))
                                                       (let ((_%tl1196612009%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice1967119672%_ '1)))
                     (_%target1196412006%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice1967119672%_ '0))))
                 (if (gx#stx-null? _%tl1196612009%_)
                     (_%__match1968919690%_
                      _%e1196111996%_
                      _%hd1196212000%_
                      _%tl1196312003%_
                      _%__splice1967119672%_
                      _%target1196412006%_
                      _%tl1196612009%_)
                     (_%__kont1967319674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont1967319674%_))))
                                             (_%__kont1967319674%_)))))))
                               _%g1192311934%_))))
                      (_%g1192112146%_ _%e11916%_))))
                 (_%datum-dispatch-index9756%_
                  (lambda (_%datums11790%_)
                    (let _%lp11793%_ ((_%rest11796%_ _%datums11790%_)
                                      (_%ix11798%_ '0)
                                      (_%r11799%_ '()))
                      (let* ((_%__stx1969219693%_ _%rest11796%_)
                             (_%g1180211823%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx1969219693%_))))
                        (let ((_%__kont1969519696%_
                               (lambda (_%g1180411879%_ _%g1180511881%_)
                                 (_%lp11793%_
                                  _%g1180411879%_
                                  (fx1+ _%ix11798%_)
                                  (foldl (lambda (_%x11900%_ _%r11902%_)
                                           (cons (cons _%x11900%_ _%ix11798%_)
                                                 _%r11902%_))
                                         _%r11799%_
                                         (foldr (lambda (_%g1190311906%_
                                                         _%g1190411909%_)
                                                  (cons _%g1190311906%_
                                                        _%g1190411909%_))
                                                '()
                                                _%g1180511881%_)))))
                              (_%__kont1969919700%_ (lambda () _%r11799%_)))
                          (let ((_%__match1971519716%_
                                 (lambda (_%e1180611841%_
                                          _%hd1180711845%_
                                          _%tl1180811848%_
                                          _%__splice1969719698%_
                                          _%target1180911851%_
                                          _%tl1181111854%_)
                                   (letrec ((_%loop1181211857%_
                                             (lambda (_%hd1181011861%_
                                                      _%datum1181611864%_)
                                               (if (gx#stx-pair?
                                                    _%hd1181011861%_)
                                                   (let ((_%e1181311866%_
                                                          (gx#syntax-e
                                                           _%hd1181011861%_)))
                                                     (let ((_%lp-tl1181511873%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e1181311866%_)))
                                                           (_%lp-hd1181411870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e1181311866%_))))
                                                       (_%loop1181211857%_
                                                        _%lp-tl1181511873%_
                                                        (cons _%lp-hd1181411870%_
                                                              _%datum1181611864%_))))
                                                   (let ((_%datum1181711876%_
                                                          (reverse _%datum1181611864%_)))
                                                     (_%__kont1969519696%_
                                                      _%tl1180811848%_
                                                      _%datum1181711876%_))))))
                                     (_%loop1181211857%_
                                      _%target1180911851%_
                                      '())))))
                            (if (gx#stx-pair? _%__stx1969219693%_)
                                (let ((_%e1180611841%_
                                       (gx#syntax-e _%__stx1969219693%_)))
                                  (let ((_%tl1180811848%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1180611841%_)))
                                        (_%hd1180711845%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1180611841%_))))
                                    (if (gx#stx-pair/null? _%hd1180711845%_)
                                        (let ((_%__splice1969719698%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1180711845%_
                                                '0)))
                                          (let ((_%tl1181111854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969719698%_
                                                    '1)))
                                                (_%target1180911851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice1969719698%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1181111854%_)
                                                (_%__match1971519716%_
                                                 _%e1180611841%_
                                                 _%hd1180711845%_
                                                 _%tl1180811848%_
                                                 _%__splice1969719698%_
                                                 _%target1180911851%_
                                                 _%tl1181111854%_)
                                                (_%__kont1969919700%_))))
                                        (_%__kont1969919700%_))))
                                (_%__kont1969919700%_))))))))
                 (_%duplicate-indexes?9757%_
                  (lambda (_%xs11771%_)
                    (let ((_%ht11774%_ (make-hash-table-eq)))
                      (let _%lp11777%_ ((_%rest11780%_ _%xs11771%_))
                        (if (pair? _%rest11780%_)
                            (let* ((_%ix11783%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest11780%_)))
                                   (_%$e11786%_
                                    (hash-get _%ht11774%_ _%ix11783%_)))
                              (if _%$e11786%_
                                  _%$e11786%_
                                  (begin
                                    (hash-put! _%ht11774%_ _%ix11783%_ '#t)
                                    (_%lp11777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest11780%_))))))
                            '#f)))))
                 (_%generate-hash-dispatch-table9758%_
                  (lambda (_%indexes11740%_ _%hash-e11742%_)
                    (let _%lp11744%_ ((_%len11747%_
                                       (* '2 (length _%indexes11740%_))))
                      (let* ((_%hs11753%_
                              (map (lambda (_%x11750%_)
                                     (_%hash-e11742%_ (car _%x11750%_)))
                                   _%indexes11740%_))
                             (_%xs11759%_
                              (map (lambda (_%h11756%_)
                                     (fxmodulo _%h11756%_ _%len11747%_))
                                   _%hs11753%_)))
                        (if (_%duplicate-indexes?9757%_ _%xs11759%_)
                            (if (< _%len11747%_ '131072)
                                (_%lp11744%_
                                 (quotient
                                  (let ()
                                    (declare (not safe))
                                    (##fx* _%len11747%_ '3))
                                  '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _%stx9744%_
                                 _%indexes11740%_))
                            (let ((_%tab11764%_
                                   (make-vector _%len11747%_ '#f)))
                              (for-each
                               (lambda (_%entry11767%_ _%x11769%_)
                                 (vector-set!
                                  _%tab11764%_
                                  _%x11769%_
                                  _%entry11767%_))
                               _%indexes11740%_
                               _%xs11759%_)
                              _%tab11764%_))))))
                 (_%generate-symbolic-dispatch9759%_
                  (lambda (_%e11345%_
                           _%datums11347%_
                           _%dispatch11348%_
                           _%default11349%_)
                    (let* ((_%indexes11351%_
                            (_%datum-dispatch-index9756%_ _%datums11347%_))
                           (_%tab11354%_
                            (_%generate-hash-dispatch-table9758%_
                             _%indexes11351%_
                             symbol-hash)))
                      (if (= (length _%dispatch11348%_) '1)
                          (let* ((_%tab11362%_
                                  (vector-map
                                   (lambda (_%x11359%_)
                                     (if _%x11359%_ (car _%x11359%_) '#f))
                                   _%tab11354%_))
                                 (_%g1136511403%_
                                  (lambda (_%g1136611399%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1136611399%_)))
                                 (_%g1136411534%_
                                  (lambda (_%g1136611407%_)
                                    (if (gx#stx-pair? _%g1136611407%_)
                                        (let ((_%e1137411410%_
                                               (gx#syntax-e _%g1136611407%_)))
                                          (let ((_%hd1137511414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1137411410%_)))
                                                (_%tl1137611417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1137411410%_))))
                                            (if (gx#stx-pair? _%tl1137611417%_)
                                                (let ((_%e1137711420%_
                                                       (gx#syntax-e
                                                        _%tl1137611417%_)))
                                                  (let ((_%hd1137811424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1137711420%_)))
                                                        (_%tl1137911427%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1137711420%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1137911427%_)
                                                        (let ((_%e1138011430%_
                                                               (gx#syntax-e
                                                                _%tl1137911427%_)))
                                                          (let ((_%hd1138111434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1138011430%_)))
                        (_%tl1138211437%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1138011430%_))))
                    (if (gx#stx-pair? _%tl1138211437%_)
                        (let ((_%e1138311440%_ (gx#syntax-e _%tl1138211437%_)))
                          (let ((_%hd1138411444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1138311440%_)))
                                (_%tl1138511447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1138311440%_))))
                            (if (gx#stx-pair? _%hd1138411444%_)
                                (let ((_%e1138611450%_
                                       (gx#syntax-e _%hd1138411444%_)))
                                  (let ((_%hd1138711454%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1138611450%_)))
                                        (_%tl1138811457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1138611450%_))))
                                    (if (gx#stx-null? _%tl1138811457%_)
                                        (if (gx#stx-pair? _%tl1138511447%_)
                                            (let ((_%e1138911460%_
                                                   (gx#syntax-e
                                                    _%tl1138511447%_)))
                                              (let ((_%hd1139011464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1138911460%_)))
                                                    (_%tl1139111467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1138911460%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1139111467%_)
                                                    (let ((_%e1139211470%_
                                                           (gx#syntax-e
                                                            _%tl1139111467%_)))
                                                      (let ((_%hd1139311474%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1139211470%_)))
                    (_%tl1139411477%_
                     (let () (declare (not safe)) (##cdr _%e1139211470%_))))
                (if (gx#stx-pair? _%tl1139411477%_)
                    (let ((_%e1139511480%_ (gx#syntax-e _%tl1139411477%_)))
                      (let ((_%hd1139611484%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1139511480%_)))
                            (_%tl1139711487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1139511480%_))))
                        (if (gx#stx-null? _%tl1139711487%_)
                            ((lambda (_%g1136711490%_
                                      _%g1136811492%_
                                      _%g1136911493%_
                                      _%g1137011494%_
                                      _%g1137111495%_
                                      _%g1137211496%_
                                      _%g1137311497%_)
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%g1137211496%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _%g1136911493%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%g1137111495%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1136811492%_ '()))
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
                           (cons _%g1137311497%_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let*)
                                 (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##symbol-hash)
                                                               (cons _%g1137311497%_
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
                                   (cons _%g1136711490%_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'q)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##vector-ref)
                                   (cons _%g1137111495%_
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
                             (cons _%g1137311497%_ '())))
                 (cons _%g1137011494%_ (cons (cons _%g1137211496%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _%g1137211496%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                             _%hd1139611484%_
                             _%hd1139311474%_
                             _%hd1139011464%_
                             _%hd1138711454%_
                             _%hd1138111434%_
                             _%hd1137811424%_
                             _%hd1137511414%_)
                            (_%g1136511403%_ _%g1136611407%_))))
                    (_%g1136511403%_ _%g1136611407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1136511403%_
                                                     _%g1136611407%_))))
                                            (_%g1136511403%_ _%g1136611407%_))
                                        (_%g1136511403%_ _%g1136611407%_))))
                                (_%g1136511403%_ _%g1136611407%_))))
                        (_%g1136511403%_ _%g1136611407%_))))
                (_%g1136511403%_ _%g1136611407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1136511403%_
                                                 _%g1136611407%_))))
                                        (_%g1136511403%_ _%g1136611407%_)))))
                            (_%g1136411534%_
                             (list _%e11345%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11348%_
                                   _%default11349%_
                                   _%tab11362%_
                                   (vector-length _%tab11362%_))))
                          (let* ((_%g1153811582%_
                                  (lambda (_%g1153911578%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1153911578%_)))
                                 (_%g1153711736%_
                                  (lambda (_%g1153911586%_)
                                    (if (gx#stx-pair? _%g1153911586%_)
                                        (let ((_%e1154711589%_
                                               (gx#syntax-e _%g1153911586%_)))
                                          (let ((_%hd1154811593%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1154711589%_)))
                                                (_%tl1154911596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1154711589%_))))
                                            (if (gx#stx-pair? _%tl1154911596%_)
                                                (let ((_%e1155011599%_
                                                       (gx#syntax-e
                                                        _%tl1154911596%_)))
                                                  (let ((_%hd1155111603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1155011599%_)))
                                                        (_%tl1155211606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1155011599%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl1155211606%_)
                                                        (let ((_%e1155311609%_
                                                               (gx#syntax-e
                                                                _%tl1155211606%_)))
                                                          (let ((_%hd1155411613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1155311609%_)))
                        (_%tl1155511616%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1155311609%_))))
                    (if (gx#stx-pair? _%tl1155511616%_)
                        (let ((_%e1155611619%_ (gx#syntax-e _%tl1155511616%_)))
                          (let ((_%hd1155711623%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1155611619%_)))
                                (_%tl1155811626%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1155611619%_))))
                            (if (gx#stx-pair/null? _%hd1155711623%_)
                                (let ((_g21027_
                                       (gx#syntax-split-splice
                                        _%hd1155711623%_
                                        '0)))
                                  (begin
                                    (let ((_g21028_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21027_)
                                                 (##values-length _g21027_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21028_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21028_)))
                                    (let ((_%target1155911629%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21027_ 0)))
                                          (_%tl1156111632%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21027_ 1))))
                                      (if (gx#stx-null? _%tl1156111632%_)
                                          (letrec ((_%loop1156211635%_
                                                    (lambda (_%hd1156011639%_
                                                             _%dispatch1156611642%_)
                                                      (if (gx#stx-pair?
                                                           _%hd1156011639%_)
                                                          (let ((_%e1156311644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd1156011639%_)))
                    (let ((_%lp-hd1156411648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1156311644%_)))
                          (_%lp-tl1156511651%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1156311644%_))))
                      (_%loop1156211635%_
                       _%lp-tl1156511651%_
                       (cons _%lp-hd1156411648%_ _%dispatch1156611642%_))))
                  (let ((_%dispatch1156711654%_
                         (reverse _%dispatch1156611642%_)))
                    (if (gx#stx-pair? _%tl1155811626%_)
                        (let ((_%e1156811657%_ (gx#syntax-e _%tl1155811626%_)))
                          (let ((_%hd1156911661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1156811657%_)))
                                (_%tl1157011664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1156811657%_))))
                            (if (gx#stx-pair? _%tl1157011664%_)
                                (let ((_%e1157111667%_
                                       (gx#syntax-e _%tl1157011664%_)))
                                  (let ((_%hd1157211671%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1157111667%_)))
                                        (_%tl1157311674%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1157111667%_))))
                                    (if (gx#stx-pair? _%tl1157311674%_)
                                        (let ((_%e1157411677%_
                                               (gx#syntax-e _%tl1157311674%_)))
                                          (let ((_%hd1157511681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1157411677%_)))
                                                (_%tl1157611684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1157411677%_))))
                                            (if (gx#stx-null? _%tl1157611684%_)
                                                ((lambda (_%g1154011687%_
                                                          _%g1154111689%_
                                                          _%g1154211690%_
                                                          _%g1154311691%_
                                                          _%g1154411692%_
                                                          _%g1154511693%_
                                                          _%g1154611694%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _%g1154511693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons _%g1154211690%_
                                                           '())))
                                         '()))
                             (cons (cons _%g1154411692%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1154111689%_
                                                           '()))
                                               '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f 'symbol?)
                                               (cons _%g1154611694%_ '()))
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
                                           (cons _%g1154611694%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'ix)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##fxmodulo)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'h)
                                                       (cons _%g1154011687%_
                                                             '())))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _%g1154411692%_
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
                           (cons _%g1154611694%_ '())))
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
                                                   (foldr (lambda (_%g1172711730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1172811733%_)
                    (cons _%g1172711730%_ _%g1172811733%_))
                  '()
                  _%g1154311691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons (cons _%g1154511693%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1154511693%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1154511693%_ '())
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd1157511681%_
                                                 _%hd1157211671%_
                                                 _%hd1156911661%_
                                                 _%dispatch1156711654%_
                                                 _%hd1155411613%_
                                                 _%hd1155111603%_
                                                 _%hd1154811593%_)
                                                (_%g1153811582%_
                                                 _%g1153911586%_))))
                                        (_%g1153811582%_ _%g1153911586%_))))
                                (_%g1153811582%_ _%g1153911586%_))))
                        (_%g1153811582%_ _%g1153911586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop1156211635%_
                                             _%target1155911629%_
                                             '()))
                                          (_%g1153811582%_ _%g1153911586%_)))))
                                (_%g1153811582%_ _%g1153911586%_))))
                        (_%g1153811582%_ _%g1153911586%_))))
                (_%g1153811582%_ _%g1153911586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1153811582%_
                                                 _%g1153911586%_))))
                                        (_%g1153811582%_ _%g1153911586%_)))))
                            (_%g1153711736%_
                             (list _%e11345%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch11348%_
                                   _%default11349%_
                                   _%tab11354%_
                                   (vector-length _%tab11354%_))))))))
                 (_%max-char9760%_
                  (lambda (_%datums11334%_)
                    (foldl (lambda (_%lst11337%_ _%r11339%_)
                             (foldl (lambda (_%char11341%_ _%r11343%_)
                                      (max (char->integer _%char11341%_)
                                           _%r11343%_))
                                    _%r11339%_
                                    _%lst11337%_))
                           '0
                           _%datums11334%_)))
                 (_%generate-char-dispatch-table9761%_
                  (lambda (_%indexes11313%_)
                    (let* ((_%ixs11319%_
                            (map (lambda (_%x11316%_)
                                   (char->integer (car _%x11316%_)))
                                 _%indexes11313%_))
                           (_%len11322%_ (fx1+ (foldl max '0 _%ixs11319%_)))
                           (_%vec11325%_ (make-vector _%len11322%_ '#f)))
                      (for-each
                       (lambda (_%entry11330%_ _%x11332%_)
                         (vector-set!
                          _%vec11325%_
                          _%x11332%_
                          (cdr _%entry11330%_)))
                       _%indexes11313%_
                       _%ixs11319%_)
                      _%vec11325%_)))
                 (_%simple-char-range?9762%_
                  (lambda (_%tab11289%_)
                    (let ((_%end11292%_ (vector-length _%tab11289%_)))
                      (let _%lp11295%_ ((_%i11298%_ '0))
                        (let ((_%ix11301%_
                               (vector-ref _%tab11289%_ _%i11298%_)))
                          (if _%ix11301%_
                              (let _%lp211304%_ ((_%i11307%_
                                                  (fx1+ _%i11298%_)))
                                (if (fx< _%i11307%_ _%end11292%_)
                                    (let ((_%ix*11310%_
                                           (vector-ref
                                            _%tab11289%_
                                            _%i11307%_)))
                                      (if (eq? _%ix11301%_ _%ix*11310%_)
                                          (_%lp211304%_ (fx1+ _%i11307%_))
                                          '#f))
                                    '#t))
                              (_%lp11295%_ (fx1+ _%i11298%_))))))))
                 (_%char-range-start9763%_
                  (lambda (_%tab11280%_)
                    (let _%lp11283%_ ((_%i11286%_ '0))
                      (if (vector-ref _%tab11280%_ _%i11286%_)
                          _%i11286%_
                          (_%lp11283%_ (fx1+ _%i11286%_))))))
                 (_%generate-char-dispatch9764%_
                  (lambda (_%e10905%_
                           _%datums10907%_
                           _%dispatch10908%_
                           _%default10909%_)
                    (if (< (_%max-char9760%_ _%datums10907%_) '128)
                        (let* ((_%indexes10911%_
                                (_%datum-dispatch-index9756%_ _%datums10907%_))
                               (_%tab10914%_
                                (_%generate-char-dispatch-table9761%_
                                 _%indexes10911%_)))
                          (if (_%simple-char-range?9762%_ _%tab10914%_)
                              (let ((_%start10919%_
                                     (_%char-range-start9763%_ _%tab10914%_))
                                    (_%end10921%_
                                     (vector-length _%tab10914%_)))
                                (let* ((_%g1092310957%_
                                        (lambda (_%g1092410953%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g1092410953%_)))
                                       (_%g1092211074%_
                                        (lambda (_%g1092410961%_)
                                          (if (gx#stx-pair? _%g1092410961%_)
                                              (let ((_%e1093110964%_
                                                     (gx#syntax-e
                                                      _%g1092410961%_)))
                                                (let ((_%hd1093210968%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1093110964%_)))
                                                      (_%tl1093310971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1093110964%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1093310971%_)
                                                      (let ((_%e1093410974%_
                                                             (gx#syntax-e
                                                              _%tl1093310971%_)))
                                                        (let ((_%hd1093510978%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1093410974%_)))
                      (_%tl1093610981%_
                       (let () (declare (not safe)) (##cdr _%e1093410974%_))))
                  (if (gx#stx-pair? _%tl1093610981%_)
                      (let ((_%e1093710984%_ (gx#syntax-e _%tl1093610981%_)))
                        (let ((_%hd1093810988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1093710984%_)))
                              (_%tl1093910991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1093710984%_))))
                          (if (gx#stx-pair? _%hd1093810988%_)
                              (let ((_%e1094010994%_
                                     (gx#syntax-e _%hd1093810988%_)))
                                (let ((_%hd1094110998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1094010994%_)))
                                      (_%tl1094211001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1094010994%_))))
                                  (if (gx#stx-null? _%tl1094211001%_)
                                      (if (gx#stx-pair? _%tl1093910991%_)
                                          (let ((_%e1094311004%_
                                                 (gx#syntax-e
                                                  _%tl1093910991%_)))
                                            (let ((_%hd1094411008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1094311004%_)))
                                                  (_%tl1094511011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1094311004%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1094511011%_)
                                                  (let ((_%e1094611014%_
                                                         (gx#syntax-e
                                                          _%tl1094511011%_)))
                                                    (let ((_%hd1094711018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1094611014%_)))
                                                          (_%tl1094811021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1094611014%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1094811021%_)
                                                          (let ((_%e1094911024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1094811021%_)))
                    (let ((_%hd1095011028%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1094911024%_)))
                          (_%tl1095111031%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1094911024%_))))
                      (if (gx#stx-null? _%tl1095111031%_)
                          ((lambda (_%g1092511034%_
                                    _%g1092611036%_
                                    _%g1092711037%_
                                    _%g1092811038%_
                                    _%g1092911039%_
                                    _%g1093011040%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons _%g1092911039%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g1092711037%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'char?)
                         (cons _%g1093011040%_ '()))
                   (cons (cons (gx#datum->syntax '#f 'let)
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##char->integer)
                                                       (cons _%g1093011040%_
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
                                       (cons _%g1092611036%_ '())))
                           (cons (cons (gx#datum->syntax '#f '##fx<)
                                       (cons (gx#datum->syntax '#f 'ix)
                                             (cons _%g1092511034%_ '())))
                                 '())))
               (cons _%g1092811038%_ (cons (cons _%g1092911039%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons _%g1092911039%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%hd1095011028%_
                           _%hd1094711018%_
                           _%hd1094411008%_
                           _%hd1094110998%_
                           _%hd1093510978%_
                           _%hd1093210968%_)
                          (_%g1092310957%_ _%g1092410961%_))))
                  (_%g1092310957%_ _%g1092410961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1092310957%_
                                                   _%g1092410961%_))))
                                          (_%g1092310957%_ _%g1092410961%_))
                                      (_%g1092310957%_ _%g1092410961%_))))
                              (_%g1092310957%_ _%g1092410961%_))))
                      (_%g1092310957%_ _%g1092410961%_))))
              (_%g1092310957%_ _%g1092410961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1092310957%_
                                               _%g1092410961%_)))))
                                  (_%g1092211074%_
                                   (list _%e10905%_
                                         (gx#genident 'default)
                                         _%dispatch10908%_
                                         _%default10909%_
                                         _%start10919%_
                                         _%end10921%_))))
                              (let* ((_%g1107811122%_
                                      (lambda (_%g1107911118%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g1107911118%_)))
                                     (_%g1107711276%_
                                      (lambda (_%g1107911126%_)
                                        (if (gx#stx-pair? _%g1107911126%_)
                                            (let ((_%e1108711129%_
                                                   (gx#syntax-e
                                                    _%g1107911126%_)))
                                              (let ((_%hd1108811133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1108711129%_)))
                                                    (_%tl1108911136%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1108711129%_))))
                                                (if (gx#stx-pair?
                                                     _%tl1108911136%_)
                                                    (let ((_%e1109011139%_
                                                           (gx#syntax-e
                                                            _%tl1108911136%_)))
                                                      (let ((_%hd1109111143%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1109011139%_)))
                    (_%tl1109211146%_
                     (let () (declare (not safe)) (##cdr _%e1109011139%_))))
                (if (gx#stx-pair? _%tl1109211146%_)
                    (let ((_%e1109311149%_ (gx#syntax-e _%tl1109211146%_)))
                      (let ((_%hd1109411153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1109311149%_)))
                            (_%tl1109511156%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1109311149%_))))
                        (if (gx#stx-pair? _%tl1109511156%_)
                            (let ((_%e1109611159%_
                                   (gx#syntax-e _%tl1109511156%_)))
                              (let ((_%hd1109711163%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1109611159%_)))
                                    (_%tl1109811166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1109611159%_))))
                                (if (gx#stx-pair/null? _%hd1109711163%_)
                                    (let ((_g21029_
                                           (gx#syntax-split-splice
                                            _%hd1109711163%_
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
                                        (let ((_%target1109911169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21029_ 0)))
                                              (_%tl1110111172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g21029_ 1))))
                                          (if (gx#stx-null? _%tl1110111172%_)
                                              (letrec ((_%loop1110211175%_
                                                        (lambda (_%hd1110011179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%dispatch1110611182%_)
                  (if (gx#stx-pair? _%hd1110011179%_)
                      (let ((_%e1110311184%_ (gx#syntax-e _%hd1110011179%_)))
                        (let ((_%lp-hd1110411188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1110311184%_)))
                              (_%lp-tl1110511191%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1110311184%_))))
                          (_%loop1110211175%_
                           _%lp-tl1110511191%_
                           (cons _%lp-hd1110411188%_ _%dispatch1110611182%_))))
                      (let ((_%dispatch1110711194%_
                             (reverse _%dispatch1110611182%_)))
                        (if (gx#stx-pair? _%tl1109811166%_)
                            (let ((_%e1110811197%_
                                   (gx#syntax-e _%tl1109811166%_)))
                              (let ((_%hd1110911201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1110811197%_)))
                                    (_%tl1111011204%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1110811197%_))))
                                (if (gx#stx-pair? _%tl1111011204%_)
                                    (let ((_%e1111111207%_
                                           (gx#syntax-e _%tl1111011204%_)))
                                      (let ((_%hd1111211211%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1111111207%_)))
                                            (_%tl1111311214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1111111207%_))))
                                        (if (gx#stx-pair? _%tl1111311214%_)
                                            (let ((_%e1111411217%_
                                                   (gx#syntax-e
                                                    _%tl1111311214%_)))
                                              (let ((_%hd1111511221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1111411217%_)))
                                                    (_%tl1111611224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1111411217%_))))
                                                (if (gx#stx-null?
                                                     _%tl1111611224%_)
                                                    ((lambda (_%g1108011227%_
                                                              _%g1108111229%_
                                                              _%g1108211230%_
                                                              _%g1108311231%_
                                                              _%g1108411232%_
                                                              _%g1108511233%_
                                                              _%g1108611234%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _%g1108511233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons '()
                                                         (cons _%g1108211230%_
                                                               '())))
                                             '()))
                                 (cons (cons _%g1108411232%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _%g1108111229%_
                                                               '()))
                                                   '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'char?)
                                                   (cons _%g1108611234%_ '()))
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
                                         (cons _%g1108611234%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons (gx#datum->syntax '#f '##fx<)
                                               (cons (gx#datum->syntax '#f 'ix)
                                                     (cons _%g1108011227%_
                                                           '())))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'x)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _%g1108411232%_
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
                                                       (foldr (lambda (_%g1126711270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1126811273%_)
                        (cons _%g1126711270%_ _%g1126811273%_))
                      '()
                      _%g1108311231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons _%g1108511233%_ '())
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%g1108511233%_ '())
                                                     '()))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _%g1108511233%_
                                                               '())
                                                         '()))))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd1111511221%_
                                                     _%hd1111211211%_
                                                     _%hd1110911201%_
                                                     _%dispatch1110711194%_
                                                     _%hd1109411153%_
                                                     _%hd1109111143%_
                                                     _%hd1108811133%_)
                                                    (_%g1107811122%_
                                                     _%g1107911126%_))))
                                            (_%g1107811122%_
                                             _%g1107911126%_))))
                                    (_%g1107811122%_ _%g1107911126%_))))
                            (_%g1107811122%_ _%g1107911126%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop1110211175%_
                                                 _%target1109911169%_
                                                 '()))
                                              (_%g1107811122%_
                                               _%g1107911126%_)))))
                                    (_%g1107811122%_ _%g1107911126%_))))
                            (_%g1107811122%_ _%g1107911126%_))))
                    (_%g1107811122%_ _%g1107911126%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g1107811122%_
                                                     _%g1107911126%_))))
                                            (_%g1107811122%_
                                             _%g1107911126%_)))))
                                (_%g1107711276%_
                                 (list _%e10905%_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _%dispatch10908%_
                                       _%default10909%_
                                       _%tab10914%_
                                       (vector-length _%tab10914%_))))))
                        (_%generate-char-dispatch/hash9765%_
                         _%e10905%_
                         _%datums10907%_
                         _%dispatch10908%_
                         _%default10909%_))))
                 (_%generate-char-dispatch/hash9765%_
                  (lambda (_%e10685%_
                           _%datums10687%_
                           _%dispatch10688%_
                           _%default10689%_)
                    (let* ((_%indexes10691%_
                            (_%datum-dispatch-index9756%_ _%datums10687%_))
                           (_%tab10694%_
                            (_%generate-hash-dispatch-table9758%_
                             _%indexes10691%_
                             char->integer))
                           (_%g1069910743%_
                            (lambda (_%g1070010739%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1070010739%_)))
                           (_%g1069810901%_
                            (lambda (_%g1070010747%_)
                              (if (gx#stx-pair? _%g1070010747%_)
                                  (let ((_%e1070810750%_
                                         (gx#syntax-e _%g1070010747%_)))
                                    (let ((_%hd1070910754%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1070810750%_)))
                                          (_%tl1071010757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1070810750%_))))
                                      (if (gx#stx-pair? _%tl1071010757%_)
                                          (let ((_%e1071110760%_
                                                 (gx#syntax-e
                                                  _%tl1071010757%_)))
                                            (let ((_%hd1071210764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1071110760%_)))
                                                  (_%tl1071310767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1071110760%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1071310767%_)
                                                  (let ((_%e1071410770%_
                                                         (gx#syntax-e
                                                          _%tl1071310767%_)))
                                                    (let ((_%hd1071510774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1071410770%_)))
                                                          (_%tl1071610777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1071410770%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1071610777%_)
                                                          (let ((_%e1071710780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1071610777%_)))
                    (let ((_%hd1071810784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1071710780%_)))
                          (_%tl1071910787%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1071710780%_))))
                      (if (gx#stx-pair/null? _%hd1071810784%_)
                          (let ((_g21031_
                                 (gx#syntax-split-splice _%hd1071810784%_ '0)))
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
                              (let ((_%target1072010790%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21031_ 0)))
                                    (_%tl1072210793%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21031_ 1))))
                                (if (gx#stx-null? _%tl1072210793%_)
                                    (letrec ((_%loop1072310796%_
                                              (lambda (_%hd1072110800%_
                                                       _%dispatch1072710803%_)
                                                (if (gx#stx-pair?
                                                     _%hd1072110800%_)
                                                    (let ((_%e1072410805%_
                                                           (gx#syntax-e
                                                            _%hd1072110800%_)))
                                                      (let ((_%lp-hd1072510809%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1072410805%_)))
                    (_%lp-tl1072610812%_
                     (let () (declare (not safe)) (##cdr _%e1072410805%_))))
                (_%loop1072310796%_
                 _%lp-tl1072610812%_
                 (cons _%lp-hd1072510809%_ _%dispatch1072710803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1072810815%_
                                                           (reverse _%dispatch1072710803%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1071910787%_)
                                                          (let ((_%e1072910818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1071910787%_)))
                    (let ((_%hd1073010822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1072910818%_)))
                          (_%tl1073110825%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1072910818%_))))
                      (if (gx#stx-pair? _%tl1073110825%_)
                          (let ((_%e1073210828%_
                                 (gx#syntax-e _%tl1073110825%_)))
                            (let ((_%hd1073310832%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1073210828%_)))
                                  (_%tl1073410835%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1073210828%_))))
                              (if (gx#stx-pair? _%tl1073410835%_)
                                  (let ((_%e1073510838%_
                                         (gx#syntax-e _%tl1073410835%_)))
                                    (let ((_%hd1073610842%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1073510838%_)))
                                          (_%tl1073710845%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1073510838%_))))
                                      (if (gx#stx-null? _%tl1073710845%_)
                                          ((lambda (_%g1070110848%_
                                                    _%g1070210850%_
                                                    _%g1070310851%_
                                                    _%g1070410852%_
                                                    _%g1070510853%_
                                                    _%g1070610854%_
                                                    _%g1070710855%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1070610854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1070310851%_ '())))
                                   '()))
                       (cons (cons _%g1070510853%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1070210850%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'char?)
                                         (cons _%g1070710855%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'h)
                         (cons (cons (gx#datum->syntax '#f '##char->integer)
                                     (cons _%g1070710855%_ '()))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'ix)
                               (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                           (cons (gx#datum->syntax '#f 'h)
                                                 (cons _%g1070110848%_ '())))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'q)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '##vector-ref)
                                                 (cons _%g1070510853%_
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
                     (cons _%g1070710855%_ '())))
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
                                             (foldr (lambda (_%g1089210895%_
                                                             _%g1089310898%_)
                                                      (cons _%g1089210895%_
                                                            _%g1089310898%_))
                                                    '()
                                                    _%g1070410852%_)))
                                 '())))
               (cons (cons _%g1070610854%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1070610854%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1070610854%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1073610842%_
                                           _%hd1073310832%_
                                           _%hd1073010822%_
                                           _%dispatch1072810815%_
                                           _%hd1071510774%_
                                           _%hd1071210764%_
                                           _%hd1070910754%_)
                                          (_%g1069910743%_ _%g1070010747%_))))
                                  (_%g1069910743%_ _%g1070010747%_))))
                          (_%g1069910743%_ _%g1070010747%_))))
                  (_%g1069910743%_ _%g1070010747%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1072310796%_
                                       _%target1072010790%_
                                       '()))
                                    (_%g1069910743%_ _%g1070010747%_)))))
                          (_%g1069910743%_ _%g1070010747%_))))
                  (_%g1069910743%_ _%g1070010747%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1069910743%_
                                                   _%g1070010747%_))))
                                          (_%g1069910743%_ _%g1070010747%_))))
                                  (_%g1069910743%_ _%g1070010747%_)))))
                      (_%g1069810901%_
                       (list _%e10685%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10688%_
                             _%default10689%_
                             _%tab10694%_
                             (vector-length _%tab10694%_))))))
                 (_%min-fixnum9766%_
                  (lambda (_%datums10678%_)
                    (foldl (lambda (_%lst10681%_ _%r10683%_)
                             (foldl min _%r10683%_ _%lst10681%_))
                           ##max-fixnum
                           _%datums10678%_)))
                 (_%max-fixnum9767%_
                  (lambda (_%datums10671%_)
                    (foldl (lambda (_%lst10674%_ _%r10676%_)
                             (foldl max _%r10676%_ _%lst10674%_))
                           ##min-fixnum
                           _%datums10671%_)))
                 (_%generate-fixnum-dispatch-table9768%_
                  (lambda (_%indexes10653%_)
                    (let* ((_%ixs10656%_ (map car _%indexes10653%_))
                           (_%len10659%_ (fx1+ (foldl max '0 _%ixs10656%_)))
                           (_%vec10662%_ (make-vector _%len10659%_ '#f)))
                      (for-each
                       (lambda (_%entry10667%_ _%x10669%_)
                         (vector-set!
                          _%vec10662%_
                          _%x10669%_
                          (cdr _%entry10667%_)))
                       _%indexes10653%_
                       _%ixs10656%_)
                      _%vec10662%_)))
                 (_%generate-fixnum-dispatch9769%_
                  (lambda (_%e10389%_
                           _%datums10391%_
                           _%dispatch10392%_
                           _%default10393%_)
                    (if (and (>= (_%min-fixnum9766%_ _%datums10391%_) '0)
                             (< (_%max-fixnum9767%_ _%datums10391%_) '1024))
                        (let* ((_%indexes10395%_
                                (_%datum-dispatch-index9756%_ _%datums10391%_))
                               (_%tab10398%_
                                (_%generate-fixnum-dispatch-table9768%_
                                 _%indexes10395%_))
                               (_%dense?10401%_
                                (andmap values (vector->list _%tab10398%_)))
                               (_%g1040610450%_
                                (lambda (_%g1040710446%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g1040710446%_)))
                               (_%g1040510649%_
                                (lambda (_%g1040710454%_)
                                  (if (gx#stx-pair? _%g1040710454%_)
                                      (let ((_%e1041510457%_
                                             (gx#syntax-e _%g1040710454%_)))
                                        (let ((_%hd1041610461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1041510457%_)))
                                              (_%tl1041710464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1041510457%_))))
                                          (if (gx#stx-pair? _%tl1041710464%_)
                                              (let ((_%e1041810467%_
                                                     (gx#syntax-e
                                                      _%tl1041710464%_)))
                                                (let ((_%hd1041910471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1041810467%_)))
                                                      (_%tl1042010474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1041810467%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl1042010474%_)
                                                      (let ((_%e1042110477%_
                                                             (gx#syntax-e
                                                              _%tl1042010474%_)))
                                                        (let ((_%hd1042210481%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e1042110477%_)))
                      (_%tl1042310484%_
                       (let () (declare (not safe)) (##cdr _%e1042110477%_))))
                  (if (gx#stx-pair? _%tl1042310484%_)
                      (let ((_%e1042410487%_ (gx#syntax-e _%tl1042310484%_)))
                        (let ((_%hd1042510491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1042410487%_)))
                              (_%tl1042610494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1042410487%_))))
                          (if (gx#stx-pair/null? _%hd1042510491%_)
                              (let ((_g21033_
                                     (gx#syntax-split-splice
                                      _%hd1042510491%_
                                      '0)))
                                (begin
                                  (let ((_g21034_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g21033_)
                                               (##values-length _g21033_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g21034_ 2)))
                                        (error "Context expects 2 values"
                                               _g21034_)))
                                  (let ((_%target1042710497%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21033_ 0)))
                                        (_%tl1042910500%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g21033_ 1))))
                                    (if (gx#stx-null? _%tl1042910500%_)
                                        (letrec ((_%loop1043010503%_
                                                  (lambda (_%hd1042810507%_
                                                           _%dispatch1043410510%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1042810507%_)
                                                        (let ((_%e1043110512%_
                                                               (gx#syntax-e
                                                                _%hd1042810507%_)))
                                                          (let ((_%lp-hd1043210516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e1043110512%_)))
                        (_%lp-tl1043310519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e1043110512%_))))
                    (_%loop1043010503%_
                     _%lp-tl1043310519%_
                     (cons _%lp-hd1043210516%_ _%dispatch1043410510%_))))
                (let ((_%dispatch1043510522%_
                       (reverse _%dispatch1043410510%_)))
                  (if (gx#stx-pair? _%tl1042610494%_)
                      (let ((_%e1043610525%_ (gx#syntax-e _%tl1042610494%_)))
                        (let ((_%hd1043710529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1043610525%_)))
                              (_%tl1043810532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1043610525%_))))
                          (if (gx#stx-pair? _%tl1043810532%_)
                              (let ((_%e1043910535%_
                                     (gx#syntax-e _%tl1043810532%_)))
                                (let ((_%hd1044010539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1043910535%_)))
                                      (_%tl1044110542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1043910535%_))))
                                  (if (gx#stx-pair? _%tl1044110542%_)
                                      (let ((_%e1044210545%_
                                             (gx#syntax-e _%tl1044110542%_)))
                                        (let ((_%hd1044310549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1044210545%_)))
                                              (_%tl1044410552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1044210545%_))))
                                          (if (gx#stx-null? _%tl1044410552%_)
                                              ((lambda (_%g1040810555%_
                                                        _%g1040910557%_
                                                        _%g1041010558%_
                                                        _%g1041110559%_
                                                        _%g1041210560%_
                                                        _%g1041310561%_
                                                        _%g1041410562%_)
                                                 (let* ((_%g1060110609%_
                                                         (lambda (_%g1060210605%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g1060210605%_)))
                                                        (_%g1060010629%_
                                                         (lambda (_%g1060210613%_)
                                                           ((lambda (_%g1060310616%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'let)
                            (cons (cons (cons _%g1041310561%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%g1041010558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons _%g1041210560%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g1040910557%_ '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  (cons (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'fixnum?)
                                                          (cons _%g1041410562%_
                                                                '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons (gx#datum->syntax '#f 'and)
                                    (cons (cons (gx#datum->syntax '#f '##fx>=)
                                                (cons _%g1041410562%_
                                                      (cons '0 '())))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx<)
                                                      (cons _%g1041410562%_
                                                            (cons _%g1040810555%_
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
                          (cons _%g1041210560%_ (cons _%g1041410562%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1060310616%_ '())))
                                    (cons (cons _%g1041310561%_ '()) '()))))
                  (cons (cons _%g1041310561%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                    _%g1060210613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g1060010629%_
                                                    (if _%dense?10401%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'x)
                            (foldr (lambda (_%g1063210635%_ _%g1063310638%_)
                                     (cons _%g1063210635%_ _%g1063310638%_))
                                   '()
                                   _%g1041110559%_)))
                (cons (gx#datum->syntax '#f 'if)
                      (cons (gx#datum->syntax '#f 'x)
                            (cons (cons (gx#datum->syntax '#f '~case-dispatch)
                                        (cons (gx#datum->syntax '#f 'x)
                                              (foldr (lambda (_%g1064010643%_
                                                              _%g1064110646%_)
                                                       (cons _%g1064010643%_
                                                             _%g1064110646%_))
                                                     '()
                                                     _%g1041110559%_)))
                                  (cons (cons _%g1041310561%_ '()) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1044310549%_
                                               _%hd1044010539%_
                                               _%hd1043710529%_
                                               _%dispatch1043510522%_
                                               _%hd1042210481%_
                                               _%hd1041910471%_
                                               _%hd1041610461%_)
                                              (_%g1040610450%_
                                               _%g1040710454%_))))
                                      (_%g1040610450%_ _%g1040710454%_))))
                              (_%g1040610450%_ _%g1040710454%_))))
                      (_%g1040610450%_ _%g1040710454%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop1043010503%_
                                           _%target1042710497%_
                                           '()))
                                        (_%g1040610450%_ _%g1040710454%_)))))
                              (_%g1040610450%_ _%g1040710454%_))))
                      (_%g1040610450%_ _%g1040710454%_))))
              (_%g1040610450%_ _%g1040710454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g1040610450%_
                                               _%g1040710454%_))))
                                      (_%g1040610450%_ _%g1040710454%_)))))
                          (_%g1040510649%_
                           (list _%e10389%_
                                 (gx#genident 'default)
                                 (gx#genident 'table)
                                 _%dispatch10392%_
                                 _%default10393%_
                                 _%tab10398%_
                                 (vector-length _%tab10398%_))))
                        (_%generate-fixnum-dispatch/hash9770%_
                         _%e10389%_
                         _%datums10391%_
                         _%dispatch10392%_
                         _%default10393%_))))
                 (_%generate-fixnum-dispatch/hash9770%_
                  (lambda (_%e10169%_
                           _%datums10171%_
                           _%dispatch10172%_
                           _%default10173%_)
                    (let* ((_%indexes10175%_
                            (_%datum-dispatch-index9756%_ _%datums10171%_))
                           (_%tab10178%_
                            (_%generate-hash-dispatch-table9758%_
                             _%indexes10175%_
                             values))
                           (_%g1018310227%_
                            (lambda (_%g1018410223%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g1018410223%_)))
                           (_%g1018210385%_
                            (lambda (_%g1018410231%_)
                              (if (gx#stx-pair? _%g1018410231%_)
                                  (let ((_%e1019210234%_
                                         (gx#syntax-e _%g1018410231%_)))
                                    (let ((_%hd1019310238%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1019210234%_)))
                                          (_%tl1019410241%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1019210234%_))))
                                      (if (gx#stx-pair? _%tl1019410241%_)
                                          (let ((_%e1019510244%_
                                                 (gx#syntax-e
                                                  _%tl1019410241%_)))
                                            (let ((_%hd1019610248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1019510244%_)))
                                                  (_%tl1019710251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1019510244%_))))
                                              (if (gx#stx-pair?
                                                   _%tl1019710251%_)
                                                  (let ((_%e1019810254%_
                                                         (gx#syntax-e
                                                          _%tl1019710251%_)))
                                                    (let ((_%hd1019910258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1019810254%_)))
                                                          (_%tl1020010261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1019810254%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl1020010261%_)
                                                          (let ((_%e1020110264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1020010261%_)))
                    (let ((_%hd1020210268%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1020110264%_)))
                          (_%tl1020310271%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1020110264%_))))
                      (if (gx#stx-pair/null? _%hd1020210268%_)
                          (let ((_g21035_
                                 (gx#syntax-split-splice _%hd1020210268%_ '0)))
                            (begin
                              (let ((_g21036_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g21035_)
                                           (##values-length _g21035_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g21036_ 2)))
                                    (error "Context expects 2 values"
                                           _g21036_)))
                              (let ((_%target1020410274%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21035_ 0)))
                                    (_%tl1020610277%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g21035_ 1))))
                                (if (gx#stx-null? _%tl1020610277%_)
                                    (letrec ((_%loop1020710280%_
                                              (lambda (_%hd1020510284%_
                                                       _%dispatch1021110287%_)
                                                (if (gx#stx-pair?
                                                     _%hd1020510284%_)
                                                    (let ((_%e1020810289%_
                                                           (gx#syntax-e
                                                            _%hd1020510284%_)))
                                                      (let ((_%lp-hd1020910293%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e1020810289%_)))
                    (_%lp-tl1021010296%_
                     (let () (declare (not safe)) (##cdr _%e1020810289%_))))
                (_%loop1020710280%_
                 _%lp-tl1021010296%_
                 (cons _%lp-hd1020910293%_ _%dispatch1021110287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%dispatch1021210299%_
                                                           (reverse _%dispatch1021110287%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl1020310271%_)
                                                          (let ((_%e1021310302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1020310271%_)))
                    (let ((_%hd1021410306%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1021310302%_)))
                          (_%tl1021510309%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1021310302%_))))
                      (if (gx#stx-pair? _%tl1021510309%_)
                          (let ((_%e1021610312%_
                                 (gx#syntax-e _%tl1021510309%_)))
                            (let ((_%hd1021710316%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1021610312%_)))
                                  (_%tl1021810319%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1021610312%_))))
                              (if (gx#stx-pair? _%tl1021810319%_)
                                  (let ((_%e1021910322%_
                                         (gx#syntax-e _%tl1021810319%_)))
                                    (let ((_%hd1022010326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1021910322%_)))
                                          (_%tl1022110329%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1021910322%_))))
                                      (if (gx#stx-null? _%tl1022110329%_)
                                          ((lambda (_%g1018510332%_
                                                    _%g1018610334%_
                                                    _%g1018710335%_
                                                    _%g1018810336%_
                                                    _%g1018910337%_
                                                    _%g1019010338%_
                                                    _%g1019110339%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _%g1019010338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons '() (cons _%g1018710335%_ '())))
                                   '()))
                       (cons (cons _%g1018910337%_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _%g1018610334%_ '()))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons _%g1019110339%_ '()))
                                   (cons (cons (gx#datum->syntax '#f 'let*)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                     (cons _%g1019110339%_
                                           (cons _%g1018510332%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'q)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _%g1018910337%_
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
                     (cons _%g1019110339%_ '())))
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
                                             (foldr (lambda (_%g1037610379%_
                                                             _%g1037710382%_)
                                                      (cons _%g1037610379%_
                                                            _%g1037710382%_))
                                                    '()
                                                    _%g1018810336%_)))
                                 '())))
               (cons (cons _%g1019010338%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons _%g1019010338%_ '()) '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g1019010338%_ '())
                                               '()))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%hd1022010326%_
                                           _%hd1021710316%_
                                           _%hd1021410306%_
                                           _%dispatch1021210299%_
                                           _%hd1019910258%_
                                           _%hd1019610248%_
                                           _%hd1019310238%_)
                                          (_%g1018310227%_ _%g1018410231%_))))
                                  (_%g1018310227%_ _%g1018410231%_))))
                          (_%g1018310227%_ _%g1018410231%_))))
                  (_%g1018310227%_ _%g1018410231%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop1020710280%_
                                       _%target1020410274%_
                                       '()))
                                    (_%g1018310227%_ _%g1018410231%_)))))
                          (_%g1018310227%_ _%g1018410231%_))))
                  (_%g1018310227%_ _%g1018410231%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g1018310227%_
                                                   _%g1018410231%_))))
                                          (_%g1018310227%_ _%g1018410231%_))))
                                  (_%g1018310227%_ _%g1018410231%_)))))
                      (_%g1018210385%_
                       (list _%e10169%_
                             (gx#genident 'default)
                             (gx#genident 'table)
                             _%dispatch10172%_
                             _%default10173%_
                             _%tab10178%_
                             (vector-length _%tab10178%_))))))
                 (_%generate-generic-dispatch9771%_
                  (lambda (_%e9907%_
                           _%datums9909%_
                           _%dispatch9910%_
                           _%default9911%_)
                    (let ((_g21037_
                           (if (_%eq-datums?9754%_ _%datums9909%_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_%hash-e9913%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21037_ 0)))
                              (_%hashf9915%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21037_ 1)))
                              (_%eqf9916%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g21037_ 2))))
                          (let* ((_%indexes9918%_
                                  (_%datum-dispatch-index9756%_
                                   _%datums9909%_))
                                 (_%tab9921%_
                                  (_%generate-hash-dispatch-table9758%_
                                   _%indexes9918%_
                                   _%hash-e9913%_))
                                 (_%g99269978%_
                                  (lambda (_%g99279974%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g99279974%_)))
                                 (_%g992510165%_
                                  (lambda (_%g99279982%_)
                                    (if (gx#stx-pair? _%g99279982%_)
                                        (let ((_%e99379985%_
                                               (gx#syntax-e _%g99279982%_)))
                                          (let ((_%hd99389989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e99379985%_)))
                                                (_%tl99399992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e99379985%_))))
                                            (if (gx#stx-pair? _%tl99399992%_)
                                                (let ((_%e99409995%_
                                                       (gx#syntax-e
                                                        _%tl99399992%_)))
                                                  (let ((_%hd99419999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e99409995%_)))
                                                        (_%tl994210002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e99409995%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl994210002%_)
                                                        (let ((_%e994310005%_
                                                               (gx#syntax-e
                                                                _%tl994210002%_)))
                                                          (let ((_%hd994410009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e994310005%_)))
                        (_%tl994510012%_
                         (let () (declare (not safe)) (##cdr _%e994310005%_))))
                    (if (gx#stx-pair? _%tl994510012%_)
                        (let ((_%e994610015%_ (gx#syntax-e _%tl994510012%_)))
                          (let ((_%hd994710019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e994610015%_)))
                                (_%tl994810022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e994610015%_))))
                            (if (gx#stx-pair/null? _%hd994710019%_)
                                (let ((_g21038_
                                       (gx#syntax-split-splice
                                        _%hd994710019%_
                                        '0)))
                                  (begin
                                    (let ((_g21039_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g21038_)
                                                 (##values-length _g21038_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g21039_ 2)))
                                          (error "Context expects 2 values"
                                                 _g21039_)))
                                    (let ((_%target994910025%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21038_ 0)))
                                          (_%tl995110028%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g21038_ 1))))
                                      (if (gx#stx-null? _%tl995110028%_)
                                          (letrec ((_%loop995210031%_
                                                    (lambda (_%hd995010035%_
                                                             _%dispatch995610038%_)
                                                      (if (gx#stx-pair?
                                                           _%hd995010035%_)
                                                          (let ((_%e995310040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd995010035%_)))
                    (let ((_%lp-hd995410044%_
                           (let ()
                             (declare (not safe))
                             (##car _%e995310040%_)))
                          (_%lp-tl995510047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e995310040%_))))
                      (_%loop995210031%_
                       _%lp-tl995510047%_
                       (cons _%lp-hd995410044%_ _%dispatch995610038%_))))
                  (let ((_%dispatch995710050%_
                         (reverse _%dispatch995610038%_)))
                    (if (gx#stx-pair? _%tl994810022%_)
                        (let ((_%e995810053%_ (gx#syntax-e _%tl994810022%_)))
                          (let ((_%hd995910057%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e995810053%_)))
                                (_%tl996010060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e995810053%_))))
                            (if (gx#stx-pair? _%tl996010060%_)
                                (let ((_%e996110063%_
                                       (gx#syntax-e _%tl996010060%_)))
                                  (let ((_%hd996210067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e996110063%_)))
                                        (_%tl996310070%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e996110063%_))))
                                    (if (gx#stx-pair? _%tl996310070%_)
                                        (let ((_%e996410073%_
                                               (gx#syntax-e _%tl996310070%_)))
                                          (let ((_%hd996510077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e996410073%_)))
                                                (_%tl996610080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e996410073%_))))
                                            (if (gx#stx-pair? _%tl996610080%_)
                                                (let ((_%e996710083%_
                                                       (gx#syntax-e
                                                        _%tl996610080%_)))
                                                  (let ((_%hd996810087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e996710083%_)))
                                                        (_%tl996910090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e996710083%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl996910090%_)
                                                        (let ((_%e997010093%_
                                                               (gx#syntax-e
                                                                _%tl996910090%_)))
                                                          (let ((_%hd997110097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e997010093%_)))
                        (_%tl997210100%_
                         (let () (declare (not safe)) (##cdr _%e997010093%_))))
                    (if (gx#stx-null? _%tl997210100%_)
                        ((lambda (_%g992810103%_
                                  _%g992910105%_
                                  _%g993010106%_
                                  _%g993110107%_
                                  _%g993210108%_
                                  _%g993310109%_
                                  _%g993410110%_
                                  _%g993510111%_
                                  _%g993610112%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%g993510111%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%g993210108%_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _%g993410110%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%g993110107%_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons _%g992910105%_
                                         (cons _%g993610112%_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _%g993010106%_
                                                           '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _%g993410110%_
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
                                               (cons (cons _%g992810103%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _%g993610112%_ '())))
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
                                                 (foldr (lambda (_%g1015610159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1015710162%_)
                  (cons _%g1015610159%_ _%g1015710162%_))
                '()
                _%g993310109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _%g993510111%_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _%g993510111%_ '())
                                               '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%hd997110097%_
                         _%hd996810087%_
                         _%hd996510077%_
                         _%hd996210067%_
                         _%hd995910057%_
                         _%dispatch995710050%_
                         _%hd994410009%_
                         _%hd99419999%_
                         _%hd99389989%_)
                        (_%g99269978%_ _%g99279982%_))))
                (_%g99269978%_ _%g99279982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g99269978%_
                                                 _%g99279982%_))))
                                        (_%g99269978%_ _%g99279982%_))))
                                (_%g99269978%_ _%g99279982%_))))
                        (_%g99269978%_ _%g99279982%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop995210031%_
                                             _%target994910025%_
                                             '()))
                                          (_%g99269978%_ _%g99279982%_)))))
                                (_%g99269978%_ _%g99279982%_))))
                        (_%g99269978%_ _%g99279982%_))))
                (_%g99269978%_ _%g99279982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g99269978%_
                                                 _%g99279982%_))))
                                        (_%g99269978%_ _%g99279982%_)))))
                            (_%g992510165%_
                             (list _%e9907%_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _%dispatch9910%_
                                   _%default9911%_
                                   _%tab9921%_
                                   (vector-length _%tab9921%_)
                                   _%hashf9915%_
                                   _%eqf9916%_)))))))))
          (let* ((_%g97739797%_
                  (lambda (_%g97749793%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g97749793%_)))
                 (_%g97729903%_
                  (lambda (_%g97749801%_)
                    (if (gx#stx-pair? _%g97749801%_)
                        (let ((_%e97779804%_ (gx#syntax-e _%g97749801%_)))
                          (let ((_%hd97789808%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e97779804%_)))
                                (_%tl97799811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e97779804%_))))
                            (if (gx#stx-pair? _%tl97799811%_)
                                (let ((_%e97809814%_
                                       (gx#syntax-e _%tl97799811%_)))
                                  (let ((_%hd97819818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e97809814%_)))
                                        (_%tl97829821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e97809814%_))))
                                    (if (gx#stx-pair/null? _%tl97829821%_)
                                        (let ((_g21040_
                                               (gx#syntax-split-splice
                                                _%tl97829821%_
                                                '0)))
                                          (begin
                                            (let ((_g21041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21040_)
                                                         (##values-length
                                                          _g21040_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21041_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21041_)))
                                            (let ((_%target97839824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21040_
                                                      0)))
                                                  (_%tl97859827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21040_
                                                      1))))
                                              (if (gx#stx-null? _%tl97859827%_)
                                                  (letrec ((_%loop97869830%_
                                                            (lambda (_%hd97849834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause97909837%_)
                      (if (gx#stx-pair? _%hd97849834%_)
                          (let ((_%e97879839%_ (gx#syntax-e _%hd97849834%_)))
                            (let ((_%lp-hd97889843%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e97879839%_)))
                                  (_%lp-tl97899846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e97879839%_))))
                              (_%loop97869830%_
                               _%lp-tl97899846%_
                               (cons _%lp-hd97889843%_ _%clause97909837%_))))
                          (let ((_%clause97919849%_
                                 (reverse _%clause97909837%_)))
                            ((lambda (_%g97759852%_ _%g97769854%_)
                               (let ((_g21042_
                                      (_%parse-clauses9747%_
                                       _%g97769854%_
                                       (foldr (lambda (_%g98729875%_
                                                       _%g98739878%_)
                                                (cons _%g98729875%_
                                                      _%g98739878%_))
                                              '()
                                              _%g97759852%_))))
                                 (begin
                                   (let ((_g21043_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g21042_)
                                                (##values-length _g21042_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g21043_ 3)))
                                         (error "Context expects 3 values"
                                                _g21043_)))
                                   (let ((_%datums9881%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21042_ 0)))
                                         (_%dispatch9883%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21042_ 1)))
                                         (_%default9884%_
                                          (let ()
                                            (declare (not safe))
                                            (##values-ref _g21042_ 2))))
                                     (let ((_%datum-count9886%_
                                            (_%count-datums9750%_
                                             _%datums9881%_)))
                                       (if (< _%datum-count9886%_ '6)
                                           (_%generate-simple-case9755%_
                                            _%g97769854%_
                                            _%datums9881%_
                                            _%dispatch9883%_
                                            _%default9884%_)
                                           (if (_%char-datums?9752%_
                                                _%datums9881%_)
                                               (_%generate-char-dispatch9764%_
                                                _%g97769854%_
                                                _%datums9881%_
                                                _%dispatch9883%_
                                                _%default9884%_)
                                               (if (_%fixnum-datums?9753%_
                                                    _%datums9881%_)
                                                   (_%generate-fixnum-dispatch9769%_
                                                    _%g97769854%_
                                                    _%datums9881%_
                                                    _%dispatch9883%_
                                                    _%default9884%_)
                                                   (if (< _%datum-count9886%_
                                                          '12)
                                                       (_%generate-simple-case9755%_
                                                        _%g97769854%_
                                                        _%datums9881%_
                                                        _%dispatch9883%_
                                                        _%default9884%_)
                                                       (if (_%symbolic-datums?9751%_
                                                            _%datums9881%_)
                                                           (_%generate-symbolic-dispatch9759%_
                                                            _%g97769854%_
                                                            _%datums9881%_
                                                            _%dispatch9883%_
                                                            _%default9884%_)
                                                           (_%generate-generic-dispatch9771%_
                                                            _%g97769854%_
                                                            _%datums9881%_
                                                            _%dispatch9883%_
                                                            _%default9884%_)))))))))))
                             _%clause97919849%_
                             _%hd97819818%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop97869830%_
                                                     _%target97839824%_
                                                     '()))
                                                  (_%g97739797%_
                                                   _%g97749801%_)))))
                                        (_%g97739797%_ _%g97749801%_))))
                                (_%g97739797%_ _%g97749801%_))))
                        (_%g97739797%_ _%g97749801%_)))))
            (_%g97729903%_ _%stx9744%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_%stx12781%_)
        (let* ((_%g1278412802%_
                (lambda (_%g1278512798%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1278512798%_)))
               (_%g1278312874%_
                (lambda (_%g1278512806%_)
                  (if (gx#stx-pair? _%g1278512806%_)
                      (let ((_%e1278812809%_ (gx#syntax-e _%g1278512806%_)))
                        (let ((_%hd1278912813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1278812809%_)))
                              (_%tl1279012816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1278812809%_))))
                          (if (gx#stx-pair? _%tl1279012816%_)
                              (let ((_%e1279112819%_
                                     (gx#syntax-e _%tl1279012816%_)))
                                (let ((_%hd1279212823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1279112819%_)))
                                      (_%tl1279312826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1279112819%_))))
                                  (if (gx#stx-pair? _%tl1279312826%_)
                                      (let ((_%e1279412829%_
                                             (gx#syntax-e _%tl1279312826%_)))
                                        (let ((_%hd1279512833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1279412829%_)))
                                              (_%tl1279612836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1279412829%_))))
                                          (if (gx#stx-null? _%tl1279612836%_)
                                              ((lambda (_%g1278612839%_
                                                        _%g1278712841%_)
                                                 (let ((_%datum-e12857%_
                                                        (gx#stx-e
                                                         _%g1278712841%_)))
                                                   (if (or (symbol? _%datum-e12857%_)
                                                           (keyword?
                                                            _%datum-e12857%_)
                                                           (immediate?
                                                            _%datum-e12857%_))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g1278712841%_ '()))
                           (cons _%g1278612839%_ '())))
               (if (number? _%datum-e12857%_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1278712841%_ '()))
                               (cons _%g1278612839%_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1278712841%_ '()))
                               (cons _%g1278612839%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd1279512833%_
                                               _%hd1279212823%_)
                                              (_%g1278412802%_
                                               _%g1278512806%_))))
                                      (_%g1278412802%_ _%g1278512806%_))))
                              (_%g1278412802%_ _%g1278512806%_))))
                      (_%g1278412802%_ _%g1278512806%_)))))
          (_%g1278312874%_ _%stx12781%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_%$stx12878%_)
        (let* ((_%g1288212906%_
                (lambda (_%g1288312902%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g1288312902%_)))
               (_%g1288112989%_
                (lambda (_%g1288312910%_)
                  (if (gx#stx-pair? _%g1288312910%_)
                      (let ((_%e1288612913%_ (gx#syntax-e _%g1288312910%_)))
                        (let ((_%hd1288712917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e1288612913%_)))
                              (_%tl1288812920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e1288612913%_))))
                          (if (gx#stx-pair? _%tl1288812920%_)
                              (let ((_%e1288912923%_
                                     (gx#syntax-e _%tl1288812920%_)))
                                (let ((_%hd1289012927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1288912923%_)))
                                      (_%tl1289112930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1288912923%_))))
                                  (if (gx#stx-pair/null? _%tl1289112930%_)
                                      (let ((_g21044_
                                             (gx#syntax-split-splice
                                              _%tl1289112930%_
                                              '0)))
                                        (begin
                                          (let ((_g21045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g21044_)
                                                       (##values-length
                                                        _g21044_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g21045_ 2)))
                                                (error "Context expects 2 values"
                                                       _g21045_)))
                                          (let ((_%target1289212933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21044_ 0)))
                                                (_%tl1289412936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g21044_ 1))))
                                            (if (gx#stx-null? _%tl1289412936%_)
                                                (letrec ((_%loop1289512939%_
                                                          (lambda (_%hd1289312943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%K1289912946%_)
                    (if (gx#stx-pair? _%hd1289312943%_)
                        (let ((_%e1289612948%_ (gx#syntax-e _%hd1289312943%_)))
                          (let ((_%lp-hd1289712952%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1289612948%_)))
                                (_%lp-tl1289812955%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1289612948%_))))
                            (_%loop1289512939%_
                             _%lp-tl1289812955%_
                             (cons _%lp-hd1289712952%_ _%K1289912946%_))))
                        (let ((_%K1290012958%_ (reverse _%K1289912946%_)))
                          ((lambda (_%g1288412961%_ _%g1288512963%_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _%g1288512963%_
                                               (foldr (lambda (_%g1298012983%_
                                                               _%g1298112986%_)
                                                        (cons _%g1298012983%_
                                                              _%g1298112986%_))
                                                      '()
                                                      _%g1288412961%_)))))
                           _%K1290012958%_
                           _%hd1289012927%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop1289512939%_
                                                   _%target1289212933%_
                                                   '()))
                                                (_%g1288212906%_
                                                 _%g1288312910%_)))))
                                      (_%g1288212906%_ _%g1288312910%_))))
                              (_%g1288212906%_ _%g1288312910%_))))
                      (_%g1288212906%_ _%g1288312910%_)))))
          (_%g1288112989%_ _%$stx12878%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_%stx12994%_)
        (let* ((_%__stx1971819719%_ _%stx12994%_)
               (_%g1300113097%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1971819719%_))))
          (let ((_%__kont1972119722%_
                 (lambda (_%g1300313572%_ _%g1300413574%_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (_%__kont1972319724%_
                 (lambda (_%g1301413514%_ _%g1301513516%_ _%g1301613517%_)
                   _%g1301413514%_))
                (_%__kont1972519726%_
                 (lambda (_%g1302913411%_
                          _%g1303013413%_
                          _%g1303113414%_
                          _%g1303213415%_)
                   (let* ((_%g1343613444%_
                           (lambda (_%g1343713440%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1343713440%_)))
                          (_%g1343513463%_
                           (lambda (_%g1343713448%_)
                             ((lambda (_%g1343813451%_)
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons _%g1303113414%_
                                                        (cons _%g1343813451%_
                                                              '())))
                                            (cons _%g1303013413%_
                                                  (cons _%g1302913411%_
                                                        '())))))
                              _%g1343713448%_))))
                     (_%g1343513463%_ (gx#stx-e _%g1303213415%_)))))
                (_%__kont1972719728%_
                 (lambda (_%g1304813261%_
                          _%g1304913263%_
                          _%g1305013264%_
                          _%g1305113265%_
                          _%g1305213266%_)
                   (let* ((_%g1329013305%_
                           (lambda (_%g1329113301%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g1329113301%_)))
                          (_%g1328913350%_
                           (lambda (_%g1329113309%_)
                             (if (gx#stx-pair? _%g1329113309%_)
                                 (let ((_%e1329413312%_
                                        (gx#syntax-e _%g1329113309%_)))
                                   (let ((_%hd1329513316%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e1329413312%_)))
                                         (_%tl1329613319%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e1329413312%_))))
                                     (if (gx#stx-pair? _%tl1329613319%_)
                                         (let ((_%e1329713322%_
                                                (gx#syntax-e
                                                 _%tl1329613319%_)))
                                           (let ((_%hd1329813326%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e1329713322%_)))
                                                 (_%tl1329913329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e1329713322%_))))
                                             (if (gx#stx-null?
                                                  _%tl1329913329%_)
                                                 ((lambda (_%g1329213332%_
                                                           _%g1329313334%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _%g1305113265%_
                                    (cons _%g1329313334%_ '())))
                        (cons _%g1305013264%_
                              (cons (cons (gx#datum->syntax '#f 'if)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx=)
                                                      (cons _%g1305113265%_
                                                            (cons _%g1329213332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%g1304913263%_
                                                      (cons _%g1304813261%_
                                                            '()))))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd1329813326%_
                                                  _%hd1329513316%_)
                                                 (_%g1329013305%_
                                                  _%g1329113309%_))))
                                         (_%g1329013305%_ _%g1329113309%_))))
                                 (_%g1329013305%_ _%g1329113309%_)))))
                     (_%g1328913350%_
                      (list (gx#stx-e _%g1305213266%_)
                            (fx1+ (gx#stx-e _%g1305213266%_)))))))
                (_%__kont1972919730%_
                 (lambda (_%g1307113162%_ _%g1307213164%_ _%g1307313165%_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _%g1307313165%_
                               (cons _%g1307213164%_
                                     (foldr (lambda (_%g1318513188%_
                                                     _%g1318613191%_)
                                              (cons _%g1318513188%_
                                                    _%g1318613191%_))
                                            '()
                                            _%g1307113162%_)))))))
            (let ((_%__match1987519876%_
                   (lambda (_%e1307413104%_
                            _%hd1307513108%_
                            _%tl1307613111%_
                            _%e1307713114%_
                            _%hd1307813118%_
                            _%tl1307913121%_
                            _%e1308013124%_
                            _%hd1308113128%_
                            _%tl1308213131%_
                            _%__splice1973119732%_
                            _%target1308313134%_
                            _%tl1308513137%_)
                     (letrec ((_%loop1308613140%_
                               (lambda (_%hd1308413144%_ _%K1309013147%_)
                                 (if (gx#stx-pair? _%hd1308413144%_)
                                     (let ((_%e1308713149%_
                                            (gx#syntax-e _%hd1308413144%_)))
                                       (let ((_%lp-tl1308913156%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1308713149%_)))
                                             (_%lp-hd1308813153%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1308713149%_))))
                                         (_%loop1308613140%_
                                          _%lp-tl1308913156%_
                                          (cons _%lp-hd1308813153%_
                                                _%K1309013147%_))))
                                     (let ((_%K1309113159%_
                                            (reverse _%K1309013147%_)))
                                       (_%__kont1972919730%_
                                        _%K1309113159%_
                                        _%hd1308113128%_
                                        _%hd1307813118%_))))))
                       (_%loop1308613140%_ _%target1308313134%_ '())))))
              (if (gx#stx-pair? _%__stx1971819719%_)
                  (let ((_%e1300513542%_ (gx#syntax-e _%__stx1971819719%_)))
                    (let ((_%tl1300713549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1300513542%_)))
                          (_%hd1300613546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1300513542%_))))
                      (if (gx#stx-pair? _%tl1300713549%_)
                          (let ((_%e1300813552%_
                                 (gx#syntax-e _%tl1300713549%_)))
                            (let ((_%tl1301013559%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1300813552%_)))
                                  (_%hd1300913556%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1300813552%_))))
                              (if (gx#stx-pair? _%tl1301013559%_)
                                  (let ((_%e1301113562%_
                                         (gx#syntax-e _%tl1301013559%_)))
                                    (let ((_%tl1301313569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1301113562%_)))
                                          (_%hd1301213566%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1301113562%_))))
                                      (if (gx#stx-null? _%tl1301313569%_)
                                          (_%__kont1972119722%_
                                           _%hd1301213566%_
                                           _%hd1300913556%_)
                                          (if (gx#stx-pair? _%tl1301313569%_)
                                              (let ((_%e1302613504%_
                                                     (gx#syntax-e
                                                      _%tl1301313569%_)))
                                                (let ((_%tl1302813511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1302613504%_)))
                                                      (_%hd1302713508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1302613504%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1302813511%_)
                                                      (_%__kont1972319724%_
                                                       _%hd1302713508%_
                                                       _%hd1301213566%_
                                                       _%hd1300913556%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1302813511%_)
                                                          (let ((_%e1304513401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1302813511%_)))
                    (let ((_%tl1304713408%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1304513401%_)))
                          (_%hd1304613405%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1304513401%_))))
                      (if (gx#stx-null? _%tl1304713408%_)
                          (_%__kont1972519726%_
                           _%hd1304613405%_
                           _%hd1302713508%_
                           _%hd1301213566%_
                           _%hd1300913556%_)
                          (if (gx#stx-pair? _%tl1304713408%_)
                              (let ((_%e1306813251%_
                                     (gx#syntax-e _%tl1304713408%_)))
                                (let ((_%tl1307013258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1306813251%_)))
                                      (_%hd1306913255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1306813251%_))))
                                  (if (gx#stx-null? _%tl1307013258%_)
                                      (_%__kont1972719728%_
                                       _%hd1306913255%_
                                       _%hd1304613405%_
                                       _%hd1302713508%_
                                       _%hd1301213566%_
                                       _%hd1300913556%_)
                                      (if (gx#stx-pair/null? _%tl1301313569%_)
                                          (let ((_%__splice1973119732%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1301313569%_
                                                  '0)))
                                            (let ((_%tl1308513137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973119732%_
                                                      '1)))
                                                  (_%target1308313134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice1973119732%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1308513137%_)
                                                  (_%__match1987519876%_
                                                   _%e1300513542%_
                                                   _%hd1300613546%_
                                                   _%tl1300713549%_
                                                   _%e1300813552%_
                                                   _%hd1300913556%_
                                                   _%tl1301013559%_
                                                   _%e1301113562%_
                                                   _%hd1301213566%_
                                                   _%tl1301313569%_
                                                   _%__splice1973119732%_
                                                   _%target1308313134%_
                                                   _%tl1308513137%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1300113097%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1300113097%_))))))
                              (if (gx#stx-pair/null? _%tl1301313569%_)
                                  (let ((_%__splice1973119732%_
                                         (gx#syntax-split-splice->vector
                                          _%tl1301313569%_
                                          '0)))
                                    (let ((_%tl1308513137%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973119732%_
                                              '1)))
                                          (_%target1308313134%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice1973119732%_
                                              '0))))
                                      (if (gx#stx-null? _%tl1308513137%_)
                                          (_%__match1987519876%_
                                           _%e1300513542%_
                                           _%hd1300613546%_
                                           _%tl1300713549%_
                                           _%e1300813552%_
                                           _%hd1300913556%_
                                           _%tl1301013559%_
                                           _%e1301113562%_
                                           _%hd1301213566%_
                                           _%tl1301313569%_
                                           _%__splice1973119732%_
                                           _%target1308313134%_
                                           _%tl1308513137%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g1300113097%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1300113097%_)))))))
                  (if (gx#stx-pair/null? _%tl1301313569%_)
                      (let ((_%__splice1973119732%_
                             (gx#syntax-split-splice->vector
                              _%tl1301313569%_
                              '0)))
                        (let ((_%tl1308513137%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973119732%_ '1)))
                              (_%target1308313134%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice1973119732%_ '0))))
                          (if (gx#stx-null? _%tl1308513137%_)
                              (_%__match1987519876%_
                               _%e1300513542%_
                               _%hd1300613546%_
                               _%tl1300713549%_
                               _%e1300813552%_
                               _%hd1300913556%_
                               _%tl1301013559%_
                               _%e1301113562%_
                               _%hd1301213566%_
                               _%tl1301313569%_
                               _%__splice1973119732%_
                               _%target1308313134%_
                               _%tl1308513137%_)
                              (let ()
                                (declare (not safe))
                                (_%g1300113097%_)))))
                      (let () (declare (not safe)) (_%g1300113097%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl1301313569%_)
                                                  (let ((_%__splice1973119732%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl1301313569%_
                                                          '0)))
                                                    (let ((_%tl1308513137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973119732%_
                                                              '1)))
                                                          (_%target1308313134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice1973119732%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl1308513137%_)
                                                          (_%__match1987519876%_
                                                           _%e1300513542%_
                                                           _%hd1300613546%_
                                                           _%tl1300713549%_
                                                           _%e1300813552%_
                                                           _%hd1300913556%_
                                                           _%tl1301013559%_
                                                           _%e1301113562%_
                                                           _%hd1301213566%_
                                                           _%tl1301313569%_
                                                           _%__splice1973119732%_
                                                           _%target1308313134%_
                                                           _%tl1308513137%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g1300113097%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1300113097%_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g1300113097%_)))))
                          (let () (declare (not safe)) (_%g1300113097%_)))))
                  (let () (declare (not safe)) (_%g1300113097%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_%stx13594%_)
        (letrec ((_%split13597%_
                  (lambda (_%lst13952%_ _%mid13954%_)
                    (let _%lp13956%_ ((_%i13959%_ '0)
                                      (_%rest13961%_ _%lst13952%_)
                                      (_%left13962%_ '()))
                      (if (fx< _%i13959%_ _%mid13954%_)
                          (_%lp13956%_
                           (fx1+ _%i13959%_)
                           (cdr _%rest13961%_)
                           (cons (car _%rest13961%_) _%left13962%_))
                          (values (reverse _%left13962%_) _%rest13961%_))))))
          (let* ((_%g1360013628%_
                  (lambda (_%g1360113624%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1360113624%_)))
                 (_%g1359913948%_
                  (lambda (_%g1360113632%_)
                    (if (gx#stx-pair? _%g1360113632%_)
                        (let ((_%e1360513635%_ (gx#syntax-e _%g1360113632%_)))
                          (let ((_%hd1360613639%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1360513635%_)))
                                (_%tl1360713642%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1360513635%_))))
                            (if (gx#stx-pair? _%tl1360713642%_)
                                (let ((_%e1360813645%_
                                       (gx#syntax-e _%tl1360713642%_)))
                                  (let ((_%hd1360913649%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1360813645%_)))
                                        (_%tl1361013652%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1360813645%_))))
                                    (if (gx#stx-pair? _%tl1361013652%_)
                                        (let ((_%e1361113655%_
                                               (gx#syntax-e _%tl1361013652%_)))
                                          (let ((_%hd1361213659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1361113655%_)))
                                                (_%tl1361313662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1361113655%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl1361313662%_)
                                                (let ((_g21046_
                                                       (gx#syntax-split-splice
                                                        _%tl1361313662%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g21047_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g21046_)
                         (##values-length _g21046_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g21047_ 2)))
                  (error "Context expects 2 values" _g21047_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target1361413665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21046_
                                                              0)))
                                                          (_%tl1361613668%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g21046_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl1361613668%_)
                                                          (letrec ((_%loop1361713671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd1361513675%_ _%K1362113678%_)
                              (if (gx#stx-pair? _%hd1361513675%_)
                                  (let ((_%e1361813680%_
                                         (gx#syntax-e _%hd1361513675%_)))
                                    (let ((_%lp-hd1361913684%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1361813680%_)))
                                          (_%lp-tl1362013687%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1361813680%_))))
                                      (_%loop1361713671%_
                                       _%lp-tl1362013687%_
                                       (cons _%lp-hd1361913684%_
                                             _%K1362113678%_))))
                                  (let ((_%K1362213690%_
                                         (reverse _%K1362113678%_)))
                                    ((lambda (_%g1360213693%_
                                              _%g1360313695%_
                                              _%g1360413696%_)
                                       (let* ((_%len13726%_
                                               (length (foldr (lambda (_%g1371713720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1371813723%_)
                        (cons _%g1371713720%_ _%g1371813723%_))
                      '()
                      _%g1360213693%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%mid13729%_
                                               (quotient _%len13726%_ '2))
                                              (_g21048_
                                               (_%split13597%_
                                                (foldr (lambda (_%g1373113734%_
                                                                _%g1373213737%_)
                                                         (cons _%g1373113734%_
                                                               _%g1373213737%_))
                                                       '()
                                                       _%g1360213693%_)
                                                _%mid13729%_)))
                                         (begin
                                           (let ((_g21049_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g21048_)
                                                        (##values-length
                                                         _g21048_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g21049_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g21049_)))
                                           (let ((_%left13740%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g21048_ 0)))
                                                 (_%right13742%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g21048_
                                                     1))))
                                             (let* ((_%g1374613787%_
                                                     (lambda (_%g1374713783%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g1374713783%_)))
                                                    (_%g1374513944%_
                                                     (lambda (_%g1374713791%_)
                                                       (if (gx#stx-pair?
                                                            _%g1374713791%_)
                                                           (let ((_%e1375213794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g1374713791%_)))
                     (let ((_%hd1375313798%_
                            (let ()
                              (declare (not safe))
                              (##car _%e1375213794%_)))
                           (_%tl1375413801%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e1375213794%_))))
                       (if (gx#stx-pair? _%tl1375413801%_)
                           (let ((_%e1375513804%_
                                  (gx#syntax-e _%tl1375413801%_)))
                             (let ((_%hd1375613808%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1375513804%_)))
                                   (_%tl1375713811%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1375513804%_))))
                               (if (gx#stx-pair/null? _%hd1375613808%_)
                                   (let ((_g21050_
                                          (gx#syntax-split-splice
                                           _%hd1375613808%_
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
                                       (let ((_%target1375813814%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21050_ 0)))
                                             (_%tl1376013817%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21050_ 1))))
                                         (if (gx#stx-null? _%tl1376013817%_)
                                             (letrec ((_%loop1376113820%_
                                                       (lambda (_%hd1375913824%_
                                                                _%K-left1376513827%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1375913824%_)
                                                             (let ((_%e1376213829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1375913824%_)))
                       (let ((_%lp-hd1376313833%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1376213829%_)))
                             (_%lp-tl1376413836%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1376213829%_))))
                         (_%loop1376113820%_
                          _%lp-tl1376413836%_
                          (cons _%lp-hd1376313833%_ _%K-left1376513827%_))))
                     (let ((_%K-left1376613839%_
                            (reverse _%K-left1376513827%_)))
                       (if (gx#stx-pair? _%tl1375713811%_)
                           (let ((_%e1376713842%_
                                  (gx#syntax-e _%tl1375713811%_)))
                             (let ((_%hd1376813846%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1376713842%_)))
                                   (_%tl1376913849%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1376713842%_))))
                               (if (gx#stx-pair/null? _%hd1376813846%_)
                                   (let ((_g21052_
                                          (gx#syntax-split-splice
                                           _%hd1376813846%_
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
                                       (let ((_%target1377013852%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21052_ 0)))
                                             (_%tl1377213855%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21052_ 1))))
                                         (if (gx#stx-null? _%tl1377213855%_)
                                             (letrec ((_%loop1377313858%_
                                                       (lambda (_%hd1377113862%_
                                                                _%K-right1377713865%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1377113862%_)
                                                             (let ((_%e1377413867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1377113862%_)))
                       (let ((_%lp-hd1377513871%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1377413867%_)))
                             (_%lp-tl1377613874%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1377413867%_))))
                         (_%loop1377313858%_
                          _%lp-tl1377613874%_
                          (cons _%lp-hd1377513871%_ _%K-right1377713865%_))))
                     (let ((_%K-right1377813877%_
                            (reverse _%K-right1377713865%_)))
                       (if (gx#stx-pair? _%tl1376913849%_)
                           (let ((_%e1377913880%_
                                  (gx#syntax-e _%tl1376913849%_)))
                             (let ((_%hd1378013884%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e1377913880%_)))
                                   (_%tl1378113887%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e1377913880%_))))
                               (if (gx#stx-null? _%tl1378113887%_)
                                   ((lambda (_%g1374813890%_
                                             _%g1374913892%_
                                             _%g1375013893%_
                                             _%g1375113894%_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx<)
                                                        (cons _%g1360313695%_
                                                              (cons _%g1374813890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch*)
                                                              (cons _%g1360413696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1360313695%_
                                  (foldr (lambda (_%g1392713932%_
                                                  _%g1392813935%_)
                                           (cons _%g1392713932%_
                                                 _%g1392813935%_))
                                         '()
                                         _%g1375013893%_))))
                (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                            (cons _%g1374813890%_
                                  (cons _%g1360313695%_
                                        (foldr (lambda (_%g1392913938%_
                                                        _%g1393013941%_)
                                                 (cons _%g1392913938%_
                                                       _%g1393013941%_))
                                               '()
                                               _%g1374913892%_))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%hd1378013884%_
                                    _%K-right1377813877%_
                                    _%K-left1376613839%_
                                    _%hd1375313798%_)
                                   (_%g1374613787%_ _%g1374713791%_))))
                           (_%g1374613787%_ _%g1374713791%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1377313858%_
                                                _%target1377013852%_
                                                '()))
                                             (_%g1374613787%_
                                              _%g1374713791%_)))))
                                   (_%g1374613787%_ _%g1374713791%_))))
                           (_%g1374613787%_ _%g1374713791%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1376113820%_
                                                _%target1375813814%_
                                                '()))
                                             (_%g1374613787%_
                                              _%g1374713791%_)))))
                                   (_%g1374613787%_ _%g1374713791%_))))
                           (_%g1374613787%_ _%g1374713791%_))))
                   (_%g1374613787%_ _%g1374713791%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g1374513944%_
                                                (list _%mid13729%_
                                                      _%left13740%_
                                                      _%right13742%_
                                                      (fx+ _%mid13729%_
                                                           (gx#stx-e
                                                            _%g1360413696%_)))))))))
                                     _%K1362213690%_
                                     _%hd1361213659%_
                                     _%hd1360913649%_))))))
                    (_%loop1361713671%_ _%target1361413665%_ '()))
                  (_%g1360013628%_ _%g1360113632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g1360013628%_
                                                 _%g1360113632%_))))
                                        (_%g1360013628%_ _%g1360113632%_))))
                                (_%g1360013628%_ _%g1360113632%_))))
                        (_%g1360013628%_ _%g1360113632%_)))))
            (_%g1359913948%_ _%stx13594%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_%$stx13968%_)
        (let* ((_%__stx1987819879%_ _%$stx13968%_)
               (_%g1397314004%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1987819879%_))))
          (let ((_%__kont1988119882%_
                 (lambda (_%g1397514114%_) _%g1397514114%_))
                (_%__kont1988319884%_
                 (lambda (_%g1398214059%_ _%g1398314061%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _%g1398314061%_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (foldr (lambda (_%g1407814081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g1407914084%_)
                        (cons _%g1407814081%_ _%g1407914084%_))
                      '()
                      _%g1398214059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((_%__match1992119922%_
                   (lambda (_%e1398414011%_
                            _%hd1398514015%_
                            _%tl1398614018%_
                            _%e1398714021%_
                            _%hd1398814025%_
                            _%tl1398914028%_
                            _%__splice1988519886%_
                            _%target1399014031%_
                            _%tl1399214034%_)
                     (letrec ((_%loop1399314037%_
                               (lambda (_%hd1399114041%_ _%rest1399714044%_)
                                 (if (gx#stx-pair? _%hd1399114041%_)
                                     (let ((_%e1399414046%_
                                            (gx#syntax-e _%hd1399114041%_)))
                                       (let ((_%lp-tl1399614053%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1399414046%_)))
                                             (_%lp-hd1399514050%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1399414046%_))))
                                         (_%loop1399314037%_
                                          _%lp-tl1399614053%_
                                          (cons _%lp-hd1399514050%_
                                                _%rest1399714044%_))))
                                     (let ((_%rest1399814056%_
                                            (reverse _%rest1399714044%_)))
                                       (_%__kont1988319884%_
                                        _%rest1399814056%_
                                        _%hd1398814025%_))))))
                       (_%loop1399314037%_ _%target1399014031%_ '())))))
              (if (gx#stx-pair? _%__stx1987819879%_)
                  (let ((_%e1397614094%_ (gx#syntax-e _%__stx1987819879%_)))
                    (let ((_%tl1397814101%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1397614094%_)))
                          (_%hd1397714098%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1397614094%_))))
                      (if (gx#stx-pair? _%tl1397814101%_)
                          (let ((_%e1397914104%_
                                 (gx#syntax-e _%tl1397814101%_)))
                            (let ((_%tl1398114111%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1397914104%_)))
                                  (_%hd1398014108%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1397914104%_))))
                              (if (gx#stx-null? _%tl1398114111%_)
                                  (_%__kont1988119882%_ _%hd1398014108%_)
                                  (if (gx#stx-pair/null? _%tl1398114111%_)
                                      (let ((_%__splice1988519886%_
                                             (gx#syntax-split-splice->vector
                                              _%tl1398114111%_
                                              '0)))
                                        (let ((_%tl1399214034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988519886%_
                                                  '1)))
                                              (_%target1399014031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice1988519886%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1399214034%_)
                                              (_%__match1992119922%_
                                               _%e1397614094%_
                                               _%hd1397714098%_
                                               _%tl1397814101%_
                                               _%e1397914104%_
                                               _%hd1398014108%_
                                               _%tl1398114111%_
                                               _%__splice1988519886%_
                                               _%target1399014031%_
                                               _%tl1399214034%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1397314004%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1397314004%_))))))
                          (let () (declare (not safe)) (_%g1397314004%_)))))
                  (let () (declare (not safe)) (_%g1397314004%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_%$stx14132%_)
        (let* ((_%__stx1992419925%_ _%$stx14132%_)
               (_%g1413814191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx1992419925%_))))
          (let ((_%__kont1992719928%_
                 (lambda (_%g1414014391%_ _%g1414114393%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1414114393%_
                                           (cons _%g1414014391%_ '()))
                                     '())
                               (cons _%g1414114393%_ '())))))
                (_%__kont1992919930%_
                 (lambda (_%g1415114335%_ _%g1415214337%_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _%g1415214337%_
                                           (cons _%g1415114335%_ '()))
                                     '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _%g1415214337%_)
                                     '())))))
                (_%__kont1993119932%_
                 (lambda (_%g1416514256%_ _%g1416614258%_ _%g1416714259%_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _%g1416714259%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _%g1416614258%_
                                                             (foldr (lambda (_%g1427914282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g1428014285%_)
                              (cons _%g1427914282%_ _%g1428014285%_))
                            '()
                            _%g1416514256%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%g1416714259%_ '()))))))
            (let* ((_%__match2001120012%_
                    (lambda (_%e1416814198%_
                             _%hd1416914202%_
                             _%tl1417014205%_
                             _%e1417114208%_
                             _%hd1417214212%_
                             _%tl1417314215%_
                             _%e1417414218%_
                             _%hd1417514222%_
                             _%tl1417614225%_
                             _%__splice1993319934%_
                             _%target1417714228%_
                             _%tl1417914231%_)
                      (letrec ((_%loop1418014234%_
                                (lambda (_%hd1417814238%_ _%body1418414241%_)
                                  (if (gx#stx-pair? _%hd1417814238%_)
                                      (let ((_%e1418114243%_
                                             (gx#syntax-e _%hd1417814238%_)))
                                        (let ((_%lp-tl1418314250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1418114243%_)))
                                              (_%lp-hd1418214247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1418114243%_))))
                                          (_%loop1418014234%_
                                           _%lp-tl1418314250%_
                                           (cons _%lp-hd1418214247%_
                                                 _%body1418414241%_))))
                                      (let ((_%body1418514253%_
                                             (reverse _%body1418414241%_)))
                                        (let ((_%g1416514256%_
                                               _%body1418514253%_)
                                              (_%g1416614258%_
                                               _%tl1417614225%_)
                                              (_%g1416714259%_
                                               _%hd1417514222%_))
                                          (if (gx#identifier? _%g1416714259%_)
                                              (_%__kont1993119932%_
                                               _%g1416514256%_
                                               _%g1416614258%_
                                               _%g1416714259%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1413814191%_)))))))))
                        (_%loop1418014234%_ _%target1417714228%_ '()))))
                   (_%__match1998519986%_
                    (lambda (_%e1415314295%_
                             _%hd1415414299%_
                             _%tl1415514302%_
                             _%e1415614305%_
                             _%hd1415714309%_
                             _%tl1415814312%_
                             _%e1415914315%_
                             _%hd1416014319%_
                             _%tl1416114322%_
                             _%e1416214325%_
                             _%hd1416314329%_
                             _%tl1416414332%_)
                      (let ((_%g1415114335%_ _%hd1416314329%_)
                            (_%g1415214337%_ _%tl1416114322%_))
                        (if (gx#identifier-list? _%g1415214337%_)
                            (_%__kont1992919930%_
                             _%g1415114335%_
                             _%g1415214337%_)
                            (if (gx#stx-pair/null? _%tl1415814312%_)
                                (let ((_%__splice1993319934%_
                                       (gx#syntax-split-splice->vector
                                        _%tl1415814312%_
                                        '0)))
                                  (let ((_%tl1417914231%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993319934%_
                                            '1)))
                                        (_%target1417714228%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice1993319934%_
                                            '0))))
                                    (if (gx#stx-null? _%tl1417914231%_)
                                        (_%__match2001120012%_
                                         _%e1415314295%_
                                         _%hd1415414299%_
                                         _%tl1415514302%_
                                         _%e1415614305%_
                                         _%hd1415714309%_
                                         _%tl1415814312%_
                                         _%e1415914315%_
                                         _%hd1416014319%_
                                         _%tl1416114322%_
                                         _%__splice1993319934%_
                                         _%target1417714228%_
                                         _%tl1417914231%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1413814191%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1413814191%_)))))))
                   (_%__match1995519956%_
                    (lambda (_%e1414214361%_
                             _%hd1414314365%_
                             _%tl1414414368%_
                             _%e1414514371%_
                             _%hd1414614375%_
                             _%tl1414714378%_
                             _%e1414814381%_
                             _%hd1414914385%_
                             _%tl1415014388%_)
                      (let ((_%g1414014391%_ _%hd1414914385%_)
                            (_%g1414114393%_ _%hd1414614375%_))
                        (if (gx#identifier? _%g1414114393%_)
                            (_%__kont1992719928%_
                             _%g1414014391%_
                             _%g1414114393%_)
                            (if (gx#stx-pair? _%hd1414614375%_)
                                (let ((_%e1415914315%_
                                       (gx#syntax-e _%hd1414614375%_)))
                                  (let ((_%tl1416114322%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1415914315%_)))
                                        (_%hd1416014319%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1415914315%_))))
                                    (if (gx#identifier? _%hd1416014319%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g21054_|
                                             _%hd1416014319%_)
                                            (_%__match1998519986%_
                                             _%e1414214361%_
                                             _%hd1414314365%_
                                             _%tl1414414368%_
                                             _%e1414514371%_
                                             _%hd1414614375%_
                                             _%tl1414714378%_
                                             _%e1415914315%_
                                             _%hd1416014319%_
                                             _%tl1416114322%_
                                             _%e1414814381%_
                                             _%hd1414914385%_
                                             _%tl1415014388%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl1414714378%_)
                                                (let ((_%__splice1993319934%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl1414714378%_
                                                        '0)))
                                                  (let ((_%tl1417914231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993319934%_
                                                            '1)))
                                                        (_%target1417714228%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice1993319934%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl1417914231%_)
                                                        (_%__match2001120012%_
                                                         _%e1414214361%_
                                                         _%hd1414314365%_
                                                         _%tl1414414368%_
                                                         _%e1414514371%_
                                                         _%hd1414614375%_
                                                         _%tl1414714378%_
                                                         _%e1415914315%_
                                                         _%hd1416014319%_
                                                         _%tl1416114322%_
                                                         _%__splice1993319934%_
                                                         _%target1417714228%_
                                                         _%tl1417914231%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g1413814191%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1413814191%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl1414714378%_)
                                            (let ((_%__splice1993319934%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl1414714378%_
                                                    '0)))
                                              (let ((_%tl1417914231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993319934%_
                                                        '1)))
                                                    (_%target1417714228%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice1993319934%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1417914231%_)
                                                    (_%__match2001120012%_
                                                     _%e1414214361%_
                                                     _%hd1414314365%_
                                                     _%tl1414414368%_
                                                     _%e1414514371%_
                                                     _%hd1414614375%_
                                                     _%tl1414714378%_
                                                     _%e1415914315%_
                                                     _%hd1416014319%_
                                                     _%tl1416114322%_
                                                     _%__splice1993319934%_
                                                     _%target1417714228%_
                                                     _%tl1417914231%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1413814191%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g1413814191%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g1413814191%_))))))))
              (if (gx#stx-pair? _%__stx1992419925%_)
                  (let ((_%e1414214361%_ (gx#syntax-e _%__stx1992419925%_)))
                    (let ((_%tl1414414368%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1414214361%_)))
                          (_%hd1414314365%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1414214361%_))))
                      (if (gx#stx-pair? _%tl1414414368%_)
                          (let ((_%e1414514371%_
                                 (gx#syntax-e _%tl1414414368%_)))
                            (let ((_%tl1414714378%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1414514371%_)))
                                  (_%hd1414614375%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1414514371%_))))
                              (if (gx#stx-pair? _%tl1414714378%_)
                                  (let ((_%e1414814381%_
                                         (gx#syntax-e _%tl1414714378%_)))
                                    (let ((_%tl1415014388%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1414814381%_)))
                                          (_%hd1414914385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1414814381%_))))
                                      (if (gx#stx-null? _%tl1415014388%_)
                                          (_%__match1995519956%_
                                           _%e1414214361%_
                                           _%hd1414314365%_
                                           _%tl1414414368%_
                                           _%e1414514371%_
                                           _%hd1414614375%_
                                           _%tl1414714378%_
                                           _%e1414814381%_
                                           _%hd1414914385%_
                                           _%tl1415014388%_)
                                          (if (gx#stx-pair? _%hd1414614375%_)
                                              (let ((_%e1415914315%_
                                                     (gx#syntax-e
                                                      _%hd1414614375%_)))
                                                (let ((_%tl1416114322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1415914315%_)))
                                                      (_%hd1416014319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1415914315%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl1414714378%_)
                                                      (let ((_%__splice1993319934%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl1414714378%_
                                                              '0)))
                                                        (let ((_%tl1417914231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice1993319934%_ '1)))
                      (_%target1417714228%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice1993319934%_ '0))))
                  (if (gx#stx-null? _%tl1417914231%_)
                      (_%__match2001120012%_
                       _%e1414214361%_
                       _%hd1414314365%_
                       _%tl1414414368%_
                       _%e1414514371%_
                       _%hd1414614375%_
                       _%tl1414714378%_
                       _%e1415914315%_
                       _%hd1416014319%_
                       _%tl1416114322%_
                       _%__splice1993319934%_
                       _%target1417714228%_
                       _%tl1417914231%_)
                      (let () (declare (not safe)) (_%g1413814191%_)))))
              (let () (declare (not safe)) (_%g1413814191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1413814191%_))))))
                                  (if (gx#stx-pair? _%hd1414614375%_)
                                      (let ((_%e1415914315%_
                                             (gx#syntax-e _%hd1414614375%_)))
                                        (let ((_%tl1416114322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1415914315%_)))
                                              (_%hd1416014319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1415914315%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1414714378%_)
                                              (let ((_%__splice1993319934%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1414714378%_
                                                      '0)))
                                                (let ((_%tl1417914231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993319934%_
                                                          '1)))
                                                      (_%target1417714228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice1993319934%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1417914231%_)
                                                      (_%__match2001120012%_
                                                       _%e1414214361%_
                                                       _%hd1414314365%_
                                                       _%tl1414414368%_
                                                       _%e1414514371%_
                                                       _%hd1414614375%_
                                                       _%tl1414714378%_
                                                       _%e1415914315%_
                                                       _%hd1416014319%_
                                                       _%tl1416114322%_
                                                       _%__splice1993319934%_
                                                       _%target1417714228%_
                                                       _%tl1417914231%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1413814191%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1413814191%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1413814191%_))))))
                          (let () (declare (not safe)) (_%g1413814191%_)))))
                  (let () (declare (not safe)) (_%g1413814191%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_%stx14413%_)
        (letrec ((_%let-bind?14416%_
                  (lambda (_%x15325%_)
                    (let* ((_%__stx2001420015%_ _%x15325%_)
                           (_%g1533015349%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2001420015%_))))
                      (let ((_%__kont2001720018%_
                             (lambda (_%g1533215417%_ _%g1533315419%_)
                               (_%let-head?14419%_ _%g1533315419%_)))
                            (_%__kont2001920020%_
                             (lambda (_%g1534015377%_) '#t))
                            (_%__kont2002120022%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx2001420015%_)
                            (let ((_%e1533415397%_
                                   (gx#syntax-e _%__stx2001420015%_)))
                              (let ((_%tl1533615404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1533415397%_)))
                                    (_%hd1533515401%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1533415397%_))))
                                (if (gx#stx-pair? _%tl1533615404%_)
                                    (let ((_%e1533715407%_
                                           (gx#syntax-e _%tl1533615404%_)))
                                      (let ((_%tl1533915414%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1533715407%_)))
                                            (_%hd1533815411%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1533715407%_))))
                                        (if (gx#stx-null? _%tl1533915414%_)
                                            (_%__kont2001720018%_
                                             _%hd1533815411%_
                                             _%hd1533515401%_)
                                            (_%__kont2002120022%_))))
                                    (if (gx#stx-null? _%tl1533615404%_)
                                        (_%__kont2001920020%_ _%hd1533515401%_)
                                        (_%__kont2002120022%_)))))
                            (_%__kont2002120022%_))))))
                 (_%let-bind14418%_
                  (lambda (_%x15227%_)
                    (let* ((_%__stx2004820049%_ _%x15227%_)
                           (_%g1523115250%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2004820049%_))))
                      (let ((_%__kont2005120052%_
                             (lambda (_%g1523315306%_ _%g1523415308%_)
                               _%x15227%_))
                            (_%__kont2005320054%_
                             (lambda (_%g1524115267%_)
                               (cons (gx#datum->syntax '#f '_)
                                     (cons _%g1524115267%_ '())))))
                        (if (gx#stx-pair? _%__stx2004820049%_)
                            (let ((_%e1523515286%_
                                   (gx#syntax-e _%__stx2004820049%_)))
                              (let ((_%tl1523715293%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1523515286%_)))
                                    (_%hd1523615290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1523515286%_))))
                                (if (gx#stx-pair? _%tl1523715293%_)
                                    (let ((_%e1523815296%_
                                           (gx#syntax-e _%tl1523715293%_)))
                                      (let ((_%tl1524015303%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1523815296%_)))
                                            (_%hd1523915300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1523815296%_))))
                                        (if (gx#stx-null? _%tl1524015303%_)
                                            (_%__kont2005120052%_
                                             _%hd1523915300%_
                                             _%hd1523615290%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1523115250%_)))))
                                    (if (gx#stx-null? _%tl1523715293%_)
                                        (_%__kont2005320054%_ _%hd1523615290%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g1523115250%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g1523115250%_)))))))
                 (_%let-head?14419%_
                  (lambda (_%x15167%_)
                    (let* ((_%__stx2008020081%_ _%x15167%_)
                           (_%g1517115182%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2008020081%_))))
                      (let ((_%__kont2008320084%_
                             (lambda (_%g1517315210%_)
                               (gx#stx-andmap gx#identifier? _%g1517315210%_)))
                            (_%__kont2008520086%_
                             (lambda () (gx#identifier? _%x15167%_))))
                        (if (gx#stx-pair? _%__stx2008020081%_)
                            (let ((_%e1517415200%_
                                   (gx#syntax-e _%__stx2008020081%_)))
                              (let ((_%tl1517615207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1517415200%_)))
                                    (_%hd1517515204%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1517415200%_))))
                                (if (gx#identifier? _%hd1517515204%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21055_|
                                         _%hd1517515204%_)
                                        (_%__kont2008320084%_ _%tl1517615207%_)
                                        (_%__kont2008520086%_))
                                    (_%__kont2008520086%_))))
                            (_%__kont2008520086%_))))))
                 (_%let-head14420%_
                  (lambda (_%x15107%_)
                    (let* ((_%__stx2010020101%_ _%x15107%_)
                           (_%g1511115122%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2010020101%_))))
                      (let ((_%__kont2010320104%_
                             (lambda (_%g1511315150%_) _%g1511315150%_))
                            (_%__kont2010520106%_
                             (lambda () (list _%x15107%_))))
                        (if (gx#stx-pair? _%__stx2010020101%_)
                            (let ((_%e1511415140%_
                                   (gx#syntax-e _%__stx2010020101%_)))
                              (let ((_%tl1511615147%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1511415140%_)))
                                    (_%hd1511515144%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1511415140%_))))
                                (if (gx#identifier? _%hd1511515144%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g21056_|
                                         _%hd1511515144%_)
                                        (_%__kont2010320104%_ _%tl1511615147%_)
                                        (_%__kont2010520106%_))
                                    (_%__kont2010520106%_))))
                            (_%__kont2010520106%_)))))))
          (let* ((_%__stx2012020121%_ _%stx14413%_)
                 (_%g1442414496%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2012020121%_))))
            (let ((_%__kont2012320124%_
                   (lambda (_%g1442615080%_
                            _%g1442715082%_
                            _%g1442815083%_
                            _%g1442915084%_)
                     (cons _%g1442915084%_
                           (cons (cons (cons _%g1442815083%_
                                             (cons _%g1442715082%_ '()))
                                       '())
                                 _%g1442615080%_))))
                  (_%__kont2012520126%_
                   (lambda (_%g1444215002%_ _%g1444315004%_)
                     (cons (gx#datum->syntax '#f 'and)
                           (cons _%g1444315004%_
                                 (cons (cons (gx#datum->syntax '#f 'let)
                                             (cons '()
                                                   (foldr (lambda (_%g1502415027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g1502515030%_)
                    (cons _%g1502415027%_ _%g1502515030%_))
                  '()
                  _%g1444215002%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont2012920130%_
                   (lambda (_%g1446514579%_ _%g1446614581%_)
                     (let* ((_%g1461214638%_
                             (lambda (_%g1461314634%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g1461314634%_)))
                            (_%g1461114915%_
                             (lambda (_%g1461314642%_)
                               (if (gx#stx-pair/null? _%g1461314642%_)
                                   (let ((_g21057_
                                          (gx#syntax-split-splice
                                           _%g1461314642%_
                                           '0)))
                                     (begin
                                       (let ((_g21058_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21057_)
                                                    (##values-length _g21057_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21058_ 2)))
                                             (error "Context expects 2 values"
                                                    _g21058_)))
                                       (let ((_%target1461614645%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21057_ 0)))
                                             (_%tl1461814648%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21057_ 1))))
                                         (if (gx#stx-null? _%tl1461814648%_)
                                             (letrec ((_%loop1461914651%_
                                                       (lambda (_%hd1461714655%_
                                                                _%e1462314658%_
                                                                _%hd1462414659%_)
                                                         (if (gx#stx-pair?
                                                              _%hd1461714655%_)
                                                             (let ((_%e1462014661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd1461714655%_)))
                       (let ((_%lp-hd1462114665%_
                              (let ()
                                (declare (not safe))
                                (##car _%e1462014661%_)))
                             (_%lp-tl1462214668%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e1462014661%_))))
                         (if (gx#stx-pair? _%lp-hd1462114665%_)
                             (let ((_%e1462714671%_
                                    (gx#syntax-e _%lp-hd1462114665%_)))
                               (let ((_%hd1462814675%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e1462714671%_)))
                                     (_%tl1462914678%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e1462714671%_))))
                                 (if (gx#stx-pair? _%tl1462914678%_)
                                     (let ((_%e1463014681%_
                                            (gx#syntax-e _%tl1462914678%_)))
                                       (let ((_%hd1463114685%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e1463014681%_)))
                                             (_%tl1463214688%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e1463014681%_))))
                                         (if (gx#stx-null? _%tl1463214688%_)
                                             (_%loop1461914651%_
                                              _%lp-tl1462214668%_
                                              (cons _%hd1463114685%_
                                                    _%e1462314658%_)
                                              (cons _%hd1462814675%_
                                                    _%hd1462414659%_))
                                             (_%g1461214638%_
                                              _%g1461314642%_))))
                                     (_%g1461214638%_ _%g1461314642%_))))
                             (_%g1461214638%_ _%g1461314642%_))))
                     (let ((_%e1462514691%_ (reverse _%e1462314658%_))
                           (_%hd1462614693%_ (reverse _%hd1462414659%_)))
                       ((lambda (_%g1461414695%_ _%g1461514697%_)
                          (let* ((_%g1471314730%_
                                  (lambda (_%g1471414726%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g1471414726%_)))
                                 (_%g1471214903%_
                                  (lambda (_%g1471414734%_)
                                    (if (gx#stx-pair/null? _%g1471414734%_)
                                        (let ((_g21059_
                                               (gx#syntax-split-splice
                                                _%g1471414734%_
                                                '0)))
                                          (begin
                                            (let ((_g21060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g21059_)
                                                         (##values-length
                                                          _g21059_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g21060_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g21060_)))
                                            (let ((_%target1471614737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21059_
                                                      0)))
                                                  (_%tl1471814740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g21059_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%tl1471814740%_)
                                                  (letrec ((_%loop1471914743%_
                                                            (lambda (_%hd1471714747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$e1472314750%_)
                      (if (gx#stx-pair? _%hd1471714747%_)
                          (let ((_%e1472014752%_
                                 (gx#syntax-e _%hd1471714747%_)))
                            (let ((_%lp-hd1472114756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1472014752%_)))
                                  (_%lp-tl1472214759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1472014752%_))))
                              (_%loop1471914743%_
                               _%lp-tl1472214759%_
                               (cons _%lp-hd1472114756%_ _%$e1472314750%_))))
                          (let ((_%$e1472414762%_ (reverse _%$e1472314750%_)))
                            ((lambda (_%g1471514765%_)
                               (let* ((_%g1478214799%_
                                       (lambda (_%g1478314795%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1478314795%_)))
                                      (_%g1478114891%_
                                       (lambda (_%g1478314803%_)
                                         (if (gx#stx-pair/null?
                                              _%g1478314803%_)
                                             (let ((_g21061_
                                                    (gx#syntax-split-splice
                                                     _%g1478314803%_
                                                     '0)))
                                               (begin
                                                 (let ((_g21062_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g21061_)
                                                              (##values-length
                                                               _g21061_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g21062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g21062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target1478514806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21061_
                                                           0)))
                                                       (_%tl1478714809%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g21061_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl1478714809%_)
                                                       (letrec ((_%loop1478814812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd1478614816%_ _%hd-bind1479214819%_)
                           (if (gx#stx-pair? _%hd1478614816%_)
                               (let ((_%e1478914821%_
                                      (gx#syntax-e _%hd1478614816%_)))
                                 (let ((_%lp-hd1479014825%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1478914821%_)))
                                       (_%lp-tl1479114828%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1478914821%_))))
                                   (_%loop1478814812%_
                                    _%lp-tl1479114828%_
                                    (cons _%lp-hd1479014825%_
                                          _%hd-bind1479214819%_))))
                               (let ((_%hd-bind1479314831%_
                                      (reverse _%hd-bind1479214819%_)))
                                 ((lambda (_%g1478414834%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g1461414695%_
                                                   _%g1471514765%_)
                                                  (foldr (lambda (_%g1485214863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g1485314866%_
                          _%g1485414868%_)
                   (cons (cons (cons _%g1485314866%_ '())
                               (cons _%g1485214863%_ '()))
                         _%g1485414868%_))
                 '()
                 _%g1461414695%_
                 _%g1471514765%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'and)
                                                            (foldr (lambda (_%g1485514871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g1485614874%_)
                             (cons _%g1485514871%_ _%g1485614874%_))
                           (cons (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (begin
                                               (gx#syntax-check-splice-targets
                                                _%g1471514765%_
                                                _%g1478414834%_)
                                               (foldr (lambda (_%g1485714877%_
                                                               _%g1485814880%_
                                                               _%g1485914882%_)
                                                        (cons (cons _%g1485814880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%g1485714877%_ '()))
                      _%g1485914882%_))
              '()
              _%g1471514765%_
              _%g1478414834%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (foldr (lambda (_%g1486014885%_
                                                             _%g1486114888%_)
                                                      (cons _%g1486014885%_
                                                            _%g1486114888%_))
                                                    '()
                                                    _%g1446514579%_)))
                                 '())
                           _%g1471514765%_))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd-bind1479314831%_))))))
                 (_%loop1478814812%_ _%target1478514806%_ '()))
               (_%g1478214799%_ _%g1478314803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g1478214799%_
                                              _%g1478314803%_)))))
                                 (_%g1478114891%_
                                  (gx#stx-map
                                   _%let-head14420%_
                                   (foldr (lambda (_%g1489414897%_
                                                   _%g1489514900%_)
                                            (cons _%g1489414897%_
                                                  _%g1489514900%_))
                                          '()
                                          _%g1461514697%_)))))
                             _%$e1472414762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop1471914743%_
                                                     _%target1471614737%_
                                                     '()))
                                                  (_%g1471314730%_
                                                   _%g1471414734%_)))))
                                        (_%g1471314730%_ _%g1471414734%_)))))
                            (_%g1471214903%_
                             (gx#gentemps
                              (foldr (lambda (_%g1490614909%_ _%g1490714912%_)
                                       (cons _%g1490614909%_ _%g1490714912%_))
                                     '()
                                     _%g1461514697%_)))))
                        _%e1462514691%_
                        _%hd1462614693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop1461914651%_
                                                _%target1461614645%_
                                                '()
                                                '()))
                                             (_%g1461214638%_
                                              _%g1461314642%_)))))
                                   (_%g1461214638%_ _%g1461314642%_)))))
                       (_%g1461114915%_
                        (gx#stx-map
                         _%let-bind14418%_
                         (foldr (lambda (_%g1491814921%_ _%g1491914924%_)
                                  (cons _%g1491814921%_ _%g1491914924%_))
                                '()
                                _%g1446614581%_)))))))
              (let* ((_%__match2021720218%_
                      (lambda (_%e1446714503%_
                               _%hd1446814507%_
                               _%tl1446914510%_
                               _%e1447014513%_
                               _%hd1447114517%_
                               _%tl1447214520%_
                               _%__splice2013120132%_
                               _%target1447314523%_
                               _%tl1447514526%_)
                        (letrec ((_%loop1447614529%_
                                  (lambda (_%hd1447414533%_ _%bind1448014536%_)
                                    (if (gx#stx-pair? _%hd1447414533%_)
                                        (let ((_%e1447714538%_
                                               (gx#syntax-e _%hd1447414533%_)))
                                          (let ((_%lp-tl1447914545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1447714538%_)))
                                                (_%lp-hd1447814542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1447714538%_))))
                                            (_%loop1447614529%_
                                             _%lp-tl1447914545%_
                                             (cons _%lp-hd1447814542%_
                                                   _%bind1448014536%_))))
                                        (let ((_%bind1448114548%_
                                               (reverse _%bind1448014536%_)))
                                          (if (gx#stx-pair/null?
                                               _%tl1447214520%_)
                                              (let ((_%__splice2013320134%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1447214520%_
                                                      '0)))
                                                (let ((_%tl1448414554%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013320134%_
                                                          '1)))
                                                      (_%target1448214551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2013320134%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1448414554%_)
                                                      (letrec ((_%loop1448514557%_
                                                                (lambda (_%hd1448314561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%body1448914564%_)
                          (if (gx#stx-pair? _%hd1448314561%_)
                              (let ((_%e1448614566%_
                                     (gx#syntax-e _%hd1448314561%_)))
                                (let ((_%lp-tl1448814573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1448614566%_)))
                                      (_%lp-hd1448714570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1448614566%_))))
                                  (_%loop1448514557%_
                                   _%lp-tl1448814573%_
                                   (cons _%lp-hd1448714570%_
                                         _%body1448914564%_))))
                              (let ((_%body1449014576%_
                                     (reverse _%body1448914564%_)))
                                (let ((_%g1446514579%_ _%body1449014576%_)
                                      (_%g1446614581%_ _%bind1448114548%_))
                                  (if (gx#stx-andmap
                                       _%let-bind?14416%_
                                       (foldr (lambda (_%g1460314606%_
                                                       _%g1460414609%_)
                                                (cons _%g1460314606%_
                                                      _%g1460414609%_))
                                              '()
                                              _%g1446614581%_))
                                      (_%__kont2012920130%_
                                       _%g1446514579%_
                                       _%g1446614581%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g1442414496%_)))))))))
                (_%loop1448514557%_ _%target1448214551%_ '()))
              (let () (declare (not safe)) (_%g1442414496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g1442414496%_))))))))
                          (_%loop1447614529%_ _%target1447314523%_ '()))))
                     (_%__match2019720198%_
                      (lambda (_%e1444414934%_
                               _%hd1444514938%_
                               _%tl1444614941%_
                               _%e1444714944%_
                               _%hd1444814948%_
                               _%tl1444914951%_
                               _%e1445014954%_
                               _%hd1445114958%_
                               _%tl1445214961%_
                               _%e1445314964%_
                               _%hd1445414968%_
                               _%tl1445514971%_
                               _%__splice2012720128%_
                               _%target1445614974%_
                               _%tl1445814977%_)
                        (letrec ((_%loop1445914980%_
                                  (lambda (_%hd1445714984%_ _%body1446314987%_)
                                    (if (gx#stx-pair? _%hd1445714984%_)
                                        (let ((_%e1446014989%_
                                               (gx#syntax-e _%hd1445714984%_)))
                                          (let ((_%lp-tl1446214996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e1446014989%_)))
                                                (_%lp-hd1446114993%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e1446014989%_))))
                                            (_%loop1445914980%_
                                             _%lp-tl1446214996%_
                                             (cons _%lp-hd1446114993%_
                                                   _%body1446314987%_))))
                                        (let ((_%body1446414999%_
                                               (reverse _%body1446314987%_)))
                                          (_%__kont2012520126%_
                                           _%body1446414999%_
                                           _%hd1445414968%_))))))
                          (_%loop1445914980%_ _%target1445614974%_ '()))))
                     (_%__match2016120162%_
                      (lambda (_%e1443015040%_
                               _%hd1443115044%_
                               _%tl1443215047%_
                               _%e1443315050%_
                               _%hd1443415054%_
                               _%tl1443515057%_
                               _%e1443615060%_
                               _%hd1443715064%_
                               _%tl1443815067%_
                               _%e1443915070%_
                               _%hd1444015074%_
                               _%tl1444115077%_)
                        (let ((_%g1442615080%_ _%tl1443515057%_)
                              (_%g1442715082%_ _%hd1444015074%_)
                              (_%g1442815083%_ _%hd1443715064%_)
                              (_%g1442915084%_ _%hd1443115044%_))
                          (if (_%let-head?14419%_ _%g1442815083%_)
                              (_%__kont2012320124%_
                               _%g1442615080%_
                               _%g1442715082%_
                               _%g1442815083%_
                               _%g1442915084%_)
                              (if (gx#stx-pair? _%hd1443715064%_)
                                  (let ((_%e1445314964%_
                                         (gx#syntax-e _%hd1443715064%_)))
                                    (let ((_%tl1445514971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e1445314964%_)))
                                          (_%hd1445414968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e1445314964%_))))
                                      (if (gx#stx-pair/null? _%hd1443415054%_)
                                          (let ((_%__splice2013120132%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd1443415054%_
                                                  '0)))
                                            (let ((_%tl1447514526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013120132%_
                                                      '1)))
                                                  (_%target1447314523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2013120132%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1447514526%_)
                                                  (_%__match2021720218%_
                                                   _%e1443015040%_
                                                   _%hd1443115044%_
                                                   _%tl1443215047%_
                                                   _%e1443315050%_
                                                   _%hd1443415054%_
                                                   _%tl1443515057%_
                                                   _%__splice2013120132%_
                                                   _%target1447314523%_
                                                   _%tl1447514526%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1442414496%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1442414496%_)))))
                                  (if (gx#stx-pair/null? _%hd1443415054%_)
                                      (let ((_%__splice2013120132%_
                                             (gx#syntax-split-splice->vector
                                              _%hd1443415054%_
                                              '0)))
                                        (let ((_%tl1447514526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013120132%_
                                                  '1)))
                                              (_%target1447314523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice2013120132%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl1447514526%_)
                                              (_%__match2021720218%_
                                               _%e1443015040%_
                                               _%hd1443115044%_
                                               _%tl1443215047%_
                                               _%e1443315050%_
                                               _%hd1443415054%_
                                               _%tl1443515057%_
                                               _%__splice2013120132%_
                                               _%target1447314523%_
                                               _%tl1447514526%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g1442414496%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1442414496%_)))))))))
                (if (gx#stx-pair? _%__stx2012020121%_)
                    (let ((_%e1443015040%_ (gx#syntax-e _%__stx2012020121%_)))
                      (let ((_%tl1443215047%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e1443015040%_)))
                            (_%hd1443115044%_
                             (let ()
                               (declare (not safe))
                               (##car _%e1443015040%_))))
                        (if (gx#stx-pair? _%tl1443215047%_)
                            (let ((_%e1443315050%_
                                   (gx#syntax-e _%tl1443215047%_)))
                              (let ((_%tl1443515057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e1443315050%_)))
                                    (_%hd1443415054%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e1443315050%_))))
                                (if (gx#stx-pair? _%hd1443415054%_)
                                    (let ((_%e1443615060%_
                                           (gx#syntax-e _%hd1443415054%_)))
                                      (let ((_%tl1443815067%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e1443615060%_)))
                                            (_%hd1443715064%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e1443615060%_))))
                                        (if (gx#stx-pair? _%tl1443815067%_)
                                            (let ((_%e1443915070%_
                                                   (gx#syntax-e
                                                    _%tl1443815067%_)))
                                              (let ((_%tl1444115077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e1443915070%_)))
                                                    (_%hd1444015074%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e1443915070%_))))
                                                (if (gx#stx-null?
                                                     _%tl1444115077%_)
                                                    (_%__match2016120162%_
                                                     _%e1443015040%_
                                                     _%hd1443115044%_
                                                     _%tl1443215047%_
                                                     _%e1443315050%_
                                                     _%hd1443415054%_
                                                     _%tl1443515057%_
                                                     _%e1443615060%_
                                                     _%hd1443715064%_
                                                     _%tl1443815067%_
                                                     _%e1443915070%_
                                                     _%hd1444015074%_
                                                     _%tl1444115077%_)
                                                    (if (gx#stx-pair?
                                                         _%hd1443715064%_)
                                                        (let ((_%e1445314964%_
                                                               (gx#syntax-e
                                                                _%hd1443715064%_)))
                                                          (let ((_%tl1445514971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e1445314964%_)))
                        (_%hd1445414968%_
                         (let ()
                           (declare (not safe))
                           (##car _%e1445314964%_))))
                    (if (gx#stx-pair/null? _%hd1443415054%_)
                        (let ((_%__splice2013120132%_
                               (gx#syntax-split-splice->vector
                                _%hd1443415054%_
                                '0)))
                          (let ((_%tl1447514526%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '1)))
                                (_%target1447314523%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '0))))
                            (if (gx#stx-null? _%tl1447514526%_)
                                (_%__match2021720218%_
                                 _%e1443015040%_
                                 _%hd1443115044%_
                                 _%tl1443215047%_
                                 _%e1443315050%_
                                 _%hd1443415054%_
                                 _%tl1443515057%_
                                 _%__splice2013120132%_
                                 _%target1447314523%_
                                 _%tl1447514526%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1442414496%_)))))
                        (let () (declare (not safe)) (_%g1442414496%_)))))
                (if (gx#stx-pair/null? _%hd1443415054%_)
                    (let ((_%__splice2013120132%_
                           (gx#syntax-split-splice->vector
                            _%hd1443415054%_
                            '0)))
                      (let ((_%tl1447514526%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '1)))
                            (_%target1447314523%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '0))))
                        (if (gx#stx-null? _%tl1447514526%_)
                            (_%__match2021720218%_
                             _%e1443015040%_
                             _%hd1443115044%_
                             _%tl1443215047%_
                             _%e1443315050%_
                             _%hd1443415054%_
                             _%tl1443515057%_
                             _%__splice2013120132%_
                             _%target1447314523%_
                             _%tl1447514526%_)
                            (let () (declare (not safe)) (_%g1442414496%_)))))
                    (let () (declare (not safe)) (_%g1442414496%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _%hd1443715064%_)
                                                (let ((_%e1445314964%_
                                                       (gx#syntax-e
                                                        _%hd1443715064%_)))
                                                  (let ((_%tl1445514971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e1445314964%_)))
                                                        (_%hd1445414968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e1445314964%_))))
                                                    (if (gx#stx-null?
                                                         _%tl1445514971%_)
                                                        (if (gx#stx-null?
                                                             _%tl1443815067%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tl1443515057%_)
                        (let ((_%__splice2012720128%_
                               (gx#syntax-split-splice->vector
                                _%tl1443515057%_
                                '0)))
                          (let ((_%tl1445814977%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012720128%_ '1)))
                                (_%target1445614974%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2012720128%_ '0))))
                            (if (gx#stx-null? _%tl1445814977%_)
                                (_%__match2019720198%_
                                 _%e1443015040%_
                                 _%hd1443115044%_
                                 _%tl1443215047%_
                                 _%e1443315050%_
                                 _%hd1443415054%_
                                 _%tl1443515057%_
                                 _%e1443615060%_
                                 _%hd1443715064%_
                                 _%tl1443815067%_
                                 _%e1445314964%_
                                 _%hd1445414968%_
                                 _%tl1445514971%_
                                 _%__splice2012720128%_
                                 _%target1445614974%_
                                 _%tl1445814977%_)
                                (if (gx#stx-pair/null? _%hd1443415054%_)
                                    (let ((_%__splice2013120132%_
                                           (gx#syntax-split-splice->vector
                                            _%hd1443415054%_
                                            '0)))
                                      (let ((_%tl1447514526%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013120132%_
                                                '1)))
                                            (_%target1447314523%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2013120132%_
                                                '0))))
                                        (if (gx#stx-null? _%tl1447514526%_)
                                            (_%__match2021720218%_
                                             _%e1443015040%_
                                             _%hd1443115044%_
                                             _%tl1443215047%_
                                             _%e1443315050%_
                                             _%hd1443415054%_
                                             _%tl1443515057%_
                                             _%__splice2013120132%_
                                             _%target1447314523%_
                                             _%tl1447514526%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g1442414496%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g1442414496%_))))))
                        (if (gx#stx-pair/null? _%hd1443415054%_)
                            (let ((_%__splice2013120132%_
                                   (gx#syntax-split-splice->vector
                                    _%hd1443415054%_
                                    '0)))
                              (let ((_%tl1447514526%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013120132%_
                                        '1)))
                                    (_%target1447314523%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2013120132%_
                                        '0))))
                                (if (gx#stx-null? _%tl1447514526%_)
                                    (_%__match2021720218%_
                                     _%e1443015040%_
                                     _%hd1443115044%_
                                     _%tl1443215047%_
                                     _%e1443315050%_
                                     _%hd1443415054%_
                                     _%tl1443515057%_
                                     _%__splice2013120132%_
                                     _%target1447314523%_
                                     _%tl1447514526%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g1442414496%_)))))
                            (let () (declare (not safe)) (_%g1442414496%_))))
                    (if (gx#stx-pair/null? _%hd1443415054%_)
                        (let ((_%__splice2013120132%_
                               (gx#syntax-split-splice->vector
                                _%hd1443415054%_
                                '0)))
                          (let ((_%tl1447514526%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '1)))
                                (_%target1447314523%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice2013120132%_ '0))))
                            (if (gx#stx-null? _%tl1447514526%_)
                                (_%__match2021720218%_
                                 _%e1443015040%_
                                 _%hd1443115044%_
                                 _%tl1443215047%_
                                 _%e1443315050%_
                                 _%hd1443415054%_
                                 _%tl1443515057%_
                                 _%__splice2013120132%_
                                 _%target1447314523%_
                                 _%tl1447514526%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g1442414496%_)))))
                        (let () (declare (not safe)) (_%g1442414496%_))))
                (if (gx#stx-pair/null? _%hd1443415054%_)
                    (let ((_%__splice2013120132%_
                           (gx#syntax-split-splice->vector
                            _%hd1443415054%_
                            '0)))
                      (let ((_%tl1447514526%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '1)))
                            (_%target1447314523%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2013120132%_ '0))))
                        (if (gx#stx-null? _%tl1447514526%_)
                            (_%__match2021720218%_
                             _%e1443015040%_
                             _%hd1443115044%_
                             _%tl1443215047%_
                             _%e1443315050%_
                             _%hd1443415054%_
                             _%tl1443515057%_
                             _%__splice2013120132%_
                             _%target1447314523%_
                             _%tl1447514526%_)
                            (let () (declare (not safe)) (_%g1442414496%_)))))
                    (let () (declare (not safe)) (_%g1442414496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%hd1443415054%_)
                                                    (let ((_%__splice2013120132%_
                                                           (gx#syntax-split-splice->vector
                                                            _%hd1443415054%_
                                                            '0)))
                                                      (let ((_%tl1447514526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice2013120132%_ '1)))
                    (_%target1447314523%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice2013120132%_ '0))))
                (if (gx#stx-null? _%tl1447514526%_)
                    (_%__match2021720218%_
                     _%e1443015040%_
                     _%hd1443115044%_
                     _%tl1443215047%_
                     _%e1443315050%_
                     _%hd1443415054%_
                     _%tl1443515057%_
                     _%__splice2013120132%_
                     _%target1447314523%_
                     _%tl1447514526%_)
                    (let () (declare (not safe)) (_%g1442414496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g1442414496%_)))))))
                                    (if (gx#stx-pair/null? _%hd1443415054%_)
                                        (let ((_%__splice2013120132%_
                                               (gx#syntax-split-splice->vector
                                                _%hd1443415054%_
                                                '0)))
                                          (let ((_%tl1447514526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013120132%_
                                                    '1)))
                                                (_%target1447314523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2013120132%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl1447514526%_)
                                                (_%__match2021720218%_
                                                 _%e1443015040%_
                                                 _%hd1443115044%_
                                                 _%tl1443215047%_
                                                 _%e1443315050%_
                                                 _%hd1443415054%_
                                                 _%tl1443515057%_
                                                 _%__splice2013120132%_
                                                 _%target1447314523%_
                                                 _%tl1447514526%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g1442414496%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g1442414496%_))))))
                            (let () (declare (not safe)) (_%g1442414496%_)))))
                    (let () (declare (not safe)) (_%g1442414496%_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_%$stx15442%_)
        (let* ((_%__stx2022020221%_ _%$stx15442%_)
               (_%g1544815499%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2022020221%_))))
          (let ((_%__kont2022320224%_ (lambda () '#t))
                (_%__kont2022520226%_
                 (lambda (_%g1545615653%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g1566915672%_ _%g1567015675%_)
                                        (cons _%g1566915672%_ _%g1567015675%_))
                                      '()
                                      _%g1545615653%_)))))
                (_%__kont2022920230%_
                 (lambda (_%g1547215564%_
                          _%g1547315566%_
                          _%g1547415567%_
                          _%g1547515568%_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _%g1547415567%_ '())
                               (cons (cons _%g1547515568%_
                                           (cons _%g1547315566%_
                                                 (foldr (lambda (_%g1558915592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g1559015595%_)
                  (cons _%g1558915592%_ _%g1559015595%_))
                '()
                _%g1547215564%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match2029720298%_
                    (lambda (_%e1547615506%_
                             _%hd1547715510%_
                             _%tl1547815513%_
                             _%e1547915516%_
                             _%hd1548015520%_
                             _%tl1548115523%_
                             _%e1548215526%_
                             _%hd1548315530%_
                             _%tl1548415533%_
                             _%__splice2023120232%_
                             _%target1548515536%_
                             _%tl1548715539%_)
                      (letrec ((_%loop1548815542%_
                                (lambda (_%hd1548615546%_ _%body1549215549%_)
                                  (if (gx#stx-pair? _%hd1548615546%_)
                                      (let ((_%e1548915551%_
                                             (gx#syntax-e _%hd1548615546%_)))
                                        (let ((_%lp-tl1549115558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1548915551%_)))
                                              (_%lp-hd1549015555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1548915551%_))))
                                          (_%loop1548815542%_
                                           _%lp-tl1549115558%_
                                           (cons _%lp-hd1549015555%_
                                                 _%body1549215549%_))))
                                      (let ((_%body1549315561%_
                                             (reverse _%body1549215549%_)))
                                        (_%__kont2022920230%_
                                         _%body1549315561%_
                                         _%tl1548415533%_
                                         _%hd1548315530%_
                                         _%hd1547715510%_))))))
                        (_%loop1548815542%_ _%target1548515536%_ '()))))
                   (_%__match2027120272%_
                    (lambda (_%e1545715605%_
                             _%hd1545815609%_
                             _%tl1545915612%_
                             _%e1546015615%_
                             _%hd1546115619%_
                             _%tl1546215622%_
                             _%__splice2022720228%_
                             _%target1546315625%_
                             _%tl1546515628%_)
                      (letrec ((_%loop1546615631%_
                                (lambda (_%hd1546415635%_ _%body1547015638%_)
                                  (if (gx#stx-pair? _%hd1546415635%_)
                                      (let ((_%e1546715640%_
                                             (gx#syntax-e _%hd1546415635%_)))
                                        (let ((_%lp-tl1546915647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1546715640%_)))
                                              (_%lp-hd1546815644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1546715640%_))))
                                          (_%loop1546615631%_
                                           _%lp-tl1546915647%_
                                           (cons _%lp-hd1546815644%_
                                                 _%body1547015638%_))))
                                      (let ((_%body1547115650%_
                                             (reverse _%body1547015638%_)))
                                        (_%__kont2022520226%_
                                         _%body1547115650%_))))))
                        (_%loop1546615631%_ _%target1546315625%_ '())))))
              (if (gx#stx-pair? _%__stx2022020221%_)
                  (let ((_%e1545015685%_ (gx#syntax-e _%__stx2022020221%_)))
                    (let ((_%tl1545215692%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1545015685%_)))
                          (_%hd1545115689%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1545015685%_))))
                      (if (gx#stx-pair? _%tl1545215692%_)
                          (let ((_%e1545315695%_
                                 (gx#syntax-e _%tl1545215692%_)))
                            (let ((_%tl1545515702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1545315695%_)))
                                  (_%hd1545415699%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1545315695%_))))
                              (if (gx#stx-null? _%hd1545415699%_)
                                  (if (gx#stx-null? _%tl1545515702%_)
                                      (_%__kont2022320224%_)
                                      (if (gx#stx-pair/null? _%tl1545515702%_)
                                          (let ((_%__splice2022720228%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl1545515702%_
                                                  '0)))
                                            (let ((_%tl1546515628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022720228%_
                                                      '1)))
                                                  (_%target1546315625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice2022720228%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl1546515628%_)
                                                  (_%__match2027120272%_
                                                   _%e1545015685%_
                                                   _%hd1545115689%_
                                                   _%tl1545215692%_
                                                   _%e1545315695%_
                                                   _%hd1545415699%_
                                                   _%tl1545515702%_
                                                   _%__splice2022720228%_
                                                   _%target1546315625%_
                                                   _%tl1546515628%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1544815499%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g1544815499%_))))
                                  (if (gx#stx-pair? _%hd1545415699%_)
                                      (let ((_%e1548215526%_
                                             (gx#syntax-e _%hd1545415699%_)))
                                        (let ((_%tl1548415533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1548215526%_)))
                                              (_%hd1548315530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1548215526%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl1545515702%_)
                                              (let ((_%__splice2023120232%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl1545515702%_
                                                      '0)))
                                                (let ((_%tl1548715539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023120232%_
                                                          '1)))
                                                      (_%target1548515536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2023120232%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl1548715539%_)
                                                      (_%__match2029720298%_
                                                       _%e1545015685%_
                                                       _%hd1545115689%_
                                                       _%tl1545215692%_
                                                       _%e1545315695%_
                                                       _%hd1545415699%_
                                                       _%tl1545515702%_
                                                       _%e1548215526%_
                                                       _%hd1548315530%_
                                                       _%tl1548415533%_
                                                       _%__splice2023120232%_
                                                       _%target1548515536%_
                                                       _%tl1548715539%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g1544815499%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1544815499%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1544815499%_))))))
                          (let () (declare (not safe)) (_%g1544815499%_)))))
                  (let () (declare (not safe)) (_%g1544815499%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_%$stx15715%_)
        (let* ((_%__stx2030020301%_ _%$stx15715%_)
               (_%g1572615804%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2030020301%_))))
          (let ((_%__kont2030320304%_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (_%__kont2030520306%_
                 (lambda (_%g1573116135%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1573116135%_ '()))))
                (_%__kont2030720308%_
                 (lambda (_%g1574116083%_)
                   (cons (gx#datum->syntax '#f 'quasiquote)
                         (cons _%g1574116083%_ '()))))
                (_%__kont2030920310%_
                 (lambda (_%g1575116030%_) _%g1575116030%_))
                (_%__kont2031120312%_
                 (lambda (_%g1576215972%_ _%g1576315974%_) _%g1576315974%_))
                (_%__kont2031320314%_
                 (lambda (_%g1577315914%_
                          _%g1577415916%_
                          _%g1577515917%_
                          _%g1577615918%_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _%g1577615918%_ _%g1577315914%_)
                                     (cons _%g1577515917%_ '()))))))
                (_%__kont2031520316%_
                 (lambda (_%g1578615860%_ _%g1578715862%_ _%g1578815863%_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _%g1578715862%_
                               (cons (cons _%g1578815863%_ _%g1578615860%_)
                                     '())))))
                (_%__kont2031720318%_
                 (lambda (_%g1579515821%_) _%g1579515821%_)))
            (let* ((_%__match2043920440%_
                    (lambda (_%e1577715884%_
                             _%hd1577815888%_
                             _%tl1577915891%_
                             _%e1578015894%_
                             _%hd1578115898%_
                             _%tl1578215901%_
                             _%e1578315904%_
                             _%hd1578415908%_
                             _%tl1578515911%_)
                      (let ((_%g1577315914%_ _%tl1578515911%_)
                            (_%g1577415916%_ _%hd1578415908%_)
                            (_%g1577515917%_ _%hd1578115898%_)
                            (_%g1577615918%_ _%hd1577815888%_))
                        (if (gx#ellipsis? _%g1577415916%_)
                            (_%__kont2031320314%_
                             _%g1577315914%_
                             _%g1577415916%_
                             _%g1577515917%_
                             _%g1577615918%_)
                            (_%__kont2031520316%_
                             _%tl1578215901%_
                             _%hd1578115898%_
                             _%hd1577815888%_)))))
                   (_%__match2042120422%_
                    (lambda (_%e1576415942%_
                             _%hd1576515946%_
                             _%tl1576615949%_
                             _%e1576715952%_
                             _%hd1576815956%_
                             _%tl1576915959%_
                             _%e1577015962%_
                             _%hd1577115966%_
                             _%tl1577215969%_)
                      (let ((_%g1576215972%_ _%hd1577115966%_)
                            (_%g1576315974%_ _%hd1576815956%_))
                        (if (gx#ellipsis? _%g1576215972%_)
                            (_%__kont2031120312%_
                             _%g1576215972%_
                             _%g1576315974%_)
                            (_%__match2043920440%_
                             _%e1576415942%_
                             _%hd1576515946%_
                             _%tl1576615949%_
                             _%e1576715952%_
                             _%hd1576815956%_
                             _%tl1576915959%_
                             _%e1577015962%_
                             _%hd1577115966%_
                             _%tl1577215969%_))))))
              (if (gx#stx-pair? _%__stx2030020301%_)
                  (let ((_%e1572816157%_ (gx#syntax-e _%__stx2030020301%_)))
                    (let ((_%tl1573016164%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1572816157%_)))
                          (_%hd1572916161%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1572816157%_))))
                      (if (gx#stx-null? _%tl1573016164%_)
                          (_%__kont2030320304%_)
                          (if (gx#stx-pair? _%tl1573016164%_)
                              (let ((_%e1573516115%_
                                     (gx#syntax-e _%tl1573016164%_)))
                                (let ((_%tl1573716122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1573516115%_)))
                                      (_%hd1573616119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1573516115%_))))
                                  (if (gx#identifier? _%hd1573616119%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21063_|
                                           _%hd1573616119%_)
                                          (if (gx#stx-pair? _%tl1573716122%_)
                                              (let ((_%e1573816125%_
                                                     (gx#syntax-e
                                                      _%tl1573716122%_)))
                                                (let ((_%tl1574016132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1573816125%_)))
                                                      (_%hd1573916129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1573816125%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1574016132%_)
                                                      (_%__kont2030520306%_
                                                       _%hd1573916129%_)
                                                      (_%__match2043920440%_
                                                       _%e1572816157%_
                                                       _%hd1572916161%_
                                                       _%tl1573016164%_
                                                       _%e1573516115%_
                                                       _%hd1573616119%_
                                                       _%tl1573716122%_
                                                       _%e1573816125%_
                                                       _%hd1573916129%_
                                                       _%tl1574016132%_))))
                                              (_%__kont2031520316%_
                                               _%tl1573716122%_
                                               _%hd1573616119%_
                                               _%hd1572916161%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21064_|
                                               _%hd1573616119%_)
                                              (if (gx#stx-pair?
                                                   _%tl1573716122%_)
                                                  (let ((_%e1574816073%_
                                                         (gx#syntax-e
                                                          _%tl1573716122%_)))
                                                    (let ((_%tl1575016080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1574816073%_)))
                                                          (_%hd1574916077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1574816073%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1575016080%_)
                                                          (_%__kont2030720308%_
                                                           _%hd1574916077%_)
                                                          (_%__match2043920440%_
                                                           _%e1572816157%_
                                                           _%hd1572916161%_
                                                           _%tl1573016164%_
                                                           _%e1573516115%_
                                                           _%hd1573616119%_
                                                           _%tl1573716122%_
                                                           _%e1574816073%_
                                                           _%hd1574916077%_
                                                           _%tl1575016080%_))))
                                                  (_%__kont2031520316%_
                                                   _%tl1573716122%_
                                                   _%hd1573616119%_
                                                   _%hd1572916161%_))
                                              (if (gx#stx-pair?
                                                   _%tl1573716122%_)
                                                  (let ((_%e1577015962%_
                                                         (gx#syntax-e
                                                          _%tl1573716122%_)))
                                                    (let ((_%tl1577215969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1577015962%_)))
                                                          (_%hd1577115966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1577015962%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1577215969%_)
                                                          (_%__match2042120422%_
                                                           _%e1572816157%_
                                                           _%hd1572916161%_
                                                           _%tl1573016164%_
                                                           _%e1573516115%_
                                                           _%hd1573616119%_
                                                           _%tl1573716122%_
                                                           _%e1577015962%_
                                                           _%hd1577115966%_
                                                           _%tl1577215969%_)
                                                          (_%__match2043920440%_
                                                           _%e1572816157%_
                                                           _%hd1572916161%_
                                                           _%tl1573016164%_
                                                           _%e1573516115%_
                                                           _%hd1573616119%_
                                                           _%tl1573716122%_
                                                           _%e1577015962%_
                                                           _%hd1577115966%_
                                                           _%tl1577215969%_))))
                                                  (_%__kont2031520316%_
                                                   _%tl1573716122%_
                                                   _%hd1573616119%_
                                                   _%hd1572916161%_))))
                                      (if (gx#stx-datum? _%hd1573616119%_)
                                          (let ((_%e1575816016%_
                                                 (gx#stx-e _%hd1573616119%_)))
                                            (if (equal? _%e1575816016%_ '::)
                                                (if (gx#stx-pair?
                                                     _%tl1573716122%_)
                                                    (let ((_%e1575916020%_
                                                           (gx#syntax-e
                                                            _%tl1573716122%_)))
                                                      (let ((_%tl1576116027%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1575916020%_)))
                    (_%hd1576016024%_
                     (let () (declare (not safe)) (##car _%e1575916020%_))))
                (if (gx#stx-null? _%tl1576116027%_)
                    (_%__kont2030920310%_ _%hd1576016024%_)
                    (_%__match2043920440%_
                     _%e1572816157%_
                     _%hd1572916161%_
                     _%tl1573016164%_
                     _%e1573516115%_
                     _%hd1573616119%_
                     _%tl1573716122%_
                     _%e1575916020%_
                     _%hd1576016024%_
                     _%tl1576116027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031520316%_
                                                     _%tl1573716122%_
                                                     _%hd1573616119%_
                                                     _%hd1572916161%_))
                                                (if (gx#stx-pair?
                                                     _%tl1573716122%_)
                                                    (let ((_%e1577015962%_
                                                           (gx#syntax-e
                                                            _%tl1573716122%_)))
                                                      (let ((_%tl1577215969%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e1577015962%_)))
                    (_%hd1577115966%_
                     (let () (declare (not safe)) (##car _%e1577015962%_))))
                (if (gx#stx-null? _%tl1577215969%_)
                    (_%__match2042120422%_
                     _%e1572816157%_
                     _%hd1572916161%_
                     _%tl1573016164%_
                     _%e1573516115%_
                     _%hd1573616119%_
                     _%tl1573716122%_
                     _%e1577015962%_
                     _%hd1577115966%_
                     _%tl1577215969%_)
                    (_%__match2043920440%_
                     _%e1572816157%_
                     _%hd1572916161%_
                     _%tl1573016164%_
                     _%e1573516115%_
                     _%hd1573616119%_
                     _%tl1573716122%_
                     _%e1577015962%_
                     _%hd1577115966%_
                     _%tl1577215969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont2031520316%_
                                                     _%tl1573716122%_
                                                     _%hd1573616119%_
                                                     _%hd1572916161%_))))
                                          (if (gx#stx-pair? _%tl1573716122%_)
                                              (let ((_%e1577015962%_
                                                     (gx#syntax-e
                                                      _%tl1573716122%_)))
                                                (let ((_%tl1577215969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1577015962%_)))
                                                      (_%hd1577115966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1577015962%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1577215969%_)
                                                      (_%__match2042120422%_
                                                       _%e1572816157%_
                                                       _%hd1572916161%_
                                                       _%tl1573016164%_
                                                       _%e1573516115%_
                                                       _%hd1573616119%_
                                                       _%tl1573716122%_
                                                       _%e1577015962%_
                                                       _%hd1577115966%_
                                                       _%tl1577215969%_)
                                                      (_%__match2043920440%_
                                                       _%e1572816157%_
                                                       _%hd1572916161%_
                                                       _%tl1573016164%_
                                                       _%e1573516115%_
                                                       _%hd1573616119%_
                                                       _%tl1573716122%_
                                                       _%e1577015962%_
                                                       _%hd1577115966%_
                                                       _%tl1577215969%_))))
                                              (_%__kont2031520316%_
                                               _%tl1573716122%_
                                               _%hd1573616119%_
                                               _%hd1572916161%_))))))
                              (_%__kont2031720318%_ _%tl1573016164%_)))))
                  (let () (declare (not safe)) (_%g1572615804%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_%stx16175%_)
        (letrec ((_%simple-quote?16178%_
                  (lambda (_%e16868%_)
                    (let* ((_%__stx2046020461%_ _%e16868%_)
                           (_%g1687616913%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2046020461%_))))
                      (let ((_%__kont2046320464%_ (lambda () '#f))
                            (_%__kont2046520466%_ (lambda () '#f))
                            (_%__kont2046720468%_
                             (lambda (_%g1689017025%_ _%g1689117027%_)
                               (if (_%simple-quote?16178%_ _%g1689117027%_)
                                   (_%simple-quote?16178%_ _%g1689017025%_)
                                   '#f)))
                            (_%__kont2046920470%_
                             (lambda (_%g1689516986%_)
                               (_%simple-quote?16178%_
                                (foldr (lambda (_%g1699917002%_
                                                _%g1700017005%_)
                                         (cons _%g1699917002%_
                                               _%g1700017005%_))
                                       '()
                                       _%g1689516986%_))))
                            (_%__kont2047320474%_
                             (lambda (_%g1690616935%_)
                               (_%simple-quote?16178%_ _%g1690616935%_)))
                            (_%__kont2047520476%_ (lambda () '#t)))
                        (let* ((_%g1687416947%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2046020461%_)
                                      (let ((_%e1690716931%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2046020461%_))))
                                        (_%__kont2047320474%_ _%e1690716931%_))
                                      (_%__kont2047520476%_))))
                               (_%__match2053120532%_
                                (lambda (_%e1689616954%_
                                         _%__splice2047120472%_
                                         _%target1689716958%_
                                         _%tl1689916961%_)
                                  (letrec ((_%loop1690016964%_
                                            (lambda (_%hd1689816968%_
                                                     _%e1690416971%_)
                                              (if (gx#stx-pair?
                                                   _%hd1689816968%_)
                                                  (let ((_%e1690116973%_
                                                         (gx#syntax-e
                                                          _%hd1689816968%_)))
                                                    (let ((_%lp-tl1690316980%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1690116973%_)))
                                                          (_%lp-hd1690216977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1690116973%_))))
                                                      (_%loop1690016964%_
                                                       _%lp-tl1690316980%_
                                                       (cons _%lp-hd1690216977%_
                                                             _%e1690416971%_))))
                                                  (let ((_%e1690516983%_
                                                         (reverse _%e1690416971%_)))
                                                    (_%__kont2046920470%_
                                                     _%e1690516983%_))))))
                                    (_%loop1690016964%_
                                     _%target1689716958%_
                                     '()))))
                               (_%g1687317008%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2046020461%_)
                                      (let ((_%e1689616954%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2046020461%_))))
                                        (if (gx#stx-pair/null? _%e1689616954%_)
                                            (let ((_%__splice2047120472%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1689616954%_
                                                    '0)))
                                              (let ((_%tl1689916961%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047120472%_
                                                        '1)))
                                                    (_%target1689716958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2047120472%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1689916961%_)
                                                    (_%__match2053120532%_
                                                     _%e1689616954%_
                                                     _%__splice2047120472%_
                                                     _%target1689716958%_
                                                     _%tl1689916961%_)
                                                    (_%__kont2047520476%_))))
                                            (_%__kont2047520476%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1687416947%_))))))
                          (if (gx#stx-pair? _%__stx2046020461%_)
                              (let ((_%e1687817076%_
                                     (gx#syntax-e _%__stx2046020461%_)))
                                (let ((_%tl1688017083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1687817076%_)))
                                      (_%hd1687917080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1687817076%_))))
                                  (if (gx#identifier? _%hd1687917080%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21065_|
                                           _%hd1687917080%_)
                                          (if (gx#stx-pair? _%tl1688017083%_)
                                              (let ((_%e1688117086%_
                                                     (gx#syntax-e
                                                      _%tl1688017083%_)))
                                                (let ((_%tl1688317093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1688117086%_)))
                                                      (_%hd1688217090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1688117086%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1688317093%_)
                                                      (_%__kont2046320464%_)
                                                      (_%__kont2046720468%_
                                                       _%tl1688017083%_
                                                       _%hd1687917080%_))))
                                              (_%__kont2046720468%_
                                               _%tl1688017083%_
                                               _%hd1687917080%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21066_|
                                               _%hd1687917080%_)
                                              (if (gx#stx-pair?
                                                   _%tl1688017083%_)
                                                  (let ((_%e1688717055%_
                                                         (gx#syntax-e
                                                          _%tl1688017083%_)))
                                                    (let ((_%tl1688917062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1688717055%_)))
                                                          (_%hd1688817059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1688717055%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1688917062%_)
                                                          (_%__kont2046520466%_)
                                                          (_%__kont2046720468%_
                                                           _%tl1688017083%_
                                                           _%hd1687917080%_))))
                                                  (_%__kont2046720468%_
                                                   _%tl1688017083%_
                                                   _%hd1687917080%_))
                                              (_%__kont2046720468%_
                                               _%tl1688017083%_
                                               _%hd1687917080%_)))
                                      (_%__kont2046720468%_
                                       _%tl1688017083%_
                                       _%hd1687917080%_))))
                              (let ()
                                (declare (not safe))
                                (_%g1687317008%_))))))))
                 (_%generate16180%_
                  (lambda (_%e16242%_ _%d16244%_)
                    (let* ((_%__stx2053820539%_ _%e16242%_)
                           (_%g1625316311%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2053820539%_))))
                      (let ((_%__kont2054120542%_
                             (lambda (_%g1625516820%_)
                               (let* ((_%g1683316841%_
                                       (lambda (_%g1683416837%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1683416837%_)))
                                      (_%g1683216860%_
                                       (lambda (_%g1683416845%_)
                                         ((lambda (_%g1683516848%_)
                                            (cons (gx#datum->syntax '#f 'list)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quasiquote)
                            '()))
                (cons _%g1683516848%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1683416845%_))))
                                 (_%g1683216860%_
                                  (_%generate16180%_
                                   _%g1625516820%_
                                   (fx1+ _%d16244%_))))))
                            (_%__kont2054320544%_
                             (lambda (_%g1626216749%_)
                               (if (fxzero? _%d16244%_)
                                   _%g1626216749%_
                                   (let* ((_%g1676216770%_
                                           (lambda (_%g1676316766%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1676316766%_)))
                                          (_%g1676116789%_
                                           (lambda (_%g1676316774%_)
                                             ((lambda (_%g1676416777%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote) '()))
                    (cons _%g1676416777%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1676316774%_))))
                                     (_%g1676116789%_
                                      (_%generate16180%_
                                       _%g1626216749%_
                                       (fx1- _%d16244%_)))))))
                            (_%__kont2054520546%_
                             (lambda (_%g1626916678%_)
                               (if (fxzero? _%d16244%_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _%g1626916678%_
                                                           '()))))
                                   (let* ((_%g1669116699%_
                                           (lambda (_%g1669216695%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g1669216695%_)))
                                          (_%g1669016718%_
                                           (lambda (_%g1669216703%_)
                                             ((lambda (_%g1669316706%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'list)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons (gx#datum->syntax '#f 'unquote-splicing) '()))
                    (cons _%g1669316706%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g1669216703%_))))
                                     (_%g1669016718%_
                                      (_%generate16180%_
                                       _%g1626916678%_
                                       (fx1- _%d16244%_)))))))
                            (_%__kont2054720548%_
                             (lambda (_%g1627616603%_ _%g1627716605%_)
                               (let* ((_%g1662016628%_
                                       (lambda (_%g1662116624%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1662116624%_)))
                                      (_%g1661916647%_
                                       (lambda (_%g1662116632%_)
                                         ((lambda (_%g1662216635%_)
                                            (cons (gx#datum->syntax '#f 'foldr)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'cons)
                                                        (cons _%g1662216635%_
                                                              (cons _%g1627716605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g1662116632%_))))
                                 (_%g1661916647%_
                                  (_%generate16180%_
                                   _%g1627616603%_
                                   _%d16244%_)))))
                            (_%__kont2054920550%_
                             (lambda (_%g1628716489%_ _%g1628816491%_)
                               (let* ((_%g1650216517%_
                                       (lambda (_%g1650316513%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1650316513%_)))
                                      (_%g1650116562%_
                                       (lambda (_%g1650316521%_)
                                         (if (gx#stx-pair? _%g1650316521%_)
                                             (let ((_%e1650616524%_
                                                    (gx#syntax-e
                                                     _%g1650316521%_)))
                                               (let ((_%hd1650716528%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e1650616524%_)))
                                                     (_%tl1650816531%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e1650616524%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl1650816531%_)
                                                     (let ((_%e1650916534%_
                                                            (gx#syntax-e
                                                             _%tl1650816531%_)))
                                                       (let ((_%hd1651016538%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e1650916534%_)))
                     (_%tl1651116541%_
                      (let () (declare (not safe)) (##cdr _%e1650916534%_))))
                 (if (gx#stx-null? _%tl1651116541%_)
                     ((lambda (_%g1650416544%_ _%g1650516546%_)
                        (cons (gx#datum->syntax '#f 'cons)
                              (cons _%g1650516546%_
                                    (cons _%g1650416544%_ '()))))
                      _%hd1651016538%_
                      _%hd1650716528%_)
                     (_%g1650216517%_ _%g1650316521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g1650216517%_
                                                      _%g1650316521%_))))
                                             (_%g1650216517%_
                                              _%g1650316521%_)))))
                                 (_%g1650116562%_
                                  (list (_%generate16180%_
                                         _%g1628816491%_
                                         _%d16244%_)
                                        (_%generate16180%_
                                         _%g1628716489%_
                                         _%d16244%_))))))
                            (_%__kont2055120552%_
                             (lambda (_%g1629216419%_)
                               (let* ((_%g1643316441%_
                                       (lambda (_%g1643416437%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1643416437%_)))
                                      (_%g1643216460%_
                                       (lambda (_%g1643416445%_)
                                         ((lambda (_%g1643516448%_)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'list->vector)
                                                  (cons _%g1643516448%_ '())))
                                          _%g1643416445%_))))
                                 (_%g1643216460%_
                                  (_%generate16180%_
                                   (foldr (lambda (_%g1646316466%_
                                                   _%g1646416469%_)
                                            (cons _%g1646316466%_
                                                  _%g1646416469%_))
                                          '()
                                          _%g1629216419%_)
                                   _%d16244%_)))))
                            (_%__kont2055520556%_
                             (lambda (_%g1630316339%_)
                               (let* ((_%g1634916357%_
                                       (lambda (_%g1635016353%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g1635016353%_)))
                                      (_%g1634816376%_
                                       (lambda (_%g1635016361%_)
                                         ((lambda (_%g1635116364%_)
                                            (cons (gx#datum->syntax '#f 'box)
                                                  (cons _%g1635116364%_ '())))
                                          _%g1635016361%_))))
                                 (_%g1634816376%_
                                  (_%generate16180%_
                                   _%g1630316339%_
                                   _%d16244%_)))))
                            (_%__kont2055720558%_
                             (lambda (_%g1630516318%_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%g1630516318%_ '())))))
                        (let* ((_%g1625116380%_
                                (lambda ()
                                  (if (gx#stx-box? _%__stx2053820539%_)
                                      (let ((_%e1630416335%_
                                             (unbox (gx#syntax-e
                                                     _%__stx2053820539%_))))
                                        (_%__kont2055520556%_ _%e1630416335%_))
                                      (_%__kont2055720558%_
                                       _%__stx2053820539%_))))
                               (_%__match2065720658%_
                                (lambda (_%e1629316387%_
                                         _%__splice2055320554%_
                                         _%target1629416391%_
                                         _%tl1629616394%_)
                                  (letrec ((_%loop1629716397%_
                                            (lambda (_%hd1629516401%_
                                                     _%e1630116404%_)
                                              (if (gx#stx-pair?
                                                   _%hd1629516401%_)
                                                  (let ((_%e1629816406%_
                                                         (gx#syntax-e
                                                          _%hd1629516401%_)))
                                                    (let ((_%lp-tl1630016413%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1629816406%_)))
                                                          (_%lp-hd1629916410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1629816406%_))))
                                                      (_%loop1629716397%_
                                                       _%lp-tl1630016413%_
                                                       (cons _%lp-hd1629916410%_
                                                             _%e1630116404%_))))
                                                  (let ((_%e1630216416%_
                                                         (reverse _%e1630116404%_)))
                                                    (_%__kont2055120552%_
                                                     _%e1630216416%_))))))
                                    (_%loop1629716397%_
                                     _%target1629416391%_
                                     '()))))
                               (_%g1625016472%_
                                (lambda ()
                                  (if (gx#stx-vector? _%__stx2053820539%_)
                                      (let ((_%e1629316387%_
                                             (vector->list
                                              (gx#syntax-e
                                               _%__stx2053820539%_))))
                                        (if (gx#stx-pair/null? _%e1629316387%_)
                                            (let ((_%__splice2055320554%_
                                                   (gx#syntax-split-splice->vector
                                                    _%e1629316387%_
                                                    '0)))
                                              (let ((_%tl1629616394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055320554%_
                                                        '1)))
                                                    (_%target1629416391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice2055320554%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl1629616394%_)
                                                    (_%__match2065720658%_
                                                     _%e1629316387%_
                                                     _%__splice2055320554%_
                                                     _%target1629416391%_
                                                     _%tl1629616394%_)
                                                    (_%__kont2055720558%_
                                                     _%__stx2053820539%_))))
                                            (_%__kont2055720558%_
                                             _%__stx2053820539%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1625116380%_))))))
                          (if (gx#stx-pair? _%__stx2053820539%_)
                              (let ((_%e1625616800%_
                                     (gx#syntax-e _%__stx2053820539%_)))
                                (let ((_%tl1625816807%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1625616800%_)))
                                      (_%hd1625716804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1625616800%_))))
                                  (if (gx#identifier? _%hd1625716804%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g21067_|
                                           _%hd1625716804%_)
                                          (if (gx#stx-pair? _%tl1625816807%_)
                                              (let ((_%e1625916810%_
                                                     (gx#syntax-e
                                                      _%tl1625816807%_)))
                                                (let ((_%tl1626116817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e1625916810%_)))
                                                      (_%hd1626016814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e1625916810%_))))
                                                  (if (gx#stx-null?
                                                       _%tl1626116817%_)
                                                      (_%__kont2054120542%_
                                                       _%hd1626016814%_)
                                                      (_%__kont2054920550%_
                                                       _%tl1625816807%_
                                                       _%hd1625716804%_))))
                                              (_%__kont2054920550%_
                                               _%tl1625816807%_
                                               _%hd1625716804%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g21068_|
                                               _%hd1625716804%_)
                                              (if (gx#stx-pair?
                                                   _%tl1625816807%_)
                                                  (let ((_%e1626616739%_
                                                         (gx#syntax-e
                                                          _%tl1625816807%_)))
                                                    (let ((_%tl1626816746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e1626616739%_)))
                                                          (_%hd1626716743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e1626616739%_))))
                                                      (if (gx#stx-null?
                                                           _%tl1626816746%_)
                                                          (_%__kont2054320544%_
                                                           _%hd1626716743%_)
                                                          (_%__kont2054920550%_
                                                           _%tl1625816807%_
                                                           _%hd1625716804%_))))
                                                  (_%__kont2054920550%_
                                                   _%tl1625816807%_
                                                   _%hd1625716804%_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21069_|
                                                   _%hd1625716804%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1625816807%_)
                                                      (let ((_%e1627316668%_
                                                             (gx#syntax-e
                                                              _%tl1625816807%_)))
                                                        (let ((_%tl1627516675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1627316668%_)))
                      (_%hd1627416672%_
                       (let () (declare (not safe)) (##car _%e1627316668%_))))
                  (if (gx#stx-null? _%tl1627516675%_)
                      (_%__kont2054520546%_ _%hd1627416672%_)
                      (_%__kont2054920550%_
                       _%tl1625816807%_
                       _%hd1625716804%_))))
              (_%__kont2054920550%_ _%tl1625816807%_ _%hd1625716804%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2054920550%_
                                                   _%tl1625816807%_
                                                   _%hd1625716804%_))))
                                      (if (gx#stx-pair? _%hd1625716804%_)
                                          (let ((_%e1628116583%_
                                                 (gx#syntax-e
                                                  _%hd1625716804%_)))
                                            (let ((_%tl1628316590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e1628116583%_)))
                                                  (_%hd1628216587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e1628116583%_))))
                                              (if (gx#identifier?
                                                   _%hd1628216587%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g21070_|
                                                       _%hd1628216587%_)
                                                      (if (gx#stx-pair?
                                                           _%tl1628316590%_)
                                                          (let ((_%e1628416593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl1628316590%_)))
                    (let ((_%tl1628616600%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1628416593%_)))
                          (_%hd1628516597%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1628416593%_))))
                      (if (gx#stx-null? _%tl1628616600%_)
                          (if (fxzero? _%d16244%_)
                              (let ((_%g1627616603%_ _%tl1625816807%_)
                                    (_%g1627716605%_ _%hd1628516597%_))
                                (_%__kont2054720548%_
                                 _%g1627616603%_
                                 _%g1627716605%_))
                              (_%__kont2054920550%_
                               _%tl1625816807%_
                               _%hd1625716804%_))
                          (_%__kont2054920550%_
                           _%tl1625816807%_
                           _%hd1625716804%_))))
                  (_%__kont2054920550%_ _%tl1625816807%_ _%hd1625716804%_))
              (_%__kont2054920550%_ _%tl1625816807%_ _%hd1625716804%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont2054920550%_
                                                   _%tl1625816807%_
                                                   _%hd1625716804%_))))
                                          (_%__kont2054920550%_
                                           _%tl1625816807%_
                                           _%hd1625716804%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g1625016472%_)))))))))
          (let* ((_%g1618216196%_
                  (lambda (_%g1618316192%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1618316192%_)))
                 (_%g1618116238%_
                  (lambda (_%g1618316200%_)
                    (if (gx#stx-pair? _%g1618316200%_)
                        (let ((_%e1618516203%_ (gx#syntax-e _%g1618316200%_)))
                          (let ((_%hd1618616207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1618516203%_)))
                                (_%tl1618716210%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1618516203%_))))
                            (if (gx#stx-pair? _%tl1618716210%_)
                                (let ((_%e1618816213%_
                                       (gx#syntax-e _%tl1618716210%_)))
                                  (let ((_%hd1618916217%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e1618816213%_)))
                                        (_%tl1619016220%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e1618816213%_))))
                                    (if (gx#stx-null? _%tl1619016220%_)
                                        ((lambda (_%g1618416223%_)
                                           (if (_%simple-quote?16178%_
                                                _%g1618416223%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%g1618416223%_
                                                           '()))
                                               (_%generate16180%_
                                                _%g1618416223%_
                                                '0)))
                                         _%hd1618916217%_)
                                        (_%g1618216196%_ _%g1618316200%_))))
                                (_%g1618216196%_ _%g1618316200%_))))
                        (_%g1618216196%_ _%g1618316200%_)))))
            (_%g1618116238%_ _%stx16175%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_%$stx17106%_)
        (let* ((_%__stx2066420665%_ _%$stx17106%_)
               (_%g1711217146%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2066420665%_))))
          (let ((_%__kont2066720668%_
                 (lambda (_%g1711417278%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1711417278%_ '()))))
                (_%__kont2066920670%_
                 (lambda (_%g1712117234%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1712117234%_ '()))))
                (_%__kont2067120672%_
                 (lambda (_%g1713417173%_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1713417173%_ '())))
                               '())))))
            (let ((_%__match2068720688%_
                   (lambda (_%e1711517258%_
                            _%hd1711617262%_
                            _%tl1711717265%_
                            _%e1711817268%_
                            _%hd1711917272%_
                            _%tl1712017275%_)
                     (let ((_%g1711417278%_ _%hd1711917272%_))
                       (if (gx#stx-datum? _%g1711417278%_)
                           (_%__kont2066720668%_ _%g1711417278%_)
                           (if (gx#stx-pair? _%hd1711917272%_)
                               (let ((_%e1712817214%_
                                      (gx#syntax-e _%hd1711917272%_)))
                                 (let ((_%tl1713017221%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1712817214%_)))
                                       (_%hd1712917218%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1712817214%_))))
                                   (if (gx#identifier? _%hd1712917218%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21071_|
                                            _%hd1712917218%_)
                                           (if (gx#stx-pair? _%tl1713017221%_)
                                               (let ((_%e1713117224%_
                                                      (gx#syntax-e
                                                       _%tl1713017221%_)))
                                                 (let ((_%tl1713317231%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1713117224%_)))
                                                       (_%hd1713217228%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1713117224%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1713317231%_)
                                                       (_%__kont2066920670%_
                                                        _%hd1713217228%_)
                                                       (_%__kont2067120672%_
                                                        _%hd1711917272%_))))
                                               (_%__kont2067120672%_
                                                _%hd1711917272%_))
                                           (_%__kont2067120672%_
                                            _%hd1711917272%_))
                                       (_%__kont2067120672%_
                                        _%hd1711917272%_))))
                               (_%__kont2067120672%_ _%hd1711917272%_)))))))
              (if (gx#stx-pair? _%__stx2066420665%_)
                  (let ((_%e1711517258%_ (gx#syntax-e _%__stx2066420665%_)))
                    (let ((_%tl1711717265%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1711517258%_)))
                          (_%hd1711617262%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1711517258%_))))
                      (if (gx#stx-pair? _%tl1711717265%_)
                          (let ((_%e1711817268%_
                                 (gx#syntax-e _%tl1711717265%_)))
                            (let ((_%tl1712017275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1711817268%_)))
                                  (_%hd1711917272%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1711817268%_))))
                              (if (gx#stx-null? _%tl1712017275%_)
                                  (_%__match2068720688%_
                                   _%e1711517258%_
                                   _%hd1711617262%_
                                   _%tl1711717265%_
                                   _%e1711817268%_
                                   _%hd1711917272%_
                                   _%tl1712017275%_)
                                  (if (gx#stx-pair? _%hd1711917272%_)
                                      (let ((_%e1712817214%_
                                             (gx#syntax-e _%hd1711917272%_)))
                                        (let ((_%tl1713017221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1712817214%_)))
                                              (_%hd1712917218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1712817214%_))))
                                          (if (gx#identifier? _%hd1712917218%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21071_|
                                                   _%hd1712917218%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1713017221%_)
                                                      (let ((_%e1713117224%_
                                                             (gx#syntax-e
                                                              _%tl1713017221%_)))
                                                        (let ((_%tl1713317231%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1713117224%_)))
                      (_%hd1713217228%_
                       (let () (declare (not safe)) (##car _%e1713117224%_))))
                  (let () (declare (not safe)) (_%g1711217146%_))))
              (let () (declare (not safe)) (_%g1711217146%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1711217146%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1711217146%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1711217146%_))))))
                          (let () (declare (not safe)) (_%g1711217146%_)))))
                  (let () (declare (not safe)) (_%g1711217146%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay-atomic|
      (lambda (_%$stx17295%_)
        (let* ((_%__stx2073620737%_ _%$stx17295%_)
               (_%g1730117335%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2073620737%_))))
          (let ((_%__kont2073920740%_
                 (lambda (_%g1730317467%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1730317467%_ '()))))
                (_%__kont2074120742%_
                 (lambda (_%g1731017423%_)
                   (cons (gx#datum->syntax '#f 'quote)
                         (cons _%g1731017423%_ '()))))
                (_%__kont2074320744%_
                 (lambda (_%g1732317362%_)
                   (cons (gx#datum->syntax '#f 'make-atomic-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _%g1732317362%_ '())))
                               '())))))
            (let ((_%__match2075920760%_
                   (lambda (_%e1730417447%_
                            _%hd1730517451%_
                            _%tl1730617454%_
                            _%e1730717457%_
                            _%hd1730817461%_
                            _%tl1730917464%_)
                     (let ((_%g1730317467%_ _%hd1730817461%_))
                       (if (gx#stx-datum? _%g1730317467%_)
                           (_%__kont2073920740%_ _%g1730317467%_)
                           (if (gx#stx-pair? _%hd1730817461%_)
                               (let ((_%e1731717403%_
                                      (gx#syntax-e _%hd1730817461%_)))
                                 (let ((_%tl1731917410%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e1731717403%_)))
                                       (_%hd1731817407%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e1731717403%_))))
                                   (if (gx#identifier? _%hd1731817407%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/sugar~Sugar-2[1]#_g21072_|
                                            _%hd1731817407%_)
                                           (if (gx#stx-pair? _%tl1731917410%_)
                                               (let ((_%e1732017413%_
                                                      (gx#syntax-e
                                                       _%tl1731917410%_)))
                                                 (let ((_%tl1732217420%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e1732017413%_)))
                                                       (_%hd1732117417%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e1732017413%_))))
                                                   (if (gx#stx-null?
                                                        _%tl1732217420%_)
                                                       (_%__kont2074120742%_
                                                        _%hd1732117417%_)
                                                       (_%__kont2074320744%_
                                                        _%hd1730817461%_))))
                                               (_%__kont2074320744%_
                                                _%hd1730817461%_))
                                           (_%__kont2074320744%_
                                            _%hd1730817461%_))
                                       (_%__kont2074320744%_
                                        _%hd1730817461%_))))
                               (_%__kont2074320744%_ _%hd1730817461%_)))))))
              (if (gx#stx-pair? _%__stx2073620737%_)
                  (let ((_%e1730417447%_ (gx#syntax-e _%__stx2073620737%_)))
                    (let ((_%tl1730617454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e1730417447%_)))
                          (_%hd1730517451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e1730417447%_))))
                      (if (gx#stx-pair? _%tl1730617454%_)
                          (let ((_%e1730717457%_
                                 (gx#syntax-e _%tl1730617454%_)))
                            (let ((_%tl1730917464%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e1730717457%_)))
                                  (_%hd1730817461%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e1730717457%_))))
                              (if (gx#stx-null? _%tl1730917464%_)
                                  (_%__match2075920760%_
                                   _%e1730417447%_
                                   _%hd1730517451%_
                                   _%tl1730617454%_
                                   _%e1730717457%_
                                   _%hd1730817461%_
                                   _%tl1730917464%_)
                                  (if (gx#stx-pair? _%hd1730817461%_)
                                      (let ((_%e1731717403%_
                                             (gx#syntax-e _%hd1730817461%_)))
                                        (let ((_%tl1731917410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e1731717403%_)))
                                              (_%hd1731817407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e1731717403%_))))
                                          (if (gx#identifier? _%hd1731817407%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g21072_|
                                                   _%hd1731817407%_)
                                                  (if (gx#stx-pair?
                                                       _%tl1731917410%_)
                                                      (let ((_%e1732017413%_
                                                             (gx#syntax-e
                                                              _%tl1731917410%_)))
                                                        (let ((_%tl1732217420%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e1732017413%_)))
                      (_%hd1732117417%_
                       (let () (declare (not safe)) (##car _%e1732017413%_))))
                  (let () (declare (not safe)) (_%g1730117335%_))))
              (let () (declare (not safe)) (_%g1730117335%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g1730117335%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g1730117335%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g1730117335%_))))))
                          (let () (declare (not safe)) (_%g1730117335%_)))))
                  (let () (declare (not safe)) (_%g1730117335%_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_%stx17484%_)
        (letrec ((_%generate17487%_
                  (lambda (_%rest17606%_)
                    (let _%lp17609%_ ((_%rest17612%_ _%rest17606%_)
                                      (_%hd17614%_ '())
                                      (_%body17615%_ '()))
                      (let* ((_%__stx2082820829%_ _%rest17612%_)
                             (_%g1761817630%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx2082820829%_))))
                        (let ((_%__kont2083120832%_
                               (lambda (_%g1762017658%_ _%g1762117660%_)
                                 (let* ((_%__stx2080820809%_ _%g1762117660%_)
                                        (_%g1767717684%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx2080820809%_))))
                                   (let ((_%__kont2081120812%_
                                          (lambda ()
                                            (let ((_%arg17720%_ (gx#genident)))
                                              (_%lp17609%_
                                               _%g1762017658%_
                                               (cons _%arg17720%_ _%hd17614%_)
                                               (cons _%arg17720%_
                                                     _%body17615%_)))))
                                         (_%__kont2081320814%_
                                          (lambda ()
                                            (if (gx#stx-null? _%g1762017658%_)
                                                (let ((_%tail17706%_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail17706%_
                         _%hd17614%_)
                  (foldl cons (list _%tail17706%_) _%body17615%_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _%stx17484%_
                                                 _%g1762117660%_))))
                                         (_%__kont2081520816%_
                                          (lambda ()
                                            (_%lp17609%_
                                             _%g1762017658%_
                                             _%hd17614%_
                                             (cons _%g1762117660%_
                                                   _%body17615%_)))))
                                     (if (gx#identifier? _%__stx2080820809%_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g21073_|
                                              _%__stx2080820809%_)
                                             (_%__kont2081120812%_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g21074_|
                                                  _%__stx2080820809%_)
                                                 (_%__kont2081320814%_)
                                                 (_%__kont2081520816%_)))
                                         (_%__kont2081520816%_))))))
                              (_%__kont2083320834%_
                               (lambda ()
                                 (values (reverse _%hd17614%_)
                                         (reverse _%body17615%_)
                                         '#f))))
                          (if (gx#stx-pair? _%__stx2082820829%_)
                              (let ((_%e1762217648%_
                                     (gx#syntax-e _%__stx2082820829%_)))
                                (let ((_%tl1762417655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e1762217648%_)))
                                      (_%hd1762317652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e1762217648%_))))
                                  (_%__kont2083120832%_
                                   _%tl1762417655%_
                                   _%hd1762317652%_)))
                              (_%__kont2083320834%_))))))))
          (let* ((_%g1749017501%_
                  (lambda (_%g1749117497%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g1749117497%_)))
                 (_%g1748917602%_
                  (lambda (_%g1749117505%_)
                    (if (gx#stx-pair? _%g1749117505%_)
                        (let ((_%e1749317508%_ (gx#syntax-e _%g1749117505%_)))
                          (let ((_%hd1749417512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e1749317508%_)))
                                (_%tl1749517515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e1749317508%_))))
                            ((lambda (_%g1749217518%_)
                               (if (and (gx#stx-list? _%g1749217518%_)
                                        (not (gx#stx-null? _%g1749217518%_)))
                                   (let ((_g21075_
                                          (_%generate17487%_ _%g1749217518%_)))
                                     (begin
                                       (let ((_g21076_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g21075_)
                                                    (##values-length _g21075_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g21076_ 3)))
                                             (error "Context expects 3 values"
                                                    _g21076_)))
                                       (let ((_%hd17531%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21075_ 0)))
                                             (_%body17533%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21075_ 1)))
                                             (_%tail?17534%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g21075_ 2))))
                                         (let* ((_%g1753617544%_
                                                 (lambda (_%g1753717540%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g1753717540%_)))
                                                (_%g1753517598%_
                                                 (lambda (_%g1753717548%_)
                                                   ((lambda (_%g1753817551%_)
                                                      (let* ((_%g1756417572%_
                                                              (lambda (_%g1756517568%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g1756517568%_)))
                     (_%g1756317594%_
                      (lambda (_%g1756517576%_)
                        ((lambda (_%g1756617579%_)
                           (if _%tail?17534%_
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1753817551%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'apply)
                                                       _%g1756617579%_)
                                                 '())))
                               (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons _%g1753817551%_
                                           (cons _%g1756617579%_ '())))))
                         _%g1756517576%_))))
                (_%g1756317594%_ _%body17533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g1753717548%_))))
                                           (_%g1753517598%_ _%hd17531%_)))))
                                   (_%g1749017501%_ _%g1749117505%_)))
                             _%tl1749517515%_)))
                        (_%g1749017501%_ _%g1749117505%_)))))
            (_%g1748917602%_ _%stx17484%_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_%$stx17732%_)
        (let ((_%g1773517742%_
               (lambda (_%g1773617738%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1773617738%_))))
          (_%g1773517742%_ _%$stx17732%_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_%$stx17746%_)
        (let ((_%g1774917756%_
               (lambda (_%g1775017752%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g1775017752%_))))
          (_%g1774917756%_ _%$stx17746%_))))))
